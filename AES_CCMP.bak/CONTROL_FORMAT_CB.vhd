
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;
library UNISIM;
  use UNISIM.VComponents.all;
use work.help_funcs.all;

entity CONTROL_FORMAT_CB is
  port (
    CLK : in  STD_LOGIC;
    RST : in  STD_LOGIC;
    
    START_FCB : in  STD_LOGIC;

    START_CB : out  STD_LOGIC := '0';
    REGS : out  STD_LOGIC := '1';
    SELA : out  STD_LOGIC := '0';
    FLAG_CB : out  STD_LOGIC := '0'
    );
end CONTROL_FORMAT_CB;

architecture Behavioral of CONTROL_FORMAT_CB is
  
  type state_type is (
    start,
    initial_block,
    check_128_bits,
    new_block
    );
  
  type stm_type is record
    state : state_type;
    cnt : unsigned(3 downto 0);
    start_cb  : std_logic;
    regs  : std_logic;
    sela  : std_logic;
    flag_cb : std_logic;
  end record;
  
  constant stm_type_def : stm_type := (
    state => start,
    cnt => (others => '0'),
    start_cb  => '0',
    regs  => '1',
    sela  => '0',
    flag_cb => '0'
    );
  
  signal stm, next_stm  : stm_type := stm_type_def;
  
begin
  
  START_CB  <= stm.start_cb;
  REGS  <= stm.regs;
  SELA  <= stm.sela;
  FLAG_CB <= stm.flag_cb;
  
  COMB : process(stm, RST, START_FCB)
    variable tmp_stm  : stm_type  := stm_type_def;
  begin
    tmp_stm := stm;
    tmp_stm.cnt := stm.cnt + 1;
    
    case stm.state is
      
      when start =>
        if START_FCB = '1' then
          tmp_stm.state := initial_block;
        else
          tmp_stm.cnt := (others => '0');
        end if;
        
      when initial_block =>
        tmp_stm.flag_cb := '1';
        tmp_stm.sela  := '1';
        tmp_stm.state := check_128_bits;
        
      when check_128_bits =>
        if stm.cnt = 8 then
          tmp_stm.state := new_block;
        end if;
        
      when new_block =>
        tmp_stm.flag_cb := '1';
        tmp_stm.state := check_128_bits;
      
    end case;
    
    if RST = '1' then
      next_stm  <= stm_type_def;
    else
      next_stm  <= tmp_stm;
    end if;
  end process;
  
  SYNC : process(CLK, RST)
  begin
    if RST = '1' then
      stm <= stm_type_def;
    elsif rising_edge(CLK) then
      stm <= next_stm;
    end if;
  end process;
  
end Behavioral;

