
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use work.help_funcs.all;

entity WPA2_CRACKER_Testbench is
end entity;

architecture Behavioral of WPA2_CRACKER_Testbench is
  
  -- inputs
  signal FXCLK_IN : std_logic := '0';
  signal RST  : std_logic := '0';

  signal DATA_CLK : std_logic := '0';
  signal CHIP_SELECT  : std_logic := '0';
  signal ESSID_WR_EN  : std_logic := '0';
  signal TARGET_KEY_WR_EN : std_logic := '0';
  signal START_PWD_WR_EN  : std_logic := '0';
  signal PWD_REQ  : std_logic := '0';
  signal CHAR_WR_EN : std_logic := '0';
  signal DATA_IN  : std_logic_vector(7 downto 0) := x"00";
  
  -- outputs
  signal DATA_OUT : std_logic_vector(7 downto 0);
  signal GOT_TARGET_KEY : std_logic;
  signal GOT_ESSID  : std_logic;
  signal FINISHED : std_logic;
  
  constant FXCLK_IN_period  : time := 20.3 ns;
  
begin
  
  WPA2_CRACKER_INST : entity work.WPA2_CRACKER
    port map (
    FXCLK_IN  => FXCLK_IN,
    RST => RST,
    
    DATA_CLK  => DATA_CLK,
    CHIP_SELECT => CHIP_SELECT,
    ESSID_WR_EN => ESSID_WR_EN,
    TARGET_KEY_WR_EN  => TARGET_KEY_WR_EN,
    START_PWD_WR_EN => START_PWD_WR_EN,
    PWD_REQ => PWD_REQ,
    CHAR_WR_EN  => CHAR_WR_EN,
    DATA_IN => DATA_IN,
    
    DATA_OUT  => DATA_OUT,
    GOT_TARGET_KEY  => GOT_TARGET_KEY,
    GOT_ESSID => GOT_ESSID,
    FINISHED  => FINISHED
    );
  
  CLK_GEN_PROC : process
  begin
    FXCLK_IN  <= not FXCLK_IN;
    wait for FXCLK_IN_period;
  end process;
  
  STIM_PROC : process
    constant essid  : string := "linksys54gh";
    constant target_key : std_logic_vector(159 downto 0)
      := x"af008cd56d2b26722fbb4f09dfe7afcd469f150f";
    type charset_type is (
      nul, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'
      );
    type pwd_type is array(1 to 10) of charset_type;
    constant pwd  : pwd_type := (r,a,d,i,u,s,t,e,s,t);
    alias CLK : std_logic is FXCLK_IN;
    variable pwd_out  : string(1 to 64) := (others => nul);
  begin
    
    for overall in 0 to 1 loop
      
      wait for 100 ns;
      RST <= '1';
      wait for 500 ns;
      RST <= '0';
      wait for 100 ns;
      wait until rising_edge(CLK);
      
      ESSID_WR_EN <= '1';
      wait until rising_edge(CLK);
      DATA_IN <= stdlv(essid'length, 8);
      wait until rising_edge(CLK);
      DATA_CLK  <= not DATA_CLK;
      wait until rising_edge(CLK);
      for i in essid'range loop
        DATA_IN <= stdlv(essid(i));
        wait until rising_edge(CLK);
        DATA_CLK  <= not DATA_CLK;
        wait until rising_edge(CLK);
      end loop;
      DATA_IN <= x"00";
      for i in 0 to 31-essid'length loop
        wait until rising_edge(CLK);
        DATA_CLK  <= not DATA_CLK;
        wait until rising_edge(CLK);
      end loop;
      ESSID_WR_EN <= '0';
      
      wait until rising_edge(CLK);
      
      TARGET_KEY_WR_EN <= '1';
      wait until rising_edge(CLK);
      for i in target_key'length/8-1 downto 0 loop
        DATA_IN <= target_key(i*8+7 downto i*8);
        wait until rising_edge(CLK);
        DATA_CLK  <= not DATA_CLK;
        wait until rising_edge(CLK);
      end loop;
      TARGET_KEY_WR_EN  <= '0';
      
      wait for 100 ns;
      wait until rising_edge(CLK);
      
      for i in 0 to 1 loop
        if i = 1 then
          CHIP_SELECT <= '1';
        end if;
        wait until rising_edge(CLK);
        START_PWD_WR_EN <= '1';
        wait until rising_edge(CLK);
        for i in pwd'range loop
          DATA_IN <= stdlv(charset_type'pos(pwd(i)), 8);
          wait until rising_edge(CLK);
          DATA_CLK  <= not DATA_CLK;
          wait until rising_edge(CLK);
        end loop;
        DATA_IN <= x"00";
        for i in 0 to 63-pwd'length loop
          wait until rising_edge(CLK);
          DATA_CLK  <= not DATA_CLK;
          wait until rising_edge(CLK);
        end loop;
        wait until rising_edge(CLK);
        START_PWD_WR_EN <= '0';
        wait until rising_edge(CLK);
        CHIP_SELECT <= '0';
        
        wait for 100 ns;
        wait until rising_edge(CLK);
      end loop;
      
      while FINISHED = '0' loop
        CHIP_SELECT <= '0';
        wait until rising_edge(CLK);
        wait for 200 ns;
        wait until rising_edge(CLK);
        CHIP_SELECT <= '1';
        wait until rising_edge(CLK);
      end loop;
      
      PWD_REQ <= '1';
      wait until rising_edge(CLK);
      
      for i in 1 to 64 loop
        DATA_CLK  <= not DATA_CLK;
        wait until rising_edge(CLK);
        pwd_out(i)  := character'val(int(DATA_OUT));
        wait until rising_edge(CLK);
      end loop;
      
      PWD_REQ <= '0';
      wait until rising_edge(CLK);
      CHIP_SELECT <= '0';
      wait until rising_edge(CLK);
      
      report "PDW OUT: " & pwd_out;
      
      wait for 100 ns;
      
    end loop;
    
    assert false severity failure;
    
  end process;
  
end architecture;