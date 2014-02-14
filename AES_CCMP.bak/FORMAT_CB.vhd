
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;
library UNISIM;
  use UNISIM.VComponents.all;
use work.help_funcs.all;

entity FORMAT_CB is
  port (
    CLK : in  STD_LOGIC;
    RST : in  STD_LOGIC;
    
    START_FCB : in  STD_LOGIC;
    NONCE : in  STD_LOGIC_VECTOR (103 downto 0);
    
    AUX_SELAUT : out  STD_LOGIC;
    AUX_REGS : out  STD_LOGIC;
    A_CB : out  STD_LOGIC;
    CB : out  STD_LOGIC_VECTOR (127 downto 0)
    );
end FORMAT_CB;

architecture Behavioral of FORMAT_CB is
  signal start_c  : std_logic := '0';
  signal ctrl_flag_cb : std_logic := '0';
  signal cnt  : unsigned(15 downto 0) := (others => '0');
begin
  
  CONTROL_FORMAT_CB_INST : entity work.control_format_cb
    port map (
      CLK => CLK,
      RST => RST,
      
      START_FCB => START_FCB,
      
      START_CB  => start_c,
      REGS  => AUX_REGS,
      SELA  => AUX_SELAUT,
      FLAG_CB => ctrl_flag_cb
      );
      
  A_CB  <= ctrl_flag_cb;
  
  CNT_PROC : process(CLK, RST)
  begin
    if RST = '1' then
      cnt <= (others => '0');
    elsif rising_edge(CLK) then
      if ctrl_flag_cb = '1' then
        cnt <= (others => '0');
      elsif start_c = '1' then
        cnt <= cnt + 1;
      end if;
    end if;
  end process;
  
  CB  <= "0" & "0" & "000" & "001" & NONCE & stdlv(cnt);
  
end Behavioral;

