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

-- DATE "09/27/2024 18:57:20"

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

ENTITY 	mem8bit IS
    PORT (
	clk : IN std_logic;
	SW : IN std_logic_vector(7 DOWNTO 0);
	addr : IN std_logic_vector(1 DOWNTO 0);
	readbutton : IN std_logic;
	Writebutton : IN std_logic;
	LEDS : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END mem8bit;

-- Design Ports Information
-- LEDS[0]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDS[1]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDS[2]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDS[3]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDS[4]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDS[5]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDS[6]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDS[7]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- addr[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- readbutton	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Writebutton	=>  Location: PIN_A7,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF mem8bit IS
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
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_addr : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_readbutton : std_logic;
SIGNAL ww_Writebutton : std_logic;
SIGNAL ww_LEDS : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LEDS[0]~output_o\ : std_logic;
SIGNAL \LEDS[1]~output_o\ : std_logic;
SIGNAL \LEDS[2]~output_o\ : std_logic;
SIGNAL \LEDS[3]~output_o\ : std_logic;
SIGNAL \LEDS[4]~output_o\ : std_logic;
SIGNAL \LEDS[5]~output_o\ : std_logic;
SIGNAL \LEDS[6]~output_o\ : std_logic;
SIGNAL \LEDS[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \addr[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \memory~27feeder_combout\ : std_logic;
SIGNAL \addr[0]~input_o\ : std_logic;
SIGNAL \Writebutton~input_o\ : std_logic;
SIGNAL \memory~59_combout\ : std_logic;
SIGNAL \memory~27_q\ : std_logic;
SIGNAL \memory~35feeder_combout\ : std_logic;
SIGNAL \memory~62_combout\ : std_logic;
SIGNAL \memory~35_q\ : std_logic;
SIGNAL \memory~61_combout\ : std_logic;
SIGNAL \memory~11_q\ : std_logic;
SIGNAL \memory~19feeder_combout\ : std_logic;
SIGNAL \memory~60_combout\ : std_logic;
SIGNAL \memory~19_q\ : std_logic;
SIGNAL \memory~43_combout\ : std_logic;
SIGNAL \memory~44_combout\ : std_logic;
SIGNAL \readbutton~input_o\ : std_logic;
SIGNAL \LEDS[0]~reg0_q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \memory~20feeder_combout\ : std_logic;
SIGNAL \memory~20_q\ : std_logic;
SIGNAL \memory~36feeder_combout\ : std_logic;
SIGNAL \memory~36_q\ : std_logic;
SIGNAL \memory~12_q\ : std_logic;
SIGNAL \memory~28feeder_combout\ : std_logic;
SIGNAL \memory~28_q\ : std_logic;
SIGNAL \memory~45_combout\ : std_logic;
SIGNAL \memory~46_combout\ : std_logic;
SIGNAL \LEDS[1]~reg0_q\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \memory~29feeder_combout\ : std_logic;
SIGNAL \memory~29_q\ : std_logic;
SIGNAL \memory~37feeder_combout\ : std_logic;
SIGNAL \memory~37_q\ : std_logic;
SIGNAL \memory~13_q\ : std_logic;
SIGNAL \memory~21feeder_combout\ : std_logic;
SIGNAL \memory~21_q\ : std_logic;
SIGNAL \memory~47_combout\ : std_logic;
SIGNAL \memory~48_combout\ : std_logic;
SIGNAL \LEDS[2]~reg0_q\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \memory~38feeder_combout\ : std_logic;
SIGNAL \memory~38_q\ : std_logic;
SIGNAL \memory~22feeder_combout\ : std_logic;
SIGNAL \memory~22_q\ : std_logic;
SIGNAL \memory~14_q\ : std_logic;
SIGNAL \memory~30feeder_combout\ : std_logic;
SIGNAL \memory~30_q\ : std_logic;
SIGNAL \memory~49_combout\ : std_logic;
SIGNAL \memory~50_combout\ : std_logic;
SIGNAL \LEDS[3]~reg0_q\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \memory~31feeder_combout\ : std_logic;
SIGNAL \memory~31_q\ : std_logic;
SIGNAL \memory~39feeder_combout\ : std_logic;
SIGNAL \memory~39_q\ : std_logic;
SIGNAL \memory~15_q\ : std_logic;
SIGNAL \memory~23feeder_combout\ : std_logic;
SIGNAL \memory~23_q\ : std_logic;
SIGNAL \memory~51_combout\ : std_logic;
SIGNAL \memory~52_combout\ : std_logic;
SIGNAL \LEDS[4]~reg0_q\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \memory~24feeder_combout\ : std_logic;
SIGNAL \memory~24_q\ : std_logic;
SIGNAL \memory~40feeder_combout\ : std_logic;
SIGNAL \memory~40_q\ : std_logic;
SIGNAL \memory~16_q\ : std_logic;
SIGNAL \memory~32feeder_combout\ : std_logic;
SIGNAL \memory~32_q\ : std_logic;
SIGNAL \memory~53_combout\ : std_logic;
SIGNAL \memory~54_combout\ : std_logic;
SIGNAL \LEDS[5]~reg0_q\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \memory~33feeder_combout\ : std_logic;
SIGNAL \memory~33_q\ : std_logic;
SIGNAL \memory~41feeder_combout\ : std_logic;
SIGNAL \memory~41_q\ : std_logic;
SIGNAL \memory~17_q\ : std_logic;
SIGNAL \memory~25feeder_combout\ : std_logic;
SIGNAL \memory~25_q\ : std_logic;
SIGNAL \memory~55_combout\ : std_logic;
SIGNAL \memory~56_combout\ : std_logic;
SIGNAL \LEDS[6]~reg0_q\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \memory~26feeder_combout\ : std_logic;
SIGNAL \memory~26_q\ : std_logic;
SIGNAL \memory~42feeder_combout\ : std_logic;
SIGNAL \memory~42_q\ : std_logic;
SIGNAL \memory~18_q\ : std_logic;
SIGNAL \memory~34feeder_combout\ : std_logic;
SIGNAL \memory~34_q\ : std_logic;
SIGNAL \memory~57_combout\ : std_logic;
SIGNAL \memory~58_combout\ : std_logic;
SIGNAL \LEDS[7]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_readbutton~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_SW <= SW;
ww_addr <= addr;
ww_readbutton <= readbutton;
ww_Writebutton <= Writebutton;
LEDS <= ww_LEDS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_readbutton~input_o\ <= NOT \readbutton~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
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

-- Location: IOOBUF_X51_Y54_N16
\LEDS[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDS[0]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDS[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\LEDS[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDS[1]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDS[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\LEDS[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDS[2]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDS[2]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\LEDS[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDS[3]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDS[3]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\LEDS[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDS[4]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDS[4]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\LEDS[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDS[5]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDS[5]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\LEDS[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDS[6]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDS[6]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\LEDS[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDS[7]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDS[7]~output_o\);

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

-- Location: IOIBUF_X51_Y54_N22
\addr[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(1),
	o => \addr[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X56_Y53_N28
\memory~27feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~27feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	combout => \memory~27feeder_combout\);

-- Location: IOIBUF_X51_Y54_N29
\addr[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(0),
	o => \addr[0]~input_o\);

-- Location: IOIBUF_X49_Y54_N29
\Writebutton~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Writebutton,
	o => \Writebutton~input_o\);

-- Location: LCCOMB_X57_Y53_N24
\memory~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~59_combout\ = (!\addr[0]~input_o\ & (!\Writebutton~input_o\ & \addr[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr[0]~input_o\,
	datac => \Writebutton~input_o\,
	datad => \addr[1]~input_o\,
	combout => \memory~59_combout\);

-- Location: FF_X56_Y53_N29
\memory~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~27feeder_combout\,
	ena => \memory~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~27_q\);

-- Location: LCCOMB_X58_Y53_N8
\memory~35feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~35feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \memory~35feeder_combout\);

-- Location: LCCOMB_X57_Y53_N26
\memory~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~62_combout\ = (!\Writebutton~input_o\ & (\addr[0]~input_o\ & \addr[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Writebutton~input_o\,
	datac => \addr[0]~input_o\,
	datad => \addr[1]~input_o\,
	combout => \memory~62_combout\);

-- Location: FF_X58_Y53_N9
\memory~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~35feeder_combout\,
	ena => \memory~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~35_q\);

-- Location: LCCOMB_X57_Y53_N8
\memory~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~61_combout\ = (!\Writebutton~input_o\ & (!\addr[0]~input_o\ & !\addr[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Writebutton~input_o\,
	datac => \addr[0]~input_o\,
	datad => \addr[1]~input_o\,
	combout => \memory~61_combout\);

-- Location: FF_X57_Y53_N17
\memory~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \memory~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~11_q\);

-- Location: LCCOMB_X56_Y53_N30
\memory~19feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~19feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	combout => \memory~19feeder_combout\);

-- Location: LCCOMB_X57_Y53_N10
\memory~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~60_combout\ = (\addr[0]~input_o\ & (!\Writebutton~input_o\ & !\addr[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr[0]~input_o\,
	datac => \Writebutton~input_o\,
	datad => \addr[1]~input_o\,
	combout => \memory~60_combout\);

-- Location: FF_X56_Y53_N31
\memory~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~19feeder_combout\,
	ena => \memory~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~19_q\);

-- Location: LCCOMB_X57_Y53_N16
\memory~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~43_combout\ = (\addr[0]~input_o\ & ((\addr[1]~input_o\) # ((\memory~19_q\)))) # (!\addr[0]~input_o\ & (!\addr[1]~input_o\ & (\memory~11_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \addr[1]~input_o\,
	datac => \memory~11_q\,
	datad => \memory~19_q\,
	combout => \memory~43_combout\);

-- Location: LCCOMB_X57_Y53_N12
\memory~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~44_combout\ = (\addr[1]~input_o\ & ((\memory~43_combout\ & ((\memory~35_q\))) # (!\memory~43_combout\ & (\memory~27_q\)))) # (!\addr[1]~input_o\ & (((\memory~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \memory~27_q\,
	datac => \memory~35_q\,
	datad => \memory~43_combout\,
	combout => \memory~44_combout\);

-- Location: IOIBUF_X46_Y54_N29
\readbutton~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_readbutton,
	o => \readbutton~input_o\);

-- Location: FF_X57_Y53_N13
\LEDS[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~44_combout\,
	ena => \ALT_INV_readbutton~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDS[0]~reg0_q\);

-- Location: IOIBUF_X54_Y54_N29
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X56_Y53_N16
\memory~20feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~20feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \memory~20feeder_combout\);

-- Location: FF_X56_Y53_N17
\memory~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~20feeder_combout\,
	ena => \memory~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~20_q\);

-- Location: LCCOMB_X58_Y53_N10
\memory~36feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~36feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \memory~36feeder_combout\);

-- Location: FF_X58_Y53_N11
\memory~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~36feeder_combout\,
	ena => \memory~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~36_q\);

-- Location: FF_X57_Y53_N3
\memory~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \memory~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~12_q\);

-- Location: LCCOMB_X56_Y53_N22
\memory~28feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~28feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \memory~28feeder_combout\);

-- Location: FF_X56_Y53_N23
\memory~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~28feeder_combout\,
	ena => \memory~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~28_q\);

-- Location: LCCOMB_X57_Y53_N2
\memory~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~45_combout\ = (\addr[0]~input_o\ & (\addr[1]~input_o\)) # (!\addr[0]~input_o\ & ((\addr[1]~input_o\ & ((\memory~28_q\))) # (!\addr[1]~input_o\ & (\memory~12_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \addr[1]~input_o\,
	datac => \memory~12_q\,
	datad => \memory~28_q\,
	combout => \memory~45_combout\);

-- Location: LCCOMB_X57_Y53_N22
\memory~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~46_combout\ = (\addr[0]~input_o\ & ((\memory~45_combout\ & ((\memory~36_q\))) # (!\memory~45_combout\ & (\memory~20_q\)))) # (!\addr[0]~input_o\ & (((\memory~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~20_q\,
	datab => \addr[0]~input_o\,
	datac => \memory~36_q\,
	datad => \memory~45_combout\,
	combout => \memory~46_combout\);

-- Location: FF_X57_Y53_N23
\LEDS[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~46_combout\,
	ena => \ALT_INV_readbutton~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDS[1]~reg0_q\);

-- Location: IOIBUF_X54_Y54_N22
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X56_Y53_N12
\memory~29feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~29feeder_combout\ = \SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \memory~29feeder_combout\);

-- Location: FF_X56_Y53_N13
\memory~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~29feeder_combout\,
	ena => \memory~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~29_q\);

-- Location: LCCOMB_X58_Y53_N12
\memory~37feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~37feeder_combout\ = \SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \memory~37feeder_combout\);

-- Location: FF_X58_Y53_N13
\memory~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~37feeder_combout\,
	ena => \memory~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~37_q\);

-- Location: FF_X57_Y53_N21
\memory~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \memory~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~13_q\);

-- Location: LCCOMB_X56_Y53_N18
\memory~21feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~21feeder_combout\ = \SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \memory~21feeder_combout\);

-- Location: FF_X56_Y53_N19
\memory~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~21feeder_combout\,
	ena => \memory~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~21_q\);

-- Location: LCCOMB_X57_Y53_N20
\memory~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~47_combout\ = (\addr[0]~input_o\ & ((\addr[1]~input_o\) # ((\memory~21_q\)))) # (!\addr[0]~input_o\ & (!\addr[1]~input_o\ & (\memory~13_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \addr[1]~input_o\,
	datac => \memory~13_q\,
	datad => \memory~21_q\,
	combout => \memory~47_combout\);

-- Location: LCCOMB_X57_Y53_N4
\memory~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~48_combout\ = (\addr[1]~input_o\ & ((\memory~47_combout\ & ((\memory~37_q\))) # (!\memory~47_combout\ & (\memory~29_q\)))) # (!\addr[1]~input_o\ & (((\memory~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~29_q\,
	datab => \addr[1]~input_o\,
	datac => \memory~37_q\,
	datad => \memory~47_combout\,
	combout => \memory~48_combout\);

-- Location: FF_X57_Y53_N5
\LEDS[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~48_combout\,
	ena => \ALT_INV_readbutton~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDS[2]~reg0_q\);

-- Location: IOIBUF_X49_Y54_N1
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X58_Y53_N2
\memory~38feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~38feeder_combout\ = \SW[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[3]~input_o\,
	combout => \memory~38feeder_combout\);

-- Location: FF_X58_Y53_N3
\memory~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~38feeder_combout\,
	ena => \memory~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~38_q\);

-- Location: LCCOMB_X56_Y53_N24
\memory~22feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~22feeder_combout\ = \SW[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[3]~input_o\,
	combout => \memory~22feeder_combout\);

-- Location: FF_X56_Y53_N25
\memory~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~22feeder_combout\,
	ena => \memory~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~22_q\);

-- Location: FF_X57_Y53_N19
\memory~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \memory~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~14_q\);

-- Location: LCCOMB_X56_Y53_N10
\memory~30feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~30feeder_combout\ = \SW[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[3]~input_o\,
	combout => \memory~30feeder_combout\);

-- Location: FF_X56_Y53_N11
\memory~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~30feeder_combout\,
	ena => \memory~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~30_q\);

