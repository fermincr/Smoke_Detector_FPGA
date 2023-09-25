-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "06/17/2023 03:00:46"

-- 
-- Device: Altera 10M50DCF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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

ENTITY 	SMOKING IS
    PORT (
	clk50MHz : IN std_logic;
	clk : OUT std_logic;
	smoke : IN std_logic;
	buzzer : OUT std_logic;
	reset : IN std_logic;
	count : OUT std_logic_vector(3 DOWNTO 0);
	rst : IN std_logic
	);
END SMOKING;

-- Design Ports Information
-- clk	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buzzer	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50MHz	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- smoke	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SMOKING IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50MHz : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_smoke : std_logic;
SIGNAL ww_buzzer : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_count : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rst : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Selector1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_temp[20]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \clk~output_o\ : std_logic;
SIGNAL \buzzer~output_o\ : std_logic;
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \count[3]~output_o\ : std_logic;
SIGNAL \clk50MHz~input_o\ : std_logic;
SIGNAL \clk50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_temp[0]~60_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \clk_temp[1]~20_combout\ : std_logic;
SIGNAL \clk_temp[1]~21\ : std_logic;
SIGNAL \clk_temp[2]~22_combout\ : std_logic;
SIGNAL \clk_temp[2]~23\ : std_logic;
SIGNAL \clk_temp[3]~24_combout\ : std_logic;
SIGNAL \clk_temp[3]~25\ : std_logic;
SIGNAL \clk_temp[4]~26_combout\ : std_logic;
SIGNAL \clk_temp[4]~27\ : std_logic;
SIGNAL \clk_temp[5]~28_combout\ : std_logic;
SIGNAL \clk_temp[5]~29\ : std_logic;
SIGNAL \clk_temp[6]~30_combout\ : std_logic;
SIGNAL \clk_temp[6]~31\ : std_logic;
SIGNAL \clk_temp[7]~32_combout\ : std_logic;
SIGNAL \clk_temp[7]~33\ : std_logic;
SIGNAL \clk_temp[8]~34_combout\ : std_logic;
SIGNAL \clk_temp[8]~35\ : std_logic;
SIGNAL \clk_temp[9]~36_combout\ : std_logic;
SIGNAL \clk_temp[9]~37\ : std_logic;
SIGNAL \clk_temp[10]~38_combout\ : std_logic;
SIGNAL \clk_temp[10]~39\ : std_logic;
SIGNAL \clk_temp[11]~40_combout\ : std_logic;
SIGNAL \clk_temp[11]~41\ : std_logic;
SIGNAL \clk_temp[12]~42_combout\ : std_logic;
SIGNAL \clk_temp[12]~43\ : std_logic;
SIGNAL \clk_temp[13]~44_combout\ : std_logic;
SIGNAL \clk_temp[13]~45\ : std_logic;
SIGNAL \clk_temp[14]~46_combout\ : std_logic;
SIGNAL \clk_temp[14]~47\ : std_logic;
SIGNAL \clk_temp[15]~48_combout\ : std_logic;
SIGNAL \clk_temp[15]~49\ : std_logic;
SIGNAL \clk_temp[16]~50_combout\ : std_logic;
SIGNAL \clk_temp[16]~51\ : std_logic;
SIGNAL \clk_temp[17]~52_combout\ : std_logic;
SIGNAL \clk_temp[17]~53\ : std_logic;
SIGNAL \clk_temp[18]~54_combout\ : std_logic;
SIGNAL \clk_temp[18]~55\ : std_logic;
SIGNAL \clk_temp[19]~56_combout\ : std_logic;
SIGNAL \clk_temp[19]~57\ : std_logic;
SIGNAL \clk_temp[20]~58_combout\ : std_logic;
SIGNAL \clk_temp[20]~clkctrl_outclk\ : std_logic;
SIGNAL \smoke~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~0clkctrl_outclk\ : std_logic;
SIGNAL \nx_state.one_167~combout\ : std_logic;
SIGNAL \pr_state.one~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \pr_state.one~q\ : std_logic;
SIGNAL \nx_state.two_158~combout\ : std_logic;
SIGNAL \pr_state.two~feeder_combout\ : std_logic;
SIGNAL \pr_state.two~q\ : std_logic;
SIGNAL \nx_state.three_152~combout\ : std_logic;
SIGNAL \pr_state.three~q\ : std_logic;
SIGNAL \buzzer$latch~combout\ : std_logic;
SIGNAL clk_temp : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_pr_state.two~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk50MHz <= clk50MHz;
clk <= ww_clk;
ww_smoke <= smoke;
buzzer <= ww_buzzer;
ww_reset <= reset;
count <= ww_count;
ww_rst <= rst;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Selector1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector1~0_combout\);

