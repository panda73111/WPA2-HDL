
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.help_funcs.all;

-- 
-- there are two SHA1 core groups:
-- cores 0 & 1 in group 1, cores 2 & 3 in group 2.
-- depeding on 'state', new passwords are either
-- streamed to core0 or core2, 'state' is switched
-- every 82 clock cycles, when the first data (key/
-- message/hash of both) is finished hashing and needs
-- to be processed in the next step.
-- The steps are: Hashing the inner key pad in core0/2;
-- appending the message in core0/2 and simultaneously
-- hashing the outer key pad in core1/3; appending
-- the hash of key & message to the outer key pad
-- in core1/3. In steps 1 and 3, the not mentioned
-- cores compute the data of steps 3/1 of the previous/
-- next key & message.
-- Using the two groups, this HMAC core can receive
-- password/key combinations continuously.
-- After KEY_IN/MSG_IN is set, the respective HMAC is
-- at HMAC_OUT 246 clock cycles later.
-- 
-- (key[i]/msg[i]: current clock cycle's key/msg in KEY_IN/MSG_IN)
-- 
-- state = pwd_to_group1:
--   core0: i_key_pad(pwd[i]), core1: hash(i_key_pad[i-1]+msg[i-1])
--   core2: msg[i-82], core3: o_key_pad(pwd[i-82])
-- state = pwd_to_group2:
--   core0: msg[i-82], core1: o_key_pad(pwd[i-82])
--   core2: i_key_pad(pwd[i]), core3: hash(i_key_pad[i-1]+msg[i-1])
-- 

entity SHA1_HMAC_PIPE is
  port (
    RST : in std_logic;
    CLK : in std_logic;
    
    -- WPA2: max key length for one block: 64
    -- (1 64 byte block)
    KEY_IN  : in std_logic_vector(511 downto 0);
    -- WPA2: message is either ESSID (length 0-32 byte)
    -- or an HMAC (20 bytes)
    MSG_IN  : in std_logic_vector(255 downto 0);
    MSG_LEN : in std_logic_vector(5 downto 0);
    
    HMAC_OUT  : out std_logic_vector(159 downto 0) := (others => '0')
    );
end SHA1_HMAC_PIPE;

architecture Behavioral of SHA1_HMAC_PIPE is
  
  type sha1_type is record
    msg_in  : std_logic_vector(511 downto 0);
    state_in  : std_logic_vector(159 downto 0);
    hash_out  : std_logic_vector(159 downto 0);
  end record;
  type cores_type is array(0 to 3) of sha1_type;
  signal cores  : cores_type := (
    others => (others => (others => '0'))
    );
  
  type state_type is (pwd_to_group0, pwd_to_group1);
  signal state  : state_type := pwd_to_group0;
  
  signal delayed_key  : std_logic_vector(511 downto 0) := (others => '0');
  signal delayed_msg  : std_logic_vector(255 downto 0) := (others => '0');
  signal cnt  : unsigned(7 downto 0) := to_unsigned(80, 8);
  
begin
  
  HMAC_OUT  <=
    cores(1).hash_out when state = pwd_to_group1
      else cores(3).hash_out;
  
  CORES_INST  : for i in 0 to 3 generate
    
    CORE0_INST : entity work.SHA1_PIPE
      port map (
        CLK => CLK,
        
        MSG_IN  => cores(i).msg_in,
        STATE_IN  => cores(i).state_in,
        
        HASH_OUT  => cores(i).hash_out
        );
    
  end generate;
  
  KEY_DELAY_INST : entity work.DELAY_QUEUE
    generic map (CYCLES => 82, DATA_WIDTH  => 512)
    port map (CLK, KEY_IN, delayed_key);
  
  MSG_DELAY_INST : entity work.DELAY_QUEUE
    generic map (CYCLES => 82, DATA_WIDTH  => 256)
    port map (CLK, MSG_IN, delayed_msg);
  
  process(RST, CLK)
  begin
    if RST = '1' then
      cnt <= to_unsigned(80, cnt'length);
      state <= pwd_to_group0;
    elsif rising_edge(CLK) then
      cnt <= cnt - 1;
      if cnt(cnt'high) = '1' then
        -- next state every 82 cycles
        cnt <= to_unsigned(80, cnt'length);
        case state is
          when pwd_to_group0 => state <= pwd_to_group1;
          when pwd_to_group1 => state <= pwd_to_group0;
          when others => null;
        end case;
      end if;
    end if;
  end process;
  
  process(CLK)
  begin
    if rising_edge(CLK) then
      case state is
        
        when pwd_to_group0 =>
          
          -- group1:
          
          --   hash new i_keypad
          cores(0).state_in <= x"67452301EFCDAB8998BADCFE10325476C3D2E1F0";
          cores(0).msg_in  <= KEY_IN
            xor x"36363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636";
          
          --   append the hashed i_keypad+message (from core0) to o_keypad (in core1)
          cores(1).state_in  <= cores(1).hash_out;
          cores(1).msg_in  <= cores(0).hash_out & x"80000000000000000000000000000000000000000000000000000000000000000000000000000000000002A0";
          
          
          -- group2:
          
          cores(2).msg_in  <= delayed_msg & x"000000000000000000000000000000000000000000000000000000000000"
            & "0000001" & MSG_LEN & "000";
          cores(2).state_in  <= cores(2).hash_out;
          
          cores(3).state_in <= x"67452301EFCDAB8998BADCFE10325476C3D2E1F0";
          cores(3).msg_in  <= delayed_key
            xor x"5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C";
          
        when pwd_to_group1 =>
          
          -- group1:
          
          --   append the message to i_keypad (in core0)
          cores(0).msg_in  <= delayed_msg & x"000000000000000000000000000000000000000000000000000000000000"
            & "0000001" & MSG_LEN & "000"; -- low DWORD of message length: (MSG_LEN * 8) + (64 * 8) of previous block
          cores(0).state_in  <= cores(0).hash_out;
          
          --   hash new o_keypad (in core1), that came with i_keypad 82 cycles ago
          cores(1).state_in <= x"67452301EFCDAB8998BADCFE10325476C3D2E1F0";
          cores(1).msg_in  <= delayed_key
            xor x"5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C";
          
          
          -- group2:
          
          cores(2).state_in <= x"67452301EFCDAB8998BADCFE10325476C3D2E1F0";
          cores(2).msg_in  <= KEY_IN
            xor x"36363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636";
          
          cores(3).state_in  <= cores(3).hash_out;
          cores(3).msg_in  <= cores(2).hash_out & x"80000000000000000000000000000000000000000000000000000000000000000000000000000000000002A0";
          
      end case;
    end if;
  end process;
  
end Behavioral;