-- Location: LCCOMB_X57_Y53_N18
\memory~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~49_combout\ = (\addr[0]~input_o\ & (\addr[1]~input_o\)) # (!\addr[0]~input_o\ & ((\addr[1]~input_o\ & ((\memory~30_q\))) # (!\addr[1]~input_o\ & (\memory~14_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \addr[1]~input_o\,
	datac => \memory~14_q\,
	datad => \memory~30_q\,
	combout => \memory~49_combout\);

-- Location: LCCOMB_X57_Y53_N14
\memory~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~50_combout\ = (\addr[0]~input_o\ & ((\memory~49_combout\ & (\memory~38_q\)) # (!\memory~49_combout\ & ((\memory~22_q\))))) # (!\addr[0]~input_o\ & (((\memory~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~38_q\,
	datab => \memory~22_q\,
	datac => \addr[0]~input_o\,
	datad => \memory~49_combout\,
	combout => \memory~50_combout\);

-- Location: FF_X57_Y53_N15
\LEDS[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~50_combout\,
	ena => \ALT_INV_readbutton~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDS[3]~reg0_q\);

-- Location: IOIBUF_X54_Y54_N15
\SW[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X56_Y53_N8
\memory~31feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~31feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[4]~input_o\,
	combout => \memory~31feeder_combout\);

-- Location: FF_X56_Y53_N9
\memory~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~31feeder_combout\,
	ena => \memory~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~31_q\);

