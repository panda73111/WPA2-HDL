
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.ALL;
use work.help_funcs.all;

entity USB_Test is
  generic (
    CORE_CNT  : integer := 2; -- number of keys computed simultaneously (minimum: 1)
    -- if CONSIDER_LONG_KEYS = false, Passwords longer than 64 bytes result in incorrect keys! (area optimization)
    CONSIDER_LONG_KEYS  : boolean := false
    );
  port (
    FXCLK_IN  : in std_logic;
    RST : in std_logic;
    
    DATA_IN : in std_logic_vector(7 downto 0);
    RD_CLK  : in std_logic;
    WR_CLK  : in std_logic;
    ESSID_WR_EN : in std_logic;
    LEN_VALID : in std_logic;
    TARGET_KEY_WR_EN  : in std_logic;
    
    DATA_OUT  : out std_logic_vector(7 downto 0) := (others => '0');
    FINISHED  : out std_logic := '0';
    READY : out std_logic := '0';
    GOT_ESSID : out std_logic := '0';
    GOT_TARGET_KEY  : out std_logic := '0';
    DEBUG : out std_logic_vector(7 downto 0) := (others => '0')
    );
end USB_Test;

architecture Behavioral of USB_Test is
  
  type pwd_type is array(0 to 63) of std_logic_vector(7 downto 0);
  
  type wpa2_pbkdf2_type is record
    data_in : std_logic_vector(31 downto 0);
    last_data : std_logic;
    last_data_len : std_logic_vector(1 downto 0);
    pwd_valid : std_logic;
    essid_wr_en : std_logic;
    key_valid : std_logic;
    key_out : std_logic_vector(31 downto 0);
    pwd_ready : std_logic;
    
    pwd_buf : pwd_type;
    cur_pwd : pwd_type;
    got_pwd : boolean;
    buf_pwd_len : unsigned(5 downto 0);
    cur_pwd_len : unsigned(5 downto 0);
    pwd_i : integer range 0 to 63;
    is_match  : boolean;
  end record;
  
  type cores_type is array(0 to CORE_CNT - 1) of wpa2_pbkdf2_type;
  signal cores : cores_type := (others => (
    data_in => (others => '0'),
    last_data => '0',
    last_data_len => "00",
    pwd_valid => '0',
    essid_wr_en => '0',
    key_valid => '0',
    key_out => (others => '0'),
    pwd_ready => '0',
    
    pwd_buf => (others => (others => '0')),
    cur_pwd => (others => (others => '0')),
    got_pwd => false,
    buf_pwd_len => (others => '0'),
    cur_pwd_len => (others => '0'),
    pwd_i => 0,
    is_match  => false
    ));
    
  type target_key_cache_type is array(0 to 7) of std_logic_vector(31 downto 0);
  signal target_key_cache : target_key_cache_type := (others => (others => '0'));
  
  signal clk, rst_buf : std_logic := '0';
  signal din_buf  : std_logic_vector(7 downto 0) := (others => '0');
  signal rd_clk_buf, wr_clk_buf : std_logic_vector(1 downto 0) := (others => '0');
  signal len_valid_buf, essid_wr_en_buf, target_key_wr_en_buf : std_logic := '0';
  signal cnt : unsigned(4 downto 0) := to_unsigned(24, 5);
  signal cnt2 : unsigned(8 downto 0) := (others => '0');
  signal tmp_dword  : std_logic_vector(31 downto 0) := (others => '0');
  signal got_dword, got_last_dword, got_match, sent_pwd_len : boolean := false;
  signal target_key_i : integer range 0 to 7 := 0;
  
  signal core_i  : integer range 0 to CORE_CNT - 1 := 0;
  
  constant CLK_MUL  : integer := 10;
  constant CLK_DIV  : integer := 3;
begin

  READY_GEN_PROC : process(cores)
  begin
    READY <= '0';
    -- at least one core has no cached password
    for i in cores'range loop
      if not cores(i).got_pwd then
        READY <= '1';
      end if;
    end loop;
  end process;
  
  FINISHED  <= '1' when got_match else '0';
  
