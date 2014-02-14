
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;
use work.help_funcs.all;

-- 
-- PBKDF2 as defined in https://www.ietf.org/rfc/rfc2898.txt
-- 
-- WPA2 is using SHA1 HMAC as pseudorandom function
-- fixed values:
--  P = the 64 byte long wpa2 password of the AP
--  S = the 1 to 32 byte long essid of the AP
--  c = 4096
--  hLen = 160
--  dkLen = 256
--  l = 2
--  r = 96
--

entity WPA2_PBKDF2 is
  generic (
    -- if CONSIDER_LONG_KEYS = false, Passwords longer than 64 bytes result in incorrect keys! (area optimization)
    CONSIDER_LONG_KEYS : boolean := false
    );
  port (
    CLK : in std_logic;
    RST : in std_logic;
    
    DATA_IN  : in std_logic_vector(31 downto 0);
    -- LAST_DATA_LEN (only considered if LAST_DATA = '1'):
    -- 00 = first byte (msb) is taken from DATA_IN
    -- 01 = first two bytes (msb, msb-1) are taken from DATA_IN
    -- 10 = first three bytes (msb, msb-1, msb-2) are taken from DATA_IN
    -- 11 = all bytes are taken from DATA_IN
    LAST_DATA_LEN : in std_logic_vector(1 downto 0);
    -- if LAST_DATA = '0', PWD_LEN is ignored, full DATA_IN is taken
    LAST_DATA  : in std_logic;
    PWD_VALID : in std_logic;
    ESSID_WR_EN : in std_logic;
    
    KEY_OUT : out std_logic_vector(31 downto 0) := (others => '0');
    KEY_VALID : out std_logic := '0';
    -- PWD_READY = '1': next message is taken from DATA_IN when DATA_VALID = '1'
    PWD_READY : out std_logic := '0'
    );
end WPA2_PBKDF2;

architecture Behavioral of WPA2_PBKDF2 is
  
  type essid_cache_type is array(0 to 7) of std_logic_vector(31 downto 0);
  signal essid_cache  : essid_cache_type := (others => (others => '0'));
  signal essid_len  : unsigned(4 downto 0) := (others => '0');
  signal got_essid  : boolean := false;
  
  type state_type is (
    hashing_init_pwd,
    hashing_init_essid,
    waiting_init_essid_hash,
    iterate,
    finish
    );
  signal state  : state_type := hashing_init_pwd;
  
  type sha1_hmac_type is record
    rst : std_logic;
    data_in : std_logic_vector(31 downto 0);
    last_data_len : std_logic_vector(1 downto 0);
    last_data : std_logic;
    data_valid  : std_logic;
    recurse : std_logic;
    key_ready : std_logic;
    msg_ready : std_logic;
    hmac_out  : std_logic_vector(31 downto 0);
    hmac_valid  : std_logic;
  end record;
  signal t1, t2 : sha1_hmac_type := (
    rst => '1',
    data_in => (others => '0'),
    last_data_len => (others => '0'),
    last_data => '0',
    data_valid  => '0',
    recurse => '0',
    key_ready => '0',
    msg_ready => '0',
    hmac_out  => (others => '0'),
    hmac_valid  => '0'
    );
  signal t_rst  : std_logic := '1';
  signal t_msg_ready, t_key_ready, t_hmac_valid : std_logic := '0';
  signal t_last_data  : std_logic := '0';
  signal t_last_data_len  : std_logic_vector(1 downto 0) := (others => '0');
  signal t_data_valid : std_logic := '0';
  signal t_recurse  : std_logic := '0';
    
  signal rst_stm  : std_logic := '0';
  signal append_ti  : boolean := false;
  signal cnt  : unsigned(4 downto 0) := to_unsigned(14, 5);
  signal iter_cnt : unsigned(13 downto 0) := (others => '0');
  
  type u_hmac_type is array(0 to 7) of std_logic_vector(31 downto 0);
  signal u_hmac : u_hmac_type := (others => (others => '0'));
  