\clk_temp[20]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & clk_temp(20));

\clk50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50MHz~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_pr_state.two~q\ <= NOT \pr_state.two~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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
\clk~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => clk_temp(20),
	devoe => ww_devoe,
	o => \clk~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\buzzer~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \buzzer$latch~combout\,
	devoe => ww_devoe,
	o => \buzzer~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\count[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pr_state.two~q\,
	devoe => ww_devoe,
	o => \count[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\count[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr_state.one~q\,
	devoe => ww_devoe,
	o => \count[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\count[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \count[2]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\count[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \count[3]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk50MHz~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50MHz,
	o => \clk50MHz~input_o\);

-- Location: CLKCTRL_G19
\clk50MHz~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50MHz~inputclkctrl_outclk\);

-- Location: LCCOMB_X44_Y33_N8
\clk_temp[0]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_temp[0]~60_combout\ = !clk_temp(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => clk_temp(0),
	combout => \clk_temp[0]~60_combout\);

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: FF_X44_Y33_N9
\clk_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clk_temp[0]~60_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_temp(0));

-- Location: LCCOMB_X44_Y33_N12
\clk_temp[1]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_temp[1]~20_combout\ = (clk_temp(1) & (clk_temp(0) $ (VCC))) # (!clk_temp(1) & (clk_temp(0) & VCC))
-- \clk_temp[1]~21\ = CARRY((clk_temp(1) & clk_temp(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_temp(1),
	datab => clk_temp(0),
	datad => VCC,
	combout => \clk_temp[1]~20_combout\,
	cout => \clk_temp[1]~21\);

-- Location: FF_X44_Y33_N13
\clk_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clk_temp[1]~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_temp(1));

-- Location: LCCOMB_X44_Y33_N14
\clk_temp[2]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_temp[2]~22_combout\ = (clk_temp(2) & (!\clk_temp[1]~21\)) # (!clk_temp(2) & ((\clk_temp[1]~21\) # (GND)))
-- \clk_temp[2]~23\ = CARRY((!\clk_temp[1]~21\) # (!clk_temp(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_temp(2),
	datad => VCC,
	cin => \clk_temp[1]~21\,
	combout => \clk_temp[2]~22_combout\,
	cout => \clk_temp[2]~23\);

-- Location: FF_X44_Y33_N15
\clk_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clk_temp[2]~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_temp(2));

-- Location: LCCOMB_X44_Y33_N16
\clk_temp[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_temp[3]~24_combout\ = (clk_temp(3) & (\clk_temp[2]~23\ $ (GND))) # (!clk_temp(3) & (!\clk_temp[2]~23\ & VCC))
-- \clk_temp[3]~25\ = CARRY((clk_temp(3) & !\clk_temp[2]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_temp(3),
	datad => VCC,
	cin => \clk_temp[2]~23\,
	combout => \clk_temp[3]~24_combout\,
	cout => \clk_temp[3]~25\);

-- Location: FF_X44_Y33_N17
\clk_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clk_temp[3]~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_temp(3));

-- Location: LCCOMB_X44_Y33_N18
\clk_temp[4]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_temp[4]~26_combout\ = (clk_temp(4) & (!\clk_temp[3]~25\)) # (!clk_temp(4) & ((\clk_temp[3]~25\) # (GND)))
-- \clk_temp[4]~27\ = CARRY((!\clk_temp[3]~25\) # (!clk_temp(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_temp(4),
	datad => VCC,
	cin => \clk_temp[3]~25\,
	combout => \clk_temp[4]~26_combout\,
	cout => \clk_temp[4]~27\);

-- Location: FF_X44_Y33_N19
\clk_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clk_temp[4]~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_temp(4));

-- Location: LCCOMB_X44_Y33_N20
\clk_temp[5]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_temp[5]~28_combout\ = (clk_temp(5) & (\clk_temp[4]~27\ $ (GND))) # (!clk_temp(5) & (!\clk_temp[4]~27\ & VCC))
-- \clk_temp[5]~29\ = CARRY((clk_temp(5) & !\clk_temp[4]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_temp(5),
	datad => VCC,
	cin => \clk_temp[4]~27\,
	combout => \clk_temp[5]~28_combout\,
	cout => \clk_temp[5]~29\);

-- Location: FF_X44_Y33_N21
\clk_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clk_temp[5]~28_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_temp(5));

-- Location: LCCOMB_X44_Y33_N22
\clk_temp[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_temp[6]~30_combout\ = (clk_temp(6) & (!\clk_temp[5]~29\)) # (!clk_temp(6) & ((\clk_temp[5]~29\) # (GND)))
-- \clk_temp[6]~31\ = CARRY((!\clk_temp[5]~29\) # (!clk_temp(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_temp(6),
	datad => VCC,
	cin => \clk_temp[5]~29\,
	combout => \clk_temp[6]~30_combout\,
	cout => \clk_temp[6]~31\);

-- Location: FF_X44_Y33_N23
\clk_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clk_temp[6]~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_temp(6));

-- Location: LCCOMB_X44_Y33_N24
\clk_temp[7]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_temp[7]~32_combout\ = (clk_temp(7) & (\clk_temp[6]~31\ $ (GND))) # (!clk_temp(7) & (!\clk_temp[6]~31\ & VCC))
-- \clk_temp[7]~33\ = CARRY((clk_temp(7) & !\clk_temp[6]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_temp(7),
	datad => VCC,
	cin => \clk_temp[6]~31\,
	combout => \clk_temp[7]~32_combout\,
	cout => \clk_temp[7]~33\);

-- Location: FF_X44_Y33_N25
\clk_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clk_temp[7]~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_temp(7));

-- Location: LCCOMB_X44_Y33_N26
\clk_temp[8]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_temp[8]~34_combout\ = (clk_temp(8) & (!\clk_temp[7]~33\)) # (!clk_temp(8) & ((\clk_temp[7]~33\) # (GND)))
-- \clk_temp[8]~35\ = CARRY((!\clk_temp[7]~33\) # (!clk_temp(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_temp(8),
	datad => VCC,
	cin => \clk_temp[7]~33\,
	combout => \clk_temp[8]~34_combout\,
	cout => \clk_temp[8]~35\);

-- Location: FF_X44_Y33_N27
\clk_temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clk_temp[8]~34_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_temp(8));

-- Location: LCCOMB_X44_Y33_N28
\clk_temp[9]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_temp[9]~36_combout\ = (clk_temp(9) & (\clk_temp[8]~35\ $ (GND))) # (!clk_temp(9) & (!\clk_temp[8]~35\ & VCC))
-- \clk_temp[9]~37\ = CARRY((clk_temp(9) & !\clk_temp[8]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_temp(9),
	datad => VCC,
	cin => \clk_temp[8]~35\,
	combout => \clk_temp[9]~36_combout\,
	cout => \clk_temp[9]~37\);

-- Location: FF_X44_Y33_N29
\clk_temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clk_temp[9]~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_temp(9));

-- Location: LCCOMB_X44_Y33_N30
\clk_temp[10]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_temp[10]~38_combout\ = (clk_temp(10) & (!\clk_temp[9]~37\)) # (!clk_temp(10) & ((\clk_temp[9]~37\) # (GND)))
-- \clk_temp[10]~39\ = CARRY((!\clk_temp[9]~37\) # (!clk_temp(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_temp(10),
	datad => VCC,
	cin => \clk_temp[9]~37\,
	combout => \clk_temp[10]~38_combout\,
	cout => \clk_temp[10]~39\);

-- Location: FF_X44_Y33_N31
\clk_temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clk_temp[10]~38_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_temp(10));

-- Location: LCCOMB_X44_Y32_N0
\clk_temp[11]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_temp[11]~40_combout\ = (clk_temp(11) & (\clk_temp[10]~39\ $ (GND))) # (!clk_temp(11) & (!\clk_temp[10]~39\ & VCC))
-- \clk_temp[11]~41\ = CARRY((clk_temp(11) & !\clk_temp[10]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_temp(11),
	datad => VCC,
	cin => \clk_temp[10]~39\,
	combout => \clk_temp[11]~40_combout\,
	cout => \clk_temp[11]~41\);

-- Location: FF_X44_Y32_N1
\clk_temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clk_temp[11]~40_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_temp(11));

-- Location: LCCOMB_X44_Y32_N2
\clk_temp[12]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_temp[12]~42_combout\ = (clk_temp(12) & (!\clk_temp[11]~41\)) # (!clk_temp(12) & ((\clk_temp[11]~41\) # (GND)))
-- \clk_temp[12]~43\ = CARRY((!\clk_temp[11]~41\) # (!clk_temp(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_temp(12),
	datad => VCC,
	cin => \clk_temp[11]~41\,
	combout => \clk_temp[12]~42_combout\,
	cout => \clk_temp[12]~43\);

-- Location: FF_X44_Y32_N3
\clk_temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clk_temp[12]~42_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_temp(12));

