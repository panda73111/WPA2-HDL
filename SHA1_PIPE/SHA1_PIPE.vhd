
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;
use work.help_funcs.all;

entity SHA1_PIPE is
  port (
    CLK : in std_logic;
    
    MSG_IN  : in std_logic_vector(511 downto 0);
    STATE_IN  : in std_logic_vector(159 downto 0);
    
    HASH_OUT  : out std_logic_vector(159 downto 0) := (others => '0')
    );
end SHA1_PIPE;

architecture Behavioral of SHA1_PIPE is
  type round_type is record
    a, b, c, d, e  : unsigned(31 downto 0);
    w : unsigned(511 downto 0);
  end record;
  type rounds_type is array(0 to 79) of round_type;
  signal rounds : rounds_type := (
    others => (others => (others => '0'))
    );
  signal delayed_state  : std_logic_vector(159 downto 0) := (others => '0');
    
  function w_i(w  : unsigned(511 downto 0); i : integer) return unsigned is
  begin
    -- the shift register w contains the 16 previous DWORDs
    -- this functions returns the DWORD from round [current] minus i
    return w((i-1) * 32 + 31 downto (i-1) * 32);
  end function;
begin
  
  DELAY_QUEUE_INST : entity work.DELAY_QUEUE
    generic map (
      CYCLES  => 80,
      DATA_WIDTH  => 160
      )
    port map (
      CLK => CLK,
      
      DATA_IN => STATE_IN,
      
      DATA_OUT  => delayed_state
      );
  
  FIRST_ROUND_PROC : process(CLK)
    variable f, k : unsigned(31 downto 0);
    alias r : round_type is rounds(0);
    variable h0, h1, h2, h3, h4 : unsigned(31 downto 0);
  begin
    if rising_edge(CLK) then
      h0  := unsigned(STATE_IN(159 downto 128));
      h1  := unsigned(STATE_IN(127 downto 96));
      h2  := unsigned(STATE_IN(95 downto 64));
      h3  := unsigned(STATE_IN(63 downto 32));
      h4  := unsigned(STATE_IN(31 downto 0));
      f := (h1 and h2) or ((not h1) and h3);
      k := x"5A827999";
      r.a <= rotate_left(h0, 5) + f + h4 + k + unsigned(MSG_IN(511 downto 480));
      r.b <= h0;
      r.c <= rotate_left(h1, 30);
      r.d <= h2;
      r.e <= h3;
      r.w  <= unsigned(MSG_IN);
    end if;
  end process;
  
  ROUND_1_79_GEN : for i in 1 to 79 generate
    alias pr  : round_type is rounds(i-1);
    alias r : round_type is rounds(i);
    signal f, k : unsigned(31 downto 0) := (others => '0');
  begin
    
    F_K_0_19_GEN : if i <= 19 generate
      f <= (pr.b and pr.c) or ((not pr.b) and pr.d);
      k <= x"5A827999";
    end generate;
    
    F_L_20_39_GEN : if i >= 20 and i <= 39 generate
      f <= pr.b xor pr.c xor pr.d;
      k <= x"6ED9EBA1";
    end generate;
    
    F_L_40_59_GEN : if i >= 40 and i <= 59 generate
      f <= (pr.b and pr.c) or (pr.b and pr.d) or (pr.c and pr.d);
      k <= x"8F1BBCDC";
    end generate;
    
    F_L_60_79_GEN : if i >= 60 generate
      f <= pr.b xor pr.c xor pr.d;
      k <= x"CA62C1D6";
    end generate;
    
    ROUND_1_79_PROC : process(CLK)
      variable w0 : unsigned(31 downto 0);
    begin
      if rising_edge(CLK) then
        if i < 16 then
          w0  := w_i(pr.w,16-i);
          r.w <= pr.w;
        else
          -- start shifting
          w0  := rotate_left(w_i(pr.w,3) xor w_i(pr.w,8) xor w_i(pr.w,14) xor w_i(pr.w,16), 1);
          r.w <= pr.w(479 downto 0) & w0;
        end if;
        r.a <= rotate_left(pr.a, 5) + f + pr.e + k + w0;
        r.b <= pr.a;
        r.c <= rotate_left(pr.b, 30);
        r.d <= pr.c;
        r.e <= pr.d;
      end if;
    end process;
    
  end generate;
  
  COMBINE_PROC : process(CLK)
    variable h0, h1, h2, h3, h4
      : unsigned(31 downto 0) := (others => '0');
  begin
    if rising_edge(CLK) then
      h0  := unsigned(delayed_state(159 downto 128)) + rounds(79).a;
      h1  := unsigned(delayed_state(127 downto 96)) + rounds(79).b;
      h2  := unsigned(delayed_state(95 downto 64)) + rounds(79).c;
      h3  := unsigned(delayed_state(63 downto 32)) + rounds(79).d;
      h4  := unsigned(delayed_state(31 downto 0)) + rounds(79).e;
      HASH_OUT  <= h0 & h1 & h2 & h3 & h4;
    end if;
  end process;
  
end Behavioral;

