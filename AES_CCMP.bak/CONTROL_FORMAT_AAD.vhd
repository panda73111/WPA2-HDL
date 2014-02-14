
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;
library UNISIM;
  use UNISIM.VComponents.all;
use work.help_funcs.all;

entity CONTROL_FORMAT_AAD is
  port (
    CLK : in  STD_LOGIC;
    RST : in  STD_LOGIC;
    
    START_FAAD : in  STD_LOGIC;
    FLAG_A4 : in  STD_LOGIC;
    FLAG_QC : in  STD_LOGIC;
    
    FLAG_AD : out  STD_LOGIC := '0';
    SELMUX : out  STD_LOGIC_VECTOR (1 downto 0) := "10";
    AUX_REGT : out  STD_LOGIC := '0'
    );
end CONTROL_FORMAT_AAD;

architecture Behavioral of CONTROL_FORMAT_AAD is
  
  type state_type is (
    start,
    load_fc,
    load_a1_a3,
    nop1,
    nop2,
    load_sc,
    only_a4,
    a4_qc,
    nop3,
    only_qc,
    nop4,
    none,
    finish
    );
  
  type stm_type is record
    state : state_type;
    cnt : unsigned(3 downto 0);
    flag_ad : std_logic;
    selmux  : std_logic_vector(SELMUX'range);
    aux_regt  : std_logic;
  end record;
  
  constant stm_type_def : stm_type := (
    state => start,
    cnt => (others => '0'),
    flag_ad => '0',
    selmux  => "10",
    aux_regt  => '0'
    );
  
  signal stm, next_stm  : stm_type := stm_type_def;
  
begin
  
  FLAG_AD <= stm.flag_ad;
  SELMUX  <= stm.selmux;
  AUX_REGT  <= stm.aux_regt;
  
  COMB : process(stm, RST, START_FAAD, FLAG_A4, FLAG_QC)
    variable tmp_stm  : stm_type  := stm_type_def;
  begin
    tmp_stm := stm;
    tmp_stm.cnt := stm.cnt + 1;
    
    case stm.state is
      
      when start =>
        if START_FAAD = '1' then
          tmp_stm.state := load_fc;
        else
          tmp_stm.cnt := (others => '0');
        end if;
        
      when load_fc =>
        tmp_stm.selmux  := "00";
        tmp_stm.state := load_a1_a3;
        
      when load_a1_a3 =>
        if stm.cnt = 7 then
          tmp_stm.state := nop1;
        end if;
        
      when nop1 =>
        tmp_stm.state := nop2;
        
      when nop2 =>
        tmp_stm.aux_regt  := '1';
        tmp_stm.state := nop2;
        
      when load_sc =>
        tmp_stm.selmux  := "01";
        if (FLAG_A4 and not FLAG_QC) = '1' then
          tmp_stm.state := only_a4;
        elsif (FLAG_A4 and FLAG_QC) = '1' then
          tmp_stm.state := a4_qc;
        elsif (not FLAG_A4 and FLAG_QC) = '1' then
          tmp_stm.state := only_qc;
        else
          -- FLAG_A4 = FLAG_QC = 0
          tmp_stm.state := none;
        end if;
        
      when only_a4 =>
        tmp_stm.state := nop4;
        
      when a4_qc =>
        tmp_stm.state := nop3;
        
      when nop3 =>
        tmp_stm.state := nop4;
        
      when nop4 =>
        tmp_stm.state := only_qc;
      
      when only_qc =>
        tmp_stm.state := none;
        
      when none =>
        tmp_stm.selmux  := "11";
        if stm.cnt = 0 then
          tmp_stm.state := finish;
        end if;
        
      when finish =>
        tmp_stm.flag_ad := '1';
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

