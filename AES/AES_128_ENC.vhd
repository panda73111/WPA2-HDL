
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;
library UNISIM;
  use UNISIM.VComponents.all;
use work.help_funcs.all;

entity AES_128_ENC is
  port (
    CLK : in std_logic;
    RST : in std_logic;
    
    START : in std_logic;
    PLAIN : in std_logic_vector(127 downto 0);
    KEY : in std_logic_vector(127 downto 0);
    
    CIPHER  : out std_logic_vector(127 downto 0) := (others => '0');
    DONE  : out std_logic := '0'
    );
end AES_128_ENC;

architecture Behavioral of AES_128_ENC is
  
  type sbox_table_type is array(0 to 255) of std_logic_vector(7 downto 0);
  constant sbox_table : sbox_table_type := (
    x"63", x"7c", x"77", x"7b", x"f2", x"6b", x"6f", x"c5", x"30", x"01", x"67", x"2b", x"fe", x"d7", x"ab", x"76",
    x"ca", x"82", x"c9", x"7d", x"fa", x"59", x"47", x"f0", x"ad", x"d4", x"a2", x"af", x"9c", x"a4", x"72", x"c0",
    x"b7", x"fd", x"93", x"26", x"36", x"3f", x"f7", x"cc", x"34", x"a5", x"e5", x"f1", x"71", x"d8", x"31", x"15",
    x"04", x"c7", x"23", x"c3", x"18", x"96", x"05", x"9a", x"07", x"12", x"80", x"e2", x"eb", x"27", x"b2", x"75",
    x"09", x"83", x"2c", x"1a", x"1b", x"6e", x"5a", x"a0", x"52", x"3b", x"d6", x"b3", x"29", x"e3", x"2f", x"84",
    x"53", x"d1", x"00", x"ed", x"20", x"fc", x"b1", x"5b", x"6a", x"cb", x"be", x"39", x"4a", x"4c", x"58", x"cf",
    x"d0", x"ef", x"aa", x"fb", x"43", x"4d", x"33", x"85", x"45", x"f9", x"02", x"7f", x"50", x"3c", x"9f", x"a8",
    x"51", x"a3", x"40", x"8f", x"92", x"9d", x"38", x"f5", x"bc", x"b6", x"da", x"21", x"10", x"ff", x"f3", x"d2",
    x"cd", x"0c", x"13", x"ec", x"5f", x"97", x"44", x"17", x"c4", x"a7", x"7e", x"3d", x"64", x"5d", x"19", x"73",
    x"60", x"81", x"4f", x"dc", x"22", x"2a", x"90", x"88", x"46", x"ee", x"b8", x"14", x"de", x"5e", x"0b", x"db",
    x"e0", x"32", x"3a", x"0a", x"49", x"06", x"24", x"5c", x"c2", x"d3", x"ac", x"62", x"91", x"95", x"e4", x"79",
    x"e7", x"c8", x"37", x"6d", x"8d", x"d5", x"4e", x"a9", x"6c", x"56", x"f4", x"ea", x"65", x"7a", x"ae", x"08",
    x"ba", x"78", x"25", x"2e", x"1c", x"a6", x"b4", x"c6", x"e8", x"dd", x"74", x"1f", x"4b", x"bd", x"8b", x"8a",
    x"70", x"3e", x"b5", x"66", x"48", x"03", x"f6", x"0e", x"61", x"35", x"57", x"b9", x"86", x"c1", x"1d", x"9e",
    x"e1", x"f8", x"98", x"11", x"69", x"d9", x"8e", x"94", x"9b", x"1e", x"87", x"e9", x"ce", x"55", x"28", x"df",
    x"8c", x"a1", x"89", x"0d", x"bf", x"e6", x"42", x"68", x"41", x"99", x"2d", x"0f", x"b0", x"54", x"bb", x"16"
    );
    
  signal round  : integer range 0 to 10 := 0;
  
  signal round_key  : std_logic_vector(127 downto 0) := (others => '0');
  signal round_cipher : std_logic_vector(127 downto 0) := (others => '0');
  
  procedure next_key(
    signal p_key_in : in std_logic_vector(127 downto 0);
    signal p_key_out : out std_logic_vector(127 downto 0);
    signal p_round  : in integer
    ) is
    type rcon_table_type is array(0 to 11) of std_logic_vector(7 downto 0);
    constant p_rcon_table : rcon_table_type := (
      x"01", x"02", x"04", x"08", x"10", x"20", x"40", x"80", x"1b", x"36", x"36", x"36"
      );
    variable p_round_key  : std_logic_vector(31 downto 0) := (others => '0');
    variable p_sbox_key  : std_logic_vector(31 downto 0) := (others => '0');
    variable p_rcon : std_logic_vector(7 downto 0) := (others => '0');
  begin
    p_sbox_key  :=
      sbox_table(int(p_key_in(23 downto 16))) &
      sbox_table(int(p_key_in(15 downto 8))) &
      sbox_table(int(p_key_in(7 downto 0))) &
      sbox_table(int(p_key_in(31 downto 24)));
    
    p_rcon  := p_rcon_table(round);
    
    p_round_key := p_key_in(127 downto 96);
    p_round_key := p_round_key xor p_sbox_key;
    p_round_key(31 downto 24) := p_round_key(31 downto 24) xor p_rcon;
    p_key_out(127 downto 96)  <= p_round_key;
    
    p_round_key := p_key_in(95 downto 64) xor p_round_key;
    p_key_out(95 downto 64) <= p_round_key;
    
    p_round_key := p_key_in(63 downto 32) xor p_round_key;
    p_key_out(63 downto 32) <= p_round_key;
    
    p_round_key := p_key_in(31 downto 0) xor p_round_key;
    p_key_out(31 downto 0) <= p_round_key;
  end procedure;
  
  procedure byte_sub(
    signal p_v_in : in std_logic_vector(127 downto 0);
    variable p_v_out  : out std_logic_vector(127 downto 0)
    ) is
    variable p_v_i  : integer range 7 to 127 := 127;
  begin
    p_v_i := 127;
    for p_i in 0 to 15 loop
    
      p_v_out(p_v_i downto p_v_i - 7) :=
        sbox_table(
          int(p_v_in(p_v_i downto p_v_i - 7))
          );
      
      if p_v_i /= 7 then
        p_v_i := p_v_i - 8;
      end if;
    end loop;
  end procedure;
  
  procedure shift_row(
    variable p_v_in : in std_logic_vector(127 downto 0);
    variable p_v_out  : out std_logic_vector(127 downto 0)
    ) is
  begin
    p_v_out(127 downto 120) := p_v_in(127 downto 120);
    p_v_out(119 downto 112) := p_v_in(87 downto 80);
    p_v_out(111 downto 104) := p_v_in(47 downto 40);
    p_v_out(103 downto 96) := p_v_in(7 downto  0);
    p_v_out(95 downto 88) := p_v_in(95 downto 88);
    p_v_out(87 downto 80) := p_v_in(55 downto 48);
    p_v_out(79 downto 72) := p_v_in(15 downto  8);
    p_v_out(71 downto 64) := p_v_in(103 downto 96);
    p_v_out(63 downto 56) := p_v_in(63 downto 56);
    p_v_out(55 downto 48) := p_v_in(23 downto 16);
    p_v_out(47 downto 40) := p_v_in(111 downto 104);
    p_v_out(39 downto 32) := p_v_in(71 downto 64);
    p_v_out(31 downto 24) := p_v_in(31 downto 24);
    p_v_out(23 downto 16) := p_v_in(119 downto 112);
    p_v_out(15 downto  8) := p_v_in(79 downto 72);
    p_v_out(7 downto  0) := p_v_in(39 downto 32);
  end procedure;
  
  procedure mix_column(
    variable p_v_in : in std_logic_vector(31 downto 0);
    variable p_v_out  : out std_logic_vector(31 downto 0)
    ) is
    variable add1b, add1bf7, rotl, swap_halfs, andf7, rotr
      : std_logic_vector(31 downto 0) := (others => '0');
    variable p_v_i  : integer range 7 to 31 := 31;
  begin
    p_v_i := 31;
    for p_i in 0 to 3 loop
      
      if p_v_in(p_v_i) = '1' then
        add1b(p_v_i downto p_v_i - 7) := x"1B";
      else
        add1b(p_v_i downto p_v_i - 7) := x"00";
      end if;
      
      if p_v_i /= 7 then
        p_v_i := p_v_i - 8;
      end if;
    end loop;
    
    -- swap halfs
    swap_halfs  := p_v_in(15 downto 0) & p_v_in(31 downto 16);
    
    -- rotate left 8 bits
    rotl  := p_v_in(7 downto 0) & p_v_in(31 downto 8);
    
    andf7 := p_v_in and x"7F7F7F7F";
    
    -- logical shift left 1 bit
    andf7 := andf7(30 downto 0) & "0";
    
    add1bf7 := add1b xor andf7;
    rotr  := p_v_in xor add1bf7;
    
    -- rotate right 8 bits
    rotr  := rotr(23 downto 0) & rotr(31 downto 24);
    
    p_v_out := add1bf7 xor rotr xor swap_halfs xor rotl;
  end procedure;
  
