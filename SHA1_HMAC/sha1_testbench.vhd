LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use work.help_funcs.all;
use work.txt_util.all;

entity SHA1_testbench is
end entity;

architecture behavior of SHA1_testbench is
  signal CLK  : std_logic := '0';
  signal RST  : std_logic := '0';
  
  signal MSG_IN  : std_logic_vector(31 downto 0) := (others => '0');
  signal MSG_VALID : std_logic := '0';
  signal LAST_MSG_LEN : std_logic_vector(1 downto 0) := (others => '0');
  signal LAST_MSG  : std_logic := '0';
  
  signal MSG_READY : std_logic := '0';
  signal HASH_OUT  : std_logic_vector(31 downto 0) := (others => '0');
  signal HASH_VALID  : std_logic := '0';
  
  constant CLK_period : time := 10 ns;
begin
  
  CLK_PROCESS : process
  begin
    wait for CLK_period / 2;
    CLK <= not CLK;
  end process;
  
  SHA1_INST : entity work.SHA1
    port map (
      CLK => CLK,
      RST => RST,
      
      MSG_IN  => MSG_IN,
      MSG_VALID => MSG_VALID,
      LAST_MSG_LEN  => LAST_MSG_LEN,
      LAST_MSG  => LAST_MSG,
      BACKUP_STATE  => '1',
      RESTORE_STATE => '0',
      
      MSG_READY => MSG_READY,
      HASH_OUT  => HASH_OUT,
      HASH_VALID  => HASH_VALID
      );
  
  --  Test Bench Statements
  tb : process
    file f  : text open write_mode is "D:\isim_hashes_slow.log";
--    constant msg  : string := "radiustestradiustestradiustestradiustestradiustestradiustestradiustest";
    variable hash : std_logic_vector(159 downto 0);
  begin
    -- hold reset state for 100 ns.
    wait for 100 ns;	
    RST <= '1';
    wait for CLK_period*10;
    RST <= '0';
    wait for CLK_period*4;
    
    wait for 50 ns;
    wait until rising_edge(CLK);
    
    MSG_IN <= x"61616161";
    
    for len in 1 to 56 loop
      
      MSG_VALID  <= '1';
      for i in 1 to (len-1) / 4 loop
        wait until rising_edge(CLK);
      end loop;
      
      LAST_MSG <= '1';
      LAST_MSG_LEN <= stdlv(to_unsigned((len - 1) mod 4, LAST_MSG_LEN'length));
      wait until rising_edge(CLK);
      
      MSG_VALID <= '0';
      LAST_MSG  <= '0';
      
      wait until rising_edge(CLK) and HASH_VALID = '1';
      for i in 5 downto 1 loop
        hash(i * 32 - 1 downto (i - 1) * 32) := HASH_OUT;
        wait until rising_edge(CLK);
      end loop;
      report "HASH: " & hstr(hash);
      print(f, hstr(hash, false));
      
    end loop;
      
--      for i in 1 to (msg'length - 1) / 4 loop
--        wait until rising_edge(CLK);
--        while MSG_READY = '0' loop
--          MSG_VALID  <= '0';
--          wait until rising_edge(CLK);
--        end loop;
--        for j in 4 downto 1 loop
--          MSG_IN(j * 8 - 1 downto (j - 1) * 8) <= stdlv(msg((i - 1) * 4 + (5-j)));
--        end loop;
--        MSG_VALID  <= '1';
--        
----        wait until rising_edge(CLK);
----        MSG_VALID  <= '0';
----        for j in 1 to 10 loop
----          wait until rising_edge(CLK);
----        end loop;
--        
--      end loop;
--      wait until rising_edge(CLK);
--      while MSG_READY = '0' loop
--        MSG_VALID  <= '0';
--        wait until rising_edge(CLK);
--      end loop;
--      
--      MSG_VALID  <= '1';
--      case msg'length mod 4 is
--        when 1 =>
--          MSG_IN  <= stdlv(msg(msg'length)) & x"000000";
--          LAST_MSG_LEN  <= "00";
--        when 2 =>
--          MSG_IN  <= stdlv(msg(msg'length - 1)) & stdlv(msg(msg'length)) & x"0000";
--          LAST_MSG_LEN  <= "01";
--        when 3 =>
--          MSG_IN  <= stdlv(msg(msg'length - 2)) & stdlv(msg(msg'length - 1)) & stdlv(msg(msg'length)) & x"00";
--          LAST_MSG_LEN  <= "10";
--        when 0 =>
--          MSG_IN  <= stdlv(msg(msg'length - 3)) & stdlv(msg(msg'length - 2)) & stdlv(msg(msg'length - 1)) & stdlv(msg(msg'length));
--          LAST_MSG_LEN  <= "11";
--      end case;
--      LAST_MSG <= '1';
--      wait until rising_edge(CLK);
--      MSG_VALID  <= '0';
--      LAST_MSG <= '0';
--      
--      wait until rising_edge(CLK) and HASH_VALID = '1';
--      for i in 5 downto 1 loop
--        hash(i * 32 - 1 downto (i - 1) * 32) := HASH_OUT;
--        wait until rising_edge(CLK);
--      end loop;
--      report "HASH: " & hstr(hash);
--      print(f, hstr(hash, false));
    
    wait for CLK_period * 4;
    
    assert false severity failure;
  end process;
  --  End Test Bench 

  END;
