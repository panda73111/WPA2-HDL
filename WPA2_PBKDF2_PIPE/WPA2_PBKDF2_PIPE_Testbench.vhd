
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use work.help_funcs.all;
use work.txt_util.all;
use std.textio.all;
 
ENTITY WPA2_PBKDF2_PIPE_Testbench IS
END WPA2_PBKDF2_PIPE_Testbench;
 
ARCHITECTURE behavior OF WPA2_PBKDF2_PIPE_Testbench IS 
  
  --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal ESSID_IN : std_logic_vector(255 downto 0) := (others => '0');
   signal ESSID_LEN : std_logic_vector(5 downto 0) := (others => '0');
   signal PWD_IN : std_logic_vector(511 downto 0) := (others => '0');

 	--Outputs
   signal KEY_OUT : std_logic_vector(159 downto 0);
   signal KEY_VALID : std_logic;
   signal PWD_READY : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
   
   signal delayed_essid : std_logic_vector(255 downto 0) := (others => '0');
   signal delayed_essid_len : std_logic_vector(5 downto 0) := (others => '0');
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   WPA2_PBKDF2_INST : entity work.WPA2_PBKDF2_PIPE
    PORT MAP (
          CLK => CLK,
          RST => RST,
          
          ESSID_IN => delayed_essid,
          ESSID_LEN => delayed_essid_len,
          PWD_IN => PWD_IN,
          
          KEY_OUT => KEY_OUT,
          KEY_VALID => KEY_VALID,
          PWD_READY => PWD_READY
        );
        
   DELAY_ESSID_INST : entity work.DELAY_QUEUE
    generic map (CYCLES  => 82, DATA_WIDTH  => 256)
    port map (CLK, ESSID_IN, delayed_essid);
       
   DELAY_ESSID_LEN_INST : entity work.DELAY_QUEUE
    generic map (CYCLES  => 82, DATA_WIDTH  => 6)
    port map (CLK, ESSID_LEN, delayed_essid_len);
  
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
    constant essid  : string := "linksys54gh";
    constant pwd  : string := "radiustest";
   begin
    
      -- hold reset state for 100 ns.
      RST <= '1';
      wait for 100 ns;
      wait until rising_edge(CLK);
      RST <= '0';
      
--      -- ESSID
--      for i in 1 to essid'length loop
--        ESSID_IN(256-i*8+7 downto 256-i*8)  <= stdlv(essid(i));
--      end loop;
--      ESSID_LEN <= stdlv(to_unsigned(essid'length, ESSID_LEN'length));
--        
--      -- PWD
--      for i in 1 to pwd'length loop
--        PWD_IN(512-i*8+7 downto 512-i*8)  <= stdlv(pwd(i));
--      end loop;
      
      for essid_length in 1 to 32 loop
        
        -- ESSID
        ESSID_IN(256-essid_length*8+7 downto 256-essid_length*8)  <= x"61";
        ESSID_LEN <= stdlv(to_unsigned(essid_length, ESSID_LEN'length));
        
        for pwd_length in 1 to 64 loop
        
          if PWD_READY = '0' then
            wait until PWD_READY = '1' and rising_edge(CLK);
          end if;
          
          PWD_IN  <= (others => '0');
          for i in 1 to pwd_length loop
            PWD_IN(512-i*8+7 downto 512-i*8)  <= x"61";
          end loop;
          
          wait until rising_edge(CLK);
          
        end loop;
        
      end loop;
      
      wait until KEY_VALID = '1';
      wait until KEY_VALID = '0';
      wait until KEY_VALID = '1';
      wait until KEY_VALID = '0';
      
      wait for CLK_period*50;
      assert false severity failure;
      
      wait;
   end process;
   
   LOG_PROC : process
    file f  : text open write_mode is "D:\isim_keys.log";
   begin
    
    wait until KEY_VALID = '0';
    wait until KEY_VALID = '1';
    wait until KEY_VALID = '0';
    
    while true loop
      wait until KEY_VALID = '1' and rising_edge(CLK);
      while KEY_VALID = '1' loop
        report "HMAC: " & hstr(KEY_OUT);
        print(f, hstr(KEY_OUT, false));
        wait until rising_edge(CLK);
      end loop;
    end loop;
    
   end process;

END;
