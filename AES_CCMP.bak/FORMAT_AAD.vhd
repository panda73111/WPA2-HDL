
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;
library UNISIM;
  use UNISIM.VComponents.all;
use work.help_funcs.all;

entity FORMAT_AAD is
  port (
    CLK : in  STD_LOGIC;
    RST : in  STD_LOGIC;

    START_FA : in  STD_LOGIC;
    QC : in  STD_LOGIC;
    A4 : in  STD_LOGIC;
    AAD : in  STD_LOGIC_VECTOR (15 downto 0);
    SC : in  STD_LOGIC_VECTOR (3 downto 0);
    FC : in  STD_LOGIC_VECTOR (8 downto 0);

    FLAG_FA : out  STD_LOGIC := '0';
    AUX_REGT : out  STD_LOGIC := '0';
    PAY_AAD : out  STD_LOGIC_VECTOR (127 downto 0) := (others => '0')
    );
end FORMAT_AAD;

architecture Behavioral of FORMAT_AAD is
  signal selmux : std_logic_vector(1 downto 0) := "00";
  signal muxed  : std_logic_vector(15 downto 0) := (others => '0');
begin
  
  CONTROL_FORMAT_AAD_INST : entity work.control_format_aad
    port map (
      CLK => CLK,
      RST => RST,
      
      START_FAAD  => START_FA,
      FLAG_QC  => QC,
      FLAG_A4  => A4,
      
      FLAG_AD => FLAG_FA,
      AUX_REGT  => AUX_REGT,
      SELMUX  => selmux
      );
  
  MUX_PROC : process(RST, AAD, SC, FC, selmux)
  begin
    muxed <= (others => '0');
    if RST /= '1' then
      muxed <= (others => '0');
      if selmux = "00" then
        muxed(15 downto 7) <= FC;
      elsif selmux = "01" then
        muxed(15 downto 11) <= SC;
      elsif selmux = "10" then
        muxed <= (others => '0');
      elsif selmux = "11" then
        muxed <= AAD;
      end if;
    end if;
  end process;
  
end Behavioral;

