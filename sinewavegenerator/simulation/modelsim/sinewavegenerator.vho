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

-- DATE "10/11/2024 11:20:43"

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

ENTITY 	sinewavegenerator IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	tuningword : IN std_logic_vector(7 DOWNTO 0);
	sin_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END sinewavegenerator;

-- Design Ports Information
-- sin_out[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sin_out[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sin_out[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sin_out[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sin_out[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sin_out[5]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sin_out[6]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sin_out[7]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tuningword[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tuningword[6]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tuningword[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tuningword[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tuningword[3]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tuningword[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tuningword[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tuningword[7]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sinewavegenerator IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_tuningword : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sin_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \sin_out[0]~output_o\ : std_logic;
SIGNAL \sin_out[1]~output_o\ : std_logic;
SIGNAL \sin_out[2]~output_o\ : std_logic;
SIGNAL \sin_out[3]~output_o\ : std_logic;
SIGNAL \sin_out[4]~output_o\ : std_logic;
SIGNAL \sin_out[5]~output_o\ : std_logic;
SIGNAL \sin_out[6]~output_o\ : std_logic;
SIGNAL \sin_out[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \tuningword[0]~input_o\ : std_logic;
SIGNAL \phase_acc[8]~8_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \tuningword[5]~input_o\ : std_logic;
SIGNAL \tuningword[4]~input_o\ : std_logic;
SIGNAL \tuningword[3]~input_o\ : std_logic;
SIGNAL \tuningword[2]~input_o\ : std_logic;
SIGNAL \tuningword[1]~input_o\ : std_logic;
SIGNAL \phase_acc[8]~9\ : std_logic;
SIGNAL \phase_acc[9]~10_combout\ : std_logic;
SIGNAL \phase_acc[9]~11\ : std_logic;
SIGNAL \phase_acc[10]~12_combout\ : std_logic;
SIGNAL \phase_acc[10]~13\ : std_logic;
SIGNAL \phase_acc[11]~14_combout\ : std_logic;
SIGNAL \phase_acc[11]~15\ : std_logic;
SIGNAL \phase_acc[12]~16_combout\ : std_logic;
SIGNAL \phase_acc[12]~17\ : std_logic;
SIGNAL \phase_acc[13]~18_combout\ : std_logic;
SIGNAL \tuningword[6]~input_o\ : std_logic;
SIGNAL \phase_acc[13]~19\ : std_logic;
SIGNAL \phase_acc[14]~20_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \Mux7~12_combout\ : std_logic;
SIGNAL \Mux7~13_combout\ : std_logic;
SIGNAL \tuningword[7]~input_o\ : std_logic;
SIGNAL \phase_acc[14]~21\ : std_logic;
SIGNAL \phase_acc[15]~22_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~10_combout\ : std_logic;
SIGNAL \Mux7~11_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux6~23_combout\ : std_logic;
SIGNAL \Mux6~21_combout\ : std_logic;
SIGNAL \Mux6~20_combout\ : std_logic;
SIGNAL \Mux6~22_combout\ : std_logic;
SIGNAL \Mux6~19_combout\ : std_logic;
SIGNAL \Mux6~24_combout\ : std_logic;
SIGNAL \Mux6~16_combout\ : std_logic;
SIGNAL \Mux6~14_combout\ : std_logic;
SIGNAL \Mux6~13_combout\ : std_logic;
SIGNAL \Mux6~15_combout\ : std_logic;
SIGNAL \Mux6~12_combout\ : std_logic;
SIGNAL \Mux6~17_combout\ : std_logic;
SIGNAL \Mux6~10_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~11_combout\ : std_logic;
SIGNAL \Mux6~18_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~25_combout\ : std_logic;
SIGNAL \Mux5~23_combout\ : std_logic;
SIGNAL \Mux5~20_combout\ : std_logic;
SIGNAL \Mux5~21_combout\ : std_logic;
SIGNAL \Mux5~22_combout\ : std_logic;
SIGNAL \Mux5~19_combout\ : std_logic;
SIGNAL \Mux5~24_combout\ : std_logic;
SIGNAL \Mux5~16_combout\ : std_logic;
SIGNAL \Mux5~12_combout\ : std_logic;
SIGNAL \Mux5~14_combout\ : std_logic;
SIGNAL \Mux5~13_combout\ : std_logic;
SIGNAL \Mux5~15_combout\ : std_logic;
SIGNAL \Mux5~17_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~10_combout\ : std_logic;
SIGNAL \Mux5~11_combout\ : std_logic;
SIGNAL \Mux5~18_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~25_combout\ : std_logic;
SIGNAL \Mux4~17_combout\ : std_logic;
SIGNAL \Mux4~18_combout\ : std_logic;
SIGNAL \Mux4~19_combout\ : std_logic;
SIGNAL \Mux4~20_combout\ : std_logic;
SIGNAL \Mux4~16_combout\ : std_logic;
SIGNAL \Mux4~21_combout\ : std_logic;
SIGNAL \Mux4~11_combout\ : std_logic;
SIGNAL \Mux4~10_combout\ : std_logic;
SIGNAL \Mux4~12_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \Mux4~13_combout\ : std_logic;
SIGNAL \Mux4~14_combout\ : std_logic;
SIGNAL \Mux4~23_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux4~24_combout\ : std_logic;
SIGNAL \Mux4~15_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~22_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Mux3~10_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~18_combout\ : std_logic;
SIGNAL \Mux3~19_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~11_combout\ : std_logic;
SIGNAL \Mux3~13_combout\ : std_logic;
SIGNAL \Mux3~12_combout\ : std_logic;
SIGNAL \Mux3~14_combout\ : std_logic;
SIGNAL \Mux3~16_combout\ : std_logic;
SIGNAL \Mux3~17_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~20_combout\ : std_logic;
SIGNAL \Mux3~21_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~15_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~10_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~11_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~12_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL phase_acc : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_tuningword <= tuningword;
sin_out <= ww_sin_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Mux0~2_combout\ <= NOT \Mux0~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y45_N20
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

-- Location: IOOBUF_X58_Y54_N30
\sin_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~7_combout\,
	devoe => ww_devoe,
	o => \sin_out[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\sin_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~25_combout\,
	devoe => ww_devoe,
	o => \sin_out[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\sin_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~25_combout\,
	devoe => ww_devoe,
	o => \sin_out[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\sin_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~22_combout\,
	devoe => ww_devoe,
	o => \sin_out[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\sin_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~15_combout\,
	devoe => ww_devoe,
	o => \sin_out[4]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\sin_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~12_combout\,
	devoe => ww_devoe,
	o => \sin_out[5]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\sin_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~5_combout\,
	devoe => ww_devoe,
	o => \sin_out[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\sin_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~2_combout\,
	devoe => ww_devoe,
	o => \sin_out[7]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: CLKCTRL_G3
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

-- Location: IOIBUF_X54_Y54_N15
\tuningword[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tuningword(0),
	o => \tuningword[0]~input_o\);

-- Location: LCCOMB_X57_Y53_N14
\phase_acc[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \phase_acc[8]~8_combout\ = (\tuningword[0]~input_o\ & (phase_acc(8) $ (VCC))) # (!\tuningword[0]~input_o\ & (phase_acc(8) & VCC))
-- \phase_acc[8]~9\ = CARRY((\tuningword[0]~input_o\ & phase_acc(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tuningword[0]~input_o\,
	datab => phase_acc(8),
	datad => VCC,
	combout => \phase_acc[8]~8_combout\,
	cout => \phase_acc[8]~9\);

-- Location: IOIBUF_X54_Y54_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X57_Y53_N15
\phase_acc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phase_acc[8]~8_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_acc(8));

-- Location: IOIBUF_X54_Y54_N29
\tuningword[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tuningword(5),
	o => \tuningword[5]~input_o\);

-- Location: IOIBUF_X58_Y54_N1
\tuningword[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tuningword(4),
	o => \tuningword[4]~input_o\);

-- Location: IOIBUF_X58_Y54_N15
\tuningword[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tuningword(3),
	o => \tuningword[3]~input_o\);

-- Location: IOIBUF_X56_Y54_N22
\tuningword[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tuningword(2),
	o => \tuningword[2]~input_o\);

-- Location: IOIBUF_X58_Y54_N8
\tuningword[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tuningword(1),
	o => \tuningword[1]~input_o\);

-- Location: LCCOMB_X57_Y53_N16
\phase_acc[9]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \phase_acc[9]~10_combout\ = (\tuningword[1]~input_o\ & ((phase_acc(9) & (\phase_acc[8]~9\ & VCC)) # (!phase_acc(9) & (!\phase_acc[8]~9\)))) # (!\tuningword[1]~input_o\ & ((phase_acc(9) & (!\phase_acc[8]~9\)) # (!phase_acc(9) & ((\phase_acc[8]~9\) # 
-- (GND)))))
-- \phase_acc[9]~11\ = CARRY((\tuningword[1]~input_o\ & (!phase_acc(9) & !\phase_acc[8]~9\)) # (!\tuningword[1]~input_o\ & ((!\phase_acc[8]~9\) # (!phase_acc(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tuningword[1]~input_o\,
	datab => phase_acc(9),
	datad => VCC,
	cin => \phase_acc[8]~9\,
	combout => \phase_acc[9]~10_combout\,
	cout => \phase_acc[9]~11\);

-- Location: FF_X57_Y53_N17
\phase_acc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phase_acc[9]~10_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_acc(9));

-- Location: LCCOMB_X57_Y53_N18
\phase_acc[10]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \phase_acc[10]~12_combout\ = ((\tuningword[2]~input_o\ $ (phase_acc(10) $ (!\phase_acc[9]~11\)))) # (GND)
-- \phase_acc[10]~13\ = CARRY((\tuningword[2]~input_o\ & ((phase_acc(10)) # (!\phase_acc[9]~11\))) # (!\tuningword[2]~input_o\ & (phase_acc(10) & !\phase_acc[9]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tuningword[2]~input_o\,
	datab => phase_acc(10),
	datad => VCC,
	cin => \phase_acc[9]~11\,
	combout => \phase_acc[10]~12_combout\,
	cout => \phase_acc[10]~13\);

-- Location: FF_X57_Y53_N19
\phase_acc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phase_acc[10]~12_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_acc(10));

-- Location: LCCOMB_X57_Y53_N20
\phase_acc[11]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \phase_acc[11]~14_combout\ = (\tuningword[3]~input_o\ & ((phase_acc(11) & (\phase_acc[10]~13\ & VCC)) # (!phase_acc(11) & (!\phase_acc[10]~13\)))) # (!\tuningword[3]~input_o\ & ((phase_acc(11) & (!\phase_acc[10]~13\)) # (!phase_acc(11) & 
-- ((\phase_acc[10]~13\) # (GND)))))
-- \phase_acc[11]~15\ = CARRY((\tuningword[3]~input_o\ & (!phase_acc(11) & !\phase_acc[10]~13\)) # (!\tuningword[3]~input_o\ & ((!\phase_acc[10]~13\) # (!phase_acc(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tuningword[3]~input_o\,
	datab => phase_acc(11),
	datad => VCC,
	cin => \phase_acc[10]~13\,
	combout => \phase_acc[11]~14_combout\,
	cout => \phase_acc[11]~15\);

-- Location: FF_X57_Y53_N21
\phase_acc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phase_acc[11]~14_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_acc(11));

-- Location: LCCOMB_X57_Y53_N22
\phase_acc[12]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \phase_acc[12]~16_combout\ = ((phase_acc(12) $ (\tuningword[4]~input_o\ $ (!\phase_acc[11]~15\)))) # (GND)
-- \phase_acc[12]~17\ = CARRY((phase_acc(12) & ((\tuningword[4]~input_o\) # (!\phase_acc[11]~15\))) # (!phase_acc(12) & (\tuningword[4]~input_o\ & !\phase_acc[11]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(12),
	datab => \tuningword[4]~input_o\,
	datad => VCC,
	cin => \phase_acc[11]~15\,
	combout => \phase_acc[12]~16_combout\,
	cout => \phase_acc[12]~17\);

-- Location: FF_X57_Y53_N23
\phase_acc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phase_acc[12]~16_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_acc(12));

-- Location: LCCOMB_X57_Y53_N24
\phase_acc[13]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \phase_acc[13]~18_combout\ = (\tuningword[5]~input_o\ & ((phase_acc(13) & (\phase_acc[12]~17\ & VCC)) # (!phase_acc(13) & (!\phase_acc[12]~17\)))) # (!\tuningword[5]~input_o\ & ((phase_acc(13) & (!\phase_acc[12]~17\)) # (!phase_acc(13) & 
-- ((\phase_acc[12]~17\) # (GND)))))
-- \phase_acc[13]~19\ = CARRY((\tuningword[5]~input_o\ & (!phase_acc(13) & !\phase_acc[12]~17\)) # (!\tuningword[5]~input_o\ & ((!\phase_acc[12]~17\) # (!phase_acc(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tuningword[5]~input_o\,
	datab => phase_acc(13),
	datad => VCC,
	cin => \phase_acc[12]~17\,
	combout => \phase_acc[13]~18_combout\,
	cout => \phase_acc[13]~19\);

-- Location: FF_X57_Y53_N25
\phase_acc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phase_acc[13]~18_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_acc(13));

-- Location: IOIBUF_X56_Y54_N29
\tuningword[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tuningword(6),
	o => \tuningword[6]~input_o\);

-- Location: LCCOMB_X57_Y53_N26
\phase_acc[14]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \phase_acc[14]~20_combout\ = ((phase_acc(14) $ (\tuningword[6]~input_o\ $ (!\phase_acc[13]~19\)))) # (GND)
-- \phase_acc[14]~21\ = CARRY((phase_acc(14) & ((\tuningword[6]~input_o\) # (!\phase_acc[13]~19\))) # (!phase_acc(14) & (\tuningword[6]~input_o\ & !\phase_acc[13]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(14),
	datab => \tuningword[6]~input_o\,
	datad => VCC,
	cin => \phase_acc[13]~19\,
	combout => \phase_acc[14]~20_combout\,
	cout => \phase_acc[14]~21\);

-- Location: FF_X57_Y53_N27
\phase_acc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phase_acc[14]~20_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_acc(14));

-- Location: LCCOMB_X58_Y53_N0
\Mux7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (phase_acc(10) & (phase_acc(12) & ((phase_acc(14)) # (!phase_acc(13))))) # (!phase_acc(10) & ((phase_acc(14) & (phase_acc(13) & !phase_acc(12))) # (!phase_acc(14) & ((phase_acc(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(10),
	datab => phase_acc(13),
	datac => phase_acc(14),
	datad => phase_acc(12),
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X58_Y53_N26
\Mux7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~9_combout\ = (phase_acc(8) & (phase_acc(13) $ (((\Mux7~8_combout\) # (!phase_acc(14)))))) # (!phase_acc(8) & ((\Mux7~8_combout\) # ((!phase_acc(13) & phase_acc(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(8),
	datab => phase_acc(13),
	datac => phase_acc(14),
	datad => \Mux7~8_combout\,
	combout => \Mux7~9_combout\);

-- Location: LCCOMB_X58_Y53_N12
\Mux7~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~12_combout\ = (phase_acc(13) & ((phase_acc(8)) # ((!phase_acc(14) & !phase_acc(12))))) # (!phase_acc(13) & ((phase_acc(12) & ((phase_acc(14)))) # (!phase_acc(12) & (phase_acc(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(8),
	datab => phase_acc(13),
	datac => phase_acc(14),
	datad => phase_acc(12),
	combout => \Mux7~12_combout\);

-- Location: LCCOMB_X58_Y53_N22
\Mux7~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~13_combout\ = (\Mux7~12_combout\ & (((!phase_acc(14) & !phase_acc(12))) # (!phase_acc(10)))) # (!\Mux7~12_combout\ & (phase_acc(10) & (phase_acc(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~12_combout\,
	datab => phase_acc(10),
	datac => phase_acc(14),
	datad => phase_acc(12),
	combout => \Mux7~13_combout\);

-- Location: IOIBUF_X54_Y54_N8
\tuningword[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tuningword(7),
	o => \tuningword[7]~input_o\);

-- Location: LCCOMB_X57_Y53_N28
\phase_acc[15]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \phase_acc[15]~22_combout\ = \tuningword[7]~input_o\ $ (\phase_acc[14]~21\ $ (phase_acc(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tuningword[7]~input_o\,
	datad => phase_acc(15),
	cin => \phase_acc[14]~21\,
	combout => \phase_acc[15]~22_combout\);

-- Location: FF_X57_Y53_N29
\phase_acc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phase_acc[15]~22_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_acc(15));

-- Location: LCCOMB_X59_Y53_N10
\Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (phase_acc(12) & (phase_acc(14) $ ((!phase_acc(13))))) # (!phase_acc(12) & (phase_acc(14) & (!phase_acc(13) & phase_acc(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(14),
	datab => phase_acc(12),
	datac => phase_acc(13),
	datad => phase_acc(15),
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X59_Y53_N28
\Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = phase_acc(13) $ (((phase_acc(12) & !phase_acc(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => phase_acc(12),
	datac => phase_acc(13),
	datad => phase_acc(14),
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X59_Y53_N20
\Mux7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (phase_acc(8) & (((phase_acc(10)) # (\Mux7~3_combout\)))) # (!phase_acc(8) & (!\Mux7~4_combout\ & (!phase_acc(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~4_combout\,
	datab => phase_acc(8),
	datac => phase_acc(10),
	datad => \Mux7~3_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X59_Y53_N24
\Mux7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~10_combout\ = (phase_acc(14) & ((phase_acc(13) & ((\Mux7~5_combout\))) # (!phase_acc(13) & (phase_acc(12) & !\Mux7~5_combout\)))) # (!phase_acc(14) & ((phase_acc(12) & ((!\Mux7~5_combout\))) # (!phase_acc(12) & (!phase_acc(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(14),
	datab => phase_acc(12),
	datac => phase_acc(13),
	datad => \Mux7~5_combout\,
	combout => \Mux7~10_combout\);

-- Location: LCCOMB_X59_Y53_N26
\Mux7~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~11_combout\ = (phase_acc(10) & (\Mux7~10_combout\)) # (!phase_acc(10) & ((\Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~10_combout\,
	datac => phase_acc(10),
	datad => \Mux7~5_combout\,
	combout => \Mux7~11_combout\);

-- Location: LCCOMB_X58_Y53_N30
\Mux7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (phase_acc(11) & ((phase_acc(9)) # ((\Mux7~13_combout\)))) # (!phase_acc(11) & (!phase_acc(9) & ((\Mux7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => phase_acc(9),
	datac => \Mux7~13_combout\,
	datad => \Mux7~11_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X58_Y53_N14
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (phase_acc(8) & (((!phase_acc(12)) # (!phase_acc(14))))) # (!phase_acc(8) & ((phase_acc(13) & (phase_acc(14) & phase_acc(12))) # (!phase_acc(13) & ((phase_acc(14)) # (phase_acc(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(8),
	datab => phase_acc(13),
	datac => phase_acc(14),
	datad => phase_acc(12),
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X58_Y53_N4
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (phase_acc(13) & ((phase_acc(8) $ (!phase_acc(12))) # (!phase_acc(14)))) # (!phase_acc(13) & ((phase_acc(8)) # (phase_acc(14) $ (phase_acc(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(8),
	datab => phase_acc(13),
	datac => phase_acc(14),
	datad => phase_acc(12),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X58_Y53_N28
\Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (phase_acc(10) & ((\Mux7~0_combout\))) # (!phase_acc(10) & (!\Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~1_combout\,
	datac => \Mux7~0_combout\,
	datad => phase_acc(10),
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X58_Y53_N24
\Mux7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (phase_acc(9) & ((\Mux7~6_combout\ & (\Mux7~9_combout\)) # (!\Mux7~6_combout\ & ((\Mux7~2_combout\))))) # (!phase_acc(9) & (((\Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~9_combout\,
	datab => phase_acc(9),
	datac => \Mux7~6_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X58_Y52_N2
\Mux6~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~23_combout\ = (phase_acc(11) & (phase_acc(14) & (phase_acc(10) $ (phase_acc(9))))) # (!phase_acc(11) & (((phase_acc(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => phase_acc(14),
	datac => phase_acc(10),
	datad => phase_acc(9),
	combout => \Mux6~23_combout\);

-- Location: LCCOMB_X58_Y52_N30
\Mux6~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~21_combout\ = (phase_acc(11) & (((!phase_acc(9))))) # (!phase_acc(11) & (!phase_acc(14) & (phase_acc(10) $ (phase_acc(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => phase_acc(14),
	datac => phase_acc(10),
	datad => phase_acc(9),
	combout => \Mux6~21_combout\);

-- Location: LCCOMB_X58_Y52_N0
\Mux6~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~20_combout\ = (phase_acc(10) & (!phase_acc(9) & (phase_acc(11) $ (phase_acc(14))))) # (!phase_acc(10) & (phase_acc(9) & ((phase_acc(11)) # (phase_acc(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => phase_acc(14),
	datac => phase_acc(10),
	datad => phase_acc(9),
	combout => \Mux6~20_combout\);

-- Location: LCCOMB_X58_Y52_N4
\Mux6~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~22_combout\ = (phase_acc(12) & (phase_acc(13))) # (!phase_acc(12) & ((phase_acc(13) & ((!\Mux6~20_combout\))) # (!phase_acc(13) & (\Mux6~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(12),
	datab => phase_acc(13),
	datac => \Mux6~21_combout\,
	datad => \Mux6~20_combout\,
	combout => \Mux6~22_combout\);

-- Location: LCCOMB_X58_Y52_N10
\Mux6~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~19_combout\ = (phase_acc(10) & (!phase_acc(9) & ((!phase_acc(14)) # (!phase_acc(11))))) # (!phase_acc(10) & (phase_acc(9) & (phase_acc(11) $ (phase_acc(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => phase_acc(14),
	datac => phase_acc(10),
	datad => phase_acc(9),
	combout => \Mux6~19_combout\);

-- Location: LCCOMB_X58_Y52_N12
\Mux6~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~24_combout\ = (phase_acc(12) & ((\Mux6~22_combout\ & (\Mux6~23_combout\)) # (!\Mux6~22_combout\ & ((!\Mux6~19_combout\))))) # (!phase_acc(12) & (((\Mux6~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(12),
	datab => \Mux6~23_combout\,
	datac => \Mux6~22_combout\,
	datad => \Mux6~19_combout\,
	combout => \Mux6~24_combout\);

-- Location: LCCOMB_X58_Y52_N24
\Mux6~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~16_combout\ = (phase_acc(12) & (((phase_acc(14) & phase_acc(11))) # (!phase_acc(13)))) # (!phase_acc(12) & (!phase_acc(11) & (phase_acc(14) $ (phase_acc(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(12),
	datab => phase_acc(14),
	datac => phase_acc(11),
	datad => phase_acc(13),
	combout => \Mux6~16_combout\);

-- Location: LCCOMB_X59_Y51_N26
\Mux6~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~14_combout\ = (phase_acc(14) & ((phase_acc(12)) # (phase_acc(11) $ (phase_acc(13))))) # (!phase_acc(14) & ((phase_acc(13)) # (phase_acc(12) $ (phase_acc(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(12),
	datab => phase_acc(11),
	datac => phase_acc(13),
	datad => phase_acc(14),
	combout => \Mux6~14_combout\);

-- Location: LCCOMB_X59_Y51_N28
\Mux6~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~13_combout\ = (phase_acc(12) & ((phase_acc(13) $ (!phase_acc(14))) # (!phase_acc(11)))) # (!phase_acc(12) & (!phase_acc(13) & ((phase_acc(11)) # (phase_acc(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(12),
	datab => phase_acc(11),
	datac => phase_acc(13),
	datad => phase_acc(14),
	combout => \Mux6~13_combout\);

-- Location: LCCOMB_X59_Y51_N0
\Mux6~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~15_combout\ = (phase_acc(9) & ((phase_acc(10)) # ((\Mux6~13_combout\)))) # (!phase_acc(9) & (!phase_acc(10) & (!\Mux6~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(9),
	datab => phase_acc(10),
	datac => \Mux6~14_combout\,
	datad => \Mux6~13_combout\,
	combout => \Mux6~15_combout\);

-- Location: LCCOMB_X58_Y52_N18
\Mux6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~12_combout\ = (phase_acc(11) & (!phase_acc(13) & ((!phase_acc(14)) # (!phase_acc(12))))) # (!phase_acc(11) & (phase_acc(13) & ((phase_acc(12)) # (phase_acc(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(12),
	datab => phase_acc(14),
	datac => phase_acc(11),
	datad => phase_acc(13),
	combout => \Mux6~12_combout\);

-- Location: LCCOMB_X58_Y52_N14
\Mux6~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~17_combout\ = (phase_acc(10) & ((\Mux6~15_combout\ & (!\Mux6~16_combout\)) # (!\Mux6~15_combout\ & ((!\Mux6~12_combout\))))) # (!phase_acc(10) & (((\Mux6~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(10),
	datab => \Mux6~16_combout\,
	datac => \Mux6~15_combout\,
	datad => \Mux6~12_combout\,
	combout => \Mux6~17_combout\);

-- Location: LCCOMB_X57_Y52_N24
\Mux6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~10_combout\ = (phase_acc(14) & (((!phase_acc(9))))) # (!phase_acc(14) & (!phase_acc(10) & (phase_acc(11) $ (phase_acc(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => phase_acc(9),
	datac => phase_acc(14),
	datad => phase_acc(10),
	combout => \Mux6~10_combout\);

-- Location: LCCOMB_X58_Y52_N8
\Mux6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (phase_acc(14) & (phase_acc(10) & (phase_acc(11) $ (phase_acc(9))))) # (!phase_acc(14) & (((phase_acc(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => phase_acc(14),
	datac => phase_acc(10),
	datad => phase_acc(9),
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X58_Y52_N6
\Mux6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (phase_acc(11) & (phase_acc(10) & ((!phase_acc(9)) # (!phase_acc(14))))) # (!phase_acc(11) & (phase_acc(10) $ (((!phase_acc(14) & phase_acc(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => phase_acc(14),
	datac => phase_acc(10),
	datad => phase_acc(9),
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X58_Y52_N26
\Mux6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (phase_acc(12) & (phase_acc(13))) # (!phase_acc(12) & ((phase_acc(13) & ((!\Mux6~7_combout\))) # (!phase_acc(13) & (!\Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(12),
	datab => phase_acc(13),
	datac => \Mux6~8_combout\,
	datad => \Mux6~7_combout\,
	combout => \Mux6~9_combout\);

-- Location: LCCOMB_X58_Y52_N28
\Mux6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (phase_acc(11) & (phase_acc(10) $ (((phase_acc(9)) # (!phase_acc(14)))))) # (!phase_acc(11) & (!phase_acc(10) & ((phase_acc(14)) # (phase_acc(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => phase_acc(14),
	datac => phase_acc(10),
	datad => phase_acc(9),
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X58_Y52_N16
\Mux6~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~11_combout\ = (phase_acc(12) & ((\Mux6~9_combout\ & (!\Mux6~10_combout\)) # (!\Mux6~9_combout\ & ((!\Mux6~6_combout\))))) # (!phase_acc(12) & (((\Mux6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(12),
	datab => \Mux6~10_combout\,
	datac => \Mux6~9_combout\,
	datad => \Mux6~6_combout\,
	combout => \Mux6~11_combout\);

-- Location: LCCOMB_X58_Y52_N20
\Mux6~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~18_combout\ = (phase_acc(15) & (((phase_acc(8))))) # (!phase_acc(15) & ((phase_acc(8) & ((\Mux6~11_combout\))) # (!phase_acc(8) & (\Mux6~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(15),
	datab => \Mux6~17_combout\,
	datac => phase_acc(8),
	datad => \Mux6~11_combout\,
	combout => \Mux6~18_combout\);

-- Location: LCCOMB_X59_Y52_N8
\Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (phase_acc(13) & (!phase_acc(11) & (phase_acc(12) $ (phase_acc(14))))) # (!phase_acc(13) & (phase_acc(14) & (phase_acc(11) $ (phase_acc(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(13),
	datab => phase_acc(11),
	datac => phase_acc(12),
	datad => phase_acc(14),
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X59_Y52_N16
\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (phase_acc(13) & (((!phase_acc(11) & !phase_acc(14))) # (!phase_acc(12)))) # (!phase_acc(13) & ((phase_acc(11) & (phase_acc(12))) # (!phase_acc(11) & ((phase_acc(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(13),
	datab => phase_acc(11),
	datac => phase_acc(12),
	datad => phase_acc(14),
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X59_Y52_N18
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (phase_acc(13) & (!phase_acc(14) & (phase_acc(11) $ (phase_acc(12))))) # (!phase_acc(13) & (phase_acc(11) & (phase_acc(12) $ (phase_acc(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(13),
	datab => phase_acc(11),
	datac => phase_acc(12),
	datad => phase_acc(14),
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X59_Y52_N30
\Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (phase_acc(10) & (((phase_acc(9))))) # (!phase_acc(10) & ((phase_acc(9) & ((\Mux6~1_combout\))) # (!phase_acc(9) & (!\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(10),
	datab => \Mux6~2_combout\,
	datac => phase_acc(9),
	datad => \Mux6~1_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X59_Y52_N28
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (phase_acc(13) & (!phase_acc(14) & ((phase_acc(12)) # (!phase_acc(11))))) # (!phase_acc(13) & (phase_acc(14) & ((phase_acc(11)) # (!phase_acc(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(13),
	datab => phase_acc(11),
	datac => phase_acc(12),
	datad => phase_acc(14),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X59_Y52_N2
\Mux6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (phase_acc(10) & ((\Mux6~3_combout\ & (\Mux6~4_combout\)) # (!\Mux6~3_combout\ & ((!\Mux6~0_combout\))))) # (!phase_acc(10) & (((\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(10),
	datab => \Mux6~4_combout\,
	datac => \Mux6~3_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X58_Y52_N22
\Mux6~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~25_combout\ = (\Mux6~18_combout\ & ((\Mux6~24_combout\) # ((!phase_acc(15))))) # (!\Mux6~18_combout\ & (((phase_acc(15) & \Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~24_combout\,
	datab => \Mux6~18_combout\,
	datac => phase_acc(15),
	datad => \Mux6~5_combout\,
	combout => \Mux6~25_combout\);

-- Location: LCCOMB_X58_Y53_N10
\Mux5~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~23_combout\ = (phase_acc(8) & ((phase_acc(13) $ (phase_acc(14))) # (!phase_acc(12)))) # (!phase_acc(8) & ((phase_acc(12)) # ((phase_acc(13) & phase_acc(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(8),
	datab => phase_acc(13),
	datac => phase_acc(14),
	datad => phase_acc(12),
	combout => \Mux5~23_combout\);

-- Location: LCCOMB_X58_Y53_N8
\Mux5~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~20_combout\ = (phase_acc(8) & (((phase_acc(14)) # (!phase_acc(12))) # (!phase_acc(13)))) # (!phase_acc(8) & (phase_acc(13) $ (((phase_acc(14)) # (phase_acc(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(8),
	datab => phase_acc(13),
	datac => phase_acc(14),
	datad => phase_acc(12),
	combout => \Mux5~20_combout\);

-- Location: LCCOMB_X58_Y53_N2
\Mux5~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~21_combout\ = (phase_acc(8) & ((phase_acc(13) & ((phase_acc(12)))) # (!phase_acc(13) & (!phase_acc(14) & !phase_acc(12))))) # (!phase_acc(8) & (phase_acc(13) $ (((phase_acc(14) & phase_acc(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(8),
	datab => phase_acc(13),
	datac => phase_acc(14),
	datad => phase_acc(12),
	combout => \Mux5~21_combout\);

-- Location: LCCOMB_X58_Y53_N16
\Mux5~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~22_combout\ = (phase_acc(11) & ((phase_acc(9)) # ((\Mux5~20_combout\)))) # (!phase_acc(11) & (!phase_acc(9) & ((\Mux5~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => phase_acc(9),
	datac => \Mux5~20_combout\,
	datad => \Mux5~21_combout\,
	combout => \Mux5~22_combout\);

-- Location: LCCOMB_X58_Y53_N18
\Mux5~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~19_combout\ = (phase_acc(8) & (((phase_acc(12))) # (!phase_acc(13)))) # (!phase_acc(8) & ((phase_acc(13)) # ((phase_acc(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(8),
	datab => phase_acc(13),
	datac => phase_acc(14),
	datad => phase_acc(12),
	combout => \Mux5~19_combout\);

-- Location: LCCOMB_X58_Y53_N20
\Mux5~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~24_combout\ = (\Mux5~22_combout\ & (((!phase_acc(9))) # (!\Mux5~23_combout\))) # (!\Mux5~22_combout\ & (((phase_acc(9) & !\Mux5~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~23_combout\,
	datab => \Mux5~22_combout\,
	datac => phase_acc(9),
	datad => \Mux5~19_combout\,
	combout => \Mux5~24_combout\);

-- Location: LCCOMB_X59_Y51_N18
\Mux5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~16_combout\ = (phase_acc(8) & (phase_acc(9) & (!phase_acc(11) & !phase_acc(14)))) # (!phase_acc(8) & (((phase_acc(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(9),
	datab => phase_acc(8),
	datac => phase_acc(11),
	datad => phase_acc(14),
	combout => \Mux5~16_combout\);

-- Location: LCCOMB_X59_Y51_N30
\Mux5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~12_combout\ = (phase_acc(9) & (phase_acc(11) $ (((!phase_acc(8) & !phase_acc(14)))))) # (!phase_acc(9) & (phase_acc(14) $ (((!phase_acc(8) & phase_acc(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(9),
	datab => phase_acc(8),
	datac => phase_acc(11),
	datad => phase_acc(14),
	combout => \Mux5~12_combout\);

-- Location: LCCOMB_X59_Y51_N2
\Mux5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~14_combout\ = (phase_acc(8) & (((phase_acc(11)) # (!phase_acc(14))))) # (!phase_acc(8) & (phase_acc(11) & (phase_acc(9) $ (!phase_acc(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(9),
	datab => phase_acc(8),
	datac => phase_acc(11),
	datad => phase_acc(14),
	combout => \Mux5~14_combout\);

-- Location: LCCOMB_X59_Y51_N20
\Mux5~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~13_combout\ = (phase_acc(14) & (phase_acc(9) $ (phase_acc(8) $ (phase_acc(11))))) # (!phase_acc(14) & (phase_acc(9) & ((phase_acc(11)) # (!phase_acc(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(9),
	datab => phase_acc(8),
	datac => phase_acc(11),
	datad => phase_acc(14),
	combout => \Mux5~13_combout\);

-- Location: LCCOMB_X59_Y51_N12
\Mux5~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~15_combout\ = (phase_acc(12) & (((phase_acc(13))))) # (!phase_acc(12) & ((phase_acc(13) & ((\Mux5~13_combout\))) # (!phase_acc(13) & (!\Mux5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(12),
	datab => \Mux5~14_combout\,
	datac => phase_acc(13),
	datad => \Mux5~13_combout\,
	combout => \Mux5~15_combout\);

-- Location: LCCOMB_X59_Y51_N8
\Mux5~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~17_combout\ = (phase_acc(12) & ((\Mux5~15_combout\ & (!\Mux5~16_combout\)) # (!\Mux5~15_combout\ & ((\Mux5~12_combout\))))) # (!phase_acc(12) & (((\Mux5~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(12),
	datab => \Mux5~16_combout\,
	datac => \Mux5~12_combout\,
	datad => \Mux5~15_combout\,
	combout => \Mux5~17_combout\);

-- Location: LCCOMB_X58_Y51_N30
\Mux5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (phase_acc(9) & (phase_acc(14) $ (((phase_acc(8)) # (!phase_acc(11)))))) # (!phase_acc(9) & ((phase_acc(8) & ((!phase_acc(11)))) # (!phase_acc(8) & (!phase_acc(14) & phase_acc(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(9),
	datab => phase_acc(8),
	datac => phase_acc(14),
	datad => phase_acc(11),
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X58_Y51_N16
\Mux5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (phase_acc(14) & ((phase_acc(9)) # ((!phase_acc(11))))) # (!phase_acc(14) & ((phase_acc(8)) # ((!phase_acc(9) & phase_acc(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(9),
	datab => phase_acc(8),
	datac => phase_acc(14),
	datad => phase_acc(11),
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X58_Y51_N10
\Mux5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~9_combout\ = (phase_acc(12) & (((phase_acc(13))))) # (!phase_acc(12) & ((phase_acc(13) & (\Mux5~7_combout\)) # (!phase_acc(13) & ((\Mux5~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~7_combout\,
	datab => phase_acc(12),
	datac => phase_acc(13),
	datad => \Mux5~8_combout\,
	combout => \Mux5~9_combout\);

-- Location: LCCOMB_X58_Y51_N8
\Mux5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (phase_acc(9) & ((phase_acc(14) & (!phase_acc(8))) # (!phase_acc(14) & ((phase_acc(11)))))) # (!phase_acc(9) & (!phase_acc(11) & ((phase_acc(8)) # (phase_acc(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(9),
	datab => phase_acc(8),
	datac => phase_acc(14),
	datad => phase_acc(11),
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X58_Y51_N12
\Mux5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~10_combout\ = (phase_acc(14) & (!phase_acc(8) & ((phase_acc(9)) # (!phase_acc(11))))) # (!phase_acc(14) & (((phase_acc(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(9),
	datab => phase_acc(8),
	datac => phase_acc(14),
	datad => phase_acc(11),
	combout => \Mux5~10_combout\);

-- Location: LCCOMB_X58_Y51_N26
\Mux5~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~11_combout\ = (\Mux5~9_combout\ & (((\Mux5~10_combout\)) # (!phase_acc(12)))) # (!\Mux5~9_combout\ & (phase_acc(12) & (\Mux5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~9_combout\,
	datab => phase_acc(12),
	datac => \Mux5~6_combout\,
	datad => \Mux5~10_combout\,
	combout => \Mux5~11_combout\);

-- Location: LCCOMB_X58_Y51_N24
\Mux5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~18_combout\ = (phase_acc(15) & (((phase_acc(10))))) # (!phase_acc(15) & ((phase_acc(10) & ((\Mux5~11_combout\))) # (!phase_acc(10) & (\Mux5~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(15),
	datab => \Mux5~17_combout\,
	datac => \Mux5~11_combout\,
	datad => phase_acc(10),
	combout => \Mux5~18_combout\);

-- Location: LCCOMB_X59_Y51_N10
\Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (phase_acc(9) & (((phase_acc(13) & phase_acc(14))))) # (!phase_acc(9) & ((phase_acc(8) & (!phase_acc(13))) # (!phase_acc(8) & ((phase_acc(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(9),
	datab => phase_acc(8),
	datac => phase_acc(13),
	datad => phase_acc(14),
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X59_Y51_N22
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (phase_acc(9) & ((phase_acc(8) & (phase_acc(13))) # (!phase_acc(8) & ((!phase_acc(14)) # (!phase_acc(13)))))) # (!phase_acc(9) & ((phase_acc(8)) # ((phase_acc(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(9),
	datab => phase_acc(8),
	datac => phase_acc(13),
	datad => phase_acc(14),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X59_Y51_N4
\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (phase_acc(9) & (!phase_acc(8) & (!phase_acc(13) & !phase_acc(14)))) # (!phase_acc(9) & ((phase_acc(8)) # (phase_acc(13) $ (phase_acc(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(9),
	datab => phase_acc(8),
	datac => phase_acc(13),
	datad => phase_acc(14),
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X59_Y51_N6
\Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (phase_acc(9) & (((!phase_acc(13) & phase_acc(14))) # (!phase_acc(8)))) # (!phase_acc(9) & ((phase_acc(13) & (phase_acc(8) & !phase_acc(14))) # (!phase_acc(13) & ((phase_acc(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(9),
	datab => phase_acc(8),
	datac => phase_acc(13),
	datad => phase_acc(14),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X59_Y51_N16
\Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (phase_acc(12) & (((phase_acc(11))) # (!\Mux5~1_combout\))) # (!phase_acc(12) & (((!phase_acc(11) & !\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(12),
	datab => \Mux5~1_combout\,
	datac => phase_acc(11),
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X59_Y51_N24
\Mux5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (phase_acc(11) & ((\Mux5~3_combout\ & (\Mux5~4_combout\)) # (!\Mux5~3_combout\ & ((!\Mux5~0_combout\))))) # (!phase_acc(11) & (((\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datab => phase_acc(11),
	datac => \Mux5~0_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X58_Y51_N6
\Mux5~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~25_combout\ = (\Mux5~18_combout\ & ((\Mux5~24_combout\) # ((!phase_acc(15))))) # (!\Mux5~18_combout\ & (((phase_acc(15) & \Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~24_combout\,
	datab => \Mux5~18_combout\,
	datac => phase_acc(15),
	datad => \Mux5~5_combout\,
	combout => \Mux5~25_combout\);

-- Location: LCCOMB_X57_Y51_N12
\Mux4~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~17_combout\ = (phase_acc(13)) # ((phase_acc(14) & (phase_acc(10))) # (!phase_acc(14) & (!phase_acc(10) & phase_acc(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(14),
	datab => phase_acc(10),
	datac => phase_acc(13),
	datad => phase_acc(8),
	combout => \Mux4~17_combout\);

-- Location: LCCOMB_X57_Y51_N18
\Mux4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~18_combout\ = (phase_acc(10) & ((phase_acc(14)) # ((phase_acc(13) & phase_acc(8))))) # (!phase_acc(10) & (phase_acc(13) $ (((phase_acc(14)) # (phase_acc(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(14),
	datab => phase_acc(10),
	datac => phase_acc(13),
	datad => phase_acc(8),
	combout => \Mux4~18_combout\);

-- Location: LCCOMB_X57_Y51_N28
\Mux4~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~19_combout\ = (phase_acc(12) & (((phase_acc(11))) # (!\Mux4~17_combout\))) # (!phase_acc(12) & (((!phase_acc(11) & !\Mux4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~17_combout\,
	datab => phase_acc(12),
	datac => phase_acc(11),
	datad => \Mux4~18_combout\,
	combout => \Mux4~19_combout\);

-- Location: LCCOMB_X57_Y51_N14
\Mux4~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~20_combout\ = (phase_acc(14) & (((phase_acc(13))) # (!phase_acc(10)))) # (!phase_acc(14) & (phase_acc(10) & (!phase_acc(13) & !phase_acc(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(14),
	datab => phase_acc(10),
	datac => phase_acc(13),
	datad => phase_acc(8),
	combout => \Mux4~20_combout\);

-- Location: LCCOMB_X57_Y51_N6
\Mux4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~16_combout\ = (phase_acc(13) & ((phase_acc(10)) # ((phase_acc(14) & !phase_acc(8))))) # (!phase_acc(13) & (phase_acc(8) & (phase_acc(14) $ (!phase_acc(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(14),
	datab => phase_acc(10),
	datac => phase_acc(13),
	datad => phase_acc(8),
	combout => \Mux4~16_combout\);

-- Location: LCCOMB_X57_Y51_N16
\Mux4~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~21_combout\ = (phase_acc(11) & ((\Mux4~19_combout\ & (\Mux4~20_combout\)) # (!\Mux4~19_combout\ & ((\Mux4~16_combout\))))) # (!phase_acc(11) & (\Mux4~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => \Mux4~19_combout\,
	datac => \Mux4~20_combout\,
	datad => \Mux4~16_combout\,
	combout => \Mux4~21_combout\);

-- Location: LCCOMB_X57_Y51_N26
\Mux4~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~11_combout\ = (phase_acc(10) & (phase_acc(13) & ((!phase_acc(8)) # (!phase_acc(14))))) # (!phase_acc(10) & (phase_acc(8) & (phase_acc(14) $ (!phase_acc(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(14),
	datab => phase_acc(10),
	datac => phase_acc(13),
	datad => phase_acc(8),
	combout => \Mux4~11_combout\);

-- Location: LCCOMB_X57_Y51_N20
\Mux4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~10_combout\ = (phase_acc(14) & ((phase_acc(10) & (!phase_acc(13))) # (!phase_acc(10) & (phase_acc(13) & phase_acc(8))))) # (!phase_acc(14) & (phase_acc(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(14),
	datab => phase_acc(10),
	datac => phase_acc(13),
	datad => phase_acc(8),
	combout => \Mux4~10_combout\);

-- Location: LCCOMB_X57_Y51_N0
\Mux4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~12_combout\ = (phase_acc(12) & (((phase_acc(11)) # (\Mux4~10_combout\)))) # (!phase_acc(12) & (!\Mux4~11_combout\ & (!phase_acc(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~11_combout\,
	datab => phase_acc(12),
	datac => phase_acc(11),
	datad => \Mux4~10_combout\,
	combout => \Mux4~12_combout\);

-- Location: LCCOMB_X57_Y51_N22
\Mux4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (phase_acc(14) & (!phase_acc(10) & (phase_acc(13)))) # (!phase_acc(14) & (phase_acc(10) & ((phase_acc(8)) # (!phase_acc(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(14),
	datab => phase_acc(10),
	datac => phase_acc(13),
	datad => phase_acc(8),
	combout => \Mux4~9_combout\);

-- Location: LCCOMB_X57_Y51_N10
\Mux4~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~13_combout\ = (phase_acc(10) & (((phase_acc(13))))) # (!phase_acc(10) & ((phase_acc(14) & ((!phase_acc(8)))) # (!phase_acc(14) & ((phase_acc(13)) # (phase_acc(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(14),
	datab => phase_acc(10),
	datac => phase_acc(13),
	datad => phase_acc(8),
	combout => \Mux4~13_combout\);

-- Location: LCCOMB_X57_Y51_N4
\Mux4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~14_combout\ = (phase_acc(11) & ((\Mux4~12_combout\ & ((\Mux4~13_combout\))) # (!\Mux4~12_combout\ & (!\Mux4~9_combout\)))) # (!phase_acc(11) & (\Mux4~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => \Mux4~12_combout\,
	datac => \Mux4~9_combout\,
	datad => \Mux4~13_combout\,
	combout => \Mux4~14_combout\);

-- Location: LCCOMB_X58_Y51_N22
\Mux4~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~23_combout\ = (phase_acc(10) & ((phase_acc(13) & ((!phase_acc(11)))) # (!phase_acc(13) & ((phase_acc(14)) # (phase_acc(11)))))) # (!phase_acc(10) & ((phase_acc(14) $ (!phase_acc(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(10),
	datab => phase_acc(13),
	datac => phase_acc(14),
	datad => phase_acc(11),
	combout => \Mux4~23_combout\);

-- Location: LCCOMB_X57_Y51_N30
\Mux4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (phase_acc(13) & ((phase_acc(8) & (phase_acc(11))) # (!phase_acc(8) & ((!phase_acc(14)))))) # (!phase_acc(13) & ((phase_acc(14)) # (phase_acc(11) $ (phase_acc(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => phase_acc(8),
	datac => phase_acc(13),
	datad => phase_acc(14),
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X57_Y51_N8
\Mux4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (phase_acc(14) & (phase_acc(13) & (phase_acc(11) $ (!phase_acc(8))))) # (!phase_acc(14) & ((phase_acc(11)) # ((phase_acc(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => phase_acc(8),
	datac => phase_acc(13),
	datad => phase_acc(14),
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X57_Y51_N24
\Mux4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (phase_acc(12) & (((\Mux4~6_combout\) # (phase_acc(10))))) # (!phase_acc(12) & (\Mux4~7_combout\ & ((!phase_acc(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~7_combout\,
	datab => phase_acc(12),
	datac => \Mux4~6_combout\,
	datad => phase_acc(10),
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X58_Y51_N0
\Mux4~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~24_combout\ = (\Mux4~23_combout\ & ((phase_acc(11) & (phase_acc(14) $ (!\Mux4~8_combout\))) # (!phase_acc(11) & ((phase_acc(14)) # (\Mux4~8_combout\))))) # (!\Mux4~23_combout\ & (\Mux4~8_combout\ & (phase_acc(11) $ (phase_acc(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => phase_acc(14),
	datac => \Mux4~23_combout\,
	datad => \Mux4~8_combout\,
	combout => \Mux4~24_combout\);

-- Location: LCCOMB_X58_Y51_N14
\Mux4~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~15_combout\ = (phase_acc(9) & (((phase_acc(15)) # (\Mux4~24_combout\)))) # (!phase_acc(9) & (\Mux4~14_combout\ & (!phase_acc(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(9),
	datab => \Mux4~14_combout\,
	datac => phase_acc(15),
	datad => \Mux4~24_combout\,
	combout => \Mux4~15_combout\);

-- Location: LCCOMB_X57_Y53_N0
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (phase_acc(14) & (phase_acc(8) & (phase_acc(10) $ (phase_acc(13))))) # (!phase_acc(14) & (phase_acc(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(10),
	datab => phase_acc(8),
	datac => phase_acc(14),
	datad => phase_acc(13),
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X57_Y53_N6
\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (phase_acc(10) & ((phase_acc(8) & (phase_acc(14))) # (!phase_acc(8) & ((!phase_acc(13)))))) # (!phase_acc(10) & (((phase_acc(14)) # (phase_acc(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(10),
	datab => phase_acc(8),
	datac => phase_acc(14),
	datad => phase_acc(13),
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X57_Y53_N4
\Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (phase_acc(11) & (((phase_acc(12))))) # (!phase_acc(11) & ((phase_acc(12) & (!\Mux4~1_combout\)) # (!phase_acc(12) & ((!\Mux4~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => \Mux4~1_combout\,
	datac => phase_acc(12),
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X58_Y51_N4
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (phase_acc(10) & (!phase_acc(14) & ((phase_acc(13)) # (!phase_acc(8))))) # (!phase_acc(10) & (phase_acc(13) & (phase_acc(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(10),
	datab => phase_acc(13),
	datac => phase_acc(14),
	datad => phase_acc(8),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X58_Y51_N2
\Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (phase_acc(10) & (phase_acc(13))) # (!phase_acc(10) & ((phase_acc(13) & ((!phase_acc(8)) # (!phase_acc(14)))) # (!phase_acc(13) & ((phase_acc(14)) # (phase_acc(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(10),
	datab => phase_acc(13),
	datac => phase_acc(14),
	datad => phase_acc(8),
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X58_Y51_N28
\Mux4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (phase_acc(11) & ((\Mux4~3_combout\ & ((!\Mux4~4_combout\))) # (!\Mux4~3_combout\ & (\Mux4~0_combout\)))) # (!phase_acc(11) & (\Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => \Mux4~3_combout\,
	datac => \Mux4~0_combout\,
	datad => \Mux4~4_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X58_Y51_N20
\Mux4~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~22_combout\ = (\Mux4~15_combout\ & ((\Mux4~21_combout\) # ((!phase_acc(15))))) # (!\Mux4~15_combout\ & (((phase_acc(15) & \Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~21_combout\,
	datab => \Mux4~15_combout\,
	datac => phase_acc(15),
	datad => \Mux4~5_combout\,
	combout => \Mux4~22_combout\);

-- Location: LCCOMB_X59_Y52_N6
\Mux3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (phase_acc(8) & ((phase_acc(14) & (phase_acc(12))) # (!phase_acc(14) & ((!phase_acc(13)) # (!phase_acc(12)))))) # (!phase_acc(8) & ((phase_acc(12) $ (phase_acc(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(8),
	datab => phase_acc(14),
	datac => phase_acc(12),
	datad => phase_acc(13),
	combout => \Mux3~9_combout\);

-- Location: LCCOMB_X59_Y52_N4
\Mux3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (phase_acc(14) & (((!phase_acc(13)) # (!phase_acc(12))))) # (!phase_acc(14) & ((phase_acc(12)) # ((!phase_acc(8) & phase_acc(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(8),
	datab => phase_acc(14),
	datac => phase_acc(12),
	datad => phase_acc(13),
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X59_Y52_N10
\Mux3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (phase_acc(8) & ((phase_acc(14) & (phase_acc(12) & phase_acc(13))) # (!phase_acc(14) & (!phase_acc(12) & !phase_acc(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(8),
	datab => phase_acc(14),
	datac => phase_acc(12),
	datad => phase_acc(13),
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X59_Y52_N24
\Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = phase_acc(12) $ (phase_acc(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => phase_acc(12),
	datad => phase_acc(13),
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X59_Y52_N20
\Mux3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (phase_acc(11) & (((phase_acc(9)) # (!\Mux3~3_combout\)))) # (!phase_acc(11) & (!\Mux3~7_combout\ & (!phase_acc(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~7_combout\,
	datab => phase_acc(11),
	datac => phase_acc(9),
	datad => \Mux3~3_combout\,
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X59_Y52_N0
\Mux3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~10_combout\ = (phase_acc(9) & ((\Mux3~8_combout\ & (!\Mux3~9_combout\)) # (!\Mux3~8_combout\ & ((\Mux3~6_combout\))))) # (!phase_acc(9) & (((\Mux3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~9_combout\,
	datab => phase_acc(9),
	datac => \Mux3~6_combout\,
	datad => \Mux3~8_combout\,
	combout => \Mux3~10_combout\);

-- Location: LCCOMB_X59_Y51_N14
\Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (phase_acc(12) & (phase_acc(13) & phase_acc(14))) # (!phase_acc(12) & (!phase_acc(13) & !phase_acc(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(12),
	datac => phase_acc(13),
	datad => phase_acc(14),
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X59_Y52_N12
\Mux3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~18_combout\ = (!phase_acc(9) & (((phase_acc(12)) # (!phase_acc(13))) # (!phase_acc(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(8),
	datab => phase_acc(9),
	datac => phase_acc(12),
	datad => phase_acc(13),
	combout => \Mux3~18_combout\);

-- Location: LCCOMB_X59_Y52_N26
\Mux3~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~19_combout\ = (\Mux3~18_combout\ & (phase_acc(14) $ ((phase_acc(12))))) # (!\Mux3~18_combout\ & (((phase_acc(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~18_combout\,
	datab => phase_acc(14),
	datac => phase_acc(12),
	datad => phase_acc(11),
	combout => \Mux3~19_combout\);

-- Location: LCCOMB_X59_Y52_N22
\Mux3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (phase_acc(9) & ((\Mux3~19_combout\ & (!\Mux3~4_combout\)) # (!\Mux3~19_combout\ & ((!\Mux3~3_combout\))))) # (!phase_acc(9) & (((\Mux3~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datab => phase_acc(9),
	datac => \Mux3~19_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X59_Y52_N14
\Mux3~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~11_combout\ = (phase_acc(10) & (((\Mux3~5_combout\) # (phase_acc(15))))) # (!phase_acc(10) & (\Mux3~10_combout\ & ((!phase_acc(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(10),
	datab => \Mux3~10_combout\,
	datac => \Mux3~5_combout\,
	datad => phase_acc(15),
	combout => \Mux3~11_combout\);

-- Location: LCCOMB_X59_Y53_N14
\Mux3~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~13_combout\ = (phase_acc(13) & (((phase_acc(12))))) # (!phase_acc(13) & ((phase_acc(9) & ((!phase_acc(12)))) # (!phase_acc(9) & ((phase_acc(8)) # (phase_acc(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(13),
	datab => phase_acc(8),
	datac => phase_acc(9),
	datad => phase_acc(12),
	combout => \Mux3~13_combout\);

-- Location: LCCOMB_X59_Y53_N4
\Mux3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~12_combout\ = (phase_acc(13) & ((phase_acc(9) & ((!phase_acc(12)))) # (!phase_acc(9) & ((phase_acc(8)) # (phase_acc(12)))))) # (!phase_acc(13) & (phase_acc(12) & ((phase_acc(8)) # (phase_acc(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(13),
	datab => phase_acc(8),
	datac => phase_acc(9),
	datad => phase_acc(12),
	combout => \Mux3~12_combout\);

-- Location: LCCOMB_X59_Y53_N8
\Mux3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~14_combout\ = (phase_acc(11) & (((phase_acc(14))))) # (!phase_acc(11) & ((phase_acc(14) & ((\Mux3~12_combout\))) # (!phase_acc(14) & (!\Mux3~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => \Mux3~13_combout\,
	datac => \Mux3~12_combout\,
	datad => phase_acc(14),
	combout => \Mux3~14_combout\);

-- Location: LCCOMB_X59_Y53_N16
\Mux3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~16_combout\ = (\Mux3~14_combout\ & (phase_acc(12) & ((phase_acc(13)) # (!phase_acc(9))))) # (!\Mux3~14_combout\ & (!phase_acc(13) & ((!phase_acc(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(13),
	datab => phase_acc(9),
	datac => \Mux3~14_combout\,
	datad => phase_acc(12),
	combout => \Mux3~16_combout\);

-- Location: LCCOMB_X59_Y53_N22
\Mux3~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~17_combout\ = (phase_acc(11) & (\Mux3~16_combout\)) # (!phase_acc(11) & ((\Mux3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => \Mux3~16_combout\,
	datac => \Mux3~14_combout\,
	combout => \Mux3~17_combout\);

-- Location: LCCOMB_X59_Y53_N12
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (phase_acc(13) & (!phase_acc(12) & ((!phase_acc(9)) # (!phase_acc(8))))) # (!phase_acc(13) & (((phase_acc(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(13),
	datab => phase_acc(8),
	datac => phase_acc(9),
	datad => phase_acc(12),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X59_Y53_N2
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (phase_acc(13) & (((!phase_acc(12))))) # (!phase_acc(13) & ((phase_acc(12)) # ((phase_acc(8) & phase_acc(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(13),
	datab => phase_acc(8),
	datac => phase_acc(9),
	datad => phase_acc(12),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X59_Y53_N0
\Mux3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~20_combout\ = (phase_acc(13) & ((phase_acc(8) & ((phase_acc(9)) # (phase_acc(12)))) # (!phase_acc(8) & (phase_acc(9) & phase_acc(12))))) # (!phase_acc(13) & (((!phase_acc(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(13),
	datab => phase_acc(8),
	datac => phase_acc(9),
	datad => phase_acc(12),
	combout => \Mux3~20_combout\);

-- Location: LCCOMB_X59_Y53_N6
\Mux3~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~21_combout\ = (phase_acc(11) & (phase_acc(14))) # (!phase_acc(11) & (\Mux3~20_combout\ & (phase_acc(14) $ (!phase_acc(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(14),
	datab => phase_acc(12),
	datac => phase_acc(11),
	datad => \Mux3~20_combout\,
	combout => \Mux3~21_combout\);

-- Location: LCCOMB_X59_Y53_N18
\Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (phase_acc(11) & ((\Mux3~21_combout\ & (\Mux3~1_combout\)) # (!\Mux3~21_combout\ & ((\Mux3~0_combout\))))) # (!phase_acc(11) & (((\Mux3~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux3~0_combout\,
	datac => phase_acc(11),
	datad => \Mux3~21_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X59_Y53_N30
\Mux3~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~15_combout\ = (\Mux3~11_combout\ & (((\Mux3~17_combout\)) # (!phase_acc(15)))) # (!\Mux3~11_combout\ & (phase_acc(15) & ((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~11_combout\,
	datab => phase_acc(15),
	datac => \Mux3~17_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux3~15_combout\);

-- Location: LCCOMB_X57_Y51_N2
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (!phase_acc(11) & (phase_acc(12) & ((!phase_acc(9)) # (!phase_acc(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => phase_acc(10),
	datac => phase_acc(9),
	datad => phase_acc(12),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X57_Y52_N12
\Mux2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (phase_acc(11) & (!phase_acc(10) & ((!phase_acc(9)) # (!phase_acc(8))))) # (!phase_acc(11) & ((phase_acc(8)) # ((phase_acc(9)) # (phase_acc(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(8),
	datab => phase_acc(9),
	datac => phase_acc(11),
	datad => phase_acc(10),
	combout => \Mux2~9_combout\);

-- Location: LCCOMB_X57_Y52_N28
\Mux2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (phase_acc(11)) # ((phase_acc(10)) # ((phase_acc(8) & phase_acc(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(8),
	datab => phase_acc(9),
	datac => phase_acc(11),
	datad => phase_acc(10),
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X57_Y52_N18
\Mux2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~10_combout\ = (phase_acc(12) & (((phase_acc(13))))) # (!phase_acc(12) & ((phase_acc(13) & ((\Mux2~7_combout\))) # (!phase_acc(13) & (!\Mux2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~9_combout\,
	datab => phase_acc(12),
	datac => phase_acc(13),
	datad => \Mux2~7_combout\,
	combout => \Mux2~10_combout\);

-- Location: LCCOMB_X57_Y52_N30
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (phase_acc(12) & ((phase_acc(11)) # ((phase_acc(9) & phase_acc(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => phase_acc(9),
	datac => phase_acc(12),
	datad => phase_acc(10),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X57_Y52_N8
\Mux2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (phase_acc(11) & ((phase_acc(10)) # ((phase_acc(8) & phase_acc(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(8),
	datab => phase_acc(9),
	datac => phase_acc(11),
	datad => phase_acc(10),
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X57_Y52_N26
\Mux2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (!phase_acc(13) & ((\Mux1~0_combout\) # ((!phase_acc(12) & !\Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => phase_acc(12),
	datac => phase_acc(13),
	datad => \Mux2~5_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X57_Y52_N22
\Mux2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux2~6_combout\) # ((!phase_acc(12) & (phase_acc(13) & !\Mux2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~6_combout\,
	datab => phase_acc(12),
	datac => phase_acc(13),
	datad => \Mux2~7_combout\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X57_Y52_N0
\Mux2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~11_combout\ = (phase_acc(15) & (((\Mux2~8_combout\)))) # (!phase_acc(15) & ((\Mux2~1_combout\) # ((\Mux2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux2~10_combout\,
	datac => \Mux2~8_combout\,
	datad => phase_acc(15),
	combout => \Mux2~11_combout\);

-- Location: LCCOMB_X58_Y53_N6
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (((!phase_acc(12)) # (!phase_acc(9))) # (!phase_acc(10))) # (!phase_acc(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => phase_acc(10),
	datac => phase_acc(9),
	datad => phase_acc(12),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X57_Y53_N2
\Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (!phase_acc(12) & ((phase_acc(10)) # ((phase_acc(8) & phase_acc(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(10),
	datab => phase_acc(8),
	datac => phase_acc(12),
	datad => phase_acc(9),
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X57_Y53_N8
\Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~1_combout\) # ((phase_acc(11) & (phase_acc(13) & \Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => phase_acc(13),
	datac => \Mux2~1_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X57_Y53_N10
\Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = phase_acc(15) $ (((\Mux2~3_combout\) # ((\Mux2~0_combout\ & !phase_acc(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => phase_acc(15),
	datac => \Mux2~3_combout\,
	datad => phase_acc(13),
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X57_Y53_N12
\Mux2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~12_combout\ = (phase_acc(14) & ((\Mux2~4_combout\))) # (!phase_acc(14) & (\Mux2~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~11_combout\,
	datac => phase_acc(14),
	datad => \Mux2~4_combout\,
	combout => \Mux2~12_combout\);

-- Location: LCCOMB_X57_Y52_N6
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = phase_acc(15) $ ((((!\Mux2~5_combout\ & !phase_acc(12))) # (!phase_acc(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~5_combout\,
	datab => phase_acc(12),
	datac => phase_acc(13),
	datad => phase_acc(15),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X57_Y52_N16
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!phase_acc(8) & (!phase_acc(9) & (!phase_acc(12) & !phase_acc(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(8),
	datab => phase_acc(9),
	datac => phase_acc(12),
	datad => phase_acc(10),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X57_Y52_N10
\Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (phase_acc(13)) # ((\Mux1~0_combout\) # ((!phase_acc(11) & \Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => phase_acc(13),
	datac => \Mux1~0_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X57_Y52_N20
\Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (phase_acc(12) & ((phase_acc(11)) # ((phase_acc(9) & phase_acc(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => phase_acc(9),
	datac => phase_acc(12),
	datad => phase_acc(10),
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X57_Y52_N14
\Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (phase_acc(15) & (((!\Mux1~3_combout\ & !phase_acc(13))))) # (!phase_acc(15) & (\Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \Mux1~3_combout\,
	datac => phase_acc(13),
	datad => phase_acc(15),
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X57_Y52_N4
\Mux1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (phase_acc(14) & (\Mux1~1_combout\)) # (!phase_acc(14) & ((\Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux1~4_combout\,
	datac => phase_acc(14),
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X57_Y53_N30
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!phase_acc(14) & !phase_acc(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => phase_acc(14),
	datad => phase_acc(13),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X57_Y52_N2
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (phase_acc(15)) # ((!phase_acc(11) & (\Mux0~0_combout\ & \Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc(11),
	datab => \Mux0~0_combout\,
	datac => \Mux0~1_combout\,
	datad => phase_acc(15),
	combout => \Mux0~2_combout\);

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

ww_sin_out(0) <= \sin_out[0]~output_o\;

ww_sin_out(1) <= \sin_out[1]~output_o\;

ww_sin_out(2) <= \sin_out[2]~output_o\;

ww_sin_out(3) <= \sin_out[3]~output_o\;

ww_sin_out(4) <= \sin_out[4]~output_o\;

ww_sin_out(5) <= \sin_out[5]~output_o\;

ww_sin_out(6) <= \sin_out[6]~output_o\;

ww_sin_out(7) <= \sin_out[7]~output_o\;
END structure;


