LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pisoconverter_vhd_tst IS
END pisoconverter_vhd_tst;
ARCHITECTURE pisoconverter_arch OF pisoconverter_vhd_tst IS
-- constants                                                 
    -- Signaalit testipenkille
    signal clk         : std_logic := '0';
    signal rst         : std_logic := '1';
    signal start       : std_logic := '1';
    signal parallel_in : std_logic_vector(7 downto 0) := (others => '0');
    signal serial_out  : std_logic := '0';
    signal done        : std_logic := '0';

    -- Kellojakso 50mhz
    constant CLK_PERIOD : time := 20 ns;
	 
COMPONENT pisoconverter
	PORT (
	clk  			: IN STD_LOGIC;
	done 			: OUT STD_LOGIC;
	parallel_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	rst 			: IN STD_LOGIC;
	serial_out  : OUT STD_LOGIC;
	start 		: IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : pisoconverter
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	done => done,
	parallel_in => parallel_in,
	rst => rst,
	serial_out => serial_out,
	start => start
	);

    -- Kellosignaali
    clk_process : process
    begin
        clk <= '0';
        wait for CLK_PERIOD / 2;
        clk <= '1';
        wait for CLK_PERIOD / 2;
    end process;

	stimulus : process
	begin
		 -- Reset active
		 rst <= '0';
		 wait for 20 ns;  -- Pidetään reset alhaalla 20 ns ajan
		 rst <= '1';      -- Vapautetaan reset
		 wait for 20 ns;

		 -- Ladataan rinnakkaisdata (esim. 8'b10101010)
		 parallel_in <= "10101010";

		 -- Painetaan start-nappia
		 wait for 10 ns;
		 start <= '0';
		 wait for 30 ns;
		 start <= '1';

		 -- Odotetaan, kunnes done-signaali nousee
		 wait until done = '1';

		 -- Odotetaan vielä hieman
		 wait for 20 ns;

		 -- Lopetetaan simulaatio
		 wait;
	end process;

END pisoconverter_arch;