-- Location: LCCOMB_X58_Y53_N0
\memory~39feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~39feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[4]~input_o\,
	combout => \memory~39feeder_combout\);

-- Location: FF_X58_Y53_N1
\memory~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~39feeder_combout\,
	ena => \memory~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~39_q\);

-- Location: FF_X57_Y53_N29
\memory~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \memory~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~15_q\);

-- Location: LCCOMB_X56_Y53_N2
\memory~23feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~23feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[4]~input_o\,
	combout => \memory~23feeder_combout\);

-- Location: FF_X56_Y53_N3
\memory~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~23feeder_combout\,
	ena => \memory~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~23_q\);

-- Location: LCCOMB_X57_Y53_N28
\memory~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~51_combout\ = (\addr[0]~input_o\ & ((\addr[1]~input_o\) # ((\memory~23_q\)))) # (!\addr[0]~input_o\ & (!\addr[1]~input_o\ & (\memory~15_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \addr[1]~input_o\,
	datac => \memory~15_q\,
	datad => \memory~23_q\,
	combout => \memory~51_combout\);

-- Location: LCCOMB_X57_Y53_N0
\memory~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~52_combout\ = (\addr[1]~input_o\ & ((\memory~51_combout\ & ((\memory~39_q\))) # (!\memory~51_combout\ & (\memory~31_q\)))) # (!\addr[1]~input_o\ & (((\memory~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~31_q\,
	datab => \addr[1]~input_o\,
	datac => \memory~39_q\,
	datad => \memory~51_combout\,
	combout => \memory~52_combout\);

-- Location: FF_X57_Y53_N1
\LEDS[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~52_combout\,
	ena => \ALT_INV_readbutton~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDS[4]~reg0_q\);

-- Location: IOIBUF_X58_Y54_N29
\SW[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X56_Y53_N0
\memory~24feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~24feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \memory~24feeder_combout\);

-- Location: FF_X56_Y53_N1
\memory~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~24feeder_combout\,
	ena => \memory~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~24_q\);

-- Location: LCCOMB_X58_Y53_N22
\memory~40feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~40feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \memory~40feeder_combout\);