begin
  
  process(CLK, RST)
    variable intermediatea, intermediateb : std_logic_vector(127 downto 0) := (others => '0');
  begin
    if RST = '1' then
      round <= 0;
      round_cipher  <= (others => '0');
      round_key <= (others => '0');
      DONE  <= '0';
    elsif rising_edge(CLK) then
      DONE  <= '0';
      if round = 0 then
        if START = '1' then
          round_cipher  <= PLAIN xor KEY;
          next_key(KEY, round_key, round);
          round <= 1;
        end if;
      else
        round <= round + 1;
        if round = 10 then
          byte_sub(round_cipher, intermediatea);
          shift_row(intermediatea, intermediateb);
          CIPHER  <= intermediateb xor round_key;
          DONE  <= '1';
          round <= 0;
        else
          -- round 1 to 9
          byte_sub(round_cipher, intermediatea);
          shift_row(intermediatea, intermediateb);
          mix_column(intermediateb(127 downto 96), intermediatea(127 downto 96));
          mix_column(intermediateb(95 downto 64), intermediatea(95 downto 64));
          mix_column(intermediateb(63 downto 32), intermediatea(63 downto 32));
          mix_column(intermediateb(31 downto 0), intermediatea(31 downto 0));
          round_cipher  <= intermediatea xor round_key;
          next_key(round_key, round_key, round);
        end if;
      end if;
    end if;
  end process;
  
end Behavioral;

