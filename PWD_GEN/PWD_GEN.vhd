
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.help_funcs.all;

entity PWD_GEN is
    generic (
        MIN_LEN : integer range 1 to 64 := 8;
        MAX_LEN : integer range 1 to 64 := 64;
        -- OVERFLOW = true: After generating all possible passwords,
        -- the generation resets to the first password with length MIN_LEN ("9999" -> "a")
        -- OVERFLOW = false: After generating all possible passwords,
        -- the generation is stuck on passwords with length MAX_LEN ("9999" -> "aaaa")
        OVERFLOW    : boolean := false
        );
    port (
        CLK : in std_logic;
        RST : in std_logic;
        
        ENABLE    : in std_logic;
        CHAR_WR_EN    : in std_logic;
        STATE_WR_EN : in std_logic;
        DATA_IN : in std_logic_vector(7 downto 0);
        DATA_VALID    : in std_logic;
        
        PWD_OUT : out std_logic_vector(MAX_LEN*8-1 downto 0) := (others => '0')
        );
end PWD_GEN;

architecture Behavioral of PWD_GEN is
    -- the 'empty element' has to be the first charset element!
    type charset_type is array(0 to 63) of std_logic_vector(7 downto 0);
    constant charset_init : charset_type := ( -- a-z0-9
        x"00",
        x"61", x"62", x"63", x"64", x"65", x"66", x"67", x"68", x"69", x"6A", x"6B", x"6C", x"6D", x"6E", x"6F", x"70",
        x"71", x"72", x"73", x"74", x"75", x"76", x"77", x"78", x"79", x"7A", x"30", x"31", x"32", x"33", x"34", x"35",
        x"36", x"37", x"38", x"39", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
        x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00"
        );
    signal charset    : charset_type := charset_init;
    signal got_charset    : boolean := true;
    signal charset_len    : integer range 0 to 63 := 36; -- zero based
    
    type charset_pointers_type is array(MAX_LEN-1 downto 0) of integer range 0 to 63;
    signal charset_pointers : charset_pointers_type := (MIN_LEN-1 downto 0 => 1, others => 0);
    
    type carry_chain_type is array(MAX_LEN-1 downto 0) of boolean;
    signal carry_chain    : carry_chain_type := (others => false);
    
    signal rst_gen    : std_logic := '0';
begin
    
    rst_gen <= '1' when RST = '1' or not got_charset else '0';
    
    CONCAT_PWD_GEN : for i in 0 to MAX_LEN-1 generate
        PWD_OUT((MAX_LEN-1-i)*8+7 downto (MAX_LEN-1-i)*8) <= charset(charset_pointers(i));
    end generate;
    
    WR_CHARSET_PROC : process(RST, CLK)
    begin
        if RST = '1' then
            charset <= charset_init;
            got_charset <= true;
            charset_len <= 36;
        elsif rising_edge(CLK) then
            if CHAR_WR_EN = '1' then
                if got_charset then
                    -- new charset
                    got_charset <= false;
                    charset_len <= 0;
                    charset <=    (others => x"00");
                elsif DATA_VALID = '1' then
                    charset_len <= charset_len + 1;
                    charset(charset_len+1)    <= DATA_IN;
                end if;
            else
                got_charset <= true;
            end if;
        end if;
    end process;
    
    CARRY_CHAIN_PROC : process(RST, CLK)
    begin
        if RST = '1' then
            carry_chain <= (others => false);
        elsif rising_edge(CLK) then
            carry_chain(0)    <= charset_pointers(0) = charset_len - 1;
            for i in 1 to MAX_LEN-1 loop
                carry_chain(i)    <= charset_pointers(i) = charset_len;
            end loop;
        end if;
    end process;
    
    PWD_GEN_PROC : process(rst_gen, CLK)
        constant true_comp    : carry_chain_type := (others => true);
    begin
        if rst_gen = '1' then
            charset_pointers <= (MIN_LEN-1 downto 0 => 1, others => 0);
        elsif rising_edge(CLK) then
            if STATE_WR_EN = '1' then
                
                if DATA_VALID = '1' then
                    -- shift the new state in
                    charset_pointers(MAX_LEN-1)    <= to_integer(unsigned(DATA_IN));
                    for i in 0 to MAX_LEN-2 loop
                        charset_pointers(i) <= charset_pointers(i+1);
                    end loop;
                end if;
                
            elsif got_charset and ENABLE = '1' then
                
                charset_pointers(0) <= charset_pointers(0) + 1;
                
                for i in 0 to MAX_LEN-1 loop
                    if i = 0 or carry_chain(i-1 downto 0) = true_comp(i-1 downto 0) then
                        charset_pointers(i) <= charset_pointers(i) + 1;
                        if carry_chain(i) then
                            if OVERFLOW and i = MAX_LEN-1 then
                                -- generated all the passwords!
                                charset_pointers <= (MIN_LEN-1 downto 0 => 1, others => 0);
                            else
                                charset_pointers(i) <= 1;
                            end if;
                        end if;
                    end if;
                end loop;
                
            end if;
        end if;
    end process;
    
end Behavioral;