-- Location: FF_X58_Y53_N23
\memory~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~40feeder_combout\,
	ena => \memory~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~40_q\);

-- Location: FF_X57_Y53_N7
\memory~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \memory~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~16_q\);

-- Location: LCCOMB_X56_Y53_N14
\memory~32feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~32feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \memory~32feeder_combout\);

-- Location: FF_X56_Y53_N15
\memory~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~32feeder_combout\,
	ena => \memory~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~32_q\);

-- Location: LCCOMB_X57_Y53_N6
\memory~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~53_combout\ = (\addr[0]~input_o\ & (\addr[1]~input_o\)) # (!\addr[0]~input_o\ & ((\addr[1]~input_o\ & ((\memory~32_q\))) # (!\addr[1]~input_o\ & (\memory~16_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \addr[1]~input_o\,
	datac => \memory~16_q\,
	datad => \memory~32_q\,
	combout => \memory~53_combout\);

-- Location: LCCOMB_X57_Y53_N30
\memory~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~54_combout\ = (\addr[0]~input_o\ & ((\memory~53_combout\ & ((\memory~40_q\))) # (!\memory~53_combout\ & (\memory~24_q\)))) # (!\addr[0]~input_o\ & (((\memory~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~24_q\,
	datab => \memory~40_q\,
	datac => \addr[0]~input_o\,
	datad => \memory~53_combout\,
	combout => \memory~54_combout\);

-- Location: FF_X57_Y53_N31
\LEDS[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~54_combout\,
	ena => \ALT_INV_readbutton~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDS[5]~reg0_q\);

-- Location: IOIBUF_X56_Y54_N1
\SW[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X56_Y53_N20
\memory~33feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~33feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \memory~33feeder_combout\);

-- Location: FF_X56_Y53_N21
\memory~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~33feeder_combout\,
	ena => \memory~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~33_q\);

