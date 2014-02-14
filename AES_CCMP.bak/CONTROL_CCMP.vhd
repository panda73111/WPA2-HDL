
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;
library UNISIM;
  use UNISIM.VComponents.all;
use work.help_funcs.all;

entity CONTROL_CCMP is
  port (
    CLK : in  STD_LOGIC;
    RST : in  STD_LOGIC;
    
    STRT : in  STD_LOGIC;
    A_AD  : in STD_LOGIC;
    A_PY  : in STD_LOGIC;
    A_CB  : in STD_LOGIC;

    SELMUX : out  STD_LOGIC_VECTOR(1 downto 0) := "00";
    START_FAAD  : out STD_LOGIC := '0'
    );
end CONTROL_CCMP;

architecture Behavioral of CONTROL_CCMP is
  
  type state_type is (
    start,
    start_n_c,
    start_add,
    start_cb,
    start_pay,
    finish
    );
  
  type stm_type is record
    state : state_type;
    cnt : unsigned(3 downto 0);
    selmux  : std_logic_vector(SELMUX'range);
    start_faad  : std_logic;
  end record;
  
  constant stm_type_def : stm_type := (
    state => start,
    cnt => (others => '0'),
    selmux  => "00",
    start_faad  => '0'
    );
  
  signal stm, next_stm  : stm_type := stm_type_def;
  
begin
  
  SELMUX  <= stm.selmux;
  START_FAAD  <= stm.start_faad;
  
  COMB : process(stm, RST, STRT, A_AD, A_PY, A_CB)
    variable tmp_stm  : stm_type  := stm_type_def;
  begin
    tmp_stm := stm;
    tmp_stm.cnt := stm.cnt + 1;
    
    case stm.state is
      
      when start =>
        if STRT = '1' then
          tmp_stm.state := start_n_c;
        end if;
        
      when start_n_c =>
        tmp_stm.start_faad  := '1';
        tmp_stm.state := start_add;
        
      when start_add =>
        tmp_stm.selmux  := "01";
        if A_AD = '1' then
          tmp_stm.state := start_cb;
        end if;
        
      when start_cb =>
        tmp_stm.selmux  := "01";
        if A_CB = '1' then
          tmp_stm.state := start_pay;
        end if;
        
      when start_pay =>
        tmp_stm.selmux  := "10";
        if A_PY = '1' then
          tmp_stm.state := finish;
        end if;
        
      when finish =>
        tmp_stm.state := start;
      
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

