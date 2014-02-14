library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;
use work.help_funcs.all;

entity SHA1 is
  port (
    CLK : in std_logic;
    RST : in std_logic;
    
    MSG_IN  : in std_logic_vector(31 downto 0);
    MSG_VALID : in std_logic;
    -- LAST_MSG_LEN (only considered if LAST_MSG = '1'):
    -- 00 = first byte (msb) is taken from MSG_IN
    -- 01 = first two bytes (msb, msb-1) are taken from MSG_IN
    -- 10 = first three bytes (msb, msb-1, msb-2) are taken from MSG_IN
    -- 11 = all bytes are taken from MSG_in
    LAST_MSG_LEN : in std_logic_vector(1 downto 0);
    -- if LAST_MSG = '0', LAST_MSG_LEN is ignored, full MSG_IN is taken
    LAST_MSG  : in std_logic;
    -- BACKUP_STATE / RESTORE_STATE are used in connection with SHA1_HMAC
    -- if BACKUP_STATE = '1' when MSG_READY = '1', the hash of that 80-round
    -- cycle will be backed up for later restoring
    BACKUP_STATE  : in std_logic;
    -- if RESTORE_STATE = '1' when HASH_VALID = '1' and MSG_READY = '0', the previously
    -- backed up state will be restored and used for further message hashing
    -- (so when using the same initialization message for several hashes,
    -- it has to be computed only once and doesn't need 80 clock cycles every time)
    RESTORE_STATE : in std_logic;
    
    -- MSG_READY = '1': next message is taken from MSG_IN when MSG_VALID = '1'
    MSG_READY : out std_logic := '0';
    HASH_OUT  : out std_logic_vector(31 downto 0) := (others => '0');
    HASH_VALID  : out std_logic := '0'
    );
end SHA1;

architecture Behavioral of SHA1 is
  
  type state_type is (
    first_16_rounds,
    round_15_append_high_len,
    round_16_append_low_len,
    rounds_17_to_80,
    update_hash,
    finish
    );
  signal state  : state_type := first_16_rounds;
  
  type srl_16_type is array(1 to 16) of unsigned(31 downto 0); -- shift register 'w' minus i
  signal w  : srl_16_type := (others => (others => '0'));
  signal k : unsigned(31 downto 0) := x"5A827999";
  
  signal h0 : unsigned(31 downto 0) := x"67452301";
  signal h1 : unsigned(31 downto 0) := x"EFCDAB89";
  signal h2 : unsigned(31 downto 0) := x"98BADCFE";
  signal h3 : unsigned(31 downto 0) := x"10325476";
  signal h4 : unsigned(31 downto 0) := x"C3D2E1F0";
  
  signal a, b, c, d, e  : unsigned(31 downto 0) := (others => '0');
  
  signal msg_len  : unsigned(60 downto 0) := (others => '0');
  signal first_round  : boolean := true;
  signal append_end_bit : boolean := false;
  signal appended_len : boolean := false;
  signal got_msg  : boolean := false;
  signal cnt  : unsigned(5 downto 0) := to_unsigned(14, 6);
  signal cnt2 : unsigned(5 downto 0) := to_unsigned(12, 6);
  signal f_k_phase  : unsigned(1 downto 0) := "00";
  signal f : unsigned(31 downto 0) := (others => '0');
  
  type backup_type is record
    h0, h1, h2, h3, h4  : unsigned(31 downto 0);
    msg_len : unsigned(60 downto 0);
  end record;
  signal backup : backup_type := (
    h0  => (others => '0'),
    h1  => (others => '0'),
    h2  => (others => '0'),
    h3  => (others => '0'),
    h4  => (others => '0'),
    msg_len => (others => '0')
    );
  
  signal backup_this_cycle, backed_up, restore_last_cycle  : boolean := false;
  
begin
  
  MSG_READY <=
    '1' when
      RST = '0' and
      state = first_16_rounds and
      (
        cnt(cnt'high) = '0' or MSG_VALID = '0'
      ) and
      not got_msg and
      not append_end_bit and
      LAST_MSG = '0'
    else '0';
  
  with f_k_phase select
    f <=
--      (b and c) + ((not b) and d)           when "00", -- faster, but larger
      d xor (b and (c xor d))             when "00",
      b xor c xor d                       when "01",
--      (b and c) + (d and (b xor c))       when "10", -- faster, but larger
      (b and c) or (d and (b or c))       when "10",
      b xor c xor d                       when "11",
      (others => '0')                     when others;
  
    with f_k_phase select
    k <=
      x"5A827999"     when "00",
      x"6ED9EBA1"     when "01",
      x"8F1BBCDC"     when "10",
      x"CA62C1D6"     when "11",
      (others => '0') when others;
  
  process(CLK, RST)
    variable wt : unsigned(31 downto 0) := (others => '0');
    variable pause  : boolean := false;
    variable append_len : boolean := false;
  begin
    if RST = '1' then
      h0  <= x"67452301";
      h1  <= x"EFCDAB89";
      h2  <= x"98BADCFE";
      h3  <= x"10325476";
      h4  <= x"C3D2E1F0";
      state <= first_16_rounds;
      msg_len <= (others => '0');
      first_round <= true;
      append_end_bit  <= false;
      appended_len  <= false;
      got_msg <= false;
      f_k_phase <= "00";
      cnt <= to_unsigned(14, cnt'length);
      cnt2  <= to_unsigned(12, cnt'length);
      HASH_VALID  <= '0';
      backed_up  <= false;
    elsif rising_edge(CLK) then
      pause := false;
      append_len  := false;
      HASH_VALID  <= '0';
      case state is
        
        when first_16_rounds =>
          
          wt  := (others => '0');
          if append_end_bit or got_msg then
            if append_end_bit then
              wt  := x"80000000";
              append_end_bit  <= false;
              got_msg <= true;
              cnt <= cnt - 1;
            end if;
            cnt <= cnt - 1;
            cnt2  <= cnt2 - 1;
            if cnt2(cnt2'high) = '1' then
              append_len  := true;
            end if;
          elsif MSG_VALID = '1' then
            if LAST_MSG = '1' then
              msg_len <= msg_len + unsigned(LAST_MSG_LEN) + 1;
              got_msg <= true;
              if cnt2(cnt2'high) = '1' then
                append_len  := true;
              end if;
              case LAST_MSG_LEN is
                when "00" => wt  := unsigned((MSG_IN(31 downto 24) & x"800000"));
                when "01" => wt  := unsigned((MSG_IN(31 downto 16) & x"8000"));
                when "10" => wt  := unsigned((MSG_IN(31 downto 8) & x"80"));
                when "11" =>
                  wt  := unsigned(MSG_IN);
                  append_end_bit  <= true;
                  got_msg <= false;
                  append_len  := false;
                when others => null;
              end case;
            else
              msg_len <= msg_len + 4;
              wt  := unsigned(MSG_IN);
            end if;
            cnt <= cnt - 1;
            cnt2  <= cnt2 - 1;
          else
            -- next MSG_IN is required, don't compute
            pause := true;
          end if;
          if BACKUP_STATE = '1' then
            backup_this_cycle <= true;
          end if;
          if not pause then
            if cnt(cnt'high) = '1' then
              cnt <= to_unsigned(2, cnt'length);
              cnt2  <= to_unsigned(12, cnt'length);
              state <= rounds_17_to_80;
            end if;
            if cnt2(cnt2'high) = '1' then
              -- round 16, can't append this chunk
              -- (cnt2 will be decreased once more above)
              cnt2  <= to_unsigned(13, cnt'length);
            end if;
          end if;
          
        when round_15_append_high_len =>
          
          wt  := msg_len(60 downto 29);
          state <= round_16_append_low_len;
          
        when round_16_append_low_len =>
          
          wt  := msg_len(28 downto 0) & "000";
          appended_len  <= true;
          state <= rounds_17_to_80;
          
        when rounds_17_to_80 =>
          
          cnt <= cnt - 1;
          wt  := rotate_left(w(3) xor w(8) xor w(14) xor w(16), 1);
          if cnt(cnt'high) = '1' then
            f_k_phase <= f_k_phase + 1;
            if f_k_phase = "11" then
              state <= update_hash;
            else
              cnt <= to_unsigned(18, cnt'length);
            end if;
          end if;
          
        when update_hash =>
          
          h0  <= h0 + a;
          h1  <= h1 + b;
          h2  <= h2 + c;
          h3  <= h3 + d;
          h4  <= h4 + e;
          first_round <= true;
          if appended_len then
            cnt <= (others => '0');
            HASH_OUT  <= stdlv(h0 + a);
            HASH_VALID  <= '1';
            state <= finish;
          else
            -- not all DWORDS processed, run again
            cnt <= to_unsigned(14, cnt'length);
            state <= first_16_rounds;
          end if;
          if backup_this_cycle then
            backup  <= (
              h0  => h0 + a,
              h1  => h1 + b,
              h3  => h3 + d,
              h2  => h2 + c,
              h4  => h4 + e,
              msg_len => msg_len
              );
            backed_up  <= true;
            backup_this_cycle <= false;
          end if;
          
        when finish =>
          
          pause := true;
          cnt <= cnt + 1;
          HASH_VALID  <= '1';
          if RESTORE_STATE = '1' and backed_up then
            restore_last_cycle  <= true;
          end if;
          case cnt(1 downto 0) is
            when "00" => HASH_OUT  <= stdlv(h1);
            when "01" => HASH_OUT  <= stdlv(h2);
            when "10" => HASH_OUT  <= stdlv(h3);
            when "11" => HASH_OUT  <= stdlv(h4);
              cnt <= to_unsigned(14, cnt'length);
              if restore_last_cycle then
                h0  <= backup.h0;
                h1  <= backup.h1;
                h2  <= backup.h2;
                h3  <= backup.h3;
                h4  <= backup.h4;
                msg_len <= backup.msg_len;
                restore_last_cycle  <= false;
              else
                h0  <= x"67452301";
                h1  <= x"EFCDAB89";
                h2  <= x"98BADCFE";
                h3  <= x"10325476";
                h4  <= x"C3D2E1F0";
                msg_len <= (others => '0');
              end if;
              got_msg <= false;
              appended_len  <= false;
              state <= first_16_rounds;
            when others => null;
          end case;
          
      end case;
      
      if append_len then
        cnt <= to_unsigned(2, cnt'length);
        cnt2  <= to_unsigned(12, cnt'length);
        state  <= round_15_append_high_len;
      end if;
      
      if not pause then
        if state /= update_hash then
          w(1)  <= wt;
          for i in 2 to 16 loop
            w(i)  <= w(i - 1); -- shift 'w'
          end loop;
        end if;
        if first_round then
--          a <= rotate_left(h0, 5) +
--            ((h1 and h2) or ((not h1) and h3)) +
--            h4 + k + wt;
          a <= rotate_left(h0, 5) +
            (h3 xor (h1 and (h2 xor h3))) +
            h4 + k + wt;
          e <= h3;
          d <= h2;
          c <= rotate_left(h1, 30);
          b <= h0;
          first_round <= false;
        else
          a <= rotate_left(a, 5) + f + e + k + wt;
          e <= d;
          d <= c;
          c <= rotate_left(b, 30);
          b <= a;
        end if;
      end if;
      
    end if;
  end process;
  
end Behavioral;

