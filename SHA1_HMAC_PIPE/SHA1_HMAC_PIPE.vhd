
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.help_funcs.all;

-- 
-- 'state' is switched every 82 clock cycles, when
-- the first data (key/message/hash of both) is finished
-- hashing and needs to be processed in the next step.
-- The steps are: Hashing the inner key pad in core0;
-- appending the message in core0 and simultaneously
-- hashing the outer key pad in core1; appending
-- the hash of key & message to the outer key pad
-- in core1. In steps 1 and 3, the not mentioned
-- cores compute the data of steps 3/1 of the previous/
-- next key & message.
-- After KEY_IN/MSG_IN is set, the respective HMAC is
-- at HMAC_OUT 246 clock cycles later.
-- 
-- (key[i]/msg[i]: current clock cycle's key/msg in KEY_IN/MSG_IN)
-- 
-- state = i_keypad_and_hash:
--   core0: i_key_pad(pwd[i]), core1: hash(i_key_pad[i-1]+msg[i-1])
-- state = message_and_o_keypad:
--   core0: msg[i-82], core1: o_key_pad(pwd[i-82])
-- 

entity SHA1_HMAC_PIPE is
  port (
    RST : in std_logic;
    CLK : in std_logic;
    
    DATA_IN : in std_logic_vector(511 downto 0);
    RECURSE : in std_logic;
    
    HMAC_OUT  : out std_logic_vector(159 downto 0) := (others => '0');
    KEY_READY : out std_logic := '0';
    MSG_READY : out std_logic := '0';
    HMAC_VALID  : out std_logic := '0'
    );
end SHA1_HMAC_PIPE;

architecture Behavioral of SHA1_HMAC_PIPE is
  
  type sha1_type is record
    msg_in  : std_logic_vector(511 downto 0);
    state_in  : std_logic_vector(159 downto 0);
    hash_out  : std_logic_vector(159 downto 0);
  end record;
  signal core0, core1 : sha1_type := (
    others => (others => '0')
    );
  
  type state_type is (i_keypad_and_hash, message_and_o_keypad);
  signal state  : state_type := message_and_o_keypad;
  
  signal delayed_o_keypad : std_logic_vector(511 downto 0) := (others => '0');
  signal cnt  : unsigned(7 downto 0) := to_unsigned(255, 8);
  
begin
  
  KEY_READY <= '1' when
      (state = i_keypad_and_hash and cnt(cnt'high) = '0') or
      (state = message_and_o_keypad and cnt(cnt'high) = '1')
    else '0';
  
  MSG_READY <= '1' when
      RECURSE = '0' and
      (
        (state = message_and_o_keypad and cnt(cnt'high) = '0') or
        (state = i_keypad_and_hash and cnt(cnt'high) = '1')
      )
    else '0';
  
  HMAC_OUT  <= core1.hash_out;
  
  HMAC_VALID  <= '1' when state = message_and_o_keypad else '0';
  
  CORE0_INST : entity work.SHA1_PIPE
    port map (
      CLK => CLK,
      
      MSG_IN  => core0.msg_in,
      STATE_IN  => core0.state_in,
      
      HASH_OUT  => core0.hash_out
      );
  
  CORE1_INST : entity work.SHA1_PIPE
    port map (
      CLK => CLK,
      
      MSG_IN  => core1.msg_in,
      STATE_IN  => core1.state_in,
      
      HASH_OUT  => core1.hash_out
      );
  
  KEY_DELAY_INST : entity work.DELAY_QUEUE
    generic map (CYCLES => 82, DATA_WIDTH  => 512)
    port map (CLK, DATA_IN, delayed_o_keypad);
  
  process(RST, CLK)
  begin
    if RST = '1' then
      cnt <= to_unsigned(255, cnt'length);
      state <= message_and_o_keypad;
    elsif rising_edge(CLK) then
      cnt <= cnt - 1;
      if cnt(cnt'high) = '1' then
        -- next state every 82 cycles
        cnt <= to_unsigned(80, cnt'length);
        case state is
          when i_keypad_and_hash =>     state  <= message_and_o_keypad;
          when message_and_o_keypad =>  state  <= i_keypad_and_hash;
          when others => null;
        end case;
      end if;
    end if;
  end process;
  
  process(CLK)
  begin
    if rising_edge(CLK) then
      case state is
        
        when i_keypad_and_hash =>
          
          -- hash new i_keypad
          core0.state_in <= x"67452301EFCDAB8998BADCFE10325476C3D2E1F0";
          core0.msg_in  <= DATA_IN xor x"36363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636";
          
          -- append the hashed i_keypad+message (from core0) to o_keypad (in core1)
          core1.state_in  <= core1.hash_out;
          core1.msg_in  <= core0.hash_out & x"80000000000000000000000000000000000000000000000000000000000000000000000000000000000002A0";
          
        when message_and_o_keypad =>
          
          -- append the message to i_keypad (in core0)
          core0.msg_in  <= DATA_IN;
          core0.state_in  <= core0.hash_out;
          
          -- hash new o_keypad (in core1), that came with i_keypad 82 cycles ago
          core1.state_in <= x"67452301EFCDAB8998BADCFE10325476C3D2E1F0";
          core1.msg_in  <= delayed_o_keypad xor x"5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C";
          
          if RECURSE = '1' then
            -- stream computed HMAC back as new message
            core0.msg_in  <= core1.hash_out & x"80000000000000000000000000000000000000000000000000000000000000000000000000000000000002A0";
          end if;
          
      end case;
    end if;
  end process;
  
end Behavioral;