-- Location: LCCOMB_X54_Y53_N16
\memory~41feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~41feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \memory~41feeder_combout\);

-- Location: FF_X54_Y53_N17
\memory~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~41feeder_combout\,
	ena => \memory~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~41_q\);

-- Location: FF_X55_Y53_N29
\memory~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \memory~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~17_q\);

-- Location: LCCOMB_X56_Y53_N26
\memory~25feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~25feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \memory~25feeder_combout\);

-- Location: FF_X56_Y53_N27
\memory~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~25feeder_combout\,
	ena => \memory~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~25_q\);

-- Location: LCCOMB_X55_Y53_N28
\memory~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~55_combout\ = (\addr[1]~input_o\ & (\addr[0]~input_o\)) # (!\addr[1]~input_o\ & ((\addr[0]~input_o\ & ((\memory~25_q\))) # (!\addr[0]~input_o\ & (\memory~17_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[0]~input_o\,
	datac => \memory~17_q\,
	datad => \memory~25_q\,
	combout => \memory~55_combout\);

-- Location: LCCOMB_X55_Y53_N12
\memory~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~56_combout\ = (\addr[1]~input_o\ & ((\memory~55_combout\ & ((\memory~41_q\))) # (!\memory~55_combout\ & (\memory~33_q\)))) # (!\addr[1]~input_o\ & (((\memory~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~33_q\,
	datab => \addr[1]~input_o\,
	datac => \memory~41_q\,
	datad => \memory~55_combout\,
	combout => \memory~56_combout\);

-- Location: FF_X55_Y53_N13
\LEDS[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~56_combout\,
	ena => \ALT_INV_readbutton~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDS[6]~reg0_q\);

-- Location: IOIBUF_X69_Y54_N1
\SW[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X56_Y53_N4
\memory~26feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~26feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[7]~input_o\,
	combout => \memory~26feeder_combout\);

-- Location: FF_X56_Y53_N5
\memory~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~26feeder_combout\,
	ena => \memory~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~26_q\);

