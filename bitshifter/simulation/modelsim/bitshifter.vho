-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.1 Build 850 06/23/2022 SJ Lite Edition"

-- DATE "09/24/2024 21:07:02"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pisoconverter IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	start : IN std_logic;
	parallel_in : IN std_logic_vector(7 DOWNTO 0);
	serial_out : OUT std_logic;
	done : OUT std_logic
	);
END pisoconverter;

-- Design Ports Information
-- serial_out	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- done	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- rst	=>  Location: PIN_A7,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- start	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- parallel_in[7]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- parallel_in[6]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- parallel_in[5]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- parallel_in[4]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- parallel_in[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- parallel_in[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- parallel_in[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- parallel_in[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF pisoconverter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_parallel_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_serial_out : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_div~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \serial_out~output_o\ : std_logic;
SIGNAL \done~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_count[0]~32_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \clk_count[0]~33\ : std_logic;
SIGNAL \clk_count[1]~34_combout\ : std_logic;
SIGNAL \clk_count[1]~35\ : std_logic;
SIGNAL \clk_count[2]~36_combout\ : std_logic;
SIGNAL \clk_count[2]~37\ : std_logic;
SIGNAL \clk_count[3]~38_combout\ : std_logic;
SIGNAL \clk_count[3]~39\ : std_logic;
SIGNAL \clk_count[4]~40_combout\ : std_logic;
SIGNAL \clk_count[4]~41\ : std_logic;
SIGNAL \clk_count[5]~42_combout\ : std_logic;
SIGNAL \clk_count[5]~43\ : std_logic;
SIGNAL \clk_count[6]~44_combout\ : std_logic;
SIGNAL \clk_count[6]~45\ : std_logic;
SIGNAL \clk_count[7]~46_combout\ : std_logic;
SIGNAL \clk_count[7]~47\ : std_logic;
SIGNAL \clk_count[8]~48_combout\ : std_logic;
SIGNAL \clk_count[8]~49\ : std_logic;
SIGNAL \clk_count[9]~50_combout\ : std_logic;
SIGNAL \clk_count[9]~51\ : std_logic;
SIGNAL \clk_count[10]~52_combout\ : std_logic;
SIGNAL \clk_count[10]~53\ : std_logic;
SIGNAL \clk_count[11]~54_combout\ : std_logic;
SIGNAL \clk_count[11]~55\ : std_logic;
SIGNAL \clk_count[12]~56_combout\ : std_logic;
SIGNAL \clk_count[12]~57\ : std_logic;
SIGNAL \clk_count[13]~58_combout\ : std_logic;
SIGNAL \clk_count[13]~59\ : std_logic;
SIGNAL \clk_count[14]~60_combout\ : std_logic;
SIGNAL \clk_count[14]~61\ : std_logic;
SIGNAL \clk_count[15]~62_combout\ : std_logic;
SIGNAL \clk_count[15]~63\ : std_logic;
SIGNAL \clk_count[16]~64_combout\ : std_logic;
SIGNAL \clk_count[16]~65\ : std_logic;
SIGNAL \clk_count[17]~66_combout\ : std_logic;
SIGNAL \clk_count[17]~67\ : std_logic;
SIGNAL \clk_count[18]~68_combout\ : std_logic;
SIGNAL \clk_count[18]~69\ : std_logic;
SIGNAL \clk_count[19]~70_combout\ : std_logic;
SIGNAL \clk_count[19]~71\ : std_logic;
SIGNAL \clk_count[20]~72_combout\ : std_logic;
SIGNAL \clk_count[20]~73\ : std_logic;
SIGNAL \clk_count[21]~74_combout\ : std_logic;
SIGNAL \clk_count[21]~75\ : std_logic;
SIGNAL \clk_count[22]~76_combout\ : std_logic;
SIGNAL \clk_count[22]~77\ : std_logic;
SIGNAL \clk_count[23]~78_combout\ : std_logic;
SIGNAL \clk_count[23]~79\ : std_logic;
SIGNAL \clk_count[24]~80_combout\ : std_logic;
SIGNAL \clk_count[24]~81\ : std_logic;
SIGNAL \clk_count[25]~82_combout\ : std_logic;
SIGNAL \clk_count[25]~83\ : std_logic;
SIGNAL \clk_count[26]~84_combout\ : std_logic;
SIGNAL \clk_count[26]~85\ : std_logic;
SIGNAL \clk_count[27]~86_combout\ : std_logic;
SIGNAL \clk_count[27]~87\ : std_logic;
SIGNAL \clk_count[28]~88_combout\ : std_logic;
SIGNAL \clk_count[28]~89\ : std_logic;
SIGNAL \clk_count[29]~90_combout\ : std_logic;
SIGNAL \clk_count[29]~91\ : std_logic;
SIGNAL \clk_count[30]~92_combout\ : std_logic;
SIGNAL \clk_count[30]~93\ : std_logic;
SIGNAL \clk_count[31]~94_combout\ : std_logic;
SIGNAL \clk_div~0_combout\ : std_logic;
SIGNAL \clk_div~feeder_combout\ : std_logic;
SIGNAL \clk_div~q\ : std_logic;
SIGNAL \clk_div~clkctrl_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \parallel_in[6]~input_o\ : std_logic;
SIGNAL \parallel_in[5]~input_o\ : std_logic;
SIGNAL \parallel_in[3]~input_o\ : std_logic;
SIGNAL \bit_count~4_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \bit_count~3_combout\ : std_logic;
SIGNAL \bit_count[3]~0_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \bit_count~2_combout\ : std_logic;
SIGNAL \bit_count[3]~1_combout\ : std_logic;
SIGNAL \serial_out~0_combout\ : std_logic;
SIGNAL \active~feeder_combout\ : std_logic;
SIGNAL \active~q\ : std_logic;
SIGNAL \parallel_in[1]~input_o\ : std_logic;
SIGNAL \parallel_in[0]~input_o\ : std_logic;
SIGNAL \shift_reg~9_combout\ : std_logic;
SIGNAL \shift_reg~10_combout\ : std_logic;
SIGNAL \shift_reg~8_combout\ : std_logic;
SIGNAL \parallel_in[2]~input_o\ : std_logic;
SIGNAL \shift_reg~7_combout\ : std_logic;
SIGNAL \shift_reg~6_combout\ : std_logic;
SIGNAL \parallel_in[4]~input_o\ : std_logic;
SIGNAL \shift_reg~5_combout\ : std_logic;
SIGNAL \shift_reg~4_combout\ : std_logic;
SIGNAL \shift_reg~3_combout\ : std_logic;
SIGNAL \parallel_in[7]~input_o\ : std_logic;
SIGNAL \shift_reg~2_combout\ : std_logic;
SIGNAL \serial_out~reg0_q\ : std_logic;
SIGNAL \done~0_combout\ : std_logic;
SIGNAL \done~reg0_q\ : std_logic;
SIGNAL clk_count : std_logic_vector(31 DOWNTO 0);
SIGNAL shift_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL bit_count : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_start <= start;
ww_parallel_in <= parallel_in;
serial_out <= ww_serial_out;
done <= ww_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk_div~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_div~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\serial_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serial_out~reg0_q\,
	devoe => ww_devoe,
	o => \serial_out~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\done~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \done~reg0_q\,
	devoe => ww_devoe,
	o => \done~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X50_Y37_N0
\clk_count[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[0]~32_combout\ = clk_count(0) $ (VCC)
-- \clk_count[0]~33\ = CARRY(clk_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_count(0),
	datad => VCC,
	combout => \clk_count[0]~32_combout\,
	cout => \clk_count[0]~33\);

-- Location: LCCOMB_X49_Y36_N26
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!clk_count(21) & (!clk_count(22) & (!clk_count(23) & !clk_count(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(21),
	datab => clk_count(22),
	datac => clk_count(23),
	datad => clk_count(24),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X49_Y36_N16
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!clk_count(18) & (!clk_count(20) & (!clk_count(17) & !clk_count(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(18),
	datab => clk_count(20),
	datac => clk_count(17),
	datad => clk_count(19),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X49_Y36_N6
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!clk_count(25) & (!clk_count(27) & (!clk_count(26) & !clk_count(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(25),
	datab => clk_count(27),
	datac => clk_count(26),
	datad => clk_count(28),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X49_Y36_N14
\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!clk_count(30) & (!clk_count(29) & \LessThan0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(30),
	datab => clk_count(29),
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X49_Y36_N22
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!clk_count(9) & (!clk_count(10) & (!clk_count(11) & !clk_count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(9),
	datab => clk_count(10),
	datac => clk_count(11),
	datad => clk_count(12),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X49_Y36_N18
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!clk_count(7) & (!clk_count(8) & (!clk_count(6) & !clk_count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(7),
	datab => clk_count(8),
	datac => clk_count(6),
	datad => clk_count(5),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X49_Y36_N30
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!clk_count(13) & (!clk_count(16) & (!clk_count(14) & !clk_count(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(13),
	datab => clk_count(16),
	datac => clk_count(14),
	datad => clk_count(15),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X49_Y36_N2
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!clk_count(3) & (!clk_count(2) & (!clk_count(1) & !clk_count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(3),
	datab => clk_count(2),
	datac => clk_count(1),
	datad => clk_count(4),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X49_Y36_N12
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~2_combout\ & (\LessThan0~1_combout\ & (\LessThan0~3_combout\ & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X49_Y36_N0
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (\LessThan0~6_combout\ & (\LessThan0~5_combout\ & (\LessThan0~8_combout\ & \LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => \LessThan0~5_combout\,
	datac => \LessThan0~8_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X49_Y36_N4
\LessThan0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (!clk_count(31) & !\LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(31),
	datad => \LessThan0~9_combout\,
	combout => \LessThan0~10_combout\);

-- Location: FF_X50_Y37_N1
\clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[0]~32_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(0));

-- Location: LCCOMB_X50_Y37_N2
\clk_count[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[1]~34_combout\ = (clk_count(1) & (!\clk_count[0]~33\)) # (!clk_count(1) & ((\clk_count[0]~33\) # (GND)))
-- \clk_count[1]~35\ = CARRY((!\clk_count[0]~33\) # (!clk_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(1),
	datad => VCC,
	cin => \clk_count[0]~33\,
	combout => \clk_count[1]~34_combout\,
	cout => \clk_count[1]~35\);

-- Location: FF_X50_Y37_N3
\clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[1]~34_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(1));

-- Location: LCCOMB_X50_Y37_N4
\clk_count[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[2]~36_combout\ = (clk_count(2) & (\clk_count[1]~35\ $ (GND))) # (!clk_count(2) & (!\clk_count[1]~35\ & VCC))
-- \clk_count[2]~37\ = CARRY((clk_count(2) & !\clk_count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(2),
	datad => VCC,
	cin => \clk_count[1]~35\,
	combout => \clk_count[2]~36_combout\,
	cout => \clk_count[2]~37\);

-- Location: FF_X50_Y37_N5
\clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[2]~36_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(2));

-- Location: LCCOMB_X50_Y37_N6
\clk_count[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[3]~38_combout\ = (clk_count(3) & (!\clk_count[2]~37\)) # (!clk_count(3) & ((\clk_count[2]~37\) # (GND)))
-- \clk_count[3]~39\ = CARRY((!\clk_count[2]~37\) # (!clk_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(3),
	datad => VCC,
	cin => \clk_count[2]~37\,
	combout => \clk_count[3]~38_combout\,
	cout => \clk_count[3]~39\);

-- Location: FF_X50_Y37_N7
\clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[3]~38_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(3));

-- Location: LCCOMB_X50_Y37_N8
\clk_count[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[4]~40_combout\ = (clk_count(4) & (\clk_count[3]~39\ $ (GND))) # (!clk_count(4) & (!\clk_count[3]~39\ & VCC))
-- \clk_count[4]~41\ = CARRY((clk_count(4) & !\clk_count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(4),
	datad => VCC,
	cin => \clk_count[3]~39\,
	combout => \clk_count[4]~40_combout\,
	cout => \clk_count[4]~41\);

-- Location: FF_X50_Y37_N9
\clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[4]~40_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(4));

-- Location: LCCOMB_X50_Y37_N10
\clk_count[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[5]~42_combout\ = (clk_count(5) & (!\clk_count[4]~41\)) # (!clk_count(5) & ((\clk_count[4]~41\) # (GND)))
-- \clk_count[5]~43\ = CARRY((!\clk_count[4]~41\) # (!clk_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(5),
	datad => VCC,
	cin => \clk_count[4]~41\,
	combout => \clk_count[5]~42_combout\,
	cout => \clk_count[5]~43\);

-- Location: FF_X50_Y37_N11
\clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[5]~42_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(5));

-- Location: LCCOMB_X50_Y37_N12
\clk_count[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[6]~44_combout\ = (clk_count(6) & (\clk_count[5]~43\ $ (GND))) # (!clk_count(6) & (!\clk_count[5]~43\ & VCC))
-- \clk_count[6]~45\ = CARRY((clk_count(6) & !\clk_count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(6),
	datad => VCC,
	cin => \clk_count[5]~43\,
	combout => \clk_count[6]~44_combout\,
	cout => \clk_count[6]~45\);

-- Location: FF_X50_Y37_N13
\clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[6]~44_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(6));

-- Location: LCCOMB_X50_Y37_N14
\clk_count[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[7]~46_combout\ = (clk_count(7) & (!\clk_count[6]~45\)) # (!clk_count(7) & ((\clk_count[6]~45\) # (GND)))
-- \clk_count[7]~47\ = CARRY((!\clk_count[6]~45\) # (!clk_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(7),
	datad => VCC,
	cin => \clk_count[6]~45\,
	combout => \clk_count[7]~46_combout\,
	cout => \clk_count[7]~47\);

-- Location: FF_X50_Y37_N15
\clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[7]~46_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(7));

-- Location: LCCOMB_X50_Y37_N16
\clk_count[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[8]~48_combout\ = (clk_count(8) & (\clk_count[7]~47\ $ (GND))) # (!clk_count(8) & (!\clk_count[7]~47\ & VCC))
-- \clk_count[8]~49\ = CARRY((clk_count(8) & !\clk_count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(8),
	datad => VCC,
	cin => \clk_count[7]~47\,
	combout => \clk_count[8]~48_combout\,
	cout => \clk_count[8]~49\);

-- Location: FF_X49_Y36_N21
\clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_count[8]~48_combout\,
	sclr => \LessThan0~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(8));

-- Location: LCCOMB_X50_Y37_N18
\clk_count[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[9]~50_combout\ = (clk_count(9) & (!\clk_count[8]~49\)) # (!clk_count(9) & ((\clk_count[8]~49\) # (GND)))
-- \clk_count[9]~51\ = CARRY((!\clk_count[8]~49\) # (!clk_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(9),
	datad => VCC,
	cin => \clk_count[8]~49\,
	combout => \clk_count[9]~50_combout\,
	cout => \clk_count[9]~51\);

-- Location: FF_X49_Y36_N11
\clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_count[9]~50_combout\,
	sclr => \LessThan0~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(9));

-- Location: LCCOMB_X50_Y37_N20
\clk_count[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[10]~52_combout\ = (clk_count(10) & (\clk_count[9]~51\ $ (GND))) # (!clk_count(10) & (!\clk_count[9]~51\ & VCC))
-- \clk_count[10]~53\ = CARRY((clk_count(10) & !\clk_count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(10),
	datad => VCC,
	cin => \clk_count[9]~51\,
	combout => \clk_count[10]~52_combout\,
	cout => \clk_count[10]~53\);

-- Location: FF_X49_Y36_N25
\clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_count[10]~52_combout\,
	sclr => \LessThan0~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(10));

-- Location: LCCOMB_X50_Y37_N22
\clk_count[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[11]~54_combout\ = (clk_count(11) & (!\clk_count[10]~53\)) # (!clk_count(11) & ((\clk_count[10]~53\) # (GND)))
-- \clk_count[11]~55\ = CARRY((!\clk_count[10]~53\) # (!clk_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(11),
	datad => VCC,
	cin => \clk_count[10]~53\,
	combout => \clk_count[11]~54_combout\,
	cout => \clk_count[11]~55\);

-- Location: FF_X49_Y36_N9
\clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_count[11]~54_combout\,
	sclr => \LessThan0~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(11));

-- Location: LCCOMB_X50_Y37_N24
\clk_count[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[12]~56_combout\ = (clk_count(12) & (\clk_count[11]~55\ $ (GND))) # (!clk_count(12) & (!\clk_count[11]~55\ & VCC))
-- \clk_count[12]~57\ = CARRY((clk_count(12) & !\clk_count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(12),
	datad => VCC,
	cin => \clk_count[11]~55\,
	combout => \clk_count[12]~56_combout\,
	cout => \clk_count[12]~57\);

-- Location: FF_X50_Y37_N25
\clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[12]~56_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(12));

-- Location: LCCOMB_X50_Y37_N26
\clk_count[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[13]~58_combout\ = (clk_count(13) & (!\clk_count[12]~57\)) # (!clk_count(13) & ((\clk_count[12]~57\) # (GND)))
-- \clk_count[13]~59\ = CARRY((!\clk_count[12]~57\) # (!clk_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(13),
	datad => VCC,
	cin => \clk_count[12]~57\,
	combout => \clk_count[13]~58_combout\,
	cout => \clk_count[13]~59\);

-- Location: FF_X50_Y37_N27
\clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[13]~58_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(13));

-- Location: LCCOMB_X50_Y37_N28
\clk_count[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[14]~60_combout\ = (clk_count(14) & (\clk_count[13]~59\ $ (GND))) # (!clk_count(14) & (!\clk_count[13]~59\ & VCC))
-- \clk_count[14]~61\ = CARRY((clk_count(14) & !\clk_count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(14),
	datad => VCC,
	cin => \clk_count[13]~59\,
	combout => \clk_count[14]~60_combout\,
	cout => \clk_count[14]~61\);

-- Location: FF_X49_Y36_N31
\clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_count[14]~60_combout\,
	sclr => \LessThan0~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(14));

-- Location: LCCOMB_X50_Y37_N30
\clk_count[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[15]~62_combout\ = (clk_count(15) & (!\clk_count[14]~61\)) # (!clk_count(15) & ((\clk_count[14]~61\) # (GND)))
-- \clk_count[15]~63\ = CARRY((!\clk_count[14]~61\) # (!clk_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(15),
	datad => VCC,
	cin => \clk_count[14]~61\,
	combout => \clk_count[15]~62_combout\,
	cout => \clk_count[15]~63\);

-- Location: FF_X49_Y36_N15
\clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_count[15]~62_combout\,
	sclr => \LessThan0~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(15));

-- Location: LCCOMB_X50_Y36_N0
\clk_count[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[16]~64_combout\ = (clk_count(16) & (\clk_count[15]~63\ $ (GND))) # (!clk_count(16) & (!\clk_count[15]~63\ & VCC))
-- \clk_count[16]~65\ = CARRY((clk_count(16) & !\clk_count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(16),
	datad => VCC,
	cin => \clk_count[15]~63\,
	combout => \clk_count[16]~64_combout\,
	cout => \clk_count[16]~65\);

-- Location: FF_X50_Y36_N1
\clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[16]~64_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(16));

-- Location: LCCOMB_X50_Y36_N2
\clk_count[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[17]~66_combout\ = (clk_count(17) & (!\clk_count[16]~65\)) # (!clk_count(17) & ((\clk_count[16]~65\) # (GND)))
-- \clk_count[17]~67\ = CARRY((!\clk_count[16]~65\) # (!clk_count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(17),
	datad => VCC,
	cin => \clk_count[16]~65\,
	combout => \clk_count[17]~66_combout\,
	cout => \clk_count[17]~67\);

-- Location: FF_X50_Y36_N3
\clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[17]~66_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(17));

-- Location: LCCOMB_X50_Y36_N4
\clk_count[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[18]~68_combout\ = (clk_count(18) & (\clk_count[17]~67\ $ (GND))) # (!clk_count(18) & (!\clk_count[17]~67\ & VCC))
-- \clk_count[18]~69\ = CARRY((clk_count(18) & !\clk_count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(18),
	datad => VCC,
	cin => \clk_count[17]~67\,
	combout => \clk_count[18]~68_combout\,
	cout => \clk_count[18]~69\);

-- Location: FF_X50_Y36_N5
\clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[18]~68_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(18));

-- Location: LCCOMB_X50_Y36_N6
\clk_count[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[19]~70_combout\ = (clk_count(19) & (!\clk_count[18]~69\)) # (!clk_count(19) & ((\clk_count[18]~69\) # (GND)))
-- \clk_count[19]~71\ = CARRY((!\clk_count[18]~69\) # (!clk_count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(19),
	datad => VCC,
	cin => \clk_count[18]~69\,
	combout => \clk_count[19]~70_combout\,
	cout => \clk_count[19]~71\);

-- Location: FF_X50_Y36_N7
\clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[19]~70_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(19));

-- Location: LCCOMB_X50_Y36_N8
\clk_count[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[20]~72_combout\ = (clk_count(20) & (\clk_count[19]~71\ $ (GND))) # (!clk_count(20) & (!\clk_count[19]~71\ & VCC))
-- \clk_count[20]~73\ = CARRY((clk_count(20) & !\clk_count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(20),
	datad => VCC,
	cin => \clk_count[19]~71\,
	combout => \clk_count[20]~72_combout\,
	cout => \clk_count[20]~73\);

-- Location: FF_X50_Y36_N9
\clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[20]~72_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(20));

-- Location: LCCOMB_X50_Y36_N10
\clk_count[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[21]~74_combout\ = (clk_count(21) & (!\clk_count[20]~73\)) # (!clk_count(21) & ((\clk_count[20]~73\) # (GND)))
-- \clk_count[21]~75\ = CARRY((!\clk_count[20]~73\) # (!clk_count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(21),
	datad => VCC,
	cin => \clk_count[20]~73\,
	combout => \clk_count[21]~74_combout\,
	cout => \clk_count[21]~75\);

-- Location: FF_X50_Y36_N11
\clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[21]~74_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(21));

-- Location: LCCOMB_X50_Y36_N12
\clk_count[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[22]~76_combout\ = (clk_count(22) & (\clk_count[21]~75\ $ (GND))) # (!clk_count(22) & (!\clk_count[21]~75\ & VCC))
-- \clk_count[22]~77\ = CARRY((clk_count(22) & !\clk_count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(22),
	datad => VCC,
	cin => \clk_count[21]~75\,
	combout => \clk_count[22]~76_combout\,
	cout => \clk_count[22]~77\);

-- Location: FF_X50_Y36_N13
\clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[22]~76_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(22));

-- Location: LCCOMB_X50_Y36_N14
\clk_count[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[23]~78_combout\ = (clk_count(23) & (!\clk_count[22]~77\)) # (!clk_count(23) & ((\clk_count[22]~77\) # (GND)))
-- \clk_count[23]~79\ = CARRY((!\clk_count[22]~77\) # (!clk_count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(23),
	datad => VCC,
	cin => \clk_count[22]~77\,
	combout => \clk_count[23]~78_combout\,
	cout => \clk_count[23]~79\);

-- Location: FF_X50_Y36_N15
\clk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[23]~78_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(23));

-- Location: LCCOMB_X50_Y36_N16
\clk_count[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[24]~80_combout\ = (clk_count(24) & (\clk_count[23]~79\ $ (GND))) # (!clk_count(24) & (!\clk_count[23]~79\ & VCC))
-- \clk_count[24]~81\ = CARRY((clk_count(24) & !\clk_count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(24),
	datad => VCC,
	cin => \clk_count[23]~79\,
	combout => \clk_count[24]~80_combout\,
	cout => \clk_count[24]~81\);

-- Location: FF_X50_Y36_N17
\clk_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[24]~80_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(24));

-- Location: LCCOMB_X50_Y36_N18
\clk_count[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[25]~82_combout\ = (clk_count(25) & (!\clk_count[24]~81\)) # (!clk_count(25) & ((\clk_count[24]~81\) # (GND)))
-- \clk_count[25]~83\ = CARRY((!\clk_count[24]~81\) # (!clk_count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(25),
	datad => VCC,
	cin => \clk_count[24]~81\,
	combout => \clk_count[25]~82_combout\,
	cout => \clk_count[25]~83\);

-- Location: FF_X50_Y36_N19
\clk_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[25]~82_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(25));

-- Location: LCCOMB_X50_Y36_N20
\clk_count[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[26]~84_combout\ = (clk_count(26) & (\clk_count[25]~83\ $ (GND))) # (!clk_count(26) & (!\clk_count[25]~83\ & VCC))
-- \clk_count[26]~85\ = CARRY((clk_count(26) & !\clk_count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(26),
	datad => VCC,
	cin => \clk_count[25]~83\,
	combout => \clk_count[26]~84_combout\,
	cout => \clk_count[26]~85\);

-- Location: FF_X50_Y36_N21
\clk_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[26]~84_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(26));

-- Location: LCCOMB_X50_Y36_N22
\clk_count[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[27]~86_combout\ = (clk_count(27) & (!\clk_count[26]~85\)) # (!clk_count(27) & ((\clk_count[26]~85\) # (GND)))
-- \clk_count[27]~87\ = CARRY((!\clk_count[26]~85\) # (!clk_count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(27),
	datad => VCC,
	cin => \clk_count[26]~85\,
	combout => \clk_count[27]~86_combout\,
	cout => \clk_count[27]~87\);

-- Location: FF_X50_Y36_N23
\clk_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[27]~86_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(27));

-- Location: LCCOMB_X50_Y36_N24
\clk_count[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[28]~88_combout\ = (clk_count(28) & (\clk_count[27]~87\ $ (GND))) # (!clk_count(28) & (!\clk_count[27]~87\ & VCC))
-- \clk_count[28]~89\ = CARRY((clk_count(28) & !\clk_count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(28),
	datad => VCC,
	cin => \clk_count[27]~87\,
	combout => \clk_count[28]~88_combout\,
	cout => \clk_count[28]~89\);

-- Location: FF_X50_Y36_N25
\clk_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[28]~88_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(28));

-- Location: LCCOMB_X50_Y36_N26
\clk_count[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[29]~90_combout\ = (clk_count(29) & (!\clk_count[28]~89\)) # (!clk_count(29) & ((\clk_count[28]~89\) # (GND)))
-- \clk_count[29]~91\ = CARRY((!\clk_count[28]~89\) # (!clk_count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(29),
	datad => VCC,
	cin => \clk_count[28]~89\,
	combout => \clk_count[29]~90_combout\,
	cout => \clk_count[29]~91\);

-- Location: FF_X50_Y36_N27
\clk_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[29]~90_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(29));

-- Location: LCCOMB_X50_Y36_N28
\clk_count[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[30]~92_combout\ = (clk_count(30) & (\clk_count[29]~91\ $ (GND))) # (!clk_count(30) & (!\clk_count[29]~91\ & VCC))
-- \clk_count[30]~93\ = CARRY((clk_count(30) & !\clk_count[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(30),
	datad => VCC,
	cin => \clk_count[29]~91\,
	combout => \clk_count[30]~92_combout\,
	cout => \clk_count[30]~93\);

-- Location: FF_X50_Y36_N29
\clk_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[30]~92_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(30));

-- Location: LCCOMB_X50_Y36_N30
\clk_count[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_count[31]~94_combout\ = clk_count(31) $ (\clk_count[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(31),
	cin => \clk_count[30]~93\,
	combout => \clk_count[31]~94_combout\);

-- Location: FF_X50_Y36_N31
\clk_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[31]~94_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(31));

-- Location: LCCOMB_X49_Y36_N24
\clk_div~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~0_combout\ = \clk_div~q\ $ (((!clk_count(31) & !\LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(31),
	datab => \clk_div~q\,
	datad => \LessThan0~9_combout\,
	combout => \clk_div~0_combout\);

-- Location: LCCOMB_X49_Y36_N28
\clk_div~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~feeder_combout\ = \clk_div~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk_div~0_combout\,
	combout => \clk_div~feeder_combout\);

-- Location: FF_X49_Y36_N29
clk_div : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div~q\);

-- Location: CLKCTRL_G13
\clk_div~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_div~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_div~clkctrl_outclk\);

-- Location: IOIBUF_X46_Y54_N29
\start~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\parallel_in[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(6),
	o => \parallel_in[6]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\parallel_in[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(5),
	o => \parallel_in[5]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\parallel_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(3),
	o => \parallel_in[3]~input_o\);

-- Location: LCCOMB_X50_Y53_N18
\bit_count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_count~4_combout\ = (!bit_count(0) & ((\start~input_o\) # (\active~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datac => bit_count(0),
	datad => \active~q\,
	combout => \bit_count~4_combout\);

-- Location: IOIBUF_X49_Y54_N29
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X50_Y53_N19
\bit_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \bit_count~4_combout\,
	clrn => \rst~input_o\,
	ena => \serial_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(0));

-- Location: LCCOMB_X50_Y53_N4
\bit_count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_count~3_combout\ = (\start~input_o\ & (bit_count(0) $ ((bit_count(1))))) # (!\start~input_o\ & (\active~q\ & (bit_count(0) $ (bit_count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(0),
	datab => \start~input_o\,
	datac => bit_count(1),
	datad => \active~q\,
	combout => \bit_count~3_combout\);

-- Location: FF_X50_Y53_N5
\bit_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \bit_count~3_combout\,
	clrn => \rst~input_o\,
	ena => \serial_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(1));

-- Location: LCCOMB_X50_Y53_N12
\bit_count[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_count[3]~0_combout\ = (\active~q\ & (!bit_count(3) & (bit_count(1) & bit_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \active~q\,
	datab => bit_count(3),
	datac => bit_count(1),
	datad => bit_count(0),
	combout => \bit_count[3]~0_combout\);

-- Location: LCCOMB_X50_Y53_N16
\process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (\start~input_o\) # (\active~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~input_o\,
	datad => \active~q\,
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X50_Y53_N10
\bit_count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_count~2_combout\ = (\process_1~0_combout\ & (bit_count(2) $ (((bit_count(0) & bit_count(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(0),
	datab => bit_count(1),
	datac => bit_count(2),
	datad => \process_1~0_combout\,
	combout => \bit_count~2_combout\);

-- Location: FF_X50_Y53_N11
\bit_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \bit_count~2_combout\,
	clrn => \rst~input_o\,
	ena => \serial_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(2));

-- Location: LCCOMB_X50_Y53_N24
\bit_count[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_count[3]~1_combout\ = (\bit_count[3]~0_combout\ & ((bit_count(2)) # ((bit_count(3) & !\serial_out~0_combout\)))) # (!\bit_count[3]~0_combout\ & (((bit_count(3) & !\serial_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_count[3]~0_combout\,
	datab => bit_count(2),
	datac => bit_count(3),
	datad => \serial_out~0_combout\,
	combout => \bit_count[3]~1_combout\);

-- Location: FF_X50_Y53_N25
\bit_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \bit_count[3]~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(3));

-- Location: LCCOMB_X50_Y53_N28
\serial_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serial_out~0_combout\ = (\active~q\ & ((!bit_count(3)))) # (!\active~q\ & (!\start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \active~q\,
	datab => \start~input_o\,
	datad => bit_count(3),
	combout => \serial_out~0_combout\);

-- Location: LCCOMB_X50_Y53_N6
\active~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \active~feeder_combout\ = \serial_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \serial_out~0_combout\,
	combout => \active~feeder_combout\);

-- Location: FF_X50_Y53_N7
active : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \active~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \active~q\);

-- Location: IOIBUF_X51_Y54_N22
\parallel_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(1),
	o => \parallel_in[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\parallel_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(0),
	o => \parallel_in[0]~input_o\);

-- Location: LCCOMB_X49_Y53_N28
\shift_reg~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_reg~9_combout\ = (shift_reg(0) & ((\active~q\ & ((bit_count(3)))) # (!\active~q\ & (\start~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_reg(0),
	datab => \start~input_o\,
	datac => bit_count(3),
	datad => \active~q\,
	combout => \shift_reg~9_combout\);

-- Location: LCCOMB_X49_Y53_N22
\shift_reg~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_reg~10_combout\ = (\shift_reg~9_combout\) # ((!\active~q\ & (\parallel_in[0]~input_o\ & !\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \active~q\,
	datab => \parallel_in[0]~input_o\,
	datac => \start~input_o\,
	datad => \shift_reg~9_combout\,
	combout => \shift_reg~10_combout\);

-- Location: FF_X49_Y53_N23
\shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \shift_reg~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(0));

-- Location: LCCOMB_X50_Y53_N0
\shift_reg~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_reg~8_combout\ = (\active~q\ & (((shift_reg(0))))) # (!\active~q\ & ((\start~input_o\ & ((shift_reg(0)))) # (!\start~input_o\ & (\parallel_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \active~q\,
	datab => \parallel_in[1]~input_o\,
	datac => \start~input_o\,
	datad => shift_reg(0),
	combout => \shift_reg~8_combout\);

-- Location: FF_X50_Y53_N1
\shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \shift_reg~8_combout\,
	clrn => \rst~input_o\,
	ena => \serial_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(1));

-- Location: IOIBUF_X51_Y54_N1
\parallel_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(2),
	o => \parallel_in[2]~input_o\);

-- Location: LCCOMB_X50_Y53_N30
\shift_reg~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_reg~7_combout\ = (\active~q\ & (shift_reg(1))) # (!\active~q\ & ((\start~input_o\ & (shift_reg(1))) # (!\start~input_o\ & ((\parallel_in[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \active~q\,
	datab => shift_reg(1),
	datac => \start~input_o\,
	datad => \parallel_in[2]~input_o\,
	combout => \shift_reg~7_combout\);

-- Location: FF_X50_Y53_N31
\shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \shift_reg~7_combout\,
	clrn => \rst~input_o\,
	ena => \serial_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(2));

-- Location: LCCOMB_X50_Y53_N20
\shift_reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_reg~6_combout\ = (\start~input_o\ & (((shift_reg(2))))) # (!\start~input_o\ & ((\active~q\ & ((shift_reg(2)))) # (!\active~q\ & (\parallel_in[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \parallel_in[3]~input_o\,
	datac => shift_reg(2),
	datad => \active~q\,
	combout => \shift_reg~6_combout\);

-- Location: FF_X50_Y53_N21
\shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \shift_reg~6_combout\,
	clrn => \rst~input_o\,
	ena => \serial_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(3));

-- Location: IOIBUF_X54_Y54_N22
\parallel_in[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(4),
	o => \parallel_in[4]~input_o\);

-- Location: LCCOMB_X50_Y53_N22
\shift_reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_reg~5_combout\ = (\start~input_o\ & (shift_reg(3))) # (!\start~input_o\ & ((\active~q\ & (shift_reg(3))) # (!\active~q\ & ((\parallel_in[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_reg(3),
	datab => \parallel_in[4]~input_o\,
	datac => \start~input_o\,
	datad => \active~q\,
	combout => \shift_reg~5_combout\);

-- Location: FF_X50_Y53_N23
\shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \shift_reg~5_combout\,
	clrn => \rst~input_o\,
	ena => \serial_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(4));

-- Location: LCCOMB_X50_Y53_N26
\shift_reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_reg~4_combout\ = (\start~input_o\ & (((shift_reg(4))))) # (!\start~input_o\ & ((\active~q\ & ((shift_reg(4)))) # (!\active~q\ & (\parallel_in[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \parallel_in[5]~input_o\,
	datac => shift_reg(4),
	datad => \active~q\,
	combout => \shift_reg~4_combout\);

-- Location: FF_X50_Y53_N27
\shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \shift_reg~4_combout\,
	clrn => \rst~input_o\,
	ena => \serial_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(5));

-- Location: LCCOMB_X50_Y53_N8
\shift_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_reg~3_combout\ = (\start~input_o\ & (((shift_reg(5))))) # (!\start~input_o\ & ((\active~q\ & ((shift_reg(5)))) # (!\active~q\ & (\parallel_in[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \parallel_in[6]~input_o\,
	datac => shift_reg(5),
	datad => \active~q\,
	combout => \shift_reg~3_combout\);

-- Location: FF_X50_Y53_N9
\shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \shift_reg~3_combout\,
	clrn => \rst~input_o\,
	ena => \serial_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(6));

-- Location: IOIBUF_X58_Y54_N29
\parallel_in[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(7),
	o => \parallel_in[7]~input_o\);

-- Location: LCCOMB_X50_Y53_N14
\shift_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_reg~2_combout\ = (\start~input_o\ & (shift_reg(6))) # (!\start~input_o\ & ((\active~q\ & (shift_reg(6))) # (!\active~q\ & ((\parallel_in[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => shift_reg(6),
	datac => \parallel_in[7]~input_o\,
	datad => \active~q\,
	combout => \shift_reg~2_combout\);

-- Location: FF_X50_Y53_N15
\shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \shift_reg~2_combout\,
	clrn => \rst~input_o\,
	ena => \serial_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(7));

-- Location: FF_X50_Y53_N29
\serial_out~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	asdata => shift_reg(7),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \serial_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial_out~reg0_q\);

-- Location: LCCOMB_X49_Y53_N8
\done~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \done~0_combout\ = (\done~reg0_q\ & ((\start~input_o\) # ((\active~q\)))) # (!\done~reg0_q\ & (((bit_count(3) & \active~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => bit_count(3),
	datac => \done~reg0_q\,
	datad => \active~q\,
	combout => \done~0_combout\);

-- Location: FF_X49_Y53_N9
\done~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \done~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \done~reg0_q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_serial_out <= \serial_out~output_o\;

ww_done <= \done~output_o\;
END structure;


