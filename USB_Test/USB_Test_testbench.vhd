
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use work.help_funcs.all;
use work.txt_util.all;
 
ENTITY USB_Test_testbench IS
END USB_Test_testbench;
 
ARCHITECTURE behavior OF USB_Test_testbench IS 

   --Inputs
   signal FXCLK_IN : std_logic := '0';
   signal RST : std_logic := '0';
   signal DATA_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal RD_CLK : std_logic := '0';
   signal WR_CLK : std_logic := '0';
   signal ESSID_WR_EN : std_logic := '0';
   signal LEN_VALID : std_logic := '0';
   signal TARGET_KEY_WR_EN  : std_logic := '0';

 	--Outputs
   signal DATA_OUT : std_logic_vector(7 downto 0);
   signal DEBUG : std_logic_vector(7 downto 0);
   signal FINISHED  : std_logic;
   signal READY : std_logic;
   signal GOT_ESSID : std_logic;
   signal GOT_TARGET_KEY  : std_logic;

   -- Clock period definitions
   constant FXCLK_IN_period : time := 20.3 ns; -- 48 MHz
 
  signal match_pwd_len  : unsigned(7 downto 0) := (others => '0');
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   USB_TEST_INST: entity work.USB_Test PORT MAP (
          FXCLK_IN => FXCLK_IN,
          RST => RST,
          
          DATA_IN => DATA_IN,
          RD_CLK => RD_CLK,
          WR_CLK => WR_CLK,
          ESSID_WR_EN => ESSID_WR_EN,
          LEN_VALID => LEN_VALID,
          TARGET_KEY_WR_EN  => TARGET_KEY_WR_EN,
          
          DATA_OUT => DATA_OUT,
          FINISHED  => FINISHED,
          DEBUG => DEBUG,
          READY => READY,
          GOT_ESSID => GOT_ESSID,
          GOT_TARGET_KEY  => GOT_TARGET_KEY
        );

   -- Clock process definitions
   FXCLK_IN_process :process
   begin
		FXCLK_IN  <= '0';
		wait for FXCLK_IN_period/2;
		FXCLK_IN  <= '1';
		wait for FXCLK_IN_period/2;
   end process;

   -- Stimulus process
   stim_proc: process
    type target_key_type is array(0 to 31) of std_logic_vector(7 downto 0);
    constant target_key : target_key_type := (
      x"9e", x"99", x"88", x"bd", x"e2", x"cb", x"a7", x"43",
      x"95", x"c0", x"28", x"9f", x"fd", x"a0", x"7b", x"c4",
      x"1f", x"fa", x"88", x"9a", x"33", x"09", x"23", x"7a",
      x"22", x"40", x"c9", x"34", x"bc", x"dc", x"7d", x"db"
    );
    constant essid : string := "linksys54gh";
    type pwds_type is array(1 to 12) of string(1 to 64);
    type pwd_lens_type is array(pwds_type'range) of integer range 1 to 64;
    constant pwds : pwds_type := (
      "somepwd                                                         ",
      "wrongagain                                                      ",
      "looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong",
      "rradiustest                                                     ",
      "another wrong                                                   ",
      "different wrong                                                 ",
      "quite different                                                 ",
      "Why not Zoidberg?                                               ",
      "another wrong                                                   ",
      "different wrong                                                 ",
      "quite different                                                 ",
      "Why not Zoidberg?                                               "
      );
    constant pwd_lens : pwd_lens_type := (7, 10, 64, 10, 13, 15, 15, 17, 13, 15, 15, 17);
   begin		
      -- hold reset state for 100 ns.
      RST <= '1';
      wait for 100 ns;	
      RST <= '0';

      wait for FXCLK_IN_period*50;

      -- insert stimulus here 
      
      for j in 1 to 2 loop
        
        -- reset
        wait until rising_edge(FXCLK_IN);
        RST <= '1';
        wait until rising_edge(FXCLK_IN);
        RST <= '0';
        wait for FXCLK_IN_period*10;
        
        
        -- target key length
        wait until rising_edge(FXCLK_IN);
        DATA_IN <= stdlv(to_unsigned(target_key_type'length, DATA_IN'length));
        wait until rising_edge(FXCLK_IN);
        LEN_VALID <= '1';
        wait until rising_edge(FXCLK_IN);
        LEN_VALID <= '0';
        
        -- target key
        wait until rising_edge(FXCLK_IN);
        TARGET_KEY_WR_EN  <= '1';
        wait until rising_edge(FXCLK_IN);
        for i in 0 to 31 loop
          DATA_IN <= target_key(i);
          wait until rising_edge(FXCLK_IN);
          RD_CLK  <= not RD_CLK;
          wait until rising_edge(FXCLK_IN);
        end loop;
        TARGET_KEY_WR_EN  <= '0';
        
        -- ESSID length
        wait until rising_edge(FXCLK_IN);
        DATA_IN <= stdlv(to_unsigned(essid'length, DATA_IN'length));
        wait until rising_edge(FXCLK_IN);
        LEN_VALID <= '1';
        wait until rising_edge(FXCLK_IN);
        LEN_VALID <= '0';
        
        -- ESSID
        wait until rising_edge(FXCLK_IN);
        ESSID_WR_EN <= '1';
        wait until rising_edge(FXCLK_IN);
        for i in 1 to essid'length loop
          DATA_IN <= stdlv(essid(i));
          wait until rising_edge(FXCLK_IN);
          RD_CLK  <= not RD_CLK;
          wait until rising_edge(FXCLK_IN);
        end loop;
        ESSID_WR_EN <= '0';
        wait until rising_edge(FXCLK_IN);
        
        for i in 1 to pwds'length loop
          
          -- password length
          wait until rising_edge(FXCLK_IN);
          DATA_IN <= stdlv(to_unsigned(pwd_lens(i), DATA_IN'length));
          wait until rising_edge(FXCLK_IN);
          LEN_VALID <= '1';
          wait until rising_edge(FXCLK_IN);
          LEN_VALID <= '0';
          wait until rising_edge(FXCLK_IN);
          
          -- password
          for k in 1 to pwd_lens(i) loop
            DATA_IN <= stdlv(pwds(i)(k));
            wait until rising_edge(FXCLK_IN);
            RD_CLK  <= not RD_CLK;
            wait until rising_edge(FXCLK_IN);
          end loop;
          
          wait until rising_edge(FXCLK_IN) and READY = '1';
          
        end loop;
          
        wait until rising_edge(FXCLK_IN) and FINISHED = '1';
        wait for FXCLK_IN_period*10;
        
        for i in 1 to 2 loop -- read twice
        
          wait until rising_edge(FXCLK_IN);
          WR_CLK  <= not WR_CLK;
          match_pwd_len <= unsigned(DATA_OUT);
          wait until rising_edge(FXCLK_IN);
          for i in 1 to to_integer(match_pwd_len) loop
            WR_CLK  <= not WR_CLK;
            wait until rising_edge(FXCLK_IN);
          end loop;
          
          wait for FXCLK_IN_period*50;
          
        end loop;
        
      end loop;
      
      wait for FXCLK_IN_period*10;
      assert false severity failure;
      
      wait;
   end process;

END;
