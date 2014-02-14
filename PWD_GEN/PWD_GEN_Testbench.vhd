
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use work.help_funcs.all;
use work.txt_util.all;
 
ENTITY PWD_GEN_Testbench IS
    generic (
        MIN_LEN : integer range 1 to 64 := 2;
        MAX_LEN : integer range 1 to 64 := 4;
        OVERFLOW    : boolean := false
        );
END PWD_GEN_Testbench;
 
ARCHITECTURE behavior OF PWD_GEN_Testbench IS 
 
    --Inputs
    signal CLK : std_logic := '0';
    signal RST : std_logic := '0';
    signal ENABLE : std_logic := '0';
    signal CHAR_WR_EN : std_logic := '0';
    signal STATE_WR_EN : std_logic := '0';
    signal DATA_IN : std_logic_vector(7 downto 0) := (others => '0');
    signal DATA_VALID    : std_logic := '0';
    
 	--Outputs
    signal PWD_OUT : std_logic_vector(MAX_LEN*8-1 downto 0);

    -- Clock period definitions
    constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
    PWD_GEN_INST : entity work.PWD_GEN
        generic map (
           MIN_LEN => MIN_LEN,
           MAX_LEN => MAX_LEN,
           OVERFLOW    => OVERFLOW
           )
        PORT MAP (
                CLK => CLK,
                RST => RST,
                
                ENABLE => ENABLE,
                CHAR_WR_EN => CHAR_WR_EN,
                STATE_WR_EN => STATE_WR_EN,
                DATA_IN => DATA_IN,
                DATA_VALID    => DATA_VALID,
                
                PWD_OUT => PWD_OUT
                );

    -- Clock process definitions
    CLK_process :process
    begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
        constant new_charset    : string := "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        type state_type is array(0 to MAX_LEN-1) of integer range 0 to new_charset'length;
        constant state    : state_type := (9, 14, 9, 20); -- "INIT"
        constant iface_clk_period : time := 20.3 ns;
    begin		
        -- hold reset state for 100 ns.
        wait for 100 ns;
        RST <= '1';
        wait for CLK_period*10;
        RST <= '0';

        -- insert stimulus here 

        ENABLE    <= '1';

        --           wait;

        wait for 1 ms;

        CHAR_WR_EN <= '1';
        wait for iface_clk_period;
        for i in new_charset'range loop
            DATA_IN <= stdlv(new_charset(i));
            wait for iface_clk_period;
            DATA_VALID    <= '1';
            wait for CLK_period;
            DATA_VALID    <= '0';
            wait for iface_clk_period;
        end loop;
        CHAR_WR_EN <= '0';

        wait for 1 ms;

        STATE_WR_EN <= '1';
        wait for iface_clk_period;
        for i in state_type'range loop
            DATA_IN <= stdlv(to_unsigned(state(i), 8));
            wait for iface_clk_period;
            DATA_VALID    <= '1';
            wait for CLK_period;
            DATA_VALID    <= '0';
            wait for iface_clk_period;
        end loop;
        STATE_WR_EN <= '0';

        wait;
    end process;

END;
