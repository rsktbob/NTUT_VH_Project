-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/03/2022 17:59:52"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab5_01 IS
    PORT (
	clk : IN std_logic;
	clear : IN std_logic;
	load : IN std_logic;
	lr_sel : IN std_logic;
	di : IN std_logic_vector(7 DOWNTO 0);
	sdi : IN std_logic;
	qo : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END lab5_01;

-- Design Ports Information
-- qo[0]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[1]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[2]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[3]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[4]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[5]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[6]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[7]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdi	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lr_sel	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[0]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[1]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[3]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[4]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[5]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[6]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[7]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab5_01 IS
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
SIGNAL ww_clear : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_lr_sel : std_logic;
SIGNAL ww_di : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sdi : std_logic;
SIGNAL ww_qo : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \qo[0]~output_o\ : std_logic;
SIGNAL \qo[1]~output_o\ : std_logic;
SIGNAL \qo[2]~output_o\ : std_logic;
SIGNAL \qo[3]~output_o\ : std_logic;
SIGNAL \qo[4]~output_o\ : std_logic;
SIGNAL \qo[5]~output_o\ : std_logic;
SIGNAL \qo[6]~output_o\ : std_logic;
SIGNAL \qo[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sdi~input_o\ : std_logic;
SIGNAL \lr_sel~input_o\ : std_logic;
SIGNAL \qo[7]~7_combout\ : std_logic;
SIGNAL \di[7]~input_o\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \qo[7]~reg0_q\ : std_logic;
SIGNAL \qo[6]~6_combout\ : std_logic;
SIGNAL \di[6]~input_o\ : std_logic;
SIGNAL \qo[6]~reg0_q\ : std_logic;
SIGNAL \qo[5]~5_combout\ : std_logic;
SIGNAL \di[5]~input_o\ : std_logic;
SIGNAL \qo[5]~reg0_q\ : std_logic;
SIGNAL \qo[4]~4_combout\ : std_logic;
SIGNAL \di[4]~input_o\ : std_logic;
SIGNAL \qo[4]~reg0_q\ : std_logic;
SIGNAL \qo[3]~3_combout\ : std_logic;
SIGNAL \di[3]~input_o\ : std_logic;
SIGNAL \qo[3]~reg0_q\ : std_logic;
SIGNAL \qo[2]~2_combout\ : std_logic;
SIGNAL \di[2]~input_o\ : std_logic;
SIGNAL \qo[2]~reg0_q\ : std_logic;
SIGNAL \qo[1]~1_combout\ : std_logic;
SIGNAL \di[1]~input_o\ : std_logic;
SIGNAL \qo[1]~reg0_q\ : std_logic;
SIGNAL \qo[0]~0_combout\ : std_logic;
SIGNAL \di[0]~input_o\ : std_logic;
SIGNAL \qo[0]~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_clear <= clear;
ww_load <= load;
ww_lr_sel <= lr_sel;
ww_di <= di;
ww_sdi <= sdi;
qo <= ww_qo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y16_N16
\qo[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[0]~reg0_q\,
	devoe => ww_devoe,
	o => \qo[0]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\qo[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[1]~reg0_q\,
	devoe => ww_devoe,
	o => \qo[1]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\qo[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[2]~reg0_q\,
	devoe => ww_devoe,
	o => \qo[2]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\qo[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[3]~reg0_q\,
	devoe => ww_devoe,
	o => \qo[3]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\qo[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[4]~reg0_q\,
	devoe => ww_devoe,
	o => \qo[4]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\qo[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[5]~reg0_q\,
	devoe => ww_devoe,
	o => \qo[5]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\qo[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[6]~reg0_q\,
	devoe => ww_devoe,
	o => \qo[6]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\qo[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[7]~reg0_q\,
	devoe => ww_devoe,
	o => \qo[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: IOIBUF_X0_Y23_N22
\sdi~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdi,
	o => \sdi~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\lr_sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lr_sel,
	o => \lr_sel~input_o\);

-- Location: LCCOMB_X1_Y20_N10
\qo[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo[7]~7_combout\ = (\lr_sel~input_o\ & (\sdi~input_o\)) # (!\lr_sel~input_o\ & ((\qo[6]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdi~input_o\,
	datab => \lr_sel~input_o\,
	datad => \qo[6]~reg0_q\,
	combout => \qo[7]~7_combout\);

-- Location: IOIBUF_X0_Y23_N15
\di[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(7),
	o => \di[7]~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\clear~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: IOIBUF_X0_Y24_N8
\load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: FF_X1_Y20_N11
\qo[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qo[7]~7_combout\,
	asdata => \di[7]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[7]~reg0_q\);

-- Location: LCCOMB_X1_Y20_N0
\qo[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo[6]~6_combout\ = (\lr_sel~input_o\ & (\qo[7]~reg0_q\)) # (!\lr_sel~input_o\ & ((\qo[5]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qo[7]~reg0_q\,
	datab => \lr_sel~input_o\,
	datad => \qo[5]~reg0_q\,
	combout => \qo[6]~6_combout\);

-- Location: IOIBUF_X0_Y21_N22
\di[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(6),
	o => \di[6]~input_o\);

-- Location: FF_X1_Y20_N1
\qo[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qo[6]~6_combout\,
	asdata => \di[6]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[6]~reg0_q\);

-- Location: LCCOMB_X1_Y20_N2
\qo[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo[5]~5_combout\ = (\lr_sel~input_o\ & (\qo[6]~reg0_q\)) # (!\lr_sel~input_o\ & ((\qo[4]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_sel~input_o\,
	datab => \qo[6]~reg0_q\,
	datad => \qo[4]~reg0_q\,
	combout => \qo[5]~5_combout\);

-- Location: IOIBUF_X0_Y22_N22
\di[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(5),
	o => \di[5]~input_o\);

-- Location: FF_X1_Y20_N3
\qo[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qo[5]~5_combout\,
	asdata => \di[5]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[5]~reg0_q\);

-- Location: LCCOMB_X1_Y20_N24
\qo[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo[4]~4_combout\ = (\lr_sel~input_o\ & (\qo[5]~reg0_q\)) # (!\lr_sel~input_o\ & ((\qo[3]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_sel~input_o\,
	datab => \qo[5]~reg0_q\,
	datad => \qo[3]~reg0_q\,
	combout => \qo[4]~4_combout\);

-- Location: IOIBUF_X0_Y19_N8
\di[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(4),
	o => \di[4]~input_o\);

-- Location: FF_X1_Y20_N25
\qo[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qo[4]~4_combout\,
	asdata => \di[4]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[4]~reg0_q\);

-- Location: LCCOMB_X1_Y20_N6
\qo[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo[3]~3_combout\ = (\lr_sel~input_o\ & (\qo[4]~reg0_q\)) # (!\lr_sel~input_o\ & ((\qo[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_sel~input_o\,
	datab => \qo[4]~reg0_q\,
	datad => \qo[2]~reg0_q\,
	combout => \qo[3]~3_combout\);

-- Location: IOIBUF_X0_Y22_N15
\di[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(3),
	o => \di[3]~input_o\);

-- Location: FF_X1_Y20_N7
\qo[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qo[3]~3_combout\,
	asdata => \di[3]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[3]~reg0_q\);

-- Location: LCCOMB_X1_Y20_N28
\qo[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo[2]~2_combout\ = (\lr_sel~input_o\ & (\qo[3]~reg0_q\)) # (!\lr_sel~input_o\ & ((\qo[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qo[3]~reg0_q\,
	datab => \lr_sel~input_o\,
	datad => \qo[1]~reg0_q\,
	combout => \qo[2]~2_combout\);

-- Location: IOIBUF_X0_Y20_N15
\di[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(2),
	o => \di[2]~input_o\);

-- Location: FF_X1_Y20_N29
\qo[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qo[2]~2_combout\,
	asdata => \di[2]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[2]~reg0_q\);

-- Location: LCCOMB_X1_Y20_N18
\qo[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo[1]~1_combout\ = (\lr_sel~input_o\ & (\qo[2]~reg0_q\)) # (!\lr_sel~input_o\ & ((\qo[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_sel~input_o\,
	datab => \qo[2]~reg0_q\,
	datad => \qo[0]~reg0_q\,
	combout => \qo[1]~1_combout\);

-- Location: IOIBUF_X0_Y24_N15
\di[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(1),
	o => \di[1]~input_o\);

-- Location: FF_X1_Y20_N19
\qo[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qo[1]~1_combout\,
	asdata => \di[1]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[1]~reg0_q\);

-- Location: LCCOMB_X1_Y20_N12
\qo[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo[0]~0_combout\ = (\lr_sel~input_o\ & ((\qo[1]~reg0_q\))) # (!\lr_sel~input_o\ & (\sdi~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdi~input_o\,
	datab => \lr_sel~input_o\,
	datad => \qo[1]~reg0_q\,
	combout => \qo[0]~0_combout\);

-- Location: IOIBUF_X0_Y24_N22
\di[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(0),
	o => \di[0]~input_o\);

-- Location: FF_X1_Y20_N13
\qo[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qo[0]~0_combout\,
	asdata => \di[0]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[0]~reg0_q\);

ww_qo(0) <= \qo[0]~output_o\;

ww_qo(1) <= \qo[1]~output_o\;

ww_qo(2) <= \qo[2]~output_o\;

ww_qo(3) <= \qo[3]~output_o\;

ww_qo(4) <= \qo[4]~output_o\;

ww_qo(5) <= \qo[5]~output_o\;

ww_qo(6) <= \qo[6]~output_o\;

ww_qo(7) <= \qo[7]~output_o\;
END structure;


