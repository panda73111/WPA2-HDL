
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.help_funcs.all;

-- 
-- Only the first block of two is computed,
-- since the computation of the second block
-- would require either twice the clock cycles
-- or LUTs, and if the first block (which is the
-- first 20 of 32 bytes) matches, is VERY likely
-- that the second block and the password do also.
-- A matching first block is therefore rare enough
-- to verify the second block by the host.
-- 

entity WPA2_PBKDF2_PIPE is
  port (
    CLK : in std_logic;
    RST : in std_logic;
    
    ESSID_IN  : in std_logic_vector(255 downto 0);
    ESSID_LEN : in std_logic_vector(5 downto 0);
    PWD_IN  : in std_logic_vector(511 downto 0);
    
    KEY_OUT : out std_logic_vector(159 downto 0) := (others => '0');
    KEY_VALID : out std_logic := '0';
    PWD_READY : out std_logic := '0'
    );
end WPA2_PBKDF2_PIPE;

architecture Behavioral of WPA2_PBKDF2_PIPE is
  
  signal hmac_data_in : std_logic_vector(511 downto 0) := (others => '0');
  signal hmac_msg_ready, hmac_key_ready, hmac_valid, hmac_recurse : std_logic := '0';
  signal hmac_out, interm_hmac_in, interm_hmac_out  : std_logic_vector(159 downto 0) := (others => '0');
  signal pwd_cache_in, pwd_cache_out  : std_logic_vector(511 downto 0) := (others => '0');
  signal iter_cnt : unsigned(12 downto 0) := to_unsigned(4094, 13);
  signal cnt  : unsigned(8 downto 0) := to_unsigned(162, 9);
  signal ready_cnt  : unsigned(7 downto 0) := to_unsigned(80, 8);
  
  signal first_round  : boolean := true;
  signal first_round_prev, first_round_prev_prev  : boolean := true;
  signal first_round_hmac_valid : boolean := false;
  
begin
  
  KEY_OUT <= interm_hmac_out xor hmac_out;
  
  KEY_VALID <= '1' when
      first_round_hmac_valid
    else '0';
  
  PWD_READY <= '1' when
      (
        iter_cnt(iter_cnt'high) = '1' and
        cnt(cnt'high) = '1' 
      ) or
      (
        first_round and
        hmac_key_ready = '1' and
        ready_cnt(ready_cnt'high) = '0'
      )
    else '0';
  
  first_round_hmac_valid  <= first_round_prev_prev and hmac_valid = '1';
  
  HMAC_INST : entity work.SHA1_HMAC_PIPE
    port map (
      CLK => CLK,
      RST => RST,
      
      DATA_IN => hmac_data_in,
      RECURSE => hmac_recurse,
      
      HMAC_OUT  => hmac_out,
      KEY_READY => hmac_key_ready,
      MSG_READY => hmac_msg_ready,
      HMAC_VALID  => hmac_valid
      );
  
  HMAC_INTERM_DELAY_INST : entity work.DELAY_QUEUE
    generic map (CYCLES  => 163, DATA_WIDTH  => 160)
    port map (CLK, interm_hmac_in, interm_hmac_out);
  
  PWD_CACHE_INST : entity work.DELAY_QUEUE
    generic map (CYCLES  => 163, DATA_WIDTH  => 512)
    port map (CLK, pwd_cache_in, pwd_cache_out);
  
  process(CLK, RST)
  begin
    if RST = '1' then
      iter_cnt  <= to_unsigned(4094, iter_cnt'length);
      --pragma translate_off
      iter_cnt  <= to_unsigned(14, iter_cnt'length);
      --pragma translate_on
      cnt <= to_unsigned(162, cnt'length);
      ready_cnt <= to_unsigned(80, ready_cnt'length);
      first_round <= true;
      first_round_prev  <= true;
    elsif rising_edge(CLK) then
      cnt <= cnt - 1;
      if cnt(cnt'high) = '1' then
        first_round  <= false;
        iter_cnt  <= iter_cnt - 1;
        if iter_cnt(iter_cnt'high) = '1' then
          first_round <= true;
          iter_cnt  <= to_unsigned(4094, iter_cnt'length);
          --pragma translate_off
          iter_cnt  <= to_unsigned(14, iter_cnt'length);
          --pragma translate_on
        end if;
        cnt <= to_unsigned(162, cnt'length);
      end if;
      ready_cnt <= to_unsigned(80, ready_cnt'length);
      if hmac_key_ready = '1' then
        ready_cnt <= ready_cnt - 1;
      end if;
      first_round_prev  <= first_round;
      first_round_prev_prev <= first_round_prev;
    end if;
  end process;
  
  process(CLK)
  begin
    if rising_edge(CLK) then
      
      hmac_recurse  <= '1';
      
      if first_round then
      
        hmac_recurse  <= '0';
        
        if hmac_key_ready = '1' then
          hmac_data_in  <= PWD_IN;
        end if;
        
        if hmac_msg_ready = '1' then
          hmac_data_in  <= (others => '0');
          hmac_data_in(511 downto 256)  <= ESSID_IN;
          hmac_data_in(511-to_integer(unsigned(ESSID_LEN))*8-31)  <= '1'; -- index of PKBDF2 block 1
          hmac_data_in(511-to_integer(unsigned(ESSID_LEN))*8-32)  <= '1'; -- end bit
          hmac_data_in(15 downto 0) <= "0000001" & stdlv(unsigned(ESSID_LEN)+4) & "000"; -- length appending
          -- (+64 bytes key pad block length, +4 bytes PBKDF2 block index)
        end if;
        
        pwd_cache_in  <= PWD_IN;
        
      else
        
        if hmac_key_ready = '1' then
          hmac_data_in  <= pwd_cache_out;
        end if;
        
        pwd_cache_in  <= pwd_cache_out;
        
      end if;
      
      if first_round_hmac_valid then
        interm_hmac_in  <= (others => '0');
      else
        interm_hmac_in  <= interm_hmac_out xor hmac_out;
      end if;
      
    end if;
  end process;
  
end Behavioral;

