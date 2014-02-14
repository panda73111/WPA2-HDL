LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use work.help_funcs.all;
use std.textio.all;
use work.txt_util.all;

ENTITY sha1_hmac_testbench IS
END sha1_hmac_testbench;
 
ARCHITECTURE behavior OF sha1_hmac_testbench IS 
  
  --Inputs
  signal CLK : std_logic := '0';
  signal RST : std_logic := '0';

  signal DATA_IN : std_logic_vector(31 downto 0) := (others => '0');
  signal DATA_VALID : std_logic := '0';
  signal LAST_DATA_LEN : std_logic_vector(1 downto 0) := (others => '0');
  signal LAST_DATA : std_logic := '0';

  --Outputs
  signal MSG_READY : STD_LOGIC := '0';
  signal KEY_READY : STD_LOGIC := '0';
  signal HMAC_OUT :  STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
  signal HMAC_VALID :  STD_LOGIC := '0';

  -- Clock period definitions
  constant CLK_period : time := 10 ns;
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
  SHA1_HMAC_INST: entity work.SHA1_HMAC_shortkeys
    PORT MAP (
      CLK => CLK,
      RST => RST,

      DATA_IN => DATA_IN,
      DATA_VALID  => DATA_VALID,
      LAST_DATA_LEN  => LAST_DATA_LEN,
      LAST_DATA => LAST_DATA,
      RECURSE => '0',

      MSG_READY => MSG_READY,
      KEY_READY => KEY_READY,
      HMAC_OUT  => HMAC_OUT,
      HMAC_VALID  => HMAC_VALID
      );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
    variable hmac : std_logic_vector(159 downto 0);
    file f  : text open write_mode is "D:\isim_hashes.log";
    file f_paused : text open write_mode is "D:\isim_hashes_paused.log";
    constant max_key_len  : integer := 55;
    constant max_msg_len  : integer := 55;
--    type key_type is array(1 to 80) of unsigned(7 downto 0);
--    constant key  : key_type := (
--      (others => x"aa")
--      );
--    type msg_type is array(1 to 73) of unsigned(7 downto 0);
--    constant msg  : msg_type := (
--      x"54", x"65", x"73", x"74", x"20", x"55", x"73", x"69", x"6e", x"67", x"20", x"4c", x"61", x"72", x"67", x"65",
--      x"72", x"20", x"54", x"68", x"61", x"6e", x"20", x"42", x"6c", x"6f", x"63", x"6b", x"2d", x"53", x"69", x"7a",
--      x"65", x"20", x"4b", x"65", x"79", x"20", x"61", x"6e", x"64", x"20", x"4c", x"61", x"72", x"67", x"65", x"72",
--      x"20", x"54", x"68", x"61", x"6e", x"20", x"4f", x"6e", x"65", x"20", x"42", x"6c", x"6f", x"63", x"6b", x"2d",
--      x"53", x"69", x"7a", x"65", x"20", x"44", x"61", x"74", x"61"
--      );
   begin
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      RST <= '1';
      wait for CLK_period*10;
      RST <= '0';
      wait for CLK_period*4;
      -- insert stimulus here
      
      DATA_IN <= x"61616161";
      
      for paused in 0 to 1 loop
      
        for msg_len in 1 to max_msg_len loop
          
          for key_len in 1 to max_key_len loop
          
            RST <= '1';
            wait until rising_edge(CLK);
            RST <= '0';
          
            -- key
            for i in 1 to (key_len - 1) / 4 loop
              wait until rising_edge(CLK);
              while KEY_READY = '0' loop
                DATA_VALID  <= '0';
                wait until rising_edge(CLK);
              end loop;
              DATA_VALID  <= '1';
              
              if paused = 1 then
                wait until rising_edge(CLK);
                DATA_VALID  <= '0';
                for j in 1 to 10 loop
                  wait until rising_edge(CLK);
                end loop;
              end if;
              
            end loop;
            wait until rising_edge(CLK);
            
            while KEY_READY = '0' loop
              DATA_VALID  <= '0';
              wait until rising_edge(CLK);
            end loop;
            DATA_VALID  <= '1';
            case key_len mod 4 is
              when 1 => LAST_DATA_LEN  <= "00";
              when 2 => LAST_DATA_LEN  <= "01";
              when 3 => LAST_DATA_LEN  <= "10";
              when 0 => LAST_DATA_LEN  <= "11";
            end case;
            LAST_DATA <= '1';
            wait until rising_edge(CLK);
            DATA_VALID  <= '0';
            LAST_DATA <= '0';
            
            report "Input: KEY = " & Integer'image(key_len) & " * 'a', MSG = " & Integer'image(msg_len) & " * 'a'";
            
            -- msg
            for i in 1 to (msg_len - 1) / 4 loop
              wait until rising_edge(CLK);
              while MSG_READY = '0' loop
                DATA_VALID  <= '0';
                wait until rising_edge(CLK);
              end loop;
              DATA_VALID  <= '1';
              
              if paused = 1 then
                wait until rising_edge(CLK);
                DATA_VALID  <= '0';
                for j in 1 to 10 loop
                  wait until rising_edge(CLK);
                end loop;
              end if;
              
            end loop;
            wait until rising_edge(CLK);
            while MSG_READY = '0' loop
              DATA_VALID  <= '0';
              wait until rising_edge(CLK);
            end loop;
            
            DATA_VALID  <= '1';
            case msg_len mod 4 is
              when 1 => LAST_DATA_LEN  <= "00";
              when 2 => LAST_DATA_LEN  <= "01";
              when 3 => LAST_DATA_LEN  <= "10";
              when 0 => LAST_DATA_LEN  <= "11";
            end case;
            LAST_DATA <= '1';
            wait until rising_edge(CLK);
            DATA_VALID  <= '0';
            LAST_DATA <= '0';
            
            wait until rising_edge(CLK) and HMAC_VALID = '1';
            for i in 5 downto 1 loop
              hmac(i * 32 - 1 downto (i - 1) * 32) := HMAC_OUT;
              wait until rising_edge(CLK);
            end loop;
            report "HMAC: " & hstr(hmac);
            if paused = 1 then
              print(f_paused, "key:" & Integer'image(key_len) & " msg:" & Integer'image(msg_len) & " " & hstr(hmac, false));
            else
              print(f, "key:" & Integer'image(key_len) & " msg:" & Integer'image(msg_len) & " " & hstr(hmac, false));
            end if;
            wait until rising_edge(CLK);
            
          end loop;
          
          RST <= '1';
          wait until rising_edge(CLK);
          RST <= '0';
          wait until rising_edge(CLK);
          
        end loop;
      
      end loop;
      
      wait for CLK_period*4;
      
      assert false severity failure;
      
      wait;
   end process;

END;
