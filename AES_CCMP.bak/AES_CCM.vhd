
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;
library UNISIM;
  use UNISIM.VComponents.all;
use work.help_funcs.all;

entity AES_CCM is
  port (
    CLK : in  STD_LOGIC;
    RST : in  STD_LOGIC;
    
    START : in  STD_LOGIC;
    TK : in  STD_LOGIC_VECTOR (127 downto 0);
    BX : in  STD_LOGIC_VECTOR (127 downto 0);
    SEL : in  STD_LOGIC;
    REGT : in  STD_LOGIC;
    REGS : in  STD_LOGIC;
    CB  : in STD_LOGIC_VECTOR(127 downto 0);
    
    U : out  STD_LOGIC_VECTOR (63 downto 0);
    CIPHER_MPDU : out  STD_LOGIC_VECTOR (127 downto 0)
    );
end AES_CCM;

architecture Behavioral of AES_CCM is

begin


end Behavioral;

