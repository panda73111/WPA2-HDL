
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;
library UNISIM;
  use UNISIM.VComponents.all;
use work.help_funcs.all;

entity FORMAT_PAYLOAD is
  port (
    CLK : in  STD_LOGIC;
    RST : in  STD_LOGIC;
    
    START_FP : in  STD_LOGIC;
    Q : in  STD_LOGIC_VECTOR (15 downto 0);
    PLAIN_PAY : in  STD_LOGIC_VECTOR (7 downto 0);
    
    FLAG_FP : out  STD_LOGIC;
    PAY_PAY : out  STD_LOGIC_VECTOR (127 downto 0)
    );
end FORMAT_PAYLOAD;

architecture Behavioral of FORMAT_PAYLOAD is
  signal selmux : std_logic_vector(1 downto 0) := "00";
  signal wr : std_logic := '0';
  signal muxed  : std_logic_vector(15 downto 0) := (others => '0');
begin
  
  CONTROL_FORMAT_PAYLOAD_INST : entity work.control_format_payload
    port map (
      CLK => CLK,
      RST => RST,
      
      START_FAAD  => START_FP,
      Q => Q,
      
      FLAG_PAY  => FLAG_FP,
      SELMUX  => selmux,
      WREG  => wr
      );
      
  MUX_PROC : process(RST, PLAIN_PAY, selmux)
  begin
    muxed <= (others => '0');
    if RST /= '1' then
      if selmux = "00" then
        muxed(15 downto 8) <= PLAIN_PAY;
      elsif selmux = "01" then
        muxed <= PLAIN_PAY & PLAIN_PAY;
      elsif selmux = "10" then
        muxed <= (others => '0');
      elsif selmux = "11" then
        muxed(7 downto 0) <= PLAIN_PAY;
      end if;
    end if;
  end process;
  
end Behavioral;

