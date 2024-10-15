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

-- DATE "10/03/2024 19:23:30"

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

ENTITY 	fibonaccishiftreg IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	enable : IN std_logic;
	lfsr_out : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END fibonaccishiftreg;

-- Design Ports Information
-- lfsr_out[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lfsr_out[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lfsr_out[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lfsr_out[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lfsr_out[4]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lfsr_out[5]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lfsr_out[6]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lfsr_out[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- rst	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- enable	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF fibonaccishiftreg IS
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
SIGNAL ww_enable : std_logic;
SIGNAL ww_lfsr_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \slow_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \lfsr_out[0]~output_o\ : std_logic;
SIGNAL \lfsr_out[1]~output_o\ : std_logic;
SIGNAL \lfsr_out[2]~output_o\ : std_logic;
SIGNAL \lfsr_out[3]~output_o\ : std_logic;
SIGNAL \lfsr_out[4]~output_o\ : std_logic;
SIGNAL \lfsr_out[5]~output_o\ : std_logic;
SIGNAL \lfsr_out[6]~output_o\ : std_logic;
SIGNAL \lfsr_out[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \counter~6_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \counter~5_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \counter~4_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \counter~7_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \slow_clk~0_combout\ : std_logic;
SIGNAL \slow_clk~feeder_combout\ : std_logic;
SIGNAL \slow_clk~q\ : std_logic;
SIGNAL \slow_clk~clkctrl_outclk\ : std_logic;
SIGNAL \lfsr~0_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \lfsr[1]~feeder_combout\ : std_logic;
SIGNAL \lfsr[2]~feeder_combout\ : std_logic;
SIGNAL \lfsr[3]~feeder_combout\ : std_logic;
SIGNAL \lfsr[4]~feeder_combout\ : std_logic;
SIGNAL \lfsr[5]~feeder_combout\ : std_logic;
SIGNAL \lfsr[6]~feeder_combout\ : std_logic;
SIGNAL \lfsr[7]~feeder_combout\ : std_logic;
SIGNAL \lfsr[8]~feeder_combout\ : std_logic;
SIGNAL \lfsr[9]~feeder_combout\ : std_logic;
SIGNAL \lfsr[10]~feeder_combout\ : std_logic;
SIGNAL \lfsr[11]~feeder_combout\ : std_logic;
SIGNAL \lfsr[12]~feeder_combout\ : std_logic;
SIGNAL \lfsr[13]~feeder_combout\ : std_logic;
SIGNAL \lfsr[14]~feeder_combout\ : std_logic;
SIGNAL \lfsr[15]~1_combout\ : std_logic;
SIGNAL \bit_count[0]~2_combout\ : std_logic;
SIGNAL \bit_count[1]~1_combout\ : std_logic;
SIGNAL \bit_count[2]~0_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \temp_out[0]~0_combout\ : std_logic;
SIGNAL \lfsr_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \lfsr_out[0]~0_combout\ : std_logic;
SIGNAL \lfsr_out[0]~reg0_q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \temp_out[1]~1_combout\ : std_logic;
SIGNAL \lfsr_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \lfsr_out[1]~reg0_q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \temp_out[2]~2_combout\ : std_logic;
SIGNAL \lfsr_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \lfsr_out[2]~reg0_q\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \temp_out[3]~3_combout\ : std_logic;
SIGNAL \lfsr_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \lfsr_out[3]~reg0_q\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \temp_out[4]~4_combout\ : std_logic;
SIGNAL \lfsr_out[4]~reg0_q\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \temp_out[5]~5_combout\ : std_logic;
SIGNAL \lfsr_out[5]~reg0feeder_combout\ : std_logic;
SIGNAL \lfsr_out[5]~reg0_q\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \temp_out[6]~6_combout\ : std_logic;
SIGNAL \lfsr_out[6]~reg0feeder_combout\ : std_logic;
SIGNAL \lfsr_out[6]~reg0_q\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \temp_out[7]~7_combout\ : std_logic;
SIGNAL \lfsr_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \lfsr_out[7]~reg0_q\ : std_logic;
SIGNAL temp_out : std_logic_vector(7 DOWNTO 0);
SIGNAL bit_count : std_logic_vector(2 DOWNTO 0);
SIGNAL lfsr : std_logic_vector(15 DOWNTO 0);
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_enable <= enable;
lfsr_out <= ww_lfsr_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\slow_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \slow_clk~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
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
\lfsr_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \lfsr_out[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\lfsr_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \lfsr_out[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\lfsr_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \lfsr_out[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\lfsr_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \lfsr_out[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\lfsr_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \lfsr_out[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\lfsr_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \lfsr_out[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\lfsr_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \lfsr_out[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\lfsr_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \lfsr_out[7]~output_o\);

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

-- Location: LCCOMB_X50_Y52_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (counter(4) & (\Add0~7\ $ (GND))) # (!counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X50_Y52_N10
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (counter(5) & (!\Add0~9\)) # (!counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X51_Y52_N8
\counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~6_combout\ = (\Add0~10_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~10_combout\,
	combout => \counter~6_combout\);

-- Location: IOIBUF_X51_Y54_N22
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

-- Location: FF_X50_Y52_N11
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X50_Y52_N12
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (counter(6) & (\Add0~11\ $ (GND))) # (!counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X50_Y52_N13
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X50_Y52_N14
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (counter(7) & (!\Add0~13\)) # (!counter(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X50_Y52_N15
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X50_Y52_N16
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (counter(8) & (\Add0~15\ $ (GND))) # (!counter(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((counter(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X51_Y52_N2
\counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~5_combout\ = (\Add0~16_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Add0~16_combout\,
	datad => \Equal0~9_combout\,
	combout => \counter~5_combout\);

-- Location: FF_X51_Y52_N3
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X50_Y52_N18
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (counter(9) & (!\Add0~17\)) # (!counter(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X50_Y52_N19
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X50_Y52_N20
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (counter(10) & (\Add0~19\ $ (GND))) # (!counter(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((counter(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X50_Y52_N21
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X50_Y52_N22
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (counter(11) & (!\Add0~21\)) # (!counter(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X50_Y52_N23
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X50_Y52_N24
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (counter(12) & (\Add0~23\ $ (GND))) # (!counter(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((counter(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X50_Y52_N25
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X50_Y52_N26
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (counter(13) & (!\Add0~25\)) # (!counter(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X51_Y52_N24
\counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~4_combout\ = (\Add0~26_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Add0~26_combout\,
	datad => \Equal0~9_combout\,
	combout => \counter~4_combout\);

-- Location: FF_X51_Y52_N25
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X50_Y52_N28
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (counter(14) & (\Add0~27\ $ (GND))) # (!counter(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((counter(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X50_Y52_N29
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X50_Y52_N30
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (counter(15) & (!\Add0~29\)) # (!counter(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X51_Y52_N22
\counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = (\Add0~30_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~30_combout\,
	combout => \counter~3_combout\);

-- Location: FF_X51_Y52_N23
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X50_Y51_N0
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (counter(16) & (\Add0~31\ $ (GND))) # (!counter(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((counter(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X51_Y52_N30
\counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (\Add0~32_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~32_combout\,
	combout => \counter~2_combout\);

-- Location: FF_X51_Y52_N31
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X50_Y51_N2
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (counter(17) & (!\Add0~33\)) # (!counter(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X51_Y52_N16
\counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (\Add0~34_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~34_combout\,
	combout => \counter~1_combout\);

-- Location: FF_X51_Y52_N17
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X50_Y51_N4
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (counter(18) & (\Add0~35\ $ (GND))) # (!counter(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((counter(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X51_Y52_N18
\counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (\Add0~36_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~36_combout\,
	combout => \counter~0_combout\);

-- Location: FF_X51_Y52_N19
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X50_Y51_N6
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (counter(19) & (!\Add0~37\)) # (!counter(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X50_Y51_N7
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X51_Y52_N12
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (counter(16) & (counter(17) & (counter(18) & !counter(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datab => counter(17),
	datac => counter(18),
	datad => counter(19),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X50_Y51_N8
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (counter(20) & (\Add0~39\ $ (GND))) # (!counter(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((counter(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X50_Y51_N9
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X50_Y51_N10
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (counter(21) & (!\Add0~41\)) # (!counter(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X50_Y51_N11
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X50_Y51_N12
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (counter(22) & (\Add0~43\ $ (GND))) # (!counter(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((counter(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X50_Y51_N13
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X50_Y51_N14
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (counter(23) & (!\Add0~45\)) # (!counter(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X50_Y51_N15
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X50_Y51_N16
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (counter(24) & (\Add0~47\ $ (GND))) # (!counter(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((counter(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X50_Y51_N17
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X50_Y51_N18
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (counter(25) & (!\Add0~49\)) # (!counter(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X50_Y51_N19
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LCCOMB_X50_Y51_N20
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (counter(26) & (\Add0~51\ $ (GND))) # (!counter(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((counter(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X50_Y51_N21
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: LCCOMB_X50_Y51_N22
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (counter(27) & (!\Add0~53\)) # (!counter(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X50_Y51_N23
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: LCCOMB_X50_Y51_N24
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (counter(28) & (\Add0~55\ $ (GND))) # (!counter(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((counter(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X50_Y51_N25
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: LCCOMB_X50_Y51_N26
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (counter(29) & (!\Add0~57\)) # (!counter(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X50_Y51_N27
\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

-- Location: LCCOMB_X50_Y51_N28
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (counter(30) & (\Add0~59\ $ (GND))) # (!counter(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((counter(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X50_Y51_N29
\counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(30));

-- Location: LCCOMB_X50_Y51_N30
\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = counter(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X50_Y51_N31
\counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(31));

-- Location: LCCOMB_X51_Y51_N28
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!counter(29) & (!counter(30) & (!counter(28) & !counter(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(29),
	datab => counter(30),
	datac => counter(28),
	datad => counter(31),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X51_Y51_N10
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!counter(24) & (!counter(27) & (!counter(25) & !counter(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(24),
	datab => counter(27),
	datac => counter(25),
	datad => counter(26),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X51_Y51_N0
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!counter(23) & (!counter(21) & (!counter(22) & !counter(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	datab => counter(21),
	datac => counter(22),
	datad => counter(20),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X51_Y52_N28
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X50_Y52_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = counter(0) $ (VCC)
-- \Add0~1\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X51_Y52_N6
\counter~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~7_combout\ = (\Add0~0_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~0_combout\,
	combout => \counter~7_combout\);

-- Location: FF_X50_Y52_N31
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X50_Y52_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (counter(1) & (!\Add0~1\)) # (!counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X50_Y52_N3
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X50_Y52_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (counter(2) & (\Add0~3\ $ (GND))) # (!counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X50_Y52_N5
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X50_Y52_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (counter(3) & (!\Add0~5\)) # (!counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X50_Y52_N7
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: FF_X50_Y52_N9
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X51_Y52_N10
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!counter(4) & (!counter(6) & (!counter(7) & counter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(6),
	datac => counter(7),
	datad => counter(5),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X51_Y52_N20
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (counter(8) & (!counter(11) & (!counter(9) & !counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datab => counter(11),
	datac => counter(9),
	datad => counter(10),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X51_Y52_N14
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!counter(14) & (!counter(12) & (counter(15) & counter(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datab => counter(12),
	datac => counter(15),
	datad => counter(13),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X49_Y52_N0
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!counter(3) & (!counter(1) & (!counter(0) & !counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(1),
	datac => counter(0),
	datad => counter(2),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X51_Y52_N4
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~7_combout\ & (\Equal0~6_combout\ & (\Equal0~5_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X51_Y52_N0
\slow_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slow_clk~0_combout\ = \slow_clk~q\ $ (((\Equal0~9_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \slow_clk~q\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \slow_clk~0_combout\);

-- Location: LCCOMB_X51_Y52_N26
\slow_clk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slow_clk~feeder_combout\ = \slow_clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \slow_clk~0_combout\,
	combout => \slow_clk~feeder_combout\);

-- Location: FF_X51_Y52_N27
slow_clk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow_clk~q\);

-- Location: CLKCTRL_G10
\slow_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \slow_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \slow_clk~clkctrl_outclk\);

-- Location: LCCOMB_X52_Y52_N10
\lfsr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lfsr~0_combout\ = lfsr(12) $ (lfsr(15) $ (lfsr(10) $ (!lfsr(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lfsr(12),
	datab => lfsr(15),
	datac => lfsr(10),
	datad => lfsr(13),
	combout => \lfsr~0_combout\);

-- Location: IOIBUF_X51_Y54_N29
\enable~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: FF_X52_Y52_N11
\lfsr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \lfsr~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr(0));

-- Location: LCCOMB_X52_Y52_N24
\lfsr[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lfsr[1]~feeder_combout\ = lfsr(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => lfsr(0),
	combout => \lfsr[1]~feeder_combout\);

-- Location: FF_X52_Y52_N25
\lfsr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \lfsr[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr(1));

-- Location: LCCOMB_X52_Y52_N2
\lfsr[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lfsr[2]~feeder_combout\ = lfsr(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => lfsr(1),
	combout => \lfsr[2]~feeder_combout\);

-- Location: FF_X52_Y52_N3
\lfsr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \lfsr[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr(2));

-- Location: LCCOMB_X52_Y52_N20
\lfsr[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lfsr[3]~feeder_combout\ = lfsr(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => lfsr(2),
	combout => \lfsr[3]~feeder_combout\);

-- Location: FF_X52_Y52_N21
\lfsr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \lfsr[3]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr(3));

-- Location: LCCOMB_X52_Y52_N6
\lfsr[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lfsr[4]~feeder_combout\ = lfsr(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => lfsr(3),
	combout => \lfsr[4]~feeder_combout\);

-- Location: FF_X52_Y52_N7
\lfsr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \lfsr[4]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr(4));

-- Location: LCCOMB_X52_Y52_N12
\lfsr[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lfsr[5]~feeder_combout\ = lfsr(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => lfsr(4),
	combout => \lfsr[5]~feeder_combout\);

-- Location: FF_X52_Y52_N13
\lfsr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \lfsr[5]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr(5));

-- Location: LCCOMB_X52_Y52_N26
\lfsr[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lfsr[6]~feeder_combout\ = lfsr(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => lfsr(5),
	combout => \lfsr[6]~feeder_combout\);

-- Location: FF_X52_Y52_N27
\lfsr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \lfsr[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr(6));

-- Location: LCCOMB_X52_Y52_N16
\lfsr[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lfsr[7]~feeder_combout\ = lfsr(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => lfsr(6),
	combout => \lfsr[7]~feeder_combout\);

-- Location: FF_X52_Y52_N17
\lfsr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \lfsr[7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr(7));

-- Location: LCCOMB_X52_Y52_N14
\lfsr[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lfsr[8]~feeder_combout\ = lfsr(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => lfsr(7),
	combout => \lfsr[8]~feeder_combout\);

-- Location: FF_X52_Y52_N15
\lfsr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \lfsr[8]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr(8));

-- Location: LCCOMB_X52_Y52_N4
\lfsr[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lfsr[9]~feeder_combout\ = lfsr(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => lfsr(8),
	combout => \lfsr[9]~feeder_combout\);

-- Location: FF_X52_Y52_N5
\lfsr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \lfsr[9]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr(9));

-- Location: LCCOMB_X52_Y52_N22
\lfsr[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lfsr[10]~feeder_combout\ = lfsr(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => lfsr(9),
	combout => \lfsr[10]~feeder_combout\);

-- Location: FF_X52_Y52_N23
\lfsr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \lfsr[10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr(10));

-- Location: LCCOMB_X52_Y52_N8
\lfsr[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lfsr[11]~feeder_combout\ = lfsr(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => lfsr(10),
	combout => \lfsr[11]~feeder_combout\);

-- Location: FF_X52_Y52_N9
\lfsr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \lfsr[11]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr(11));

-- Location: LCCOMB_X52_Y52_N30
\lfsr[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lfsr[12]~feeder_combout\ = lfsr(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => lfsr(11),
	combout => \lfsr[12]~feeder_combout\);

-- Location: FF_X52_Y52_N31
\lfsr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \lfsr[12]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr(12));

-- Location: LCCOMB_X52_Y52_N28
\lfsr[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lfsr[13]~feeder_combout\ = lfsr(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => lfsr(12),
	combout => \lfsr[13]~feeder_combout\);

-- Location: FF_X52_Y52_N29
\lfsr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \lfsr[13]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr(13));

-- Location: LCCOMB_X52_Y52_N18
\lfsr[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lfsr[14]~feeder_combout\ = lfsr(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => lfsr(13),
	combout => \lfsr[14]~feeder_combout\);

-- Location: FF_X52_Y52_N19
\lfsr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \lfsr[14]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr(14));

-- Location: LCCOMB_X52_Y52_N0
\lfsr[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lfsr[15]~1_combout\ = !lfsr(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => lfsr(14),
	combout => \lfsr[15]~1_combout\);

-- Location: FF_X52_Y52_N1
\lfsr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \lfsr[15]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr(15));

-- Location: LCCOMB_X55_Y52_N4
\bit_count[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_count[0]~2_combout\ = !bit_count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bit_count(0),
	combout => \bit_count[0]~2_combout\);

-- Location: FF_X55_Y52_N5
\bit_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \bit_count[0]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(0));

-- Location: LCCOMB_X54_Y52_N4
\bit_count[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_count[1]~1_combout\ = bit_count(1) $ (((\enable~input_o\ & bit_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => bit_count(1),
	datad => bit_count(0),
	combout => \bit_count[1]~1_combout\);

-- Location: FF_X54_Y52_N9
\bit_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	asdata => \bit_count[1]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(1));

-- Location: LCCOMB_X54_Y52_N14
\bit_count[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_count[2]~0_combout\ = bit_count(2) $ (((\enable~input_o\ & (bit_count(1) & bit_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => bit_count(1),
	datac => bit_count(2),
	datad => bit_count(0),
	combout => \bit_count[2]~0_combout\);

-- Location: FF_X54_Y52_N15
\bit_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \bit_count[2]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(2));

-- Location: LCCOMB_X54_Y52_N24
\Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\enable~input_o\ & (!bit_count(1) & (!bit_count(2) & !bit_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => bit_count(1),
	datac => bit_count(2),
	datad => bit_count(0),
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X54_Y52_N12
\temp_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_out[0]~0_combout\ = (\Decoder0~0_combout\ & (!lfsr(15))) # (!\Decoder0~0_combout\ & ((temp_out(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lfsr(15),
	datac => temp_out(0),
	datad => \Decoder0~0_combout\,
	combout => \temp_out[0]~0_combout\);

-- Location: FF_X54_Y52_N13
\temp_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \temp_out[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_out(0));

-- Location: LCCOMB_X54_Y52_N20
\lfsr_out[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lfsr_out[0]~reg0feeder_combout\ = temp_out(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_out(0),
	combout => \lfsr_out[0]~reg0feeder_combout\);

-- Location: LCCOMB_X54_Y52_N22
\lfsr_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lfsr_out[0]~0_combout\ = (\enable~input_o\ & (bit_count(2) & (bit_count(1) & bit_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => bit_count(2),
	datac => bit_count(1),
	datad => bit_count(0),
	combout => \lfsr_out[0]~0_combout\);

-- Location: FF_X54_Y52_N21
\lfsr_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \lfsr_out[0]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \lfsr_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_out[0]~reg0_q\);

-- Location: LCCOMB_X55_Y52_N28
\Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!bit_count(2) & (bit_count(0) & (\enable~input_o\ & !bit_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(2),
	datab => bit_count(0),
	datac => \enable~input_o\,
	datad => bit_count(1),
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X55_Y52_N22
\temp_out[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_out[1]~1_combout\ = (\Decoder0~1_combout\ & (!lfsr(15))) # (!\Decoder0~1_combout\ & ((temp_out(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lfsr(15),
	datac => temp_out(1),
	datad => \Decoder0~1_combout\,
	combout => \temp_out[1]~1_combout\);

-- Location: FF_X55_Y52_N23
\temp_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \temp_out[1]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_out(1));

-- Location: LCCOMB_X54_Y52_N2
\lfsr_out[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lfsr_out[1]~reg0feeder_combout\ = temp_out(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_out(1),
	combout => \lfsr_out[1]~reg0feeder_combout\);

-- Location: FF_X54_Y52_N3
\lfsr_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \lfsr_out[1]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \lfsr_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_out[1]~reg0_q\);

-- Location: LCCOMB_X54_Y52_N18
\Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (\enable~input_o\ & (bit_count(1) & (!bit_count(2) & !bit_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => bit_count(1),
	datac => bit_count(2),
	datad => bit_count(0),
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X54_Y52_N28
\temp_out[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_out[2]~2_combout\ = (\Decoder0~2_combout\ & (!lfsr(15))) # (!\Decoder0~2_combout\ & ((temp_out(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lfsr(15),
	datac => temp_out(2),
	datad => \Decoder0~2_combout\,
	combout => \temp_out[2]~2_combout\);

-- Location: FF_X54_Y52_N29
\temp_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \temp_out[2]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_out(2));

-- Location: LCCOMB_X54_Y52_N0
\lfsr_out[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lfsr_out[2]~reg0feeder_combout\ = temp_out(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_out(2),
	combout => \lfsr_out[2]~reg0feeder_combout\);

-- Location: FF_X54_Y52_N1
\lfsr_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \lfsr_out[2]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \lfsr_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_out[2]~reg0_q\);

-- Location: LCCOMB_X55_Y52_N6
\Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (bit_count(1) & (\enable~input_o\ & (bit_count(0) & !bit_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(1),
	datab => \enable~input_o\,
	datac => bit_count(0),
	datad => bit_count(2),
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X55_Y52_N8
\temp_out[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_out[3]~3_combout\ = (\Decoder0~3_combout\ & (!lfsr(15))) # (!\Decoder0~3_combout\ & ((temp_out(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lfsr(15),
	datac => temp_out(3),
	datad => \Decoder0~3_combout\,
	combout => \temp_out[3]~3_combout\);

-- Location: FF_X55_Y52_N9
\temp_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \temp_out[3]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_out(3));

-- Location: LCCOMB_X54_Y52_N30
\lfsr_out[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lfsr_out[3]~reg0feeder_combout\ = temp_out(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp_out(3),
	combout => \lfsr_out[3]~reg0feeder_combout\);

-- Location: FF_X54_Y52_N31
\lfsr_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \lfsr_out[3]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \lfsr_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_out[3]~reg0_q\);

-- Location: LCCOMB_X55_Y52_N20
\Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (!bit_count(1) & (\enable~input_o\ & (!bit_count(0) & bit_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(1),
	datab => \enable~input_o\,
	datac => bit_count(0),
	datad => bit_count(2),
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X55_Y52_N30
\temp_out[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_out[4]~4_combout\ = (\Decoder0~4_combout\ & (!lfsr(15))) # (!\Decoder0~4_combout\ & ((temp_out(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lfsr(15),
	datac => temp_out(4),
	datad => \Decoder0~4_combout\,
	combout => \temp_out[4]~4_combout\);

-- Location: FF_X55_Y52_N31
\temp_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \temp_out[4]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_out(4));

-- Location: FF_X54_Y52_N5
\lfsr_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	asdata => temp_out(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \lfsr_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_out[4]~reg0_q\);

-- Location: LCCOMB_X54_Y52_N8
\Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (\enable~input_o\ & (bit_count(2) & (!bit_count(1) & bit_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => bit_count(2),
	datac => bit_count(1),
	datad => bit_count(0),
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X54_Y52_N26
\temp_out[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_out[5]~5_combout\ = (\Decoder0~5_combout\ & (!lfsr(15))) # (!\Decoder0~5_combout\ & ((temp_out(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lfsr(15),
	datac => temp_out(5),
	datad => \Decoder0~5_combout\,
	combout => \temp_out[5]~5_combout\);

-- Location: FF_X54_Y52_N27
\temp_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \temp_out[5]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_out(5));

-- Location: LCCOMB_X54_Y52_N10
\lfsr_out[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lfsr_out[5]~reg0feeder_combout\ = temp_out(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp_out(5),
	combout => \lfsr_out[5]~reg0feeder_combout\);

-- Location: FF_X54_Y52_N11
\lfsr_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \lfsr_out[5]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \lfsr_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_out[5]~reg0_q\);

-- Location: LCCOMB_X55_Y52_N10
\Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (bit_count(1) & (\enable~input_o\ & (!bit_count(0) & bit_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(1),
	datab => \enable~input_o\,
	datac => bit_count(0),
	datad => bit_count(2),
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X55_Y52_N24
\temp_out[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_out[6]~6_combout\ = (\Decoder0~6_combout\ & (!lfsr(15))) # (!\Decoder0~6_combout\ & ((temp_out(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lfsr(15),
	datac => temp_out(6),
	datad => \Decoder0~6_combout\,
	combout => \temp_out[6]~6_combout\);

-- Location: FF_X55_Y52_N25
\temp_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \temp_out[6]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_out(6));

-- Location: LCCOMB_X54_Y52_N16
\lfsr_out[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lfsr_out[6]~reg0feeder_combout\ = temp_out(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_out(6),
	combout => \lfsr_out[6]~reg0feeder_combout\);

-- Location: FF_X54_Y52_N17
\lfsr_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \lfsr_out[6]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \lfsr_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_out[6]~reg0_q\);

-- Location: LCCOMB_X55_Y52_N12
\Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (bit_count(1) & (\enable~input_o\ & (bit_count(0) & bit_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_count(1),
	datab => \enable~input_o\,
	datac => bit_count(0),
	datad => bit_count(2),
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X55_Y52_N18
\temp_out[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_out[7]~7_combout\ = (\Decoder0~7_combout\ & (!lfsr(15))) # (!\Decoder0~7_combout\ & ((temp_out(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lfsr(15),
	datac => temp_out(7),
	datad => \Decoder0~7_combout\,
	combout => \temp_out[7]~7_combout\);

-- Location: FF_X55_Y52_N19
\temp_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \temp_out[7]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_out(7));

-- Location: LCCOMB_X54_Y52_N6
\lfsr_out[7]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lfsr_out[7]~reg0feeder_combout\ = temp_out(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_out(7),
	combout => \lfsr_out[7]~reg0feeder_combout\);

-- Location: FF_X54_Y52_N7
\lfsr_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \lfsr_out[7]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \lfsr_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_out[7]~reg0_q\);

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

ww_lfsr_out(0) <= \lfsr_out[0]~output_o\;

ww_lfsr_out(1) <= \lfsr_out[1]~output_o\;

ww_lfsr_out(2) <= \lfsr_out[2]~output_o\;

ww_lfsr_out(3) <= \lfsr_out[3]~output_o\;

ww_lfsr_out(4) <= \lfsr_out[4]~output_o\;

ww_lfsr_out(5) <= \lfsr_out[5]~output_o\;

ww_lfsr_out(6) <= \lfsr_out[6]~output_o\;

ww_lfsr_out(7) <= \lfsr_out[7]~output_o\;
END structure;


