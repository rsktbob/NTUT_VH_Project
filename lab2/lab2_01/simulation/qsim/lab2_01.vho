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

-- DATE "10/02/2022 12:55:12"

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

ENTITY 	lab2_01 IS
    PORT (
	x : IN std_logic_vector(7 DOWNTO 0);
	y : IN std_logic_vector(7 DOWNTO 0);
	Cout : OUT std_logic;
	seg : OUT std_logic_vector(13 DOWNTO 0)
	);
END lab2_01;

-- Design Ports Information
-- Cout	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[7]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[8]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[9]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[10]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[11]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[12]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[13]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab2_01 IS
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
SIGNAL ww_Cout : std_logic;
SIGNAL ww_seg : std_logic_vector(13 DOWNTO 0);
SIGNAL \Cout~output_o\ : std_logic;
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
SIGNAL \y[6]~input_o\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \stage1|Cout~0_combout\ : std_logic;
SIGNAL \stage2|Cout~0_combout\ : std_logic;
SIGNAL \stage3|Cout~0_combout\ : std_logic;
SIGNAL \stage4|Cout~0_combout\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \y[5]~input_o\ : std_logic;
SIGNAL \stage5|Cout~0_combout\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \stage6|Cout~0_combout\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \y[7]~input_o\ : std_logic;
SIGNAL \stage7|Cout~0_combout\ : std_logic;
SIGNAL \stage3|s~combout\ : std_logic;
SIGNAL \stage2|s~0_combout\ : std_logic;
SIGNAL \stage1|s~0_combout\ : std_logic;
SIGNAL \stage0|s~0_combout\ : std_logic;
SIGNAL \stage8|g0~0_combout\ : std_logic;
SIGNAL \stage8|f0~0_combout\ : std_logic;
SIGNAL \stage8|e0~0_combout\ : std_logic;
SIGNAL \stage8|d0~0_combout\ : std_logic;
SIGNAL \stage8|c0~0_combout\ : std_logic;
SIGNAL \stage8|b0~0_combout\ : std_logic;
SIGNAL \stage8|a0~0_combout\ : std_logic;
SIGNAL \stage4|s~combout\ : std_logic;
SIGNAL \stage5|s~combout\ : std_logic;
SIGNAL \stage6|s~combout\ : std_logic;
SIGNAL \stage7|s~0_combout\ : std_logic;
SIGNAL \stage7|s~combout\ : std_logic;
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
Cout <= ww_Cout;
seg <= ww_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X65_Y73_N9
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage7|Cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X3_Y0_N2
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

-- Location: IOOBUF_X5_Y0_N16
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

-- Location: IOOBUF_X0_Y4_N9
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

-- Location: IOOBUF_X0_Y4_N23
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

-- Location: IOOBUF_X3_Y0_N16
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

-- Location: IOOBUF_X1_Y0_N23
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

-- Location: IOOBUF_X0_Y4_N2
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

-- Location: IOOBUF_X69_Y73_N16
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

-- Location: IOOBUF_X65_Y73_N16
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

-- Location: IOOBUF_X69_Y73_N23
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

-- Location: IOOBUF_X67_Y73_N9
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

-- Location: IOOBUF_X67_Y73_N2
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

-- Location: IOOBUF_X67_Y73_N16
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

