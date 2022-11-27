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

-- DATE "11/12/2022 22:12:20"

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
-- qo[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdi	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lr_sel	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \qo[0]~output_o\ : std_logic;
SIGNAL \qo[1]~output_o\ : std_logic;
SIGNAL \qo[2]~output_o\ : std_logic;
SIGNAL \qo[3]~output_o\ : std_logic;
SIGNAL \qo[4]~output_o\ : std_logic;
SIGNAL \qo[5]~output_o\ : std_logic;
SIGNAL \qo[6]~output_o\ : std_logic;
SIGNAL \qo[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
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
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
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

-- Location: IOOBUF_X94_Y73_N2
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

-- Location: IOOBUF_X94_Y73_N9
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

-- Location: IOOBUF_X107_Y73_N16
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

-- Location: IOOBUF_X87_Y73_N16
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

-- Location: IOOBUF_X87_Y73_N9
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

-- Location: IOOBUF_X72_Y73_N9
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

-- Location: IOOBUF_X72_Y73_N2
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

-- Location: IOIBUF_X115_Y40_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\sdi~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdi,
	o => \sdi~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\lr_sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lr_sel,
	o => \lr_sel~input_o\);

-- Location: LCCOMB_X114_Y40_N22
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

-- Location: IOIBUF_X115_Y15_N1
\di[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(7),
	o => \di[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\clear~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: FF_X114_Y40_N23
\qo[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \qo[7]~7_combout\,
	asdata => \di[7]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[7]~reg0_q\);

-- Location: LCCOMB_X114_Y40_N12
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

-- Location: IOIBUF_X115_Y10_N1
\di[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(6),
	o => \di[6]~input_o\);

-- Location: FF_X114_Y40_N13
\qo[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \qo[6]~6_combout\,
	asdata => \di[6]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[6]~reg0_q\);

-- Location: LCCOMB_X114_Y40_N18
\qo[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo[5]~5_combout\ = (\lr_sel~input_o\ & (\qo[6]~reg0_q\)) # (!\lr_sel~input_o\ & ((\qo[4]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qo[6]~reg0_q\,
	datab => \lr_sel~input_o\,
	datad => \qo[4]~reg0_q\,
	combout => \qo[5]~5_combout\);

-- Location: IOIBUF_X115_Y11_N8
\di[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(5),
	o => \di[5]~input_o\);

-- Location: FF_X114_Y40_N19
\qo[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \qo[5]~5_combout\,
	asdata => \di[5]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[5]~reg0_q\);

-- Location: LCCOMB_X114_Y40_N24
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

-- Location: IOIBUF_X115_Y18_N8
\di[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(4),
	o => \di[4]~input_o\);

-- Location: FF_X114_Y40_N25
\qo[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \qo[4]~4_combout\,
	asdata => \di[4]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[4]~reg0_q\);

-- Location: LCCOMB_X114_Y40_N6
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

-- Location: IOIBUF_X115_Y13_N8
\di[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(3),
	o => \di[3]~input_o\);

-- Location: FF_X114_Y40_N7
\qo[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \qo[3]~3_combout\,
	asdata => \di[3]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[3]~reg0_q\);

-- Location: LCCOMB_X114_Y40_N16
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

-- Location: IOIBUF_X115_Y15_N8
\di[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(2),
	o => \di[2]~input_o\);

-- Location: FF_X114_Y40_N17
\qo[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \qo[2]~2_combout\,
	asdata => \di[2]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[2]~reg0_q\);

-- Location: LCCOMB_X114_Y40_N10
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

-- Location: IOIBUF_X115_Y14_N1
\di[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(1),
	o => \di[1]~input_o\);

-- Location: FF_X114_Y40_N11
\qo[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \qo[1]~1_combout\,
	asdata => \di[1]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[1]~reg0_q\);

-- Location: LCCOMB_X114_Y40_N20
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

-- Location: IOIBUF_X115_Y17_N1
\di[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(0),
	o => \di[0]~input_o\);

-- Location: FF_X114_Y40_N21
\qo[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
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


