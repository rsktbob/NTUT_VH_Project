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

-- DATE "10/04/2022 17:37:14"

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

ENTITY 	lab3_01 IS
    PORT (
	A0 : IN std_logic_vector(3 DOWNTO 0);
	B0 : IN std_logic_vector(3 DOWNTO 0);
	seg : BUFFER std_logic_vector(13 DOWNTO 0)
	);
END lab3_01;

-- Design Ports Information
-- seg[0]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[7]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[8]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[9]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[10]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[11]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[12]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[13]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[0]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[1]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[2]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0[3]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[3]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab3_01 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seg : std_logic_vector(13 DOWNTO 0);
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
SIGNAL \B0[2]~input_o\ : std_logic;
SIGNAL \A0[2]~input_o\ : std_logic;
SIGNAL \A0[1]~input_o\ : std_logic;
SIGNAL \B0[1]~input_o\ : std_logic;
SIGNAL \A0[0]~input_o\ : std_logic;
SIGNAL \B0[0]~input_o\ : std_logic;
SIGNAL \stage1|Cout~0_combout\ : std_logic;
SIGNAL \stage2|s~0_combout\ : std_logic;
SIGNAL \stage1|s~0_combout\ : std_logic;
SIGNAL \stage2|Cout~0_combout\ : std_logic;
SIGNAL \A0[3]~input_o\ : std_logic;
SIGNAL \Cout~0_combout\ : std_logic;
SIGNAL \B0[3]~input_o\ : std_logic;
SIGNAL \Cout~1_combout\ : std_logic;
SIGNAL \stage6|s~combout\ : std_logic;
SIGNAL \stage5|s~0_combout\ : std_logic;
SIGNAL \stage7|s~combout\ : std_logic;
SIGNAL \stage0|s~0_combout\ : std_logic;
SIGNAL \stage8|g0~0_combout\ : std_logic;
SIGNAL \stage8|f0~0_combout\ : std_logic;
SIGNAL \stage8|e0~0_combout\ : std_logic;
SIGNAL \stage8|d0~0_combout\ : std_logic;
SIGNAL \stage8|d0~1_combout\ : std_logic;
SIGNAL \stage8|d0~2_combout\ : std_logic;
SIGNAL \stage8|c0~0_combout\ : std_logic;
SIGNAL \stage8|b0~0_combout\ : std_logic;
SIGNAL \stage8|a0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A0 <= A0;
ww_B0 <= B0;
seg <= ww_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y73_N2
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

-- Location: IOOBUF_X13_Y73_N9
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

-- Location: IOOBUF_X18_Y73_N16
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

-- Location: IOOBUF_X16_Y73_N2
\seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage8|d0~2_combout\,
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
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

-- Location: IOOBUF_X20_Y73_N23
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

-- Location: IOOBUF_X16_Y73_N9
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