--  DEBUG <= (others => '0');
  
  DEBUG_GEN_1_CORE : if CORE_CNT = 1 generate
    
    DEBUG(0)  <= cores(0).pwd_ready and not cores(0).pwd_valid and not cores(0).essid_wr_en;
    DEBUG(1)  <= '1' when not cores(0).got_pwd else '0';
    DEBUG(2)  <= '1' when not cores(0).got_pwd and cores(0).pwd_ready = '1' else '0';
    DEBUG(3)  <= '1' when cores(0).is_match else '0';
    DEBUG(7 downto 4) <= (others => '0');
    
  end generate;
  
  DEBUG_GEN_2_CORE : if CORE_CNT = 2 generate
    
    DEBUG(0)  <= cores(0).pwd_ready and not cores(0).pwd_valid and not cores(0).essid_wr_en;
    DEBUG(1)  <= cores(1).pwd_ready and not cores(1).pwd_valid and not cores(1).essid_wr_en;
    DEBUG(2)  <= '1' when not cores(0).got_pwd else '0';
    DEBUG(3)  <= '1' when not cores(1).got_pwd else '0';
    DEBUG(4)  <= '1' when not cores(0).got_pwd and cores(0).pwd_ready = '1' else '0';
    DEBUG(5)  <= '1' when not cores(1).got_pwd and cores(1).pwd_ready = '1' else '0';
    DEBUG(6)  <= '1' when cores(0).is_match else '0';
    DEBUG(7)  <= '1' when cores(1).is_match else '0';
    
  end generate;
  
  CLK_MAN_INST : entity work.CLK_MAN
    generic map (
      CLK_MUL => CLK_MUL,
      CLK_DIV => CLK_DIV
      )
    port map (
      CLK_IN  => FXCLK_IN,
      CLK_OUT => clk
      );
  
  BUF_PROC : process(clk)
  begin
    if rising_edge(clk) then
      rst_buf <= RST;
      din_buf <= DATA_IN;
      rd_clk_buf(0) <= RD_CLK;
      rd_clk_buf(1) <= rd_clk_buf(0);
      wr_clk_buf(0) <= WR_CLK;
      wr_clk_buf(1) <= wr_clk_buf(0);
      len_valid_buf <= LEN_VALID;
      essid_wr_en_buf <= ESSID_WR_EN;
      target_key_wr_en_buf  <= TARGET_KEY_WR_EN;
    end if;
  end process;
  
  CORES_INST : for i in cores'range generate
    signal may_be_match : boolean := false;
    alias core  : wpa2_pbkdf2_type is cores(i);
  begin
  
    CORE_INST : entity work.wpa2_pbkdf2
      generic map (
        CONSIDER_LONG_KEYS  => CONSIDER_LONG_KEYS
        )
      port map (
        CLK => clk,
        RST => rst_buf,
        
        DATA_IN => core.data_in,
        LAST_DATA_LEN => core.last_data_len,
        LAST_DATA => core.last_data,
        PWD_VALID => core.pwd_valid,
        ESSID_WR_EN => core.essid_wr_en,
        
        KEY_OUT => core.key_out,
        KEY_VALID => core.key_valid,
        PWD_READY => core.pwd_ready
        );
        
    process(clk, rst_buf)
    begin
      if rst_buf = '1' then
        core.got_pwd  <= false;
        core.is_match <= false;
        core.pwd_i <= 0;
        may_be_match  <= false;
      elsif rising_edge(clk) then
        core.pwd_valid <= '0';
        core.essid_wr_en <= '0';
        core.last_data  <= '0';
        
        if len_valid_buf = '1' then
          core.last_data_len  <= stdlv(unsigned(din_buf(1 downto 0)) - 1); -- 0 based byte ESSID length
          if i = core_i then
            -- got the length of the ESSID or the next password
            core.buf_pwd_len <= resize(unsigned(din_buf) - 1, 6); -- 1 based byte password length
            -- (len = 63 => 64 byte password)
          end if;
        end if;
        
        if essid_wr_en_buf = '1' then
          
          -- write the essid to every core
          if got_dword then
            core.data_in  <= tmp_dword;
            core.essid_wr_en  <= '1';
          end if;
          if got_last_dword then
            core.data_in  <= tmp_dword;
            core.last_data  <= '1';
            core.essid_wr_en  <= '1';
          end if;
          
        elsif i = core_i and target_key_wr_en = '0' then
          
          if rd_clk_buf(0) /= rd_clk_buf(1) and not core.got_pwd and not got_match then
            -- DATA_IN has a byte of the next password, 
            core.pwd_buf(core.pwd_i)  <= DATA_IN;
            core.pwd_i <= core.pwd_i + 1;
            if cnt2(cnt2'high) = '1' then
              core.pwd_i <= 0;
              core.got_pwd <= true;
            end if;
          end if;
          
        end if;
        
        if core.got_pwd and core.pwd_ready = '1' and not core.is_match then
          core.data_in  <=
            core.pwd_buf(core.pwd_i) &
            core.pwd_buf(core.pwd_i + 1) &
            core.pwd_buf(core.pwd_i + 2) &
            core.pwd_buf(core.pwd_i + 3);
--          for j in 0 to 3 loop
--            core.cur_pwd(core.pwd_i + j)  <= core.pwd_buf(core.pwd_i + j);
--          end loop;
          core.pwd_valid  <= '1';
          core.pwd_i  <= core.pwd_i + 4;
          if to_unsigned(core.pwd_i, 6)(5 downto 2) = core.buf_pwd_len(5 downto 2) then
            -- last DWORD of password
            core.last_data  <= '1';
            core.last_data_len  <= stdlv(core.buf_pwd_len(1 downto 0));
            core.pwd_i  <= 0;
            core.got_pwd  <= false;
            core.cur_pwd_len  <= core.buf_pwd_len;
            core.cur_pwd  <= core.pwd_buf;
            may_be_match  <= true;
          end if;
        end if;
        
        if core.key_valid = '1' then
          if target_key_i = 7 and may_be_match then
            -- found the matching password!
            core.is_match <= true;
            core.got_pwd <= false; -- keep READY = '1' so the firmware doesn't hang
          end if;
          if core.key_out /= target_key_cache(target_key_i) then
            may_be_match  <= false;
            core.is_match <= false;
          end if;
        end if;
        
        if wr_clk_buf(0) /= wr_clk_buf(1) then
          if sent_pwd_len then
            core.pwd_i  <= core.pwd_i + 1;
          end if;
          if cnt2(cnt2'high) = '1' then
            core.pwd_i  <= 0;
          end if;
        end if;
        
      end if;
    end process;

  end generate;
  
  process(clk, rst_buf)
  begin
    if rst_buf = '1' then
      core_i  <= 0;
      got_dword <= false;
      got_last_dword  <= false;
      cnt  <= to_unsigned(24, cnt'length);
      cnt2  <= (others => '0');
      target_key_i <= 0;
      sent_pwd_len  <= false;
      got_match <= false;
      GOT_ESSID <= '0';
      GOT_TARGET_KEY  <= '0';
    elsif rising_edge(clk) then
      
      got_dword <= false;
      got_last_dword  <= false;
      
      if len_valid_buf = '1' then
        -- receive the data length from the host
        cnt2  <= resize(unsigned(din_buf), cnt2'length) - 2;
        if essid_wr_en_buf = '1' or target_key_wr_en_buf = '1' then
          -- next round of finding a matching key to the new target key, new ESSID
          got_match <= false;
        end if;
      end if;
      
      if rd_clk_buf(1) /= rd_clk_buf(0) then
        -- receive the data from the host
        cnt  <= cnt - 8;
        if cnt = 0 then
          got_dword <= true;
          cnt  <= to_unsigned(24, cnt'length);
        end if;
        -- shifting does not work with partial DWORDs
        tmp_dword(to_integer(cnt + 7) downto to_integer(cnt)) <= din_buf;
        cnt2  <= cnt2 - 1;
        if cnt2(cnt2'high) = '1' then
          got_dword <= true;
          got_last_dword  <= true;
          cnt2  <= (others => '0');
        end if;
      end if;
      
      if got_last_dword then
        cnt  <= to_unsigned(24, cnt'length);
      end if;
      
      if essid_wr_en_buf = '0' and target_key_wr_en_buf = '1' then
        if got_dword then
          -- shift the target key in
          target_key_cache(7) <= tmp_dword;
          for i in 0 to 6 loop
            target_key_cache(i) <= target_key_cache(i + 1);
          end loop;
        end if;
        if got_last_dword then
          GOT_TARGET_KEY  <= '1';
        end if;
      end if;
      
      if essid_wr_en_buf = '1' and got_last_dword then
        GOT_ESSID <= '1';
      end if;
      
      if cores(core_i).got_pwd and not cores((core_i + 1) mod CORE_CNT).got_pwd then
        -- the next core has no password cached, select that core
        core_i  <= (core_i + 1) mod CORE_CNT;
      end if;
      
      DATA_OUT  <= cores(core_i).cur_pwd(cores(core_i).pwd_i);
      
      target_key_i <= 0; -- index of the key dwords to be tested against the target key
      for i in cores'range loop
        if cores(i).key_valid = '1' then
          target_key_i <= target_key_i + 1;
        end if;
        
        if cores(i).is_match then
          got_match <= true;
          -- found the matching key, needing new ESSID & target key
          GOT_ESSID <= '0';
          GOT_TARGET_KEY  <= '0';
          core_i  <= i;
          if not sent_pwd_len then
            DATA_OUT  <= stdlv(resize(cores(i).cur_pwd_len, 8) + 1);
            cnt2  <= resize(cores(i).cur_pwd_len, cnt2'length) - 1;
          end if;
        end if;
      end loop;
      
      if wr_clk_buf(0) /= wr_clk_buf(1) then
        if not sent_pwd_len then
          sent_pwd_len  <= true;
        else
          -- shift the hash out to the host
          cnt2  <= cnt2 - 1;
          if cnt2(cnt2'high) = '1' then
            -- maybe the host reads the matching password several times
            sent_pwd_len  <= false;
            cnt2  <= resize(cores(core_i).cur_pwd_len, cnt2'length) - 1;
          end if;
        end if;
      end if;
      
    end if;
  end process;
  
end Behavioral;

