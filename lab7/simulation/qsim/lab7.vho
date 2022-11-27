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

-- DATE "11/27/2022 16:15:59"

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

ENTITY 	lab7 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	q : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END lab7;

-- Design Ports Information
-- q[0]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab7 IS
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
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \state~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \divisior[4]~3_combout\ : std_logic;
SIGNAL \divisior[0]~6_combout\ : std_logic;
SIGNAL \times[1]~1_combout\ : std_logic;
SIGNAL \divisior[0]~0_combout\ : std_logic;
SIGNAL \times[0]~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \times[2]~2_combout\ : std_logic;
SIGNAL \state~1_combout\ : std_logic;
SIGNAL \state~2_combout\ : std_logic;
SIGNAL \divisior~1_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \divisior~2_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \divisior~4_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \divisior~5_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \Add0~9_cout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \remainder~6_combout\ : std_logic;
SIGNAL \remainder[0]~3_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \remainder~5_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \remainder~4_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \remainder~2_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \remainder[4]~1_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \remainder[7]~0_combout\ : std_logic;
SIGNAL \q[0]~1_combout\ : std_logic;
SIGNAL \q[0]~0_combout\ : std_logic;
SIGNAL \q[0]~reg0_q\ : std_logic;
SIGNAL \q[1]~reg0feeder_combout\ : std_logic;
SIGNAL \q[1]~reg0_q\ : std_logic;
SIGNAL \q[2]~reg0feeder_combout\ : std_logic;
SIGNAL \q[2]~reg0_q\ : std_logic;
SIGNAL \q[3]~reg0feeder_combout\ : std_logic;
SIGNAL \q[3]~reg0_q\ : std_logic;
SIGNAL remainder : std_logic_vector(7 DOWNTO 0);
SIGNAL state : std_logic_vector(1 DOWNTO 0);
SIGNAL divisior : std_logic_vector(7 DOWNTO 0);
SIGNAL times : std_logic_vector(2 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_a <= a;
ww_b <= b;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X62_Y73_N23
\q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[0]~reg0_q\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[1]~reg0_q\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[2]~reg0_q\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[3]~reg0_q\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

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

-- Location: LCCOMB_X68_Y71_N20
\state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~0_combout\ = state(0) $ (state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(0),
	datac => state(1),
	combout => \state~0_combout\);

-- Location: IOIBUF_X65_Y73_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X68_Y71_N21
\state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(1));

-- Location: LCCOMB_X67_Y71_N8
\divisior[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisior[4]~3_combout\ = (\reset~input_o\) # ((state(1) & \divisior[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datac => \reset~input_o\,
	datad => \divisior[0]~0_combout\,
	combout => \divisior[4]~3_combout\);