-- Location: IOOBUF_X1_Y0_N9
\seg[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \seg[7]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\seg[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cout~1_combout\,
	devoe => ww_devoe,
	o => \seg[8]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\seg[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cout~1_combout\,
	devoe => ww_devoe,
	o => \seg[9]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\seg[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cout~1_combout\,
	devoe => ww_devoe,
	o => \seg[10]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\seg[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg[11]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\seg[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg[12]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\seg[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cout~1_combout\,
	devoe => ww_devoe,
	o => \seg[13]~output_o\);

-- Location: IOIBUF_X13_Y73_N15
\B0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0(2),
	o => \B0[2]~input_o\);

-- Location: IOIBUF_X13_Y73_N22
\A0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0(2),
	o => \A0[2]~input_o\);

-- Location: IOIBUF_X20_Y73_N15
\A0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0(1),
	o => \A0[1]~input_o\);

-- Location: IOIBUF_X20_Y73_N1
\B0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0(1),
	o => \B0[1]~input_o\);

-- Location: IOIBUF_X20_Y73_N8
\A0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0(0),
	o => \A0[0]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\B0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0(0),
	o => \B0[0]~input_o\);

-- Location: LCCOMB_X20_Y72_N12
\stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Cout~0_combout\ = (\A0[1]~input_o\ & ((\B0[1]~input_o\) # ((\A0[0]~input_o\ & \B0[0]~input_o\)))) # (!\A0[1]~input_o\ & (\B0[1]~input_o\ & (\A0[0]~input_o\ & \B0[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0[1]~input_o\,
	datab => \B0[1]~input_o\,
	datac => \A0[0]~input_o\,
	datad => \B0[0]~input_o\,
	combout => \stage1|Cout~0_combout\);

-- Location: LCCOMB_X17_Y72_N16
\stage2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|s~0_combout\ = \B0[2]~input_o\ $ (\A0[2]~input_o\ $ (\stage1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B0[2]~input_o\,
	datac => \A0[2]~input_o\,
	datad => \stage1|Cout~0_combout\,
	combout => \stage2|s~0_combout\);

-- Location: LCCOMB_X20_Y72_N26
\stage1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|s~0_combout\ = \A0[1]~input_o\ $ (\B0[1]~input_o\ $ (((\A0[0]~input_o\ & \B0[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0[1]~input_o\,
	datab => \B0[1]~input_o\,
	datac => \A0[0]~input_o\,
	datad => \B0[0]~input_o\,
	combout => \stage1|s~0_combout\);

-- Location: LCCOMB_X17_Y72_N26
\stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Cout~0_combout\ = (\B0[2]~input_o\ & ((\A0[2]~input_o\) # (\stage1|Cout~0_combout\))) # (!\B0[2]~input_o\ & (\A0[2]~input_o\ & \stage1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B0[2]~input_o\,
	datac => \A0[2]~input_o\,
	datad => \stage1|Cout~0_combout\,
	combout => \stage2|Cout~0_combout\);

-- Location: IOIBUF_X16_Y73_N15
\A0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0(3),
	o => \A0[3]~input_o\);

-- Location: LCCOMB_X17_Y72_N8
\Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout~0_combout\ = (\stage1|s~0_combout\) # (\A0[2]~input_o\ $ (\B0[2]~input_o\ $ (\stage1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0[2]~input_o\,
	datab => \B0[2]~input_o\,
	datac => \stage1|s~0_combout\,
	datad => \stage1|Cout~0_combout\,
	combout => \Cout~0_combout\);

-- Location: IOIBUF_X16_Y73_N22
\B0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0(3),
	o => \B0[3]~input_o\);

-- Location: LCCOMB_X17_Y72_N28
\Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout~1_combout\ = (\stage2|Cout~0_combout\ & ((\A0[3]~input_o\) # ((\Cout~0_combout\) # (\B0[3]~input_o\)))) # (!\stage2|Cout~0_combout\ & ((\A0[3]~input_o\ & ((\Cout~0_combout\) # (\B0[3]~input_o\))) # (!\A0[3]~input_o\ & (\Cout~0_combout\ & 
-- \B0[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|Cout~0_combout\,
	datab => \A0[3]~input_o\,
	datac => \Cout~0_combout\,
	datad => \B0[3]~input_o\,
	combout => \Cout~1_combout\);

-- Location: LCCOMB_X17_Y72_N10
\stage6|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage6|s~combout\ = \stage2|s~0_combout\ $ (((!\stage1|s~0_combout\ & \Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2|s~0_combout\,
	datac => \stage1|s~0_combout\,
	datad => \Cout~1_combout\,
	combout => \stage6|s~combout\);

-- Location: LCCOMB_X17_Y72_N14
\stage5|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|s~0_combout\ = \Cout~1_combout\ $ (\stage1|s~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cout~1_combout\,
	datac => \stage1|s~0_combout\,
	combout => \stage5|s~0_combout\);

-- Location: LCCOMB_X17_Y72_N4
\stage7|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage7|s~combout\ = (\stage2|Cout~0_combout\ & (\A0[3]~input_o\ $ (\Cout~0_combout\ $ (!\B0[3]~input_o\)))) # (!\stage2|Cout~0_combout\ & ((\A0[3]~input_o\ & (\Cout~0_combout\ $ (!\B0[3]~input_o\))) # (!\A0[3]~input_o\ & (!\Cout~0_combout\ & 
-- \B0[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|Cout~0_combout\,
	datab => \A0[3]~input_o\,
	datac => \Cout~0_combout\,
	datad => \B0[3]~input_o\,
	combout => \stage7|s~combout\);

-- Location: LCCOMB_X20_Y72_N8
\stage0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|s~0_combout\ = \A0[0]~input_o\ $ (\B0[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A0[0]~input_o\,
	datad => \B0[0]~input_o\,
	combout => \stage0|s~0_combout\);

-- Location: LCCOMB_X17_Y72_N30
\stage8|g0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|g0~0_combout\ = (!\stage7|s~combout\ & ((\stage6|s~combout\ & (\stage5|s~0_combout\ & \stage0|s~0_combout\)) # (!\stage6|s~combout\ & (!\stage5|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage6|s~combout\,
	datab => \stage5|s~0_combout\,
	datac => \stage7|s~combout\,
	datad => \stage0|s~0_combout\,
	combout => \stage8|g0~0_combout\);

-- Location: LCCOMB_X17_Y72_N24
\stage8|f0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|f0~0_combout\ = (\stage6|s~combout\ & ((\stage5|s~0_combout\ & (!\stage7|s~combout\ & \stage0|s~0_combout\)) # (!\stage5|s~0_combout\ & (\stage7|s~combout\)))) # (!\stage6|s~combout\ & (!\stage7|s~combout\ & ((\stage5|s~0_combout\) # 
-- (\stage0|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage6|s~combout\,
	datab => \stage5|s~0_combout\,
	datac => \stage7|s~combout\,
	datad => \stage0|s~0_combout\,
	combout => \stage8|f0~0_combout\);

-- Location: LCCOMB_X17_Y72_N18
\stage8|e0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|e0~0_combout\ = (\stage5|s~0_combout\ & (((!\stage7|s~combout\ & \stage0|s~0_combout\)))) # (!\stage5|s~0_combout\ & ((\stage6|s~combout\ & (!\stage7|s~combout\)) # (!\stage6|s~combout\ & ((\stage0|s~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage6|s~combout\,
	datab => \stage5|s~0_combout\,
	datac => \stage7|s~combout\,
	datad => \stage0|s~0_combout\,
	combout => \stage8|e0~0_combout\);

-- Location: LCCOMB_X17_Y72_N20
\stage8|d0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|d0~0_combout\ = (\stage0|s~0_combout\ & (\stage2|s~0_combout\ $ (((\Cout~1_combout\) # (!\stage1|s~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|s~0_combout\,
	datab => \Cout~1_combout\,
	datac => \stage1|s~0_combout\,
	datad => \stage2|s~0_combout\,
	combout => \stage8|d0~0_combout\);

-- Location: LCCOMB_X17_Y72_N22
\stage8|d0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|d0~1_combout\ = (!\stage0|s~0_combout\ & ((\stage6|s~combout\ & (!\stage5|s~0_combout\ & !\stage7|s~combout\)) # (!\stage6|s~combout\ & (\stage5|s~0_combout\ & \stage7|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage6|s~combout\,
	datab => \stage5|s~0_combout\,
	datac => \stage7|s~combout\,
	datad => \stage0|s~0_combout\,
	combout => \stage8|d0~1_combout\);

-- Location: LCCOMB_X17_Y72_N0
\stage8|d0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|d0~2_combout\ = (\stage8|d0~0_combout\) # (\stage8|d0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage8|d0~0_combout\,
	datac => \stage8|d0~1_combout\,
	combout => \stage8|d0~2_combout\);

-- Location: LCCOMB_X17_Y72_N2
\stage8|c0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|c0~0_combout\ = (\stage6|s~combout\ & (\stage7|s~combout\ & ((\stage5|s~0_combout\) # (!\stage0|s~0_combout\)))) # (!\stage6|s~combout\ & (\stage5|s~0_combout\ & (!\stage7|s~combout\ & !\stage0|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage6|s~combout\,
	datab => \stage5|s~0_combout\,
	datac => \stage7|s~combout\,
	datad => \stage0|s~0_combout\,
	combout => \stage8|c0~0_combout\);

-- Location: LCCOMB_X17_Y72_N12
\stage8|b0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|b0~0_combout\ = (\stage5|s~0_combout\ & ((\stage0|s~0_combout\ & ((\stage7|s~combout\))) # (!\stage0|s~0_combout\ & (\stage6|s~combout\)))) # (!\stage5|s~0_combout\ & (\stage6|s~combout\ & (\stage7|s~combout\ $ (\stage0|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage6|s~combout\,
	datab => \stage5|s~0_combout\,
	datac => \stage7|s~combout\,
	datad => \stage0|s~0_combout\,
	combout => \stage8|b0~0_combout\);

-- Location: LCCOMB_X17_Y72_N6
\stage8|a0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|a0~0_combout\ = (\stage6|s~combout\ & (!\stage5|s~0_combout\ & ((\stage7|s~combout\) # (!\stage0|s~0_combout\)))) # (!\stage6|s~combout\ & (\stage0|s~0_combout\ & (\stage5|s~0_combout\ $ (!\stage7|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage6|s~combout\,
	datab => \stage5|s~0_combout\,
	datac => \stage7|s~combout\,
	datad => \stage0|s~0_combout\,
	combout => \stage8|a0~0_combout\);

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


