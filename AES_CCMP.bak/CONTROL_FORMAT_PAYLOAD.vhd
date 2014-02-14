
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;
library UNISIM;
  use UNISIM.VComponents.all;
use work.help_funcs.all;

entity CONTROL_FORMAT_PAYLOAD is
  port (
    CLK : in  STD_LOGIC;
    RST : in  STD_LOGIC;
    
    START_FAAD : in  STD_LOGIC;
    Q : in  STD_LOGIC_VECTOR (15 downto 0);

    FLAG_PAY : out  STD_LOGIC := '0';
    SELMUX : out  STD_LOGIC_VECTOR (1 downto 0) := "11";
    WREG : out  STD_LOGIC := '1'
    );
end CONTROL_FORMAT_PAYLOAD;

architecture Behavioral of CONTROL_FORMAT_PAYLOAD is
  
  type state_type is (
    start,
    nop,
    load,
    sta00,
    sta10,
    sta11,
    sta11_comp,
    finish
    );
  
  type stm_type is record
    state : state_type;
    cnt04 : unsigned(3 downto 0);
    cnt12 : unsigned(3 downto 0);
    flag_pay  : std_logic;
    selmux  : std_logic_vector(SELMUX'range);
    wreg  : std_logic;
  end record;
  
  constant stm_type_def : stm_type := (
    state => start,
    cnt04 => (others => '0'),
    cnt12 => (others => '0'),
    flag_pay  => '0',
    selmux  => "11",
    wreg  => '1'
    );
  
  signal stm, next_stm  : stm_type := stm_type_def;
  
begin
  
  FLAG_PAY  <= stm.flag_pay;
  SELMUX  <= stm.selmux;
  WREG  <= stm.wreg;
  
  COMB : process(stm, RST, START_FAAD, Q)
    variable tmp_stm  : stm_type  := stm_type_def;
  begin
    tmp_stm := stm;
    tmp_stm.cnt04 := stm.cnt04 + 1;
    tmp_stm.cnt12 := stm.cnt12 + 1;
    
    case stm.state is
      
      when start =>
        tmp_stm.wreg  := '0';
        tmp_stm.cnt04 := (others => '0');
        tmp_stm.cnt12 := (others => '0');
        if START_FAAD = '1' then
          tmp_stm.state := nop;
        end if;
        
      when nop =>
        tmp_stm.wreg  := '0';
        tmp_stm.cnt04 := (others => '0');
        tmp_stm.state := load;
        
      when load =>
        if Q(15 downto 4) = stdlv(stm.cnt12) then
          if Q(3 downto 0) = "0001" then
            -- no entire packets and one byte
            tmp_stm.state := sta10;
          else
            -- no entire packets and less than 128 bits
            tmp_stm.state := sta11;
          end if;
        else
          -- entire packets
          tmp_stm.state := sta11_comp;
        end if;
        
      when sta10 =>
        tmp_stm.selmux  := "10";
        tmp_stm.state := sta00;
        
      when sta11 =>
        if Q(3 downto 1) = stdlv(stm.cnt04(2 downto 0)) then
          if Q(0) = '1' then
            -- last byte
            tmp_stm.state := sta10;
          else
            -- last two bytes
            tmp_stm.state := sta00;
          end if;
          -- else: more than two bytes
        end if;
        
      when sta11_comp =>
        if stm.cnt04 = 8 then
          if Q(3 downto 0) = "0000" then
            -- 128 bits and no more packets
            tmp_stm.state := finish;
          else
            -- 128 bits and more packets
            tmp_stm.state := nop;
          end if;
        end if;
        
      when sta00 =>
        tmp_stm.selmux  := "00";
        if stm.cnt04 = 8 then
          -- entire packet
          tmp_stm.state := finish;
        end if;
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

