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

-- DATE "10/02/2022 12:05:30"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab2_02 IS
    PORT (
	x : IN std_logic_vector(7 DOWNTO 0);
	y : IN std_logic_vector(7 DOWNTO 0);
	Bout : OUT std_logic;
	seg : OUT std_logic_vector(13 DOWNTO 0)
	);
END lab2_02;

-- Design Ports Information
-- Bout	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[7]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[8]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[9]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[10]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[11]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[13]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab2_02 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Bout : std_logic;
SIGNAL ww_seg : std_logic_vector(13 DOWNTO 0);
SIGNAL \Bout~output_o\ : std_logic;
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
SIGNAL \seg[7]~output_o\ : std_logic;
SIGNAL \seg[8]~output_o\ : std_logic;
SIGNAL \seg[9]~output_o\ : std_logic;
SIGNAL \seg[10]~output_o\ : std_logic;
SIGNAL \seg[11]~output_o\ : std_logic;
SIGNAL \seg[12]~output_o\ : std_logic;
SIGNAL \seg[13]~output_o\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \stage1|Bout~0_combout\ : std_logic;
SIGNAL \stage2|Bout~0_combout\ : std_logic;
SIGNAL \stage3|Bout~0_combout\ : std_logic;
SIGNAL \stage4|Bout~0_combout\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \y[5]~input_o\ : std_logic;
SIGNAL \stage5|Bout~0_combout\ : std_logic;
SIGNAL \y[6]~input_o\ : std_logic;
SIGNAL \stage6|Bout~0_combout\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \y[7]~input_o\ : std_logic;
SIGNAL \stage7|Bout~0_combout\ : std_logic;
SIGNAL \stage2|d~combout\ : std_logic;
SIGNAL \stage1|d~0_combout\ : std_logic;
SIGNAL \stage3|d~combout\ : std_logic;
SIGNAL \stage0|d~0_combout\ : std_logic;
SIGNAL \stage8|g0~0_combout\ : std_logic;
SIGNAL \stage8|f0~0_combout\ : std_logic;
SIGNAL \stage8|e0~0_combout\ : std_logic;
SIGNAL \stage8|d0~0_combout\ : std_logic;
SIGNAL \stage8|c0~0_combout\ : std_logic;
SIGNAL \stage8|b0~0_combout\ : std_logic;
SIGNAL \stage8|a0~0_combout\ : std_logic;
SIGNAL \stage4|d~combout\ : std_logic;
SIGNAL \stage5|d~combout\ : std_logic;
SIGNAL \stage6|d~combout\ : std_logic;
SIGNAL \stage7|d~0_combout\ : std_logic;
SIGNAL \stage7|d~combout\ : std_logic;
SIGNAL \stage8|g1~0_combout\ : std_logic;
SIGNAL \stage8|f1~0_combout\ : std_logic;
SIGNAL \stage8|e1~0_combout\ : std_logic;
SIGNAL \stage8|d1~0_combout\ : std_logic;
SIGNAL \stage8|c1~0_combout\ : std_logic;
SIGNAL \stage8|b1~0_combout\ : std_logic;
SIGNAL \stage8|a1~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_x <= x;
ww_y <= y;
Bout <= ww_Bout;
seg <= ww_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X60_Y73_N2
\Bout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage7|Bout~0_combout\,
	devoe => ww_devoe,
	o => \Bout~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage8|g0~0_combout\,
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage8|f0~0_combout\,
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage8|e0~0_combout\,
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage8|d0~0_combout\,
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage8|c0~0_combout\,
	devoe => ww_devoe,
	o => \seg[4]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage8|b0~0_combout\,
	devoe => ww_devoe,
	o => \seg[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage8|a0~0_combout\,
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\seg[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage8|g1~0_combout\,
	devoe => ww_devoe,
	o => \seg[7]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\seg[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage8|f1~0_combout\,
	devoe => ww_devoe,
	o => \seg[8]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\seg[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage8|e1~0_combout\,
	devoe => ww_devoe,
	o => \seg[9]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\seg[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage8|d1~0_combout\,
	devoe => ww_devoe,
	o => \seg[10]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\seg[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage8|c1~0_combout\,
	devoe => ww_devoe,
	o => \seg[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\seg[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage8|b1~0_combout\,
	devoe => ww_devoe,
	o => \seg[12]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\seg[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage8|a1~0_combout\,
	devoe => ww_devoe,
	o => \seg[13]~output_o\);

-- Location: IOIBUF_X67_Y73_N22
\x[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\x[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\y[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(4),
	o => \y[4]~input_o\);

-- Location: IOIBUF_X0_Y32_N22
\x[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\y[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\x[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X0_Y29_N15
\y[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\x[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\x[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: IOIBUF_X0_Y31_N15
\y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: LCCOMB_X1_Y28_N16
\stage1|Bout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Bout~0_combout\ = (\y[1]~input_o\ & (((!\x[0]~input_o\ & \y[0]~input_o\)) # (!\x[1]~input_o\))) # (!\y[1]~input_o\ & (!\x[1]~input_o\ & (!\x[0]~input_o\ & \y[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[1]~input_o\,
	datab => \x[1]~input_o\,
	datac => \x[0]~input_o\,
	datad => \y[0]~input_o\,
	combout => \stage1|Bout~0_combout\);

-- Location: LCCOMB_X1_Y28_N2
\stage2|Bout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Bout~0_combout\ = (\x[2]~input_o\ & (\y[2]~input_o\ & \stage1|Bout~0_combout\)) # (!\x[2]~input_o\ & ((\y[2]~input_o\) # (\stage1|Bout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datac => \y[2]~input_o\,
	datad => \stage1|Bout~0_combout\,
	combout => \stage2|Bout~0_combout\);

-- Location: LCCOMB_X1_Y28_N12
\stage3|Bout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Bout~0_combout\ = (\x[3]~input_o\ & (\y[3]~input_o\ & \stage2|Bout~0_combout\)) # (!\x[3]~input_o\ & ((\y[3]~input_o\) # (\stage2|Bout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datac => \y[3]~input_o\,
	datad => \stage2|Bout~0_combout\,
	combout => \stage3|Bout~0_combout\);

-- Location: LCCOMB_X1_Y28_N30
\stage4|Bout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4|Bout~0_combout\ = (\x[4]~input_o\ & (\y[4]~input_o\ & \stage3|Bout~0_combout\)) # (!\x[4]~input_o\ & ((\y[4]~input_o\) # (\stage3|Bout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[4]~input_o\,
	datac => \y[4]~input_o\,
	datad => \stage3|Bout~0_combout\,
	combout => \stage4|Bout~0_combout\);

-- Location: IOIBUF_X69_Y73_N22
\x[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\y[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(5),
	o => \y[5]~input_o\);

-- Location: LCCOMB_X66_Y72_N24
\stage5|Bout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|Bout~0_combout\ = (\stage4|Bout~0_combout\ & ((\y[5]~input_o\) # (!\x[5]~input_o\))) # (!\stage4|Bout~0_combout\ & (!\x[5]~input_o\ & \y[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4|Bout~0_combout\,
	datac => \x[5]~input_o\,
	datad => \y[5]~input_o\,
	combout => \stage5|Bout~0_combout\);

-- Location: IOIBUF_X67_Y73_N1
\y[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(6),
	o => \y[6]~input_o\);

-- Location: LCCOMB_X66_Y72_N10
\stage6|Bout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage6|Bout~0_combout\ = (\x[6]~input_o\ & (\stage5|Bout~0_combout\ & \y[6]~input_o\)) # (!\x[6]~input_o\ & ((\stage5|Bout~0_combout\) # (\y[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[6]~input_o\,
	datab => \stage5|Bout~0_combout\,
	datac => \y[6]~input_o\,
	combout => \stage6|Bout~0_combout\);

-- Location: IOIBUF_X69_Y73_N15
\x[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\y[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(7),
	o => \y[7]~input_o\);

-- Location: LCCOMB_X66_Y72_N12
\stage7|Bout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage7|Bout~0_combout\ = (\stage6|Bout~0_combout\ & ((\y[7]~input_o\) # (!\x[7]~input_o\))) # (!\stage6|Bout~0_combout\ & (!\x[7]~input_o\ & \y[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage6|Bout~0_combout\,
	datab => \x[7]~input_o\,
	datad => \y[7]~input_o\,
	combout => \stage7|Bout~0_combout\);

-- Location: LCCOMB_X1_Y28_N10
\stage2|d\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|d~combout\ = \x[2]~input_o\ $ (\y[2]~input_o\ $ (\stage1|Bout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datac => \y[2]~input_o\,
	datad => \stage1|Bout~0_combout\,
	combout => \stage2|d~combout\);

-- Location: LCCOMB_X1_Y28_N20
\stage1|d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|d~0_combout\ = \y[1]~input_o\ $ (\x[1]~input_o\ $ (((!\x[0]~input_o\ & \y[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[1]~input_o\,
	datab => \x[1]~input_o\,
	datac => \x[0]~input_o\,
	datad => \y[0]~input_o\,
	combout => \stage1|d~0_combout\);

-- Location: LCCOMB_X1_Y28_N14
\stage3|d\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|d~combout\ = \x[3]~input_o\ $ (\y[3]~input_o\ $ (\stage2|Bout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datac => \y[3]~input_o\,
	datad => \stage2|Bout~0_combout\,
	combout => \stage3|d~combout\);

-- Location: LCCOMB_X1_Y28_N24
\stage0|d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|d~0_combout\ = \x[0]~input_o\ $ (\y[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[0]~input_o\,
	datad => \y[0]~input_o\,
	combout => \stage0|d~0_combout\);

-- Location: LCCOMB_X1_Y28_N8
\stage8|g0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|g0~0_combout\ = (!\stage3|d~combout\ & ((\stage2|d~combout\ & (\stage1|d~0_combout\ & \stage0|d~0_combout\)) # (!\stage2|d~combout\ & (!\stage1|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|d~combout\,
	datab => \stage1|d~0_combout\,
	datac => \stage3|d~combout\,
	datad => \stage0|d~0_combout\,
	combout => \stage8|g0~0_combout\);

-- Location: LCCOMB_X1_Y28_N26
\stage8|f0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|f0~0_combout\ = (\stage2|d~combout\ & ((\stage1|d~0_combout\ & (!\stage3|d~combout\ & \stage0|d~0_combout\)) # (!\stage1|d~0_combout\ & (\stage3|d~combout\)))) # (!\stage2|d~combout\ & (!\stage3|d~combout\ & ((\stage1|d~0_combout\) # 
-- (\stage0|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|d~combout\,
	datab => \stage1|d~0_combout\,
	datac => \stage3|d~combout\,
	datad => \stage0|d~0_combout\,
	combout => \stage8|f0~0_combout\);

-- Location: LCCOMB_X1_Y28_N28
\stage8|e0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|e0~0_combout\ = (\stage1|d~0_combout\ & (((!\stage3|d~combout\ & \stage0|d~0_combout\)))) # (!\stage1|d~0_combout\ & ((\stage2|d~combout\ & (!\stage3|d~combout\)) # (!\stage2|d~combout\ & ((\stage0|d~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|d~combout\,
	datab => \stage1|d~0_combout\,
	datac => \stage3|d~combout\,
	datad => \stage0|d~0_combout\,
	combout => \stage8|e0~0_combout\);

-- Location: LCCOMB_X1_Y28_N6
\stage8|d0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|d0~0_combout\ = (\stage0|d~0_combout\ & (\stage2|d~combout\ $ ((!\stage1|d~0_combout\)))) # (!\stage0|d~0_combout\ & ((\stage2|d~combout\ & (!\stage1|d~0_combout\ & !\stage3|d~combout\)) # (!\stage2|d~combout\ & (\stage1|d~0_combout\ & 
-- \stage3|d~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|d~combout\,
	datab => \stage1|d~0_combout\,
	datac => \stage3|d~combout\,
	datad => \stage0|d~0_combout\,
	combout => \stage8|d0~0_combout\);

-- Location: LCCOMB_X1_Y28_N0
\stage8|c0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|c0~0_combout\ = (\stage2|d~combout\ & (\stage3|d~combout\ & ((\stage1|d~0_combout\) # (!\stage0|d~0_combout\)))) # (!\stage2|d~combout\ & (\stage1|d~0_combout\ & (!\stage3|d~combout\ & !\stage0|d~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|d~combout\,
	datab => \stage1|d~0_combout\,
	datac => \stage3|d~combout\,
	datad => \stage0|d~0_combout\,
	combout => \stage8|c0~0_combout\);

-- Location: LCCOMB_X1_Y28_N18
\stage8|b0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|b0~0_combout\ = (\stage1|d~0_combout\ & ((\stage0|d~0_combout\ & ((\stage3|d~combout\))) # (!\stage0|d~0_combout\ & (\stage2|d~combout\)))) # (!\stage1|d~0_combout\ & (\stage2|d~combout\ & (\stage3|d~combout\ $ (\stage0|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|d~combout\,
	datab => \stage1|d~0_combout\,
	datac => \stage3|d~combout\,
	datad => \stage0|d~0_combout\,
	combout => \stage8|b0~0_combout\);

-- Location: LCCOMB_X1_Y28_N4
\stage8|a0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|a0~0_combout\ = (\stage2|d~combout\ & (!\stage1|d~0_combout\ & ((\stage3|d~combout\) # (!\stage0|d~0_combout\)))) # (!\stage2|d~combout\ & (\stage0|d~0_combout\ & (\stage1|d~0_combout\ $ (!\stage3|d~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|d~combout\,
	datab => \stage1|d~0_combout\,
	datac => \stage3|d~combout\,
	datad => \stage0|d~0_combout\,
	combout => \stage8|a0~0_combout\);

-- Location: LCCOMB_X1_Y28_N22
\stage4|d\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4|d~combout\ = \x[4]~input_o\ $ (\y[4]~input_o\ $ (\stage3|Bout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[4]~input_o\,
	datac => \y[4]~input_o\,
	datad => \stage3|Bout~0_combout\,
	combout => \stage4|d~combout\);

-- Location: LCCOMB_X66_Y72_N16
\stage5|d\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|d~combout\ = \stage4|Bout~0_combout\ $ (\x[5]~input_o\ $ (\y[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4|Bout~0_combout\,
	datac => \x[5]~input_o\,
	datad => \y[5]~input_o\,
	combout => \stage5|d~combout\);

-- Location: LCCOMB_X66_Y72_N14
\stage6|d\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage6|d~combout\ = \x[6]~input_o\ $ (\stage5|Bout~0_combout\ $ (\y[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[6]~input_o\,
	datab => \stage5|Bout~0_combout\,
	datac => \y[6]~input_o\,
	combout => \stage6|d~combout\);

-- Location: LCCOMB_X66_Y72_N18
\stage7|d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage7|d~0_combout\ = \x[7]~input_o\ $ (\y[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[7]~input_o\,
	datad => \y[7]~input_o\,
	combout => \stage7|d~0_combout\);

-- Location: LCCOMB_X66_Y72_N28
\stage7|d\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage7|d~combout\ = \stage7|d~0_combout\ $ (((\x[6]~input_o\ & (\stage5|Bout~0_combout\ & \y[6]~input_o\)) # (!\x[6]~input_o\ & ((\stage5|Bout~0_combout\) # (\y[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[6]~input_o\,
	datab => \stage5|Bout~0_combout\,
	datac => \y[6]~input_o\,
	datad => \stage7|d~0_combout\,
	combout => \stage7|d~combout\);

-- Location: LCCOMB_X66_Y72_N6
\stage8|g1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|g1~0_combout\ = (!\stage7|d~combout\ & ((\stage5|d~combout\ & (\stage4|d~combout\ & \stage6|d~combout\)) # (!\stage5|d~combout\ & ((!\stage6|d~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4|d~combout\,
	datab => \stage5|d~combout\,
	datac => \stage6|d~combout\,
	datad => \stage7|d~combout\,
	combout => \stage8|g1~0_combout\);

-- Location: LCCOMB_X66_Y72_N0
\stage8|f1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|f1~0_combout\ = (\stage5|d~combout\ & (!\stage7|d~combout\ & ((\stage4|d~combout\) # (!\stage6|d~combout\)))) # (!\stage5|d~combout\ & ((\stage6|d~combout\ & ((\stage7|d~combout\))) # (!\stage6|d~combout\ & (\stage4|d~combout\ & 
-- !\stage7|d~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4|d~combout\,
	datab => \stage5|d~combout\,
	datac => \stage6|d~combout\,
	datad => \stage7|d~combout\,
	combout => \stage8|f1~0_combout\);

-- Location: LCCOMB_X66_Y72_N2
\stage8|e1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|e1~0_combout\ = (\stage5|d~combout\ & (\stage4|d~combout\ & ((!\stage7|d~combout\)))) # (!\stage5|d~combout\ & ((\stage6|d~combout\ & ((!\stage7|d~combout\))) # (!\stage6|d~combout\ & (\stage4|d~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4|d~combout\,
	datab => \stage5|d~combout\,
	datac => \stage6|d~combout\,
	datad => \stage7|d~combout\,
	combout => \stage8|e1~0_combout\);

-- Location: LCCOMB_X66_Y72_N20
\stage8|d1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|d1~0_combout\ = (\stage4|d~combout\ & (\stage5|d~combout\ $ ((!\stage6|d~combout\)))) # (!\stage4|d~combout\ & ((\stage5|d~combout\ & (!\stage6|d~combout\ & \stage7|d~combout\)) # (!\stage5|d~combout\ & (\stage6|d~combout\ & 
-- !\stage7|d~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4|d~combout\,
	datab => \stage5|d~combout\,
	datac => \stage6|d~combout\,
	datad => \stage7|d~combout\,
	combout => \stage8|d1~0_combout\);

-- Location: LCCOMB_X66_Y72_N22
\stage8|c1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|c1~0_combout\ = (\stage6|d~combout\ & (\stage7|d~combout\ & ((\stage5|d~combout\) # (!\stage4|d~combout\)))) # (!\stage6|d~combout\ & (!\stage4|d~combout\ & (\stage5|d~combout\ & !\stage7|d~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4|d~combout\,
	datab => \stage5|d~combout\,
	datac => \stage6|d~combout\,
	datad => \stage7|d~combout\,
	combout => \stage8|c1~0_combout\);

-- Location: LCCOMB_X66_Y72_N8
\stage8|b1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|b1~0_combout\ = (\stage5|d~combout\ & ((\stage4|d~combout\ & ((\stage7|d~combout\))) # (!\stage4|d~combout\ & (\stage6|d~combout\)))) # (!\stage5|d~combout\ & (\stage6|d~combout\ & (\stage4|d~combout\ $ (\stage7|d~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4|d~combout\,
	datab => \stage5|d~combout\,
	datac => \stage6|d~combout\,
	datad => \stage7|d~combout\,
	combout => \stage8|b1~0_combout\);

-- Location: LCCOMB_X66_Y72_N26
\stage8|a1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|a1~0_combout\ = (\stage5|d~combout\ & (\stage4|d~combout\ & (!\stage6|d~combout\ & \stage7|d~combout\))) # (!\stage5|d~combout\ & (\stage6|d~combout\ $ (((\stage4|d~combout\ & !\stage7|d~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4|d~combout\,
	datab => \stage5|d~combout\,
	datac => \stage6|d~combout\,
	datad => \stage7|d~combout\,
	combout => \stage8|a1~0_combout\);

ww_Bout <= \Bout~output_o\;

ww_seg(0) <= \seg[0]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;

ww_seg(7) <= \seg[7]~output_o\;

ww_seg(8) <= \seg[8]~output_o\;

ww_seg(9) <= \seg[9]~output_o\;

ww_seg(10) <= \seg[10]~output_o\;

ww_seg(11) <= \seg[11]~output_o\;

ww_seg(12) <= \seg[12]~output_o\;

ww_seg(13) <= \seg[13]~output_o\;
END structure;


