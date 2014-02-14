
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;
library UNISIM;
  use UNISIM.VComponents.all;
use work.help_funcs.all;

entity FORMAT_N_Q is
  port (
    Q : in  STD_LOGIC_VECTOR (15 downto 0);
    NONCE : in  STD_LOGIC_VECTOR (103 downto 0);
    DATA : in  STD_LOGIC;
    RESERVED : in  STD_LOGIC;
    
    PAY_N_Q : out  STD_LOGIC_VECTOR (127 downto 0)
    );
end FORMAT_N_Q;

architecture Behavioral of FORMAT_N_Q is

begin
  
  PAY_N_Q <= RESERVED & DATA & "011" & "001" & NONCE & Q;
  
end Behavioral;

