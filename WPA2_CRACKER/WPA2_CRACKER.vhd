
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;
use work.help_funcs.all;

entity WPA2_CRACKER is
  generic (
    PWD_MIN_LEN : integer range 1 to 64 := 8;
    PWD_MAX_LEN : integer range 1 to 64 := 16
    );
  port (
    FXCLK_IN  : in std_logic;
    RST : in std_logic;
    
    DATA_CLK  : in std_logic;
    CHIP_SELECT : in std_logic;
    ESSID_WR_EN : in std_logic;
    TARGET_KEY_WR_EN  : in std_logic;
    START_PWD_WR_EN : in std_logic;
--    PWD_REQ : in std_logic;
    CHAR_WR_EN  : in std_logic;
    DATA_IN : in std_logic_vector(7 downto 0);
    
--    DATA_OUT  : out std_logic_vector(7 downto 0) := (others => '0');
    GOT_TARGET_KEY  : out std_logic := '0';
    GOT_ESSID : out std_logic := '0';
    FINISHED  : out std_logic := '0'
    );
end WPA2_CRACKER;

architecture Behavioral of WPA2_CRACKER is
  
  signal clk  : std_logic := '0';
  
  signal data_clk_flank, data_clk_prev  : std_logic := '0';
  signal rst_buf, chip_select_buf, essid_wr_en_buf, target_key_wr_en_buf,
    start_pwd_wr_en_buf, char_wr_en_buf  : std_logic := '0';
--  signal pwd_req_buf  : std_logic := '0';
  
  signal got_essid_buf, got_target_key_buf, finished_buf  : std_logic := '0';
  signal data_in_buf : std_logic_vector(7 downto 0) := x"00";
--  signal data_out_buf : std_logic_vector(7 downto 0) := x"00";
  
  signal essid  : std_logic_vector(255 downto 0) := (others => '0');
  signal essid_len  : std_logic_vector(5 downto 0) := (others => '0');
  signal target_key : std_logic_vector(159 downto 0) := (others => '0'); -- only the first 20 byte-block is compared
  
  signal pwd  : std_logic_vector(511 downto 0) := (others => '0');
--  signal pwd_delayed, pwd_shift  : std_logic_vector(511 downto 0) := (others => '0');
  signal key  : std_logic_vector(159 downto 0) := (others => '0');
  
  signal pwd_ready, pwd_gen_enable, key_valid : std_logic := '0';
  signal pwd_gen_pwd_out  : std_logic_vector(PWD_MAX_LEN*8-1 downto 0) := (others => '0');
  signal essid_cnt  : unsigned(6 downto 0) := to_unsigned(30, 7);
  signal target_key_cnt  : unsigned(5 downto 0) := to_unsigned(18, 6);
  
begin
  
--  DATA_OUT  <= data_out_buf when CHIP_SELECT = '1' else x"00";
  GOT_TARGET_KEY  <= got_target_key_buf when CHIP_SELECT = '1' else '0';
  GOT_ESSID <= got_essid_buf when CHIP_SELECT = '1' else '0';
  FINISHED  <= finished_buf when CHIP_SELECT = '1' else '0';
  
  pwd(511 downto 512-pwd_gen_pwd_out'length)  <= pwd_gen_pwd_out;
  
  CLK_MAN_INST : entity work.CLK_MAN
    generic map (
      CLK_MUL => 3,--7,
      CLK_DIV => 1--2
      )
    port map (
      CLK_IN  => FXCLK_IN,
      CLK_OUT => clk
      );
  
  WPA2_PBKDF2_PIPE_INST : entity work.WPA2_PBKDF2_PIPE
    port map (
      CLK => clk,
      RST => rst_buf,
      
      ESSID_IN  => essid,
      ESSID_LEN => essid_len,
      PWD_IN  => pwd,
      
      KEY_OUT => key,
      KEY_VALID => key_valid,
      PWD_READY => pwd_ready
      );
  
  PWD_GEN_INST : entity work.PWD_GEN
    generic map (
      MIN_LEN => PWD_MIN_LEN,
      MAX_LEN => PWD_MAX_LEN,
      OVERFLOW  => false
      )
    port map (
      CLK => clk,
      RST => rst_buf,
      
      ENABLE  => pwd_gen_enable,
      CHAR_WR_EN  => char_wr_en_buf,
      STATE_WR_EN => start_pwd_wr_en_buf,
      DATA_IN => data_in_buf,
      DATA_VALID  => data_clk_flank,
      
      PWD_OUT => pwd_gen_pwd_out
      );
  
--  PWD_DELAY_INST : entity work.DELAY_QUEUE
--    generic map (CYCLES  => 2460, DATA_WIDTH  => 512)
--    port map (clk, pwd, pwd_delayed);
  
  BUF_PROC : process(clk)
  begin
    if rising_edge(clk) then
      data_in_buf <= DATA_IN;
      data_clk_prev <= DATA_CLK;
      data_clk_flank  <= data_clk_prev xor DATA_CLK;
      chip_select_buf <= CHIP_SELECT;
      essid_wr_en_buf <= ESSID_WR_EN;
      target_key_wr_en_buf  <= TARGET_KEY_WR_EN;
      start_pwd_wr_en_buf <= START_PWD_WR_EN AND chip_select_buf;
--      pwd_req_buf <= PWD_REQ;
      char_wr_en_buf  <= CHAR_WR_EN;
      rst_buf <= RST;
    end if;
  end process;
  
  process(rst_buf, clk)
  begin
    if rst_buf = '1' then
      finished_buf  <= '0';
      got_essid_buf <= '0';
      target_key_cnt  <= to_unsigned(18, target_key_cnt'length);
      essid_cnt <= to_unsigned(30, essid_cnt'length);
      got_target_key_buf  <= '0';
      got_essid_buf <= '0';
      pwd_gen_enable  <= '0';
    elsif rising_edge(clk) then
      
      if key_valid = '1' and key = target_key then
        finished_buf  <= '1';
--        pwd_shift <= pwd_delayed;
      end if;
      
      if target_key_wr_en_buf = '0' then
        target_key_cnt  <= to_unsigned(18, target_key_cnt'length);
      end if;
      
      if data_clk_flank = '1' then
        
        if essid_wr_en_buf = '1' then
          essid(7 downto 0) <= DATA_IN;
          essid(255 downto 8) <= essid(247 downto 0);
          essid_len <= essid(253 downto 248);
          got_essid_buf <= essid_cnt(essid_cnt'high);
        end if;
        if target_key_wr_en_buf = '1' then
          -- shift in the target key (the first 20 bytes of it)
          target_key(7 downto 0)  <= DATA_IN;
          target_key(159 downto 8)  <= target_key(151 downto 0);
          target_key_cnt  <= target_key_cnt - 1;
          got_target_key_buf  <= target_key_cnt(target_key_cnt'high);
        end if;
        
--        if pwd_req_buf = '1' then
--          -- shift out pwd
--          data_out_buf  <= pwd_shift(511 downto 504);
--          pwd_shift(511 downto 8) <= pwd_shift(503 downto 0);
--        end if;
        
      end if;
      
      pwd_gen_enable  <= pwd_ready;
      
    end if;
  end process;
  
end Behavioral;