-- Location: LCCOMB_X44_Y32_N4
\clk_temp[13]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_temp[13]~44_combout\ = (clk_temp(13) & (\clk_temp[12]~43\ $ (GND))) # (!clk_temp(13) & (!\clk_temp[12]~43\ & VCC))
-- \clk_temp[13]~45\ = CARRY((clk_temp(13) & !\clk_temp[12]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_temp(13),
	datad => VCC,
	cin => \clk_temp[12]~43\,
	combout => \clk_temp[13]~44_combout\,
	cout => \clk_temp[13]~45\);

-- Location: FF_X44_Y32_N5
\clk_temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clk_temp[13]~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_temp(13));

-- Location: LCCOMB_X44_Y32_N6
\clk_temp[14]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_temp[14]~46_combout\ = (clk_temp(14) & (!\clk_temp[13]~45\)) # (!clk_temp(14) & ((\clk_temp[13]~45\) # (GND)))
-- \clk_temp[14]~47\ = CARRY((!\clk_temp[13]~45\) # (!clk_temp(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_temp(14),
	datad => VCC,
	cin => \clk_temp[13]~45\,
	combout => \clk_temp[14]~46_combout\,
	cout => \clk_temp[14]~47\);

-- Location: FF_X44_Y32_N7
\clk_temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clk_temp[14]~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_temp(14));

