
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity CLK_MAN is
  generic (
    CLK_MUL : integer range 2 to 32 := 3;
    CLK_DIV : integer range 1 to 32 := 1
    );
  port (
    CLK_IN  : in std_logic;
    CLK_OUT : out std_logic := '0'
    );
end CLK_MAN;

architecture Behavioral of CLK_MAN is
  signal fxclk, dcm_clk, dcm_locked, pll_fb, pll_clk0, pll_reset  : std_logic := '0';
begin
  
  pll_reset <= not dcm_locked;
  
  IBUFG_INST : IBUFG
    port map (
      I => CLK_IN,
      O => fxclk
      );
  
  DCM_INST : DCM_SP
    generic map (
      CLKFX_MULTIPLY  => CLK_MUL,
      CLKFX_DIVIDE  => CLK_DIV,
      CLKIN_PERIOD  => 20.3,
      DESKEW_ADJUST => "SOURCE_SYNCHRONOUS"
      )
    port map (
      RST => '0',
      CLKIN => fxclk,
      CLKFX => dcm_clk,
      LOCKED  => dcm_locked
      );
  
  PLL_INST : PLL_BASE
    generic map (
      BANDWIDTH => "LOW",
    	CLKFBOUT_MULT => 4,
    	CLKOUT0_DIVIDE  => 4,
    	CLKOUT0_DUTY_CYCLE  => 0.5,
    	CLK_FEEDBACK  => "CLKFBOUT",
    	COMPENSATION  => "DCM2PLL",
	    DIVCLK_DIVIDE => 1,
    	REF_JITTER  => 0.05,
	    RESET_ON_LOSS_OF_LOCK => false
      )
    port map (
      CLKFBOUT  => pll_fb,
	    CLKOUT0 => pll_clk0,
	    CLKFBIN => pll_fb,
	    CLKIN => dcm_clk,
	    RST => pll_reset
      );
  
  BUFG_INST : BUFG
    port map (
      I => pll_clk0,
      O => CLK_OUT
      );
  
end Behavioral;