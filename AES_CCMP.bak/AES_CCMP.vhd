
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;
library UNISIM;
  use UNISIM.VComponents.all;
use work.help_funcs.all;

entity AES_CCMP is
  port (
    CLK : in  STD_LOGIC;
    RST : in  STD_LOGIC;
    
    START : in  STD_LOGIC;
    Q : in  STD_LOGIC_VECTOR (15 downto 0);
    N : in  STD_LOGIC_VECTOR (103 downto 0);
    AAD : in  STD_LOGIC_VECTOR (15 downto 0);
    SC : in  STD_LOGIC_VECTOR(3 downto 0);
    FC : in  STD_LOGIC_VECTOR(8 downto 0);
    FLAG_A4 : in  STD_LOGIC;
    FLAG_QC : in  STD_LOGIC;
    DATA : in  STD_LOGIC;
    RESERVED : in  STD_LOGIC;
    PLAINTEXT : in  STD_LOGIC_VECTOR (127 downto 0);
    TK : in  STD_LOGIC_VECTOR (127 downto 0);
    
    MIC : out  STD_LOGIC_VECTOR (63 downto 0);
    CIPHERTEXT : out  STD_LOGIC_VECTOR (127 downto 0)
    );
end AES_CCMP;

architecture Behavioral of AES_CCMP is
  signal a_ad, a_py, a_cb : std_logic := '0';
  signal selmux : std_logic_vector(1 downto 0) := (others => '0');
  signal start_faad : std_logic := '0';
  signal pay_n_c, pay_aad, pay_pay, pay_n_q  : std_logic_vector(127 downto 0) := (others => '0');
  signal aux_regt, aux_regs : std_logic := '0';
  signal aux_selaut : std_logic := '0';
  signal cb : std_logic_vector(127 downto 0) := (others => '0');
begin
  
  CONTROL_CCMP_INST : entity work.control_ccmp
    port map (
      CLK => CLK,
      RST => RST,
      
      STRT => START,
      A_AD  => a_ad,
      A_PY  => a_py,
      A_CB  => a_cb,
      
      SELMUX  => selmux,
      START_FAAD  => start_faad
      );
      
  FORMAT_N_Q_INST : entity work.format_n_q
    port map (
      Q => Q,
      NONCE => N,
      DATA  => DATA,
      RESERVED  => RESERVED,
      
      PAY_N_Q => pay_n_q
      );
      
  FORMAT_AAD_INST : entity work.format_aad
    port map (
      CLK => CLK,
      RST => RST,
      
      START_FA  => start_faad,
      QC  => FLAG_QC,
      A4  => FLAG_A4,
      AAD => AAD,
      SC  => SC,
      FC  => FC,
      
      FLAG_FA => a_ad,
      AUX_REGT  => aux_regt,
      PAY_AAD => pay_aad
      );
      
  FORMAT_PAYLOAD_INST : entity work.format_payload
    port map (
      CLK => CLK,
      RST => RST,
      
      START_FP  => a_ad,
      Q => Q,
      PLAIN_PAY => PLAINTEXT,
      
      FLAG_FP => a_py,
      PAY_PAY => pay_pay
      );
      
  FORMAT_CB_INST : entity work.format_cb
    port map (
      CLK => CLK,
      RST => RST,
      
      START_FCB => START,
      NONCE => N,

      AUX_SELAUT  => aux_selaut,
      AUX_REGS  => aux_regs,
      A_CB  => a_cb,
      CB  => cb
      );
      
  AES_CCM_INST : entity work.aes_ccm
    port map (
      CLK => CLK,
      RST => RST,
      
      START => START,
      TK  => TK,
      BX  => PLAINTEXT,
      SEL => aux_selaut,
      REGT  => aux_regt,
      REGS  => aux_regs,
      CB  => cb,

      U => MIC,
      CIPHER_MPDU => CIPHERTEXT
      );
  
end Behavioral;