-- Location: LCCOMB_X44_Y32_N8
\clk_temp[15]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_temp[15]~48_combout\ = (clk_temp(15) & (\clk_temp[14]~47\ $ (GND))) # (!clk_temp(15) & (!\clk_temp[14]~47\ & VCC))
-- \clk_temp[15]~49\ = CARRY((clk_temp(15) & !\clk_temp[14]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_temp(15),
	datad => VCC,
	cin => \clk_temp[14]~47\,
	combout => \clk_temp[15]~48_combout\,
	cout => \clk_temp[15]~49\);

-- Location: FF_X44_Y32_N9
\clk_temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clk_temp[15]~48_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_temp(15));

-- Location: LCCOMB_X44_Y32_N10
\clk_temp[16]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_temp[16]~50_combout\ = (clk_temp(16) & (!\clk_temp[15]~49\)) # (!clk_temp(16) & ((\clk_temp[15]~49\) # (GND)))
-- \clk_temp[16]~51\ = CARRY((!\clk_temp[15]~49\) # (!clk_temp(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_temp(16),
	datad => VCC,
	cin => \clk_temp[15]~49\,
	combout => \clk_temp[16]~50_combout\,
	cout => \clk_temp[16]~51\);

-- Location: FF_X44_Y32_N11
\clk_temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clk_temp[16]~50_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_temp(16));

-- Location: LCCOMB_X44_Y32_N12
\clk_temp[17]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_temp[17]~52_combout\ = (clk_temp(17) & (\clk_temp[16]~51\ $ (GND))) # (!clk_temp(17) & (!\clk_temp[16]~51\ & VCC))
-- \clk_temp[17]~53\ = CARRY((clk_temp(17) & !\clk_temp[16]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_temp(17),
	datad => VCC,
	cin => \clk_temp[16]~51\,
	combout => \clk_temp[17]~52_combout\,
	cout => \clk_temp[17]~53\);

-- Location: FF_X44_Y32_N13
\clk_temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clk_temp[17]~52_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_temp(17));

-- Location: LCCOMB_X44_Y32_N14
\clk_temp[18]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_temp[18]~54_combout\ = (clk_temp(18) & (!\clk_temp[17]~53\)) # (!clk_temp(18) & ((\clk_temp[17]~53\) # (GND)))
-- \clk_temp[18]~55\ = CARRY((!\clk_temp[17]~53\) # (!clk_temp(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_temp(18),
	datad => VCC,
	cin => \clk_temp[17]~53\,
	combout => \clk_temp[18]~54_combout\,
	cout => \clk_temp[18]~55\);

-- Location: FF_X44_Y32_N15
\clk_temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clk_temp[18]~54_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_temp(18));

