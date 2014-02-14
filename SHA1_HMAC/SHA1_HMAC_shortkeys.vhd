library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;
library UNISIM;
  use UNISIM.VComponents.all;
use work.help_funcs.all;

entity SHA1_HMAC_shortkeys is
  generic (
    -- if STATE_OUTPUTS = false, MSG_READY, KEY_READY and HMAC_VALID are tied to '0'
    -- (for use with WPA2_PBKDF2, where these outputs of one of two SHA1_HMAC cores
    -- isn't needed, by tying it, no warnings are generated)
    STATE_OUTPUTS : boolean := true
    );
  port(
    CLK : in  STD_LOGIC;
    RST : in  STD_LOGIC;
    
    -- DATA_IN: either message or key, depending on MSG_READY/KEY_READY
    DATA_IN : in  STD_LOGIC_VECTOR (31 downto 0);
    -- LAST_DATA_LEN (only considered if LAST_DATA = '1'):
    -- 00 = first byte (msb) is taken from DATA_IN
    -- 01 = first two bytes (msb, msb-1) are taken from DATA_IN
    -- 10 = first three bytes (msb, msb-1, msb-2) are taken from DATA_IN
    -- 11 = all bytes are taken from DATA_IN
    LAST_DATA_LEN : in  STD_LOGIC_VECTOR (1 downto 0);
    -- if LAST_DATA = '0', LAST_DATA_LEN is ignored, full DATA_IN is taken
    LAST_DATA  : in STD_LOGIC;
    DATA_VALID : in  STD_LOGIC;
    -- if RECURSE = '1' within 80 clock cycles before HMAC_VALID = '1',
    -- the HMAC core will run again using the computed hmac as message
    -- (this function is intended for use with PBKDF2 or similar,
    -- see https://www.ietf.org/rfc/rfc2898.txt)
    RECURSE : in STD_LOGIC;
    
    -- MSG_READY = '1': next message is taken from DATA_IN when DATA_VALID = '1'
    MSG_READY : out STD_LOGIC := '0';
    -- KEY_READY = '1': next key is taken from DATA_IN when DATA_VALID = '1',
    -- the same key is used until the core is reset by setting RST = '1'
    KEY_READY : out STD_LOGIC := '0';
    HMAC_OUT : out  STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    HMAC_VALID  : out  STD_LOGIC := '0'
    );
end SHA1_HMAC_shortkeys;

architecture Behavioral of SHA1_HMAC_shortkeys is
  
  type sha1_type is record
    msg_in  : std_logic_vector(31 downto 0);
    last_msg_len : std_logic_vector(1 downto 0);
    msg_valid : std_logic;
    last_msg  : std_logic;
    backup_state  : std_logic;
    restore_state : std_logic;
    msg_ready : std_logic;
    hash_out  : std_logic_vector(31 downto 0);
    hash_valid  : std_logic;
  end record;
  constant sha1_type_def  : sha1_type := (
    msg_in  => (others => '0'),
    last_msg_len => (others => '0'),
    msg_valid => '0',
    last_msg  => '0',
    backup_state  => '0',
    restore_state => '0',
    msg_ready => '0',
    hash_out  => (others => '0'),
    hash_valid  => '0'
    );
  signal s0, s1 : sha1_type := sha1_type_def;
  
  type state_type is (
    hashing_i_o_key_pad,
    hashing_message,
    hashing_hashed,
    waiting_finish
    );
  signal state  : state_type := hashing_i_o_key_pad;
  
  signal cnt  : unsigned(4 downto 0) := to_unsigned(14, 5);
  signal got_key  : boolean := false;
  signal recurse_hmac : boolean := false;
  
begin
  
  SHA1_INST0 : entity work.SHA1
    port map(
      CLK => CLK,
      RST => RST,
      
      MSG_IN  => s0.msg_in,
      LAST_MSG_LEN  => s0.last_msg_len,
      MSG_VALID => s0.msg_valid,
      LAST_MSG  => s0.last_msg,
      BACKUP_STATE  => s0.backup_state,
      RESTORE_STATE => s0.restore_state,
      
      MSG_READY => s0.msg_ready,
      HASH_OUT  => s0.hash_out,
      HASH_VALID  => s0.hash_valid
      );
      
  SHA1_INST1 : entity work.SHA1
    port map(
      CLK => CLK,
      RST => RST,
      
      MSG_IN  => s1.msg_in,
      LAST_MSG_LEN  => s1.last_msg_len,
      MSG_VALID => s1.msg_valid,
      LAST_MSG  => s1.last_msg,
      BACKUP_STATE  => s1.backup_state,
      RESTORE_STATE => s1.restore_state,
      
      MSG_READY => s1.msg_ready,
      HASH_OUT  => s1.hash_out,
      HASH_VALID  => s1.hash_valid
      );
      
  CONNECTED_OUTPUTS : if STATE_OUTPUTS generate
    
    MSG_READY <=
      '1' when
        RST = '0' and
        LAST_DATA = '0' and
        state = hashing_message and
        s1.msg_ready = '1' and
        s1.last_msg = '0' and
        (cnt(cnt'high) = '0' or DATA_VALID = '0')
      else '0';
      
      KEY_READY <=
        '1' when
          RST = '0' and
          LAST_DATA = '0' and
          state = hashing_i_o_key_pad and
          not got_key and
          s0.msg_ready = '1' and
          (cnt(cnt'high) = '0' or DATA_VALID = '0')
        else '0';
    
  end generate;
  
  UNCONNECTED_OUTPUTS : if not STATE_OUTPUTS generate
    
    MSG_READY <= '0';
    KEY_READY <= '0';
    HMAC_VALID  <= '0';
    
  end generate;
  
  process(CLK, RST)
  begin
    if RST = '1' then
      state <= hashing_i_o_key_pad;
      if STATE_OUTPUTS then
        HMAC_VALID  <= '0';
      end if;
      s0.msg_valid  <= '0';
      s0.backup_state <= '0';
      s1.msg_valid  <= '0';
      s1.backup_state <= '0';
      cnt <= to_unsigned(14, cnt'length);
      got_key <= false;
      recurse_hmac  <= false;
    elsif rising_edge(CLK) then
      if STATE_OUTPUTS then
        HMAC_VALID  <= '0';
      end if;
      s0.msg_valid  <= '0';
      s0.last_msg <= '0';
      s0.backup_state <= '0';
      s0.restore_state  <= '0';
      s1.msg_valid  <= '0';
      s1.last_msg <= '0';
      s1.backup_state <= '0';
      s1.restore_state  <= '0';
      case state is
        
        when hashing_i_o_key_pad =>
          
          -- i_key_pad and o_key_pad have the same length, so both sha1_cores will compute synchronised
          -- s0: hashing o_key_pad (key xored 0x5C)
          -- s1: hashing i_key_pad (key xored 0x36)
          -- (s0 and s1.msg_ready = '1' is assumed)
          s0.backup_state <= '1';
          s1.backup_state <= '1';
          if got_key then
            -- padding key with (xored) zeros
            s0.msg_valid  <= '1';
            s1.msg_valid  <= '1';
            s0.msg_in <= x"5C5C5C5C";
            s1.msg_in <= x"36363636";
            cnt <= cnt - 1;
          elsif DATA_VALID = '1' then
            s0.msg_valid  <= '1';
            s1.msg_valid  <= '1';
            s0.msg_in <= DATA_IN xor x"5C5C5C5C";
            s1.msg_in <= DATA_IN xor x"36363636";
            if LAST_DATA = '1' then
              case LAST_DATA_LEN is
                when "00" =>
                  s0.msg_in <= (DATA_IN(31 downto 24) xor x"5C") & x"5C5C5C";
                  s1.msg_in <= (DATA_IN(31 downto 24) xor x"36") & x"363636";
                when "01" =>
                  s0.msg_in <= (DATA_IN(31 downto 16) xor x"5C5C") & x"5C5C";
                  s1.msg_in <= (DATA_IN(31 downto 16) xor x"3636") & x"3636";
                when "10" =>
                  s0.msg_in <= (DATA_IN(31 downto 8) xor x"5C5C5C") & x"5C";
                  s1.msg_in <= (DATA_IN(31 downto 8) xor x"363636") & x"36";
                when others => null;
              end case;
              got_key <= true;
            end if;
            cnt <= cnt - 1;
          end if;
          if cnt(cnt'high) = '1' then
            -- reached is the last DWORD of the key
            -- (no last_msg since the message is appended)
            cnt <= to_unsigned(14, cnt'length);
            state <= hashing_message;
          end if;
          
        when hashing_message =>
          
          if s1.msg_ready = '1' then
            if DATA_VALID = '1' then
              s1.msg_in <= DATA_IN;
              s1.msg_valid  <= '1';
              s1.last_msg <= LAST_DATA;
              s1.last_msg_len <= LAST_DATA_LEN;
              cnt <= cnt - 1;
              if LAST_DATA = '1' then
                cnt <= (others => '0');
                state <= hashing_hashed;
              end if;
            end if;
          else
            cnt <= to_unsigned(14, cnt'length);
          end if;
          
        when hashing_hashed =>
          
          s1.restore_state  <= '1'; -- restore computed i_key_pad
          if s1.hash_valid = '1' then
            -- (s0.msg_ready = '1' is assumed)
            s0.msg_valid  <= '1';
            s0.msg_in <= s1.hash_out;
            cnt <= cnt + 1;
            if cnt(2) = '1' then
              s0.msg_in <= s1.hash_out(31 downto 0);
              s0.last_msg <= '1';
              s0.last_msg_len  <= "11";
              cnt <= (others => '0');
              state <= waiting_finish;
            end if;
          end if;
          
        when waiting_finish =>
          
          s0.restore_state  <= '1'; -- restore computed o_key_pad
          if RECURSE = '1' then
            recurse_hmac  <= true;
          end if;
          if s0.hash_valid = '1' then
            HMAC_OUT  <= s0.hash_out;
            if STATE_OUTPUTS then
              HMAC_VALID  <= '1';
            end if;
            cnt <= cnt + 1;
            if recurse_hmac then
              -- since s1 restored i_key_pad, msg_ready is '1' again,
              -- pipe the hmac to s1 again
              s1.msg_in <= s0.hash_out;
              s1.msg_valid  <= '1';
            end if;
            if cnt(2) = '1' then
              got_key <= false;
              cnt <= to_unsigned(14, cnt'length);
              state <= hashing_i_o_key_pad;
              if recurse_hmac then
                s1.last_msg <= '1';
                s1.last_msg_len <= "11";
                cnt <= (others => '0');
                state <= hashing_hashed;
                recurse_hmac  <= false;
              end if;
            end if;
          end if;
          
      end case;
    end if;
  end process;
  
end Behavioral;

