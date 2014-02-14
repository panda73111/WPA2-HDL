
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use work.help_funcs.all;
use work.txt_util.all;
use std.textio.all;
 
ENTITY SHA1_HMAC_PIPE_Testbench IS
END SHA1_HMAC_PIPE_Testbench;
 
ARCHITECTURE behavior OF SHA1_HMAC_PIPE_Testbench IS 
 
  --Inputs
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';
   
   signal DATA_IN : std_logic_vector(511 downto 0) := (others => '0');
   
   signal KEY_IN  : std_logic_vector(511 downto 0) := (others => '0');
   signal MSG_IN  : std_logic_vector(255 downto 0) := (others => '0');
   signal MSG_LEN : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal HMAC_OUT : std_logic_vector(159 downto 0);
   
   signal KEY_READY : std_logic;
   signal MSG_READY : std_logic;
   signal HMAC_VALID  : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   SHA1_HMAC_PIPE_INST : entity work.SHA1_HMAC_PIPE
    port map (
          CLK => CLK,
          RST => RST,
          
          DATA_IN => DATA_IN,
--          KEY_IN  => KEY_IN,
--          MSG_IN  => MSG_IN,
--          MSG_LEN => MSG_LEN,
          
          HMAC_OUT => HMAC_OUT,
          KEY_READY => KEY_READY,
          MSG_READY => MSG_READY,
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
--    file f  : text open write_mode is "D:\isim_hashes_pipe.log";
--    constant max_key_len : integer := 55;
--    constant max_msg_len : integer := 55;
--    variable init : boolean;
    variable p_msg  : integer range 0 to 2;
    variable p_key  : integer range 0 to 2;
    constant msg0 : string := "erste Message";
    constant msg1 : string := "noch eine Message";
    constant msg2 : string := "Ja sogar drei Nachrichten";
    constant key0 : string := "Und der erste Schluessel";
    constant key1 : string := "noch ein Schluessel";
    constant key2 : string := "passwort geheim 1234";
   begin		
      -- hold reset state for 100 ns.
      RST <= '1';
      wait for 100 ns;
      RST <= '0';
      wait for CLK_period*10;

      -- insert stimulus here
      
      -- TEST CASE 0
      
--      for j in 63 downto 63 loop
--        KEY_IN(j * 8 + 7 downto j * 8) <= x"61";
--      end loop;
--      
--      for j in 31 downto 31 loop
--        MSG_IN(j * 8 + 7 downto j * 8) <= x"61";
--      end loop;
--      MSG_IN(30 * 8 + 7) <= '1'; -- end bit
--      MSG_LEN <= stdlv(to_unsigned(1, MSG_LEN'length));
--      
--      wait;
      
      -- TEST CASE 1
      
--      init  := true;
--      
--      wait until rising_edge(CLK) and MSG_READY = '1';
--      
--      for msg_len in 1 to max_key_len loop
--        
--        for key_len in 1 to max_msg_len loop
--          
--          wait until rising_edge(CLK) and KEY_READY = '1';
--          DATA_IN <= (others => '0');
--          for j in 63 downto 64-key_len loop
--            DATA_IN(j * 8 + 7 downto j * 8) <= x"61";
--          end loop;
--          
--        end loop;
--        
--        wait until rising_edge(CLK);
--        DATA_IN <= (others => '0');
--        
--        wait until rising_edge(CLK) and MSG_READY = '1';
--        DATA_IN <= (others => '0');
--        for j in 63 downto 64-msg_len loop
--          DATA_IN(j * 8 + 7 downto j * 8) <= x"61";
--        end loop;
--        DATA_IN((63-msg_len) * 8 + 7) <= '1'; -- end bit
--        DATA_IN(31 downto 0)  <= stdlv(to_unsigned((msg_len+64) * 8, 32)); -- length appending
--        
--        wait until rising_edge(CLK);
--        for key_len in 1 to max_key_len loop
--          if not init then
--            report "HMAC: " & hstr(HMAC_OUT);
--            print(f, "key:" & Integer'image(key_len) & " msg:" & Integer'image(msg_len-1) & " " & hstr(HMAC_OUT, false));
--          end if;
--          wait until rising_edge(CLK);
--        end loop;
--        
--        init  := false;
--        
--      end loop;
--      
--      wait until rising_edge(CLK) and KEY_READY = '1';
--      wait until rising_edge(CLK) and MSG_READY = '1';
--      wait until rising_edge(CLK);
--      for key_len in 1 to max_key_len loop
--        report "HMAC: " & hstr(HMAC_OUT);
--        print(f, "key:" & Integer'image(key_len) & " msg:" & Integer'image(max_msg_len) & " " & hstr(HMAC_OUT, false));
--        wait until rising_edge(CLK);
--      end loop;
--      
--      wait for CLK_period*50;
--      assert false severity failure;
      
      -- TEST CASE 2
      
      p_msg := 0;
      p_key := 0;
      
      wait until rising_edge(CLK) and MSG_READY = '1';
      wait until rising_edge(CLK) and KEY_READY = '1';
      
      for i in 1 to 1000 loop
        
        if KEY_READY = '1' then
          DATA_IN <= (others => '0');
          case p_key is
            when 0 =>
              for i in key0'range loop
                DATA_IN((64-i) * 8 + 7 downto (64-i) * 8) <= stdlv(key0(i));
              end loop;
            when 1 =>
              for i in key1'range loop
                DATA_IN((64-i) * 8 + 7 downto (64-i) * 8) <= stdlv(key1(i));
              end loop;
            when 2 =>
              for i in key2'range loop
                DATA_IN((64-i) * 8 + 7 downto (64-i) * 8) <= stdlv(key2(i));
              end loop;
          end case;
          p_key := (p_key + 1) mod 3;
        elsif MSG_READY = '1' then
          DATA_IN <= (others => '0');
          case p_msg is
            when 0 =>
              for i in msg0'range loop
                DATA_IN((64-i) * 8 + 7 downto (64-i) * 8) <= stdlv(msg0(i));
              end loop;
              DATA_IN((63-msg0'length) * 8 + 7) <= '1'; -- end bit
              DATA_IN(31 downto 0)  <= stdlv(to_unsigned((msg0'length+64) * 8, 32)); -- length appending
            when 1 =>
              for i in msg1'range loop
                DATA_IN((64-i) * 8 + 7 downto (64-i) * 8) <= stdlv(msg1(i));
              end loop;
              DATA_IN((63-msg1'length) * 8 + 7) <= '1'; -- end bit
              DATA_IN(31 downto 0)  <= stdlv(to_unsigned((msg1'length+64) * 8, 32)); -- length appending
            when 2 =>
              for i in msg2'range loop
                DATA_IN((64-i) * 8 + 7 downto (64-i) * 8) <= stdlv(msg2(i));
              end loop;
              DATA_IN((63-msg2'length) * 8 + 7) <= '1'; -- end bit
              DATA_IN(31 downto 0)  <= stdlv(to_unsigned((msg2'length+64) * 8, 32)); -- length appending
          end case;
          p_msg := (p_msg + 1) mod 3;
        end if;
        wait until rising_edge(CLK);
        
      end loop;
      
      wait for CLK_period*50;
      assert false severity failure;
      
      wait;
   end process;

END;
