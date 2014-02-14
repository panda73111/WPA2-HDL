LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use work.help_funcs.all;
use std.textio.all;
use work.txt_util.all;

ENTITY wpa2_pbkdf2_testbench IS
END wpa2_pbkdf2_testbench;

ARCHITECTURE behavior OF wpa2_pbkdf2_testbench IS 
  
  --Inputs
  signal CLK : std_logic := '0';
  signal RST : std_logic := '0';
  
  signal DATA_IN  : std_logic_vector(31 downto 0) := (others => '0');
  signal LAST_DATA_LEN : std_logic_vector(1 downto 0) := (others => '0');
  signal LAST_DATA  : std_logic := '0';
  signal PWD_VALID : std_logic := '0';
  signal ESSID_WR_EN : std_logic := '0';
  
  --Outputs
  signal KEY_OUT : std_logic_vector(31 downto 0) := (others => '0');
  signal KEY_VALID : std_logic := '0';
  signal PWD_READY : std_logic := '0';
  
  -- Clock period definitions
  constant CLK_period : time := 10 ns;
  
BEGIN

  WPA2_PBKDF2_INST : entity work.WPA2_PBKDF2
    port map (
      CLK => CLK,
      RST => RST,
      
      DATA_IN  => DATA_IN,
      LAST_DATA_LEN => LAST_DATA_LEN,
      LAST_DATA  => LAST_DATA,
      PWD_VALID => PWD_VALID,
      ESSID_WR_EN => ESSID_WR_EN,
      
      KEY_OUT => KEY_OUT,
      KEY_VALID => KEY_VALID,
      PWD_READY => PWD_READY
      );
  
  -- Clock process definitions
  CLK_process : process
  begin
    CLK <= '0';
    wait for CLK_period/2;
    CLK <= '1';
    wait for CLK_period/2;
  end process;

  -- Stimulus process
  stim_proc : process
    file f  : text open write_mode is "D:\isim_keys.log";
    file f_paused : text open write_mode is "D:\isim_leys_paused.log";
    type essid_type is array(1 to 11) of unsigned(7 downto 0);
    constant essid  : essid_type := (
      x"6c", x"69", x"6e", x"6b", x"73", x"79", x"73", x"35", x"34", x"67", x"68"
    );
    type pwd_type is array(1 to 70) of unsigned(7 downto 0);
    constant pwd  : pwd_type := (
      x"72", x"61", x"64", x"69", x"75", x"73", x"74", x"65", x"73", x"74",
      x"72", x"61", x"64", x"69", x"75", x"73", x"74", x"65", x"73", x"74",
      x"72", x"61", x"64", x"69", x"75", x"73", x"74", x"65", x"73", x"74",
      x"72", x"61", x"64", x"69", x"75", x"73", x"74", x"65", x"73", x"74",
      x"72", x"61", x"64", x"69", x"75", x"73", x"74", x"65", x"73", x"74",
      x"72", x"61", x"64", x"69", x"75", x"73", x"74", x"65", x"73", x"74",
      x"72", x"61", x"64", x"69", x"75", x"73", x"74", x"65", x"73", x"74"
    );
  begin
    -- hold reset state for 100 ns.
    wait for 100 ns;	
    RST <= '1';
    wait for CLK_period*10;
    RST <= '0';
    wait for CLK_period*4;
    -- insert stimulus here
    
    -- essid
    DATA_IN <= (others => '0');
    ESSID_WR_EN  <= '0';
    LAST_DATA <= '0';
    LAST_DATA_LEN  <= "00";
    wait until rising_edge(CLK);
    ESSID_WR_EN  <= '1';
    for essid_i in 1 to (essid_type'length - 1) / 4 loop
      DATA_IN <=
        stdlv(essid((essid_i - 1) * 4 + 1)) &
        stdlv(essid((essid_i - 1) * 4 + 2)) &
        stdlv(essid((essid_i - 1) * 4 + 3)) &
        stdlv(essid((essid_i - 1) * 4 + 4));
      wait until rising_edge(CLK);
    end loop;
    LAST_DATA <= '1';
    case essid_type'length mod 4 is
      when 0 =>
        DATA_IN <=
          stdlv(essid(essid_type'length - 3)) &
          stdlv(essid(essid_type'length - 2)) &
          stdlv(essid(essid_type'length - 1)) &
          stdlv(essid(essid_type'length));
        LAST_DATA_LEN  <= "11";
      when 3 =>
        DATA_IN <=
          stdlv(essid(essid_type'length - 2)) &
          stdlv(essid(essid_type'length - 1)) &
          stdlv(essid(essid_type'length)) &
          "00000000";
        LAST_DATA_LEN  <= "10";
      when 2 =>
        DATA_IN <=
          stdlv(essid(essid_type'length - 1)) &
          stdlv(essid(essid_type'length)) &
          "00000000" &
          "00000000";
        LAST_DATA_LEN  <= "01";
      when 1 =>
        DATA_IN <=
          stdlv(essid(essid_type'length)) &
          "00000000" &
          "00000000" &
          "00000000";
        LAST_DATA_LEN  <= "00";
    end case;
    wait until rising_edge(CLK);
    ESSID_WR_EN <= '0';
    LAST_DATA <= '0';
    DATA_IN  <= (others => '0');
    wait until rising_edge(CLK);
    
    -- password
    DATA_IN <= (others => '0');
    PWD_VALID  <= '0';
    LAST_DATA <= '0';
    LAST_DATA_LEN  <= "00";
    wait until rising_edge(CLK) and PWD_READY = '1';
    PWD_VALID  <= '1';
    for pwd_i in 1 to (pwd_type'length - 1) / 4 loop
      DATA_IN <=
        stdlv(pwd((pwd_i - 1) * 4 + 1)) &
        stdlv(pwd((pwd_i - 1) * 4 + 2)) &
        stdlv(pwd((pwd_i - 1) * 4 + 3)) &
        stdlv(pwd((pwd_i - 1) * 4 + 4));
      wait until rising_edge(CLK);
      if PWD_READY = '0' then
        PWD_VALID  <= '0';
        wait until rising_edge(CLK) and PWD_READY = '1';
        PWD_VALID  <= '1';
      end if;
    end loop;
    LAST_DATA <= '1';
    case pwd_type'length mod 4 is
      when 0 =>
        DATA_IN <=
          stdlv(pwd(pwd_type'length - 3)) &
          stdlv(pwd(pwd_type'length - 2)) &
          stdlv(pwd(pwd_type'length - 1)) &
          stdlv(pwd(pwd_type'length));
        LAST_DATA_LEN  <= "11";
      when 3 =>
        DATA_IN <=
          stdlv(pwd(pwd_type'length - 2)) &
          stdlv(pwd(pwd_type'length - 1)) &
          stdlv(pwd(pwd_type'length)) &
          "00000000";
        LAST_DATA_LEN  <= "10";
      when 2 =>
        DATA_IN <=
          stdlv(pwd(pwd_type'length - 1)) &
          stdlv(pwd(pwd_type'length)) &
          "00000000" &
          "00000000";
        LAST_DATA_LEN  <= "01";
      when 1 =>
        DATA_IN <=
          stdlv(pwd(pwd_type'length)) &
          "00000000" &
          "00000000" &
          "00000000";
        LAST_DATA_LEN  <= "00";
    end case;
    wait until rising_edge(CLK);
    PWD_VALID <= '0';
    LAST_DATA <= '0';
    DATA_IN  <= (others => '0');
    wait until rising_edge(CLK);
    
    wait until rising_edge(CLK) and KEY_VALID = '1';
    while KEY_VALID = '1' loop
      report "KEY: " & hstr(KEY_OUT);
      wait until rising_edge(CLK);
    end loop;
    -- 9e9988bde2cba74395c0289ffda07bc41ffa889a3309237a2240c934bcdc7ddb
    
    wait for CLK_period*4;

    assert false severity failure;

    wait;
  end process;
END;