-- Location: LCCOMB_X54_Y53_N6
\memory~42feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~42feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[7]~input_o\,
	combout => \memory~42feeder_combout\);

-- Location: FF_X54_Y53_N7
\memory~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~42feeder_combout\,
	ena => \memory~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~42_q\);

-- Location: FF_X55_Y53_N19
\memory~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \memory~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~18_q\);

-- Location: LCCOMB_X56_Y53_N6
\memory~34feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~34feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[7]~input_o\,
	combout => \memory~34feeder_combout\);

-- Location: FF_X56_Y53_N7
\memory~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~34feeder_combout\,
	ena => \memory~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~34_q\);

-- Location: LCCOMB_X55_Y53_N18
\memory~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~57_combout\ = (\addr[1]~input_o\ & ((\addr[0]~input_o\) # ((\memory~34_q\)))) # (!\addr[1]~input_o\ & (!\addr[0]~input_o\ & (\memory~18_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[0]~input_o\,
	datac => \memory~18_q\,
	datad => \memory~34_q\,
	combout => \memory~57_combout\);

-- Location: LCCOMB_X55_Y53_N14
\memory~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~58_combout\ = (\addr[0]~input_o\ & ((\memory~57_combout\ & ((\memory~42_q\))) # (!\memory~57_combout\ & (\memory~26_q\)))) # (!\addr[0]~input_o\ & (((\memory~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~26_q\,
	datab => \addr[0]~input_o\,
	datac => \memory~42_q\,
	datad => \memory~57_combout\,
	combout => \memory~58_combout\);

-- Location: FF_X55_Y53_N15
\LEDS[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~58_combout\,
	ena => \ALT_INV_readbutton~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDS[7]~reg0_q\);

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

ww_LEDS(0) <= \LEDS[0]~output_o\;

ww_LEDS(1) <= \LEDS[1]~output_o\;

ww_LEDS(2) <= \LEDS[2]~output_o\;

ww_LEDS(3) <= \LEDS[3]~output_o\;

ww_LEDS(4) <= \LEDS[4]~output_o\;

ww_LEDS(5) <= \LEDS[5]~output_o\;

ww_LEDS(6) <= \LEDS[6]~output_o\;

ww_LEDS(7) <= \LEDS[7]~output_o\;
END structure;