begin
  
  rst_stm <= RST or ESSID_WR_EN;
  
  t1.rst  <= t_rst;
  t2.rst  <= t_rst;
  t1.last_data  <= t_last_data;
  t2.last_data  <= t_last_data;
  t1.last_data_len  <= t_last_data_len;
  t2.last_data_len  <= t_last_data_len;
  t1.data_valid <= t_data_valid;
  t2.data_valid <= t_data_valid;
  t1.recurse  <= t_recurse;
  t2.recurse  <= t_recurse;
  
  t_msg_ready <= t1.msg_ready;
  t_key_ready <= t1.key_ready;
  t_hmac_valid  <= t1.hmac_valid;
  
  PWD_READY <= '1'
    when
      state = hashing_init_pwd and
      got_essid and
      t_key_ready = '1' and
      cnt(cnt'high) = '0' and
      LAST_DATA = '0' and
      ESSID_WR_EN = '0'
    else '0';
  
  WRITE_ESSID_PROC : process(CLK, RST)
    variable d  : std_logic_vector(31 downto 0);
    variable i  : integer range 0 to 7;
  begin
    if RST = '1' then
      essid_len <= (others => '0');
      got_essid <= false;
    elsif rising_edge(CLK) then
      if ESSID_WR_EN = '1' then
        d := DATA_IN;
        if got_essid then
          -- writing a new essid
          i := 0;
          essid_len <= to_unsigned(4, essid_len'length);
          got_essid <= false;
        else
          i := to_integer(essid_len(4 downto 2));
          essid_len <= essid_len + 4;
        end if;
        if LAST_DATA = '1' then
          essid_len <= essid_len + unsigned(LAST_DATA_LEN) + 1;
          if got_essid then
            essid_len <= resize(unsigned(LAST_DATA_LEN), 5) + 1;
          end if;
          case LAST_DATA_LEN is
            when "00" => d  := DATA_IN(31 downto 24) & x"000000";
            when "01" => d  := DATA_IN(31 downto 16) & x"0000";
            when "10" => d  := DATA_IN(31 downto 8) & x"00";
            when "11" => d  := DATA_IN;
            when others => null;
          end case;
          got_essid <= true;
        end if;
        essid_cache(i)  <= d;
      end if;
    end if;
  end process;
  
  CONSIDER_LONG_KEYS_GEN : if CONSIDER_LONG_KEYS generate
    
    T1_SHA1_HMAC_INST : entity work.SHA1_HMAC
      port map (
        CLK => CLK,
        RST => t_rst,
        
        DATA_IN  => t1.data_in,
        LAST_DATA_LEN => t1.last_data_len,
        DATA_VALID => t1.data_valid,
        LAST_DATA  => t1.last_data,
        RECURSE => t1.recurse,
        
        KEY_READY => t1.key_ready,
        MSG_READY => t1.msg_ready,
        HMAC_OUT  => t1.hmac_out,
        HMAC_VALID  => t1.hmac_valid
        );
    
    T2_SHA1_HMAC_INST : entity work.SHA1_HMAC
      generic map (
        STATE_OUTPUTS => false
        )
      port map (
        CLK => CLK,
        RST => t_rst,
        
        DATA_IN  => t2.data_in,
        LAST_DATA_LEN => t2.last_data_len,
        DATA_VALID => t2.data_valid,
        LAST_DATA  => t2.last_data,
        RECURSE => t2.recurse,
        
        KEY_READY => open, -- identical to t1.key_ready
        MSG_READY => open, -- identical to t1.msg_ready
        HMAC_OUT  => t2.hmac_out,
        HMAC_VALID  => open -- identical to t1.hmac_valid
        );
  
  end generate;
  
  ONLY_SHORT_KEYS_GEN : if not CONSIDER_LONG_KEYS generate
  
    T1_SHA1_HMAC_INST : entity work.SHA1_HMAC_shortkeys
      port map (
        CLK => CLK,
        RST => t_rst,
        
        DATA_IN  => t1.data_in,
        LAST_DATA_LEN => t1.last_data_len,
        DATA_VALID => t1.data_valid,
        LAST_DATA  => t1.last_data,
        RECURSE => t1.recurse,
        
        KEY_READY => t1.key_ready,
        MSG_READY => t1.msg_ready,
        HMAC_OUT  => t1.hmac_out,
        HMAC_VALID  => t1.hmac_valid
        );
    
    T2_SHA1_HMAC_INST : entity work.SHA1_HMAC_shortkeys
      generic map (
        STATE_OUTPUTS => false
        )
      port map (
        CLK => CLK,
        RST => t_rst,
        
        DATA_IN  => t2.data_in,
        LAST_DATA_LEN => t2.last_data_len,
        DATA_VALID => t2.data_valid,
        LAST_DATA  => t2.last_data,
        RECURSE => t2.recurse,
        
        KEY_READY => open, -- identical to t1.key_ready
        MSG_READY => open, -- identical to t1.msg_ready
        HMAC_OUT  => t2.hmac_out,
        HMAC_VALID  => open -- identical to t1.hmac_valid
        );
  
  end generate;
  
  process(CLK, rst_stm)
  begin
    if rst_stm = '1' then
      state <= hashing_init_pwd;
      cnt <= to_unsigned(14, cnt'length);
      t_rst <= '1';
      t_data_valid <= '0';
      append_ti <= false;
      KEY_VALID <= '0';
    elsif rising_edge(CLK) then
      t_rst <= '0';
      t_data_valid <= '0';
      t_last_data  <= '0';
      t_recurse <= '0';
      KEY_VALID <= '0';
      case state is
        
        when hashing_init_pwd =>
          
          if PWD_VALID = '1' then
            cnt <= cnt - 1;
          end if;
          if t_key_ready = '0' then
            cnt <= to_unsigned(14, cnt'length);
          end if;
          
          if got_essid and (PWD_VALID and t_key_ready) = '1' then
            t1.data_in  <= DATA_IN;
            t2.data_in  <= DATA_IN;
            t_data_valid  <= '1';
            t_last_data <= LAST_DATA;
            t_last_data_len <= LAST_DATA_LEN;
            if LAST_DATA = '1' then
              cnt <= (others => '0');
              state <= hashing_init_essid;
            else
              
            end if;
          end if;
          
        when hashing_init_essid =>
          
          if t_msg_ready = '1' then
            t_data_valid <= '1';
            if append_ti then
              t_last_data_len <= stdlv(essid_len(1 downto 0) - 1);
              case essid_len(1 downto 0) is
                when "00" =>
                  t1.data_in  <= x"00000001";
                  t2.data_in  <= x"00000002";
                when "01" =>
                  t1.data_in  <= x"01000000";
                  t2.data_in  <= x"02000000";
                when "10" =>
                  t1.data_in  <= x"00010000";
                  t2.data_in  <= x"00020000";
                when "11" =>
                  t1.data_in  <= x"00000100";
                  t2.data_in  <= x"00000200";
                when others => null;
              end case;
              t_last_data  <= '1';
              append_ti <= false;
              cnt <= (others => '0');
              state <= waiting_init_essid_hash;
            else
              t1.data_in  <= essid_cache(to_integer(cnt(2 downto 0)));
              t2.data_in  <= essid_cache(to_integer(cnt(2 downto 0)));
              if cnt = unsigned(stdlv(essid_len - 1)(4 downto 2)) then
                -- read the full essid out of essid_cache, append the T-index
                append_ti <= true;
              else
                cnt <= cnt + 1;
              end if;
            end if;
          end if;
          
        when waiting_init_essid_hash =>
          
          t_recurse <= '1';
          if t_hmac_valid = '1' then
            cnt <= cnt + 1;
            case cnt(2 downto 0) is
              when "000" =>
                u_hmac(0) <= t1.hmac_out;
                u_hmac(5) <= t2.hmac_out;
              when "001" =>
                u_hmac(1) <= t1.hmac_out;
                u_hmac(6) <= t2.hmac_out;
              when "010" =>
                u_hmac(2) <= t1.hmac_out;
                u_hmac(7) <= t2.hmac_out;
              when "011" =>
                u_hmac(3) <= t1.hmac_out;
              when "100" =>
                u_hmac(4) <= t1.hmac_out;
                iter_cnt  <= to_unsigned(4093, iter_cnt'length);
                cnt <= (others => '0');
                state <= iterate;
              when others => null;
            end case;
          end if;
          
        when iterate =>
          
          if iter_cnt(iter_cnt'high) = '0' then
            t_recurse <= '1';
          end if;
          if t_hmac_valid = '1' then
            -- read the previous hmac (previous 'u') out of the ram,
            -- xor it with the newly calculated hmac and store it again
            cnt <= cnt + 1;
            case cnt(2 downto 0) is
              when "000" =>
                u_hmac(0) <= u_hmac(0) xor t1.hmac_out;
                u_hmac(5) <= u_hmac(5) xor t2.hmac_out;
              when "001" =>
                u_hmac(1) <= u_hmac(1) xor t1.hmac_out;
                u_hmac(6) <= u_hmac(6) xor t2.hmac_out;
              when "010" =>
                u_hmac(2) <= u_hmac(2) xor t1.hmac_out;
                u_hmac(7) <= u_hmac(7) xor t2.hmac_out;
              when "011" =>
                u_hmac(3) <= u_hmac(3) xor t1.hmac_out;
              when "100" =>
                u_hmac(4) <= u_hmac(4) xor t1.hmac_out;
                iter_cnt  <= iter_cnt - 1;
                cnt <= (others => '0');
                if iter_cnt(iter_cnt'high) = '1' then
                  -- finished all iterations!
                  state <= finish;
                end if;
              when others => null;
            end case;
          end if;
          
        when finish =>
          
          cnt <= cnt + 1;
          KEY_VALID <= '1';
          KEY_OUT <= u_hmac(to_integer(cnt));
          if cnt = 7 then
            -- finished
            cnt <= to_unsigned(14, cnt'length);
            t_rst <= '1';
            state <= hashing_init_pwd;
          end if;
          
      end case;
    end if;
  end process;
  
end Behavioral;