-- Location: LCCOMB_X44_Y32_N16
\clk_temp[19]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_temp[19]~56_combout\ = (clk_temp(19) & (\clk_temp[18]~55\ $ (GND))) # (!clk_temp(19) & (!\clk_temp[18]~55\ & VCC))
-- \clk_temp[19]~57\ = CARRY((clk_temp(19) & !\clk_temp[18]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_temp(19),
	datad => VCC,
	cin => \clk_temp[18]~55\,
	combout => \clk_temp[19]~56_combout\,
	cout => \clk_temp[19]~57\);

-- Location: FF_X44_Y32_N17
\clk_temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clk_temp[19]~56_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_temp(19));

-- Location: LCCOMB_X44_Y32_N18
\clk_temp[20]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_temp[20]~58_combout\ = \clk_temp[19]~57\ $ (clk_temp(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clk_temp(20),
	cin => \clk_temp[19]~57\,
	combout => \clk_temp[20]~58_combout\);

-- Location: FF_X44_Y32_N19
\clk_temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clk_temp[20]~58_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_temp(20));

-- Location: CLKCTRL_G10
\clk_temp[20]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_temp[20]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_temp[20]~clkctrl_outclk\);

-- Location: IOIBUF_X22_Y0_N1
\smoke~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_smoke,
	o => \smoke~input_o\);

-- Location: LCCOMB_X26_Y13_N4
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\smoke~input_o\) # (\pr_state.one~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \smoke~input_o\,
	datad => \pr_state.one~q\,
	combout => \Selector1~0_combout\);

-- Location: CLKCTRL_G15
\Selector1~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector1~0clkctrl_outclk\);

-- Location: LCCOMB_X26_Y13_N18
\nx_state.one_167\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nx_state.one_167~combout\ = (GLOBAL(\Selector1~0clkctrl_outclk\) & ((\pr_state.three~q\))) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & (\nx_state.one_167~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nx_state.one_167~combout\,
	datac => \pr_state.three~q\,
	datad => \Selector1~0clkctrl_outclk\,
	combout => \nx_state.one_167~combout\);

-- Location: LCCOMB_X26_Y13_N24
\pr_state.one~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pr_state.one~0_combout\ = !\nx_state.one_167~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nx_state.one_167~combout\,
	combout => \pr_state.one~0_combout\);

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

-- Location: FF_X26_Y13_N25
\pr_state.one\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_temp(20),
	d => \pr_state.one~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.one~q\);

-- Location: LCCOMB_X26_Y13_N20
\nx_state.two_158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nx_state.two_158~combout\ = (!\pr_state.one~q\ & ((\smoke~input_o\) # (\nx_state.two_158~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pr_state.one~q\,
	datac => \smoke~input_o\,
	datad => \nx_state.two_158~combout\,
	combout => \nx_state.two_158~combout\);

-- Location: LCCOMB_X26_Y13_N28
\pr_state.two~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pr_state.two~feeder_combout\ = \nx_state.two_158~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nx_state.two_158~combout\,
	combout => \pr_state.two~feeder_combout\);

-- Location: FF_X26_Y13_N29
\pr_state.two\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_temp[20]~clkctrl_outclk\,
	d => \pr_state.two~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.two~q\);

-- Location: LCCOMB_X26_Y13_N26
\nx_state.three_152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nx_state.three_152~combout\ = (GLOBAL(\Selector1~0clkctrl_outclk\) & ((\pr_state.two~q\))) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & (\nx_state.three_152~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nx_state.three_152~combout\,
	datac => \pr_state.two~q\,
	datad => \Selector1~0clkctrl_outclk\,
	combout => \nx_state.three_152~combout\);

-- Location: FF_X26_Y13_N27
\pr_state.three\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_temp[20]~clkctrl_outclk\,
	d => \nx_state.three_152~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.three~q\);

-- Location: LCCOMB_X26_Y13_N22
\buzzer$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \buzzer$latch~combout\ = (\pr_state.three~q\ & (\buzzer$latch~combout\)) # (!\pr_state.three~q\ & ((\smoke~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buzzer$latch~combout\,
	datac => \pr_state.three~q\,
	datad => \smoke~input_o\,
	combout => \buzzer$latch~combout\);

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

ww_clk <= \clk~output_o\;

ww_buzzer <= \buzzer~output_o\;

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;

ww_count(3) <= \count[3]~output_o\;
END structure;