-- Location: LCCOMB_X67_Y71_N18
\divisior[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisior[0]~6_combout\ = (state(1) & (!\reset~input_o\ & \divisior[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datac => \reset~input_o\,
	datad => \divisior[0]~0_combout\,
	combout => \divisior[0]~6_combout\);

-- Location: LCCOMB_X67_Y71_N16
\times[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \times[1]~1_combout\ = (times(1) & (((!times(0) & \divisior[0]~6_combout\)) # (!\divisior[4]~3_combout\))) # (!times(1) & (times(0) & ((\divisior[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => times(0),
	datab => \divisior[4]~3_combout\,
	datac => times(1),
	datad => \divisior[0]~6_combout\,
	combout => \times[1]~1_combout\);

-- Location: FF_X67_Y71_N17
\times[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \times[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => times(1));

-- Location: LCCOMB_X67_Y71_N2
\divisior[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisior[0]~0_combout\ = (state(0) & ((times(0)) # ((times(1)) # (!times(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => times(0),
	datab => state(0),
	datac => times(2),
	datad => times(1),
	combout => \divisior[0]~0_combout\);

-- Location: LCCOMB_X67_Y71_N26
\times[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \times[0]~0_combout\ = (!\reset~input_o\ & (times(0) $ (((state(1) & \divisior[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => \reset~input_o\,
	datac => times(0),
	datad => \divisior[0]~0_combout\,
	combout => \times[0]~0_combout\);

-- Location: FF_X67_Y71_N27
\times[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \times[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => times(0));

-- Location: LCCOMB_X67_Y71_N12
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = times(2) $ (((times(0) & times(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => times(0),
	datab => times(1),
	datac => times(2),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X67_Y71_N22
\times[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \times[2]~2_combout\ = (\Add2~0_combout\ & ((\divisior[0]~6_combout\) # ((!\divisior[4]~3_combout\ & times(2))))) # (!\Add2~0_combout\ & (!\divisior[4]~3_combout\ & (times(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \divisior[4]~3_combout\,
	datac => times(2),
	datad => \divisior[0]~6_combout\,
	combout => \times[2]~2_combout\);

-- Location: FF_X67_Y71_N23
\times[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \times[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => times(2));

-- Location: LCCOMB_X67_Y71_N28
\state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~1_combout\ = (((times(0)) # (times(1))) # (!state(0))) # (!times(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => times(2),
	datab => state(0),
	datac => times(0),
	datad => times(1),
	combout => \state~1_combout\);

-- Location: LCCOMB_X67_Y71_N4
\state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~2_combout\ = (state(1) & \state~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datad => \state~1_combout\,
	combout => \state~2_combout\);

-- Location: FF_X67_Y71_N5
\state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~2_combout\,
	asdata => VCC,
	sload => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(0));

-- Location: LCCOMB_X67_Y71_N30
\divisior~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisior~1_combout\ = (divisior(7) & ((!\divisior[0]~0_combout\) # (!state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datac => divisior(7),
	datad => \divisior[0]~0_combout\,
	combout => \divisior~1_combout\);

-- Location: IOIBUF_X67_Y73_N22
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: FF_X67_Y71_N31
\divisior[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisior~1_combout\,
	asdata => \b[3]~input_o\,
	sload => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisior(7));

-- Location: LCCOMB_X67_Y71_N24
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = divisior(7) $ (((state(0) & !state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => divisior(7),
	datab => state(0),
	datac => state(1),
	combout => \Add0~0_combout\);

-- Location: IOIBUF_X67_Y73_N15
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X67_Y71_N10
\divisior~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisior~2_combout\ = (\reset~input_o\ & ((\b[2]~input_o\))) # (!\reset~input_o\ & (divisior(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => divisior(7),
	datac => \reset~input_o\,
	datad => \b[2]~input_o\,
	combout => \divisior~2_combout\);

-- Location: FF_X67_Y71_N11
\divisior[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisior~2_combout\,
	ena => \divisior[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisior(6));

-- Location: LCCOMB_X66_Y71_N24
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = divisior(6) $ (((state(0) & !state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datac => divisior(6),
	datad => state(1),
	combout => \Add0~1_combout\);

-- Location: IOIBUF_X67_Y73_N8
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X67_Y71_N0
\divisior~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisior~4_combout\ = (\reset~input_o\ & ((\b[1]~input_o\))) # (!\reset~input_o\ & (divisior(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => divisior(6),
	datac => \reset~input_o\,
	datad => \b[1]~input_o\,
	combout => \divisior~4_combout\);

-- Location: FF_X67_Y71_N1
\divisior[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisior~4_combout\,
	ena => \divisior[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisior(5));

-- Location: LCCOMB_X67_Y71_N6
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = divisior(5) $ (((!state(1) & state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => divisior(5),
	datac => state(1),
	datad => state(0),
	combout => \Add0~2_combout\);

-- Location: IOIBUF_X67_Y73_N1
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X67_Y71_N20
\divisior~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisior~5_combout\ = (\reset~input_o\ & ((\b[0]~input_o\))) # (!\reset~input_o\ & (divisior(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => divisior(5),
	datac => \reset~input_o\,
	datad => \b[0]~input_o\,
	combout => \divisior~5_combout\);

-- Location: FF_X67_Y71_N21
\divisior[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisior~5_combout\,
	ena => \divisior[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisior(4));

-- Location: LCCOMB_X66_Y71_N30
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = divisior(4) $ (((state(0) & !state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datac => divisior(4),
	datad => state(1),
	combout => \Add0~3_combout\);

-- Location: IOIBUF_X69_Y73_N15
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: FF_X66_Y71_N3
\divisior[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => divisior(4),
	sload => VCC,
	ena => \divisior[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisior(3));

-- Location: LCCOMB_X66_Y71_N2
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = divisior(3) $ (((state(0) & !state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datac => divisior(3),
	datad => state(1),
	combout => \Add0~4_combout\);

-- Location: IOIBUF_X72_Y73_N22
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: FF_X66_Y71_N29
\divisior[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => divisior(3),
	sload => VCC,
	ena => \divisior[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisior(2));

-- Location: LCCOMB_X66_Y71_N28
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = divisior(2) $ (((state(0) & !state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datac => divisior(2),
	datad => state(1),
	combout => \Add0~5_combout\);

-- Location: IOIBUF_X69_Y73_N1
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: FF_X66_Y71_N5
\divisior[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => divisior(2),
	sload => VCC,
	ena => \divisior[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisior(1));

-- Location: LCCOMB_X66_Y71_N4
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = divisior(1) $ (((state(0) & !state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datac => divisior(1),
	datad => state(1),
	combout => \Add0~6_combout\);

-- Location: FF_X66_Y71_N27
\divisior[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => divisior(1),
	sload => VCC,
	ena => \divisior[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisior(0));

-- Location: LCCOMB_X66_Y71_N26
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = divisior(0) $ (((state(0) & !state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datac => divisior(0),
	datad => state(1),
	combout => \Add0~7_combout\);

-- Location: IOIBUF_X69_Y73_N22
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X66_Y71_N6
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_cout\ = CARRY((state(0) & !state(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(1),
	datad => VCC,
	cout => \Add0~9_cout\);

-- Location: LCCOMB_X66_Y71_N8
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Add0~7_combout\ & ((remainder(0) & (\Add0~9_cout\ & VCC)) # (!remainder(0) & (!\Add0~9_cout\)))) # (!\Add0~7_combout\ & ((remainder(0) & (!\Add0~9_cout\)) # (!remainder(0) & ((\Add0~9_cout\) # (GND)))))
-- \Add0~11\ = CARRY((\Add0~7_combout\ & (!remainder(0) & !\Add0~9_cout\)) # (!\Add0~7_combout\ & ((!\Add0~9_cout\) # (!remainder(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => remainder(0),
	datad => VCC,
	cin => \Add0~9_cout\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X68_Y71_N24
\remainder~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \remainder~6_combout\ = (\reset~input_o\ & (\a[0]~input_o\)) # (!\reset~input_o\ & ((\Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datac => \reset~input_o\,
	datad => \Add0~10_combout\,
	combout => \remainder~6_combout\);

-- Location: LCCOMB_X68_Y71_N26
\remainder[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \remainder[0]~3_combout\ = (\reset~input_o\) # ((state(0) & ((!state(1)))) # (!state(0) & (remainder(7) & state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => remainder(7),
	datac => state(0),
	datad => state(1),
	combout => \remainder[0]~3_combout\);

-- Location: FF_X68_Y71_N25
\remainder[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \remainder~6_combout\,
	ena => \remainder[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => remainder(0));

-- Location: LCCOMB_X66_Y71_N10
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((remainder(1) $ (\Add0~6_combout\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((remainder(1) & ((\Add0~6_combout\) # (!\Add0~11\))) # (!remainder(1) & (\Add0~6_combout\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => remainder(1),
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X68_Y71_N22
\remainder~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \remainder~5_combout\ = (\reset~input_o\ & (\a[1]~input_o\)) # (!\reset~input_o\ & ((\Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[1]~input_o\,
	datac => \reset~input_o\,
	datad => \Add0~12_combout\,
	combout => \remainder~5_combout\);

-- Location: FF_X68_Y71_N23
\remainder[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \remainder~5_combout\,
	ena => \remainder[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => remainder(1));

-- Location: LCCOMB_X66_Y71_N12
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (remainder(2) & ((\Add0~5_combout\ & (\Add0~13\ & VCC)) # (!\Add0~5_combout\ & (!\Add0~13\)))) # (!remainder(2) & ((\Add0~5_combout\ & (!\Add0~13\)) # (!\Add0~5_combout\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((remainder(2) & (!\Add0~5_combout\ & !\Add0~13\)) # (!remainder(2) & ((!\Add0~13\) # (!\Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => remainder(2),
	datab => \Add0~5_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X68_Y71_N28
\remainder~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \remainder~4_combout\ = (\reset~input_o\ & (\a[2]~input_o\)) # (!\reset~input_o\ & ((\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datac => \reset~input_o\,
	datad => \Add0~14_combout\,
	combout => \remainder~4_combout\);

-- Location: FF_X68_Y71_N29
\remainder[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \remainder~4_combout\,
	ena => \remainder[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => remainder(2));

-- Location: LCCOMB_X66_Y71_N14
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((remainder(3) $ (\Add0~4_combout\ $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((remainder(3) & ((\Add0~4_combout\) # (!\Add0~15\))) # (!remainder(3) & (\Add0~4_combout\ & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => remainder(3),
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X68_Y71_N18
\remainder~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \remainder~2_combout\ = (\reset~input_o\ & (\a[3]~input_o\)) # (!\reset~input_o\ & ((\Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[3]~input_o\,
	datac => \reset~input_o\,
	datad => \Add0~16_combout\,
	combout => \remainder~2_combout\);

-- Location: FF_X68_Y71_N19
\remainder[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \remainder~2_combout\,
	ena => \remainder[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => remainder(3));

-- Location: LCCOMB_X66_Y71_N16
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\Add0~3_combout\ & ((remainder(4) & (\Add0~17\ & VCC)) # (!remainder(4) & (!\Add0~17\)))) # (!\Add0~3_combout\ & ((remainder(4) & (!\Add0~17\)) # (!remainder(4) & ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((\Add0~3_combout\ & (!remainder(4) & !\Add0~17\)) # (!\Add0~3_combout\ & ((!\Add0~17\) # (!remainder(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => remainder(4),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X66_Y71_N0
\remainder[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \remainder[4]~1_combout\ = (!\reset~input_o\ & ((state(1) & (remainder(7) & !state(0))) # (!state(1) & ((state(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => state(1),
	datac => remainder(7),
	datad => state(0),
	combout => \remainder[4]~1_combout\);

-- Location: FF_X66_Y71_N17
\remainder[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	ena => \remainder[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => remainder(4));

-- Location: LCCOMB_X66_Y71_N18
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\Add0~2_combout\ $ (remainder(5) $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((\Add0~2_combout\ & ((remainder(5)) # (!\Add0~19\))) # (!\Add0~2_combout\ & (remainder(5) & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => remainder(5),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X66_Y71_N19
\remainder[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	ena => \remainder[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => remainder(5));

-- Location: LCCOMB_X66_Y71_N20
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (remainder(6) & ((\Add0~1_combout\ & (\Add0~21\ & VCC)) # (!\Add0~1_combout\ & (!\Add0~21\)))) # (!remainder(6) & ((\Add0~1_combout\ & (!\Add0~21\)) # (!\Add0~1_combout\ & ((\Add0~21\) # (GND)))))
-- \Add0~23\ = CARRY((remainder(6) & (!\Add0~1_combout\ & !\Add0~21\)) # (!remainder(6) & ((!\Add0~21\) # (!\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => remainder(6),
	datab => \Add0~1_combout\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X66_Y71_N21
\remainder[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	ena => \remainder[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => remainder(6));

-- Location: LCCOMB_X66_Y71_N22
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = remainder(7) $ (\Add0~23\ $ (!\Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => remainder(7),
	datad => \Add0~0_combout\,
	cin => \Add0~23\,
	combout => \Add0~24_combout\);

-- Location: LCCOMB_X65_Y71_N4
\remainder[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \remainder[7]~0_combout\ = (state(0) & ((state(1) & (remainder(7))) # (!state(1) & ((\Add0~24_combout\))))) # (!state(0) & (remainder(7) & ((\Add0~24_combout\) # (!state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(1),
	datac => remainder(7),
	datad => \Add0~24_combout\,
	combout => \remainder[7]~0_combout\);

-- Location: FF_X65_Y71_N5
\remainder[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \remainder[7]~0_combout\,
	asdata => remainder(7),
	sload => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => remainder(7));

-- Location: LCCOMB_X65_Y71_N2
\q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[0]~1_combout\ = !remainder(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => remainder(7),
	combout => \q[0]~1_combout\);

-- Location: LCCOMB_X65_Y71_N22
\q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[0]~0_combout\ = (!\reset~input_o\ & (state(1) & !state(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => state(1),
	datad => state(0),
	combout => \q[0]~0_combout\);

-- Location: FF_X65_Y71_N3
\q[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[0]~1_combout\,
	ena => \q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[0]~reg0_q\);

-- Location: LCCOMB_X65_Y71_N16
\q[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[1]~reg0feeder_combout\ = \q[0]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \q[0]~reg0_q\,
	combout => \q[1]~reg0feeder_combout\);

-- Location: FF_X65_Y71_N17
\q[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[1]~reg0feeder_combout\,
	ena => \q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[1]~reg0_q\);

-- Location: LCCOMB_X65_Y71_N18
\q[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[2]~reg0feeder_combout\ = \q[1]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \q[1]~reg0_q\,
	combout => \q[2]~reg0feeder_combout\);

-- Location: FF_X65_Y71_N19
\q[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[2]~reg0feeder_combout\,
	ena => \q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[2]~reg0_q\);

-- Location: LCCOMB_X65_Y71_N24
\q[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[3]~reg0feeder_combout\ = \q[2]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \q[2]~reg0_q\,
	combout => \q[3]~reg0feeder_combout\);

-- Location: FF_X65_Y71_N25
\q[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[3]~reg0feeder_combout\,
	ena => \q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[3]~reg0_q\);

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;
END structure;