-- Location: IOIBUF_X72_Y73_N15
\y[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(6),
	o => \y[6]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\x[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\y[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(4),
	o => \y[4]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\y[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\x[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\x[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\y[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\x[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\x[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: LCCOMB_X1_Y4_N16
\stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Cout~0_combout\ = (\y[1]~input_o\ & ((\x[1]~input_o\) # ((\y[0]~input_o\ & \x[0]~input_o\)))) # (!\y[1]~input_o\ & (\y[0]~input_o\ & (\x[1]~input_o\ & \x[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[1]~input_o\,
	datab => \y[0]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[0]~input_o\,
	combout => \stage1|Cout~0_combout\);

-- Location: LCCOMB_X1_Y4_N18
\stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Cout~0_combout\ = (\x[2]~input_o\ & ((\y[2]~input_o\) # (\stage1|Cout~0_combout\))) # (!\x[2]~input_o\ & (\y[2]~input_o\ & \stage1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[2]~input_o\,
	datac => \y[2]~input_o\,
	datad => \stage1|Cout~0_combout\,
	combout => \stage2|Cout~0_combout\);

-- Location: LCCOMB_X1_Y4_N28
\stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Cout~0_combout\ = (\y[3]~input_o\ & ((\x[3]~input_o\) # (\stage2|Cout~0_combout\))) # (!\y[3]~input_o\ & (\x[3]~input_o\ & \stage2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[3]~input_o\,
	datac => \x[3]~input_o\,
	datad => \stage2|Cout~0_combout\,
	combout => \stage3|Cout~0_combout\);

-- Location: LCCOMB_X1_Y4_N22
\stage4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4|Cout~0_combout\ = (\x[4]~input_o\ & ((\y[4]~input_o\) # (\stage3|Cout~0_combout\))) # (!\x[4]~input_o\ & (\y[4]~input_o\ & \stage3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[4]~input_o\,
	datac => \y[4]~input_o\,
	datad => \stage3|Cout~0_combout\,
	combout => \stage4|Cout~0_combout\);

-- Location: IOIBUF_X67_Y73_N22
\x[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\y[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(5),
	o => \y[5]~input_o\);

-- Location: LCCOMB_X68_Y72_N24
\stage5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|Cout~0_combout\ = (\stage4|Cout~0_combout\ & ((\x[5]~input_o\) # (\y[5]~input_o\))) # (!\stage4|Cout~0_combout\ & (\x[5]~input_o\ & \y[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4|Cout~0_combout\,
	datab => \x[5]~input_o\,
	datad => \y[5]~input_o\,
	combout => \stage5|Cout~0_combout\);

-- Location: IOIBUF_X69_Y73_N1
\x[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: LCCOMB_X68_Y72_N10
\stage6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage6|Cout~0_combout\ = (\y[6]~input_o\ & ((\stage5|Cout~0_combout\) # (\x[6]~input_o\))) # (!\y[6]~input_o\ & (\stage5|Cout~0_combout\ & \x[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[6]~input_o\,
	datab => \stage5|Cout~0_combout\,
	datac => \x[6]~input_o\,
	combout => \stage6|Cout~0_combout\);

-- Location: IOIBUF_X72_Y73_N1
\x[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: IOIBUF_X72_Y73_N22
\y[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(7),
	o => \y[7]~input_o\);

-- Location: LCCOMB_X68_Y72_N4
\stage7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage7|Cout~0_combout\ = (\stage6|Cout~0_combout\ & ((\x[7]~input_o\) # (\y[7]~input_o\))) # (!\stage6|Cout~0_combout\ & (\x[7]~input_o\ & \y[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage6|Cout~0_combout\,
	datab => \x[7]~input_o\,
	datad => \y[7]~input_o\,
	combout => \stage7|Cout~0_combout\);

-- Location: LCCOMB_X1_Y4_N6
\stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|s~combout\ = \y[3]~input_o\ $ (\x[3]~input_o\ $ (\stage2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[3]~input_o\,
	datac => \x[3]~input_o\,
	datad => \stage2|Cout~0_combout\,
	combout => \stage3|s~combout\);

-- Location: LCCOMB_X1_Y4_N2
\stage2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|s~0_combout\ = \x[2]~input_o\ $ (\y[2]~input_o\ $ (\stage1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[2]~input_o\,
	datac => \y[2]~input_o\,
	datad => \stage1|Cout~0_combout\,
	combout => \stage2|s~0_combout\);

-- Location: LCCOMB_X1_Y4_N4
\stage1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|s~0_combout\ = \y[1]~input_o\ $ (\x[1]~input_o\ $ (((\y[0]~input_o\ & \x[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[1]~input_o\,
	datab => \y[0]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[0]~input_o\,
	combout => \stage1|s~0_combout\);

-- Location: LCCOMB_X1_Y4_N0
\stage0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|s~0_combout\ = \y[0]~input_o\ $ (\x[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[0]~input_o\,
	datad => \x[0]~input_o\,
	combout => \stage0|s~0_combout\);

-- Location: LCCOMB_X1_Y4_N8
\stage8|g0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|g0~0_combout\ = (!\stage3|s~combout\ & ((\stage2|s~0_combout\ & (\stage1|s~0_combout\ & \stage0|s~0_combout\)) # (!\stage2|s~0_combout\ & (!\stage1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3|s~combout\,
	datab => \stage2|s~0_combout\,
	datac => \stage1|s~0_combout\,
	datad => \stage0|s~0_combout\,
	combout => \stage8|g0~0_combout\);

-- Location: LCCOMB_X1_Y4_N26
\stage8|f0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|f0~0_combout\ = (\stage3|s~combout\ & (\stage2|s~0_combout\ & (!\stage1|s~0_combout\))) # (!\stage3|s~combout\ & ((\stage2|s~0_combout\ & (\stage1|s~0_combout\ & \stage0|s~0_combout\)) # (!\stage2|s~0_combout\ & ((\stage1|s~0_combout\) # 
-- (\stage0|s~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3|s~combout\,
	datab => \stage2|s~0_combout\,
	datac => \stage1|s~0_combout\,
	datad => \stage0|s~0_combout\,
	combout => \stage8|f0~0_combout\);

-- Location: LCCOMB_X1_Y4_N20
\stage8|e0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|e0~0_combout\ = (\stage1|s~0_combout\ & (!\stage3|s~combout\ & ((\stage0|s~0_combout\)))) # (!\stage1|s~0_combout\ & ((\stage2|s~0_combout\ & (!\stage3|s~combout\)) # (!\stage2|s~0_combout\ & ((\stage0|s~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3|s~combout\,
	datab => \stage2|s~0_combout\,
	datac => \stage1|s~0_combout\,
	datad => \stage0|s~0_combout\,
	combout => \stage8|e0~0_combout\);

-- Location: LCCOMB_X1_Y4_N14
\stage8|d0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|d0~0_combout\ = (\stage0|s~0_combout\ & ((\stage2|s~0_combout\ $ (!\stage1|s~0_combout\)))) # (!\stage0|s~0_combout\ & ((\stage3|s~combout\ & (!\stage2|s~0_combout\ & \stage1|s~0_combout\)) # (!\stage3|s~combout\ & (\stage2|s~0_combout\ & 
-- !\stage1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3|s~combout\,
	datab => \stage2|s~0_combout\,
	datac => \stage1|s~0_combout\,
	datad => \stage0|s~0_combout\,
	combout => \stage8|d0~0_combout\);

-- Location: LCCOMB_X1_Y4_N24
\stage8|c0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|c0~0_combout\ = (\stage3|s~combout\ & (\stage2|s~0_combout\ & ((\stage1|s~0_combout\) # (!\stage0|s~0_combout\)))) # (!\stage3|s~combout\ & (!\stage2|s~0_combout\ & (\stage1|s~0_combout\ & !\stage0|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3|s~combout\,
	datab => \stage2|s~0_combout\,
	datac => \stage1|s~0_combout\,
	datad => \stage0|s~0_combout\,
	combout => \stage8|c0~0_combout\);

-- Location: LCCOMB_X1_Y4_N10
\stage8|b0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|b0~0_combout\ = (\stage3|s~combout\ & ((\stage0|s~0_combout\ & ((\stage1|s~0_combout\))) # (!\stage0|s~0_combout\ & (\stage2|s~0_combout\)))) # (!\stage3|s~combout\ & (\stage2|s~0_combout\ & (\stage1|s~0_combout\ $ (\stage0|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3|s~combout\,
	datab => \stage2|s~0_combout\,
	datac => \stage1|s~0_combout\,
	datad => \stage0|s~0_combout\,
	combout => \stage8|b0~0_combout\);

-- Location: LCCOMB_X1_Y4_N12
\stage8|a0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|a0~0_combout\ = (\stage2|s~0_combout\ & (!\stage1|s~0_combout\ & ((\stage3|s~combout\) # (!\stage0|s~0_combout\)))) # (!\stage2|s~0_combout\ & (\stage0|s~0_combout\ & (\stage3|s~combout\ $ (!\stage1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3|s~combout\,
	datab => \stage2|s~0_combout\,
	datac => \stage1|s~0_combout\,
	datad => \stage0|s~0_combout\,
	combout => \stage8|a0~0_combout\);

-- Location: LCCOMB_X1_Y4_N30
\stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4|s~combout\ = \x[4]~input_o\ $ (\y[4]~input_o\ $ (\stage3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[4]~input_o\,
	datac => \y[4]~input_o\,
	datad => \stage3|Cout~0_combout\,
	combout => \stage4|s~combout\);

-- Location: LCCOMB_X68_Y72_N0
\stage5|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|s~combout\ = \stage4|Cout~0_combout\ $ (\x[5]~input_o\ $ (\y[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4|Cout~0_combout\,
	datab => \x[5]~input_o\,
	datad => \y[5]~input_o\,
	combout => \stage5|s~combout\);

-- Location: LCCOMB_X68_Y72_N30
\stage6|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage6|s~combout\ = \y[6]~input_o\ $ (\stage5|Cout~0_combout\ $ (\x[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[6]~input_o\,
	datab => \stage5|Cout~0_combout\,
	datac => \x[6]~input_o\,
	combout => \stage6|s~combout\);

-- Location: LCCOMB_X68_Y72_N26
\stage7|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage7|s~0_combout\ = \x[7]~input_o\ $ (\y[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[7]~input_o\,
	datad => \y[7]~input_o\,
	combout => \stage7|s~0_combout\);

-- Location: LCCOMB_X68_Y72_N20
\stage7|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage7|s~combout\ = \stage7|s~0_combout\ $ (((\x[6]~input_o\ & ((\stage5|Cout~0_combout\) # (\y[6]~input_o\))) # (!\x[6]~input_o\ & (\stage5|Cout~0_combout\ & \y[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[6]~input_o\,
	datab => \stage5|Cout~0_combout\,
	datac => \y[6]~input_o\,
	datad => \stage7|s~0_combout\,
	combout => \stage7|s~combout\);

-- Location: LCCOMB_X68_Y72_N6
\stage8|g1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|g1~0_combout\ = (!\stage7|s~combout\ & ((\stage5|s~combout\ & (\stage4|s~combout\ & \stage6|s~combout\)) # (!\stage5|s~combout\ & ((!\stage6|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4|s~combout\,
	datab => \stage5|s~combout\,
	datac => \stage6|s~combout\,
	datad => \stage7|s~combout\,
	combout => \stage8|g1~0_combout\);

-- Location: LCCOMB_X68_Y72_N16
\stage8|f1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|f1~0_combout\ = (\stage5|s~combout\ & (!\stage7|s~combout\ & ((\stage4|s~combout\) # (!\stage6|s~combout\)))) # (!\stage5|s~combout\ & ((\stage6|s~combout\ & ((\stage7|s~combout\))) # (!\stage6|s~combout\ & (\stage4|s~combout\ & 
-- !\stage7|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4|s~combout\,
	datab => \stage5|s~combout\,
	datac => \stage6|s~combout\,
	datad => \stage7|s~combout\,
	combout => \stage8|f1~0_combout\);

-- Location: LCCOMB_X68_Y72_N18
\stage8|e1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|e1~0_combout\ = (\stage5|s~combout\ & (\stage4|s~combout\ & ((!\stage7|s~combout\)))) # (!\stage5|s~combout\ & ((\stage6|s~combout\ & ((!\stage7|s~combout\))) # (!\stage6|s~combout\ & (\stage4|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4|s~combout\,
	datab => \stage5|s~combout\,
	datac => \stage6|s~combout\,
	datad => \stage7|s~combout\,
	combout => \stage8|e1~0_combout\);

-- Location: LCCOMB_X68_Y72_N12
\stage8|d1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|d1~0_combout\ = (\stage4|s~combout\ & (\stage5|s~combout\ $ ((!\stage6|s~combout\)))) # (!\stage4|s~combout\ & ((\stage5|s~combout\ & (!\stage6|s~combout\ & \stage7|s~combout\)) # (!\stage5|s~combout\ & (\stage6|s~combout\ & 
-- !\stage7|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4|s~combout\,
	datab => \stage5|s~combout\,
	datac => \stage6|s~combout\,
	datad => \stage7|s~combout\,
	combout => \stage8|d1~0_combout\);

-- Location: LCCOMB_X68_Y72_N22
\stage8|c1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|c1~0_combout\ = (\stage6|s~combout\ & (\stage7|s~combout\ & ((\stage5|s~combout\) # (!\stage4|s~combout\)))) # (!\stage6|s~combout\ & (!\stage4|s~combout\ & (\stage5|s~combout\ & !\stage7|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4|s~combout\,
	datab => \stage5|s~combout\,
	datac => \stage6|s~combout\,
	datad => \stage7|s~combout\,
	combout => \stage8|c1~0_combout\);

-- Location: LCCOMB_X68_Y72_N8
\stage8|b1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|b1~0_combout\ = (\stage5|s~combout\ & ((\stage4|s~combout\ & ((\stage7|s~combout\))) # (!\stage4|s~combout\ & (\stage6|s~combout\)))) # (!\stage5|s~combout\ & (\stage6|s~combout\ & (\stage4|s~combout\ $ (\stage7|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4|s~combout\,
	datab => \stage5|s~combout\,
	datac => \stage6|s~combout\,
	datad => \stage7|s~combout\,
	combout => \stage8|b1~0_combout\);

-- Location: LCCOMB_X68_Y72_N2
\stage8|a1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|a1~0_combout\ = (\stage5|s~combout\ & (\stage4|s~combout\ & (!\stage6|s~combout\ & \stage7|s~combout\))) # (!\stage5|s~combout\ & (\stage6|s~combout\ $ (((\stage4|s~combout\ & !\stage7|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4|s~combout\,
	datab => \stage5|s~combout\,
	datac => \stage6|s~combout\,
	datad => \stage7|s~combout\,
	combout => \stage8|a1~0_combout\);

ww_Cout <= \Cout~output_o\;

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


