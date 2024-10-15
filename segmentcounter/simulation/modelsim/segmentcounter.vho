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

-- DATE "09/13/2024 17:17:36"

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

ENTITY 	segmentcounter IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	start : IN std_logic;
	stop : IN std_logic;
	sec_display : OUT std_logic_vector(6 DOWNTO 0);
	tens_display : OUT std_logic_vector(6 DOWNTO 0);
	run_led : OUT std_logic
	);
END segmentcounter;

-- Design Ports Information
-- sec_display[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sec_display[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sec_display[2]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sec_display[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sec_display[4]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sec_display[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sec_display[6]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- tens_display[0]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- tens_display[1]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- tens_display[2]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- tens_display[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- tens_display[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- tens_display[5]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- tens_display[6]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- run_led	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- reset	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- stop	=>  Location: PIN_A7,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF segmentcounter IS
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
SIGNAL ww_start : std_logic;
SIGNAL ww_stop : std_logic;
SIGNAL ww_sec_display : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_tens_display : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_run_led : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_1hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \sec_display[0]~output_o\ : std_logic;
SIGNAL \sec_display[1]~output_o\ : std_logic;
SIGNAL \sec_display[2]~output_o\ : std_logic;
SIGNAL \sec_display[3]~output_o\ : std_logic;
SIGNAL \sec_display[4]~output_o\ : std_logic;
SIGNAL \sec_display[5]~output_o\ : std_logic;
SIGNAL \sec_display[6]~output_o\ : std_logic;
SIGNAL \tens_display[0]~output_o\ : std_logic;
SIGNAL \tens_display[1]~output_o\ : std_logic;
SIGNAL \tens_display[2]~output_o\ : std_logic;
SIGNAL \tens_display[3]~output_o\ : std_logic;
SIGNAL \tens_display[4]~output_o\ : std_logic;
SIGNAL \tens_display[5]~output_o\ : std_logic;
SIGNAL \tens_display[6]~output_o\ : std_logic;
SIGNAL \run_led~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \clk_div~12_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \clk_div~13_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \clk_div~14_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \clk_div~15_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \clk_div~16_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \clk_div~17_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \clk_div~18_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \clk_div~19_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \clk_div~20_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \clk_div~8_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \clk_div~9_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \clk_div~10_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \clk_div~11_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \clk_1hz~0_combout\ : std_logic;
SIGNAL \clk_1hz~feeder_combout\ : std_logic;
SIGNAL \clk_1hz~q\ : std_logic;
SIGNAL \clk_1hz~clkctrl_outclk\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \start_reg~feeder_combout\ : std_logic;
SIGNAL \start_reg~q\ : std_logic;
SIGNAL \start_prev~q\ : std_logic;
SIGNAL \stop~input_o\ : std_logic;
SIGNAL \stop_reg~feeder_combout\ : std_logic;
SIGNAL \stop_reg~q\ : std_logic;
SIGNAL \stop_prev~q\ : std_logic;
SIGNAL \state~5_combout\ : std_logic;
SIGNAL \state~6_combout\ : std_logic;
SIGNAL \state.counting~feeder_combout\ : std_logic;
SIGNAL \state.counting~q\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \seconds~3_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \seconds~2_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \seconds~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \seconds~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~45_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL seconds : std_logic_vector(5 DOWNTO 0);
SIGNAL clk_div : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_start <= start;
ww_stop <= stop;
sec_display <= ww_sec_display;
tens_display <= ww_tens_display;
run_led <= ww_run_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk_1hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_1hz~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
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

-- Location: IOOBUF_X58_Y54_N16
\sec_display[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \sec_display[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\sec_display[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => \sec_display[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\sec_display[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \sec_display[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\sec_display[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \sec_display[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\sec_display[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \sec_display[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\sec_display[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \sec_display[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\sec_display[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~3_combout\,
	devoe => ww_devoe,
	o => \sec_display[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\tens_display[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \tens_display[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\tens_display[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \tens_display[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\tens_display[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \tens_display[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\tens_display[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \tens_display[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\tens_display[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \tens_display[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\tens_display[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \tens_display[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\tens_display[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \tens_display[6]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\run_led~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.counting~q\,
	devoe => ww_devoe,
	o => \run_led~output_o\);

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

-- Location: LCCOMB_X66_Y43_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = clk_div(0) $ (VCC)
-- \Add0~1\ = CARRY(clk_div(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X66_Y43_N24
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (clk_div(12) & (\Add0~23\ $ (GND))) # (!clk_div(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((clk_div(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X66_Y43_N26
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (clk_div(13) & (!\Add0~25\)) # (!clk_div(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!clk_div(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X67_Y43_N2
\clk_div~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~12_combout\ = (\Add0~26_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Add0~26_combout\,
	datad => \Equal0~9_combout\,
	combout => \clk_div~12_combout\);

-- Location: FF_X67_Y43_N3
\clk_div[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(13));

-- Location: LCCOMB_X66_Y43_N28
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (clk_div(14) & (\Add0~27\ $ (GND))) # (!clk_div(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((clk_div(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X67_Y43_N24
\clk_div~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~13_combout\ = (\Add0~28_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~4_combout\,
	datad => \Add0~28_combout\,
	combout => \clk_div~13_combout\);

-- Location: FF_X67_Y43_N25
\clk_div[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(14));

-- Location: LCCOMB_X66_Y43_N30
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (clk_div(15) & (!\Add0~29\)) # (!clk_div(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!clk_div(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X66_Y43_N31
\clk_div[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(15));

-- Location: LCCOMB_X66_Y42_N0
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (clk_div(16) & (\Add0~31\ $ (GND))) # (!clk_div(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((clk_div(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X67_Y42_N24
\clk_div~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~14_combout\ = (\Add0~32_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => \Add0~32_combout\,
	datad => \Equal0~4_combout\,
	combout => \clk_div~14_combout\);

-- Location: FF_X67_Y42_N25
\clk_div[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(16));

-- Location: LCCOMB_X66_Y42_N2
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (clk_div(17) & (!\Add0~33\)) # (!clk_div(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!clk_div(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X66_Y42_N3
\clk_div[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(17));

-- Location: LCCOMB_X66_Y42_N4
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (clk_div(18) & (\Add0~35\ $ (GND))) # (!clk_div(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((clk_div(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X67_Y42_N30
\clk_div~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~15_combout\ = (\Add0~36_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => \Add0~36_combout\,
	datad => \Equal0~4_combout\,
	combout => \clk_div~15_combout\);

-- Location: FF_X67_Y42_N31
\clk_div[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(18));

-- Location: LCCOMB_X66_Y42_N6
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (clk_div(19) & (!\Add0~37\)) # (!clk_div(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!clk_div(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X67_Y42_N12
\clk_div~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~16_combout\ = (\Add0~38_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => \Add0~38_combout\,
	datad => \Equal0~4_combout\,
	combout => \clk_div~16_combout\);

-- Location: FF_X67_Y42_N13
\clk_div[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(19));

-- Location: LCCOMB_X67_Y42_N6
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (clk_div(19) & (clk_div(16) & (clk_div(18) & !clk_div(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(19),
	datab => clk_div(16),
	datac => clk_div(18),
	datad => clk_div(17),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X66_Y42_N8
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (clk_div(20) & (\Add0~39\ $ (GND))) # (!clk_div(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((clk_div(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X67_Y42_N28
\clk_div~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~17_combout\ = (\Add0~40_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~40_combout\,
	combout => \clk_div~17_combout\);

-- Location: FF_X67_Y42_N29
\clk_div[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(20));

-- Location: LCCOMB_X66_Y42_N10
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (clk_div(21) & (!\Add0~41\)) # (!clk_div(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!clk_div(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X67_Y42_N22
\clk_div~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~18_combout\ = (\Add0~42_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~42_combout\,
	combout => \clk_div~18_combout\);

-- Location: FF_X67_Y42_N23
\clk_div[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(21));

-- Location: LCCOMB_X66_Y42_N12
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (clk_div(22) & (\Add0~43\ $ (GND))) # (!clk_div(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((clk_div(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X67_Y42_N8
\clk_div~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~19_combout\ = (\Add0~44_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~44_combout\,
	combout => \clk_div~19_combout\);

-- Location: FF_X67_Y42_N9
\clk_div[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(22));

-- Location: LCCOMB_X66_Y42_N14
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (clk_div(23) & (!\Add0~45\)) # (!clk_div(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!clk_div(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X66_Y42_N15
\clk_div[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(23));

-- Location: LCCOMB_X67_Y42_N2
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (clk_div(21) & (clk_div(20) & (clk_div(22) & !clk_div(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(21),
	datab => clk_div(20),
	datac => clk_div(22),
	datad => clk_div(23),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X66_Y42_N16
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (clk_div(24) & (\Add0~47\ $ (GND))) # (!clk_div(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((clk_div(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X67_Y42_N4
\clk_div~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~20_combout\ = (\Add0~48_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => \Add0~48_combout\,
	datad => \Equal0~4_combout\,
	combout => \clk_div~20_combout\);

-- Location: FF_X67_Y42_N5
\clk_div[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(24));

-- Location: LCCOMB_X66_Y42_N18
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (clk_div(25) & (!\Add0~49\)) # (!clk_div(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!clk_div(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X66_Y42_N19
\clk_div[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(25));

-- Location: LCCOMB_X66_Y42_N20
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (clk_div(26) & (\Add0~51\ $ (GND))) # (!clk_div(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((clk_div(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X66_Y42_N21
\clk_div[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(26));

-- Location: LCCOMB_X66_Y42_N22
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (clk_div(27) & (!\Add0~53\)) # (!clk_div(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!clk_div(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X66_Y42_N23
\clk_div[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(27));

-- Location: LCCOMB_X67_Y42_N26
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!clk_div(27) & (!clk_div(26) & (clk_div(24) & !clk_div(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(27),
	datab => clk_div(26),
	datac => clk_div(24),
	datad => clk_div(25),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X66_Y42_N24
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (clk_div(28) & (\Add0~55\ $ (GND))) # (!clk_div(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((clk_div(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X66_Y42_N25
\clk_div[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(28));

-- Location: LCCOMB_X66_Y42_N26
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (clk_div(29) & (!\Add0~57\)) # (!clk_div(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!clk_div(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X66_Y42_N27
\clk_div[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(29));

-- Location: LCCOMB_X66_Y42_N28
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (clk_div(30) & (\Add0~59\ $ (GND))) # (!clk_div(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((clk_div(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X66_Y42_N29
\clk_div[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(30));

-- Location: LCCOMB_X66_Y42_N30
\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = clk_div(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X66_Y42_N31
\clk_div[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(31));

-- Location: LCCOMB_X67_Y42_N20
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!clk_div(29) & (!clk_div(30) & (!clk_div(28) & !clk_div(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(29),
	datab => clk_div(30),
	datac => clk_div(28),
	datad => clk_div(31),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X67_Y42_N18
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~5_combout\ & (\Equal0~6_combout\ & (\Equal0~7_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X67_Y43_N8
\clk_div~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~8_combout\ = (\Add0~0_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Add0~0_combout\,
	datad => \Equal0~9_combout\,
	combout => \clk_div~8_combout\);

-- Location: FF_X66_Y43_N27
\clk_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_div~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(0));

-- Location: LCCOMB_X66_Y43_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (clk_div(1) & (!\Add0~1\)) # (!clk_div(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!clk_div(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X66_Y43_N3
\clk_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(1));

-- Location: LCCOMB_X66_Y43_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (clk_div(2) & (\Add0~3\ $ (GND))) # (!clk_div(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((clk_div(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X66_Y43_N5
\clk_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(2));

-- Location: LCCOMB_X66_Y43_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (clk_div(3) & (!\Add0~5\)) # (!clk_div(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!clk_div(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X66_Y43_N7
\clk_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(3));

-- Location: LCCOMB_X66_Y43_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (clk_div(4) & (\Add0~7\ $ (GND))) # (!clk_div(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((clk_div(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X66_Y43_N9
\clk_div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(4));

-- Location: LCCOMB_X66_Y43_N10
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (clk_div(5) & (!\Add0~9\)) # (!clk_div(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!clk_div(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X66_Y43_N11
\clk_div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(5));

-- Location: LCCOMB_X66_Y43_N12
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (clk_div(6) & (\Add0~11\ $ (GND))) # (!clk_div(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((clk_div(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X67_Y43_N20
\clk_div~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~9_combout\ = (\Add0~12_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Equal0~4_combout\,
	datad => \Equal0~9_combout\,
	combout => \clk_div~9_combout\);

-- Location: FF_X67_Y43_N21
\clk_div[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(6));

-- Location: LCCOMB_X66_Y43_N14
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (clk_div(7) & (!\Add0~13\)) # (!clk_div(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!clk_div(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X66_Y43_N15
\clk_div[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(7));

-- Location: LCCOMB_X66_Y43_N16
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (clk_div(8) & (\Add0~15\ $ (GND))) # (!clk_div(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((clk_div(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X66_Y43_N17
\clk_div[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(8));

-- Location: LCCOMB_X66_Y43_N18
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (clk_div(9) & (!\Add0~17\)) # (!clk_div(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!clk_div(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X66_Y43_N19
\clk_div[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(9));

-- Location: LCCOMB_X66_Y43_N20
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (clk_div(10) & (\Add0~19\ $ (GND))) # (!clk_div(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((clk_div(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X66_Y43_N21
\clk_div[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(10));

-- Location: LCCOMB_X66_Y43_N22
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (clk_div(11) & (!\Add0~21\)) # (!clk_div(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!clk_div(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X67_Y43_N12
\clk_div~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~10_combout\ = (\Add0~22_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Add0~22_combout\,
	datad => \Equal0~9_combout\,
	combout => \clk_div~10_combout\);

-- Location: FF_X67_Y43_N13
\clk_div[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(11));

-- Location: LCCOMB_X67_Y43_N10
\clk_div~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~11_combout\ = (\Add0~24_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Add0~24_combout\,
	datad => \Equal0~9_combout\,
	combout => \clk_div~11_combout\);

-- Location: FF_X67_Y43_N11
\clk_div[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(12));

-- Location: LCCOMB_X67_Y43_N22
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (clk_div(12) & (clk_div(14) & (clk_div(13) & !clk_div(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(12),
	datab => clk_div(14),
	datac => clk_div(13),
	datad => clk_div(15),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X67_Y43_N16
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!clk_div(5) & (clk_div(6) & (!clk_div(7) & !clk_div(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(5),
	datab => clk_div(6),
	datac => clk_div(7),
	datad => clk_div(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X67_Y43_N4
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (clk_div(11) & (!clk_div(10) & (!clk_div(8) & !clk_div(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(11),
	datab => clk_div(10),
	datac => clk_div(8),
	datad => clk_div(9),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X67_Y43_N18
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!clk_div(1) & (!clk_div(2) & (!clk_div(3) & !clk_div(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(1),
	datab => clk_div(2),
	datac => clk_div(3),
	datad => clk_div(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X67_Y43_N28
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X67_Y43_N26
\clk_1hz~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_1hz~0_combout\ = \clk_1hz~q\ $ (((\Equal0~4_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1hz~q\,
	datab => \Equal0~4_combout\,
	datad => \Equal0~9_combout\,
	combout => \clk_1hz~0_combout\);

-- Location: LCCOMB_X67_Y43_N6
\clk_1hz~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_1hz~feeder_combout\ = \clk_1hz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_1hz~0_combout\,
	combout => \clk_1hz~feeder_combout\);

-- Location: FF_X67_Y43_N7
clk_1hz : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1hz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1hz~q\);

-- Location: CLKCTRL_G9
\clk_1hz~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_1hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_1hz~clkctrl_outclk\);

-- Location: LCCOMB_X62_Y53_N18
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = seconds(0) $ (VCC)
-- \Add1~1\ = CARRY(seconds(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seconds(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X51_Y54_N22
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

-- Location: LCCOMB_X62_Y53_N30
\start_reg~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \start_reg~feeder_combout\ = \start~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \start~input_o\,
	combout => \start_reg~feeder_combout\);

-- Location: FF_X62_Y53_N31
start_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \start_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start_reg~q\);

-- Location: FF_X62_Y53_N13
start_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \start_reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start_prev~q\);

-- Location: IOIBUF_X49_Y54_N29
\stop~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stop,
	o => \stop~input_o\);

-- Location: LCCOMB_X62_Y53_N6
\stop_reg~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stop_reg~feeder_combout\ = \stop~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stop~input_o\,
	combout => \stop_reg~feeder_combout\);

-- Location: FF_X62_Y53_N7
stop_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stop_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stop_reg~q\);

-- Location: FF_X62_Y53_N3
stop_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stop_reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stop_prev~q\);

-- Location: LCCOMB_X62_Y53_N2
\state~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~5_combout\ = (!\reset~input_o\ & (((\stop_prev~q\) # (!\stop_reg~q\)) # (!\state.counting~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \state.counting~q\,
	datac => \stop_prev~q\,
	datad => \stop_reg~q\,
	combout => \state~5_combout\);

-- Location: LCCOMB_X62_Y53_N12
\state~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~6_combout\ = (\state~5_combout\ & ((\state.counting~q\) # ((\start_reg~q\ & !\start_prev~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_reg~q\,
	datab => \state.counting~q\,
	datac => \start_prev~q\,
	datad => \state~5_combout\,
	combout => \state~6_combout\);

-- Location: LCCOMB_X62_Y53_N10
\state.counting~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state.counting~feeder_combout\ = \state~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state~6_combout\,
	combout => \state.counting~feeder_combout\);

-- Location: FF_X62_Y53_N11
\state.counting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.counting~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.counting~q\);

-- Location: FF_X62_Y53_N19
\seconds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Add1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \state.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seconds(0));

-- Location: LCCOMB_X62_Y53_N20
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (seconds(1) & (!\Add1~1\)) # (!seconds(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!seconds(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seconds(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X62_Y53_N21
\seconds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \Add1~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \state.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seconds(1));

-- Location: LCCOMB_X62_Y53_N22
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (seconds(2) & (\Add1~3\ $ (GND))) # (!seconds(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((seconds(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seconds(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X62_Y53_N8
\seconds~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seconds~3_combout\ = (\Add1~4_combout\ & (((!seconds(0)) # (!\Equal1~0_combout\)) # (!seconds(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(1),
	datab => \Equal1~0_combout\,
	datac => \Add1~4_combout\,
	datad => seconds(0),
	combout => \seconds~3_combout\);

-- Location: FF_X62_Y53_N9
\seconds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \seconds~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \state.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seconds(2));

-- Location: LCCOMB_X62_Y53_N24
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (seconds(3) & (!\Add1~5\)) # (!seconds(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!seconds(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seconds(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X62_Y53_N16
\seconds~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seconds~2_combout\ = (\Add1~6_combout\ & (((!seconds(1)) # (!\Equal1~0_combout\)) # (!seconds(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(0),
	datab => \Equal1~0_combout\,
	datac => seconds(1),
	datad => \Add1~6_combout\,
	combout => \seconds~2_combout\);

-- Location: FF_X62_Y53_N17
\seconds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \seconds~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \state.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seconds(3));

-- Location: LCCOMB_X62_Y53_N26
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (seconds(4) & (\Add1~7\ $ (GND))) # (!seconds(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((seconds(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seconds(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X62_Y53_N28
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = \Add1~9\ $ (seconds(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => seconds(5),
	cin => \Add1~9\,
	combout => \Add1~10_combout\);

-- Location: LCCOMB_X62_Y53_N0
\seconds~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seconds~0_combout\ = (\Add1~10_combout\ & (((!seconds(1)) # (!\Equal1~0_combout\)) # (!seconds(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(0),
	datab => \Equal1~0_combout\,
	datac => seconds(1),
	datad => \Add1~10_combout\,
	combout => \seconds~0_combout\);

-- Location: FF_X62_Y53_N1
\seconds[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \seconds~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \state.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seconds(5));

-- Location: LCCOMB_X62_Y53_N4
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!seconds(2) & (seconds(5) & (seconds(4) & seconds(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(2),
	datab => seconds(5),
	datac => seconds(4),
	datad => seconds(3),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X62_Y53_N14
\seconds~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seconds~1_combout\ = (\Add1~8_combout\ & (((!seconds(0)) # (!\Equal1~0_combout\)) # (!seconds(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(1),
	datab => \Equal1~0_combout\,
	datac => \Add1~8_combout\,
	datad => seconds(0),
	combout => \seconds~1_combout\);

-- Location: FF_X62_Y53_N15
\seconds[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1hz~clkctrl_outclk\,
	d => \seconds~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \state.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seconds(4));

-- Location: LCCOMB_X64_Y52_N10
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = seconds(3) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(seconds(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seconds(3),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X64_Y52_N12
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (seconds(4) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!seconds(4) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!seconds(4) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seconds(4),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X64_Y52_N14
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (seconds(5) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!seconds(5) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((seconds(5) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seconds(5),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X64_Y52_N16
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X65_Y52_N20
\Mod0|auto_generated|divider|divider|StageOut[21]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ = (seconds(5) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(5),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X64_Y52_N4
\Mod0|auto_generated|divider|divider|StageOut[21]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X64_Y52_N6
\Mod0|auto_generated|divider|divider|StageOut[20]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ = (seconds(4) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(4),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X64_Y52_N20
\Mod0|auto_generated|divider|divider|StageOut[20]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X64_Y53_N28
\Mod0|auto_generated|divider|divider|StageOut[19]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ = (seconds(3) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seconds(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: LCCOMB_X64_Y52_N18
\Mod0|auto_generated|divider|divider|StageOut[19]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X64_Y53_N30
\Mod0|auto_generated|divider|divider|StageOut[18]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ = (seconds(2) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seconds(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X64_Y53_N0
\Mod0|auto_generated|divider|divider|StageOut[18]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ = (seconds(2) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seconds(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X64_Y52_N22
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X64_Y52_N24
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X64_Y52_N26
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X64_Y52_N28
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X64_Y52_N30
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X64_Y52_N2
\Mod0|auto_generated|divider|divider|StageOut[27]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (seconds(4))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(4),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\);

-- Location: LCCOMB_X64_Y52_N0
\Mod0|auto_generated|divider|divider|StageOut[27]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\);

-- Location: LCCOMB_X64_Y52_N8
\Mod0|auto_generated|divider|divider|StageOut[26]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~45_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((seconds(3)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => seconds(3),
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~45_combout\);

-- Location: LCCOMB_X65_Y52_N28
\Mod0|auto_generated|divider|divider|StageOut[26]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\);

-- Location: LCCOMB_X64_Y51_N10
\Mod0|auto_generated|divider|divider|StageOut[25]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\);

-- Location: LCCOMB_X66_Y53_N16
\Mod0|auto_generated|divider|divider|StageOut[25]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ = (seconds(2) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seconds(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\);

-- Location: LCCOMB_X64_Y51_N0
\Mod0|auto_generated|divider|divider|StageOut[24]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & seconds(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => seconds(1),
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\);

-- Location: LCCOMB_X65_Y51_N0
\Mod0|auto_generated|divider|divider|StageOut[24]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\ = (seconds(1) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seconds(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\);

-- Location: LCCOMB_X65_Y52_N0
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X65_Y52_N2
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X65_Y52_N4
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[26]~45_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[26]~45_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[26]~45_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[26]~45_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X65_Y52_N6
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X65_Y52_N16
\Mod0|auto_generated|divider|divider|StageOut[35]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\);

-- Location: LCCOMB_X65_Y52_N26
\Mod0|auto_generated|divider|divider|StageOut[28]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\);

-- Location: LCCOMB_X65_Y52_N18
\Mod0|auto_generated|divider|divider|StageOut[28]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (seconds(5))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(5),
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\);

-- Location: LCCOMB_X65_Y52_N8
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X65_Y52_N10
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X65_Y52_N30
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((!\Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & ((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X65_Y52_N12
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & (((!\Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\,
	datac => \Mux0~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X65_Y52_N14
\Mod0|auto_generated|divider|divider|StageOut[33]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[26]~45_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[26]~45_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\);

-- Location: LCCOMB_X65_Y52_N24
\Mod0|auto_generated|divider|divider|StageOut[32]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\);

-- Location: LCCOMB_X65_Y52_N22
\Mod0|auto_generated|divider|divider|StageOut[31]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((seconds(1)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => seconds(1),
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\);

-- Location: LCCOMB_X66_Y52_N28
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\)) # (!\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ & seconds(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => seconds(0),
	datad => \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X66_Y52_N18
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\) # (!\Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X66_Y52_N16
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & (seconds(0) $ (\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => seconds(0),
	datad => \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X66_Y52_N26
\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\) # (!\Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X66_Y52_N24
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\)) # (!\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\) # (!seconds(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => seconds(0),
	datad => \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X66_Y52_N30
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\) # (!\Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X66_Y52_N0
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & seconds(0))))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ & seconds(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => seconds(0),
	datad => \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X66_Y52_N22
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\) # (!\Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X66_Y52_N4
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (seconds(0)) # ((\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\)) # (!\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => seconds(0),
	datad => \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X66_Y52_N6
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\) # (!\Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datac => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X66_Y52_N20
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\) # ((seconds(0) & \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\) # ((!\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ & seconds(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => seconds(0),
	datad => \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X66_Y52_N14
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\) # (!\Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X66_Y52_N12
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ & ((!\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\) # (!seconds(0))))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ $ (((\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => seconds(0),
	datad => \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X66_Y52_N2
\Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (!\Mux0~2_combout\) # (!\Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X65_Y53_N6
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = seconds(3) $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(seconds(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seconds(3),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X65_Y53_N8
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (seconds(4) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!seconds(4) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!seconds(4) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seconds(4),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X65_Y53_N10
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (seconds(5) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!seconds(5) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((seconds(5) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seconds(5),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X65_Y53_N12
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X64_Y53_N10
\Div0|auto_generated|divider|divider|StageOut[18]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & seconds(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => seconds(5),
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X65_Y53_N0
\Div0|auto_generated|divider|divider|StageOut[18]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X65_Y53_N4
\Div0|auto_generated|divider|divider|StageOut[17]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X65_Y53_N26
\Div0|auto_generated|divider|divider|StageOut[17]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ = (seconds(4) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seconds(4),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X64_Y53_N26
\Div0|auto_generated|divider|divider|StageOut[16]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X64_Y53_N24
\Div0|auto_generated|divider|divider|StageOut[16]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & seconds(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => seconds(3),
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X64_Y53_N2
\Div0|auto_generated|divider|divider|StageOut[15]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ = (seconds(2) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seconds(2),
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X64_Y53_N4
\Div0|auto_generated|divider|divider|StageOut[15]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ = (seconds(2) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seconds(2),
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X64_Y53_N12
\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~23_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X64_Y53_N14
\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[16]~21_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~20_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[16]~20_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X64_Y53_N16
\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~18_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~18_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X64_Y53_N18
\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X64_Y53_N20
\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X65_Y53_N30
\Div0|auto_generated|divider|divider|StageOut[23]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((seconds(4)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => seconds(4),
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~30_combout\);

-- Location: LCCOMB_X64_Y53_N22
\Div0|auto_generated|divider|divider|StageOut[23]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~24_combout\);

-- Location: LCCOMB_X64_Y53_N8
\Div0|auto_generated|divider|divider|StageOut[22]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~25_combout\);

-- Location: LCCOMB_X65_Y53_N28
\Div0|auto_generated|divider|divider|StageOut[22]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (seconds(3))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => seconds(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~31_combout\);

-- Location: LCCOMB_X66_Y53_N2
\Div0|auto_generated|divider|divider|StageOut[21]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & seconds(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => seconds(2),
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~26_combout\);

-- Location: LCCOMB_X64_Y53_N6
\Div0|auto_generated|divider|divider|StageOut[21]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~27_combout\);

-- Location: LCCOMB_X66_Y53_N4
\Div0|auto_generated|divider|divider|StageOut[20]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & seconds(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => seconds(1),
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~28_combout\);

-- Location: LCCOMB_X66_Y53_N22
\Div0|auto_generated|divider|divider|StageOut[20]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & seconds(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => seconds(1),
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~29_combout\);

-- Location: LCCOMB_X65_Y53_N14
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[20]~28_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[20]~28_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[20]~29_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\);

-- Location: LCCOMB_X65_Y53_N16
\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[21]~26_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[21]~27_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\);

-- Location: LCCOMB_X65_Y53_N18
\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~25_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~25_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[22]~31_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\);

-- Location: LCCOMB_X65_Y53_N20
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[23]~30_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[23]~24_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X65_Y53_N22
\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X66_Y53_N0
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X66_Y53_N14
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X66_Y53_N24
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X65_Y53_N24
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X66_Y53_N26
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X66_Y53_N12
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X66_Y53_N30
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mux7~0_combout\);

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

ww_sec_display(0) <= \sec_display[0]~output_o\;

ww_sec_display(1) <= \sec_display[1]~output_o\;

ww_sec_display(2) <= \sec_display[2]~output_o\;

ww_sec_display(3) <= \sec_display[3]~output_o\;

ww_sec_display(4) <= \sec_display[4]~output_o\;

ww_sec_display(5) <= \sec_display[5]~output_o\;

ww_sec_display(6) <= \sec_display[6]~output_o\;

ww_tens_display(0) <= \tens_display[0]~output_o\;

ww_tens_display(1) <= \tens_display[1]~output_o\;

ww_tens_display(2) <= \tens_display[2]~output_o\;

ww_tens_display(3) <= \tens_display[3]~output_o\;

ww_tens_display(4) <= \tens_display[4]~output_o\;

ww_tens_display(5) <= \tens_display[5]~output_o\;

ww_tens_display(6) <= \tens_display[6]~output_o\;

ww_run_led <= \run_led~output_o\;
END structure;


