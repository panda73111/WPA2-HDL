
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use std.textio.all;
use work.help_funcs.all;
use work.txt_util.all;
 
ENTITY SHA1_PIPE_Testbench IS
END SHA1_PIPE_Testbench;
 
ARCHITECTURE behavior OF SHA1_PIPE_Testbench IS 
 
    --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal MSG_IN : std_logic_vector(511 downto 0) := (others => '0');
   signal STATE_IN  : std_logic_vector(159 downto 0) := (others => '0');
   signal MSG_LEN : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal HASH_OUT : std_logic_vector(159 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 5 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   SHA1_INST : entity work.SHA1_PIPE
    port map (
          CLK => CLK,
          
          MSG_IN => MSG_IN,
          STATE_IN  => STATE_IN,
          
          HASH_OUT => HASH_OUT
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
    constant maxLen : integer := 55;
    file f  : text open write_mode is "D:\isim_hashes_fast.log";
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here
      
      for i in 1 to maxLen loop
        
        wait until rising_edge(CLK);
        STATE_IN  <= x"67452301EFCDAB8998BADCFE10325476C3D2E1F0";
        MSG_IN  <= (others => '0');
        for j in 63 downto 64-i loop
          MSG_IN(j * 8 + 7 downto j * 8)  <= x"61";
        end loop;
        MSG_IN((63-i) * 8 + 7)  <= '1'; -- end bit
        MSG_IN(31 downto 0) <= stdlv(to_unsigned(i * 8, 32)); -- length appending
        
      end loop;
      
      wait until rising_edge(CLK);
      MSG_IN  <= (others => '0');
      STATE_IN  <= (others => '0');
      wait for CLK_period*27;
      
      for i in 1 to maxLen loop
      
        wait until rising_edge(CLK);
        report "HASH: " & hstr(HASH_OUT);
        print(f, hstr(HASH_OUT, false));
      
      end loop;
      
      assert false severity failure;
      
      wait;
   end process;

END;
