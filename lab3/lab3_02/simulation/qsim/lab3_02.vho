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

-- DATE "10/10/2022 20:30:57"

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

ENTITY 	lab3_02 IS
    PORT (
	A0 : IN std_logic_vector(7 DOWNTO 0);
	B0 : IN std_logic_vector(7 DOWNTO 0);
	seg : BUFFER std_logic_vector(13 DOWNTO 0)
	);
END lab3_02;

-- Design Ports Information
-- seg[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[7]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[8]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[9]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[10]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[11]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[12]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[13]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0[0]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0[2]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0[1]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0[3]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0[4]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0[5]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0[6]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0[7]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab3_02 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B0 : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \A0[1]~input_o\ : std_logic;
SIGNAL \B0[0]~input_o\ : std_logic;
SIGNAL \A0[0]~input_o\ : std_logic;
SIGNAL \B0[1]~input_o\ : std_logic;
SIGNAL \stage1|Cout~0_combout\ : std_logic;
SIGNAL \B0[2]~input_o\ : std_logic;
SIGNAL \A0[2]~input_o\ : std_logic;
SIGNAL \stage2|Cout~0_combout\ : std_logic;
SIGNAL \stage1|s~0_combout\ : std_logic;
SIGNAL \B0[3]~input_o\ : std_logic;
SIGNAL \A0[3]~input_o\ : std_logic;
SIGNAL \Cout0~1_combout\ : std_logic;
SIGNAL \stage2|s~0_combout\ : std_logic;
SIGNAL \Cout0~0_combout\ : std_logic;
SIGNAL \stage5|s~0_combout\ : std_logic;
SIGNAL \stage3|s~combout\ : std_logic;
SIGNAL \stage7|s~combout\ : std_logic;
SIGNAL \stage6|s~combout\ : std_logic;
SIGNAL \stage0|s~0_combout\ : std_logic;
SIGNAL \stage16|g0~0_combout\ : std_logic;
SIGNAL \stage16|f0~0_combout\ : std_logic;
SIGNAL \stage16|e0~0_combout\ : std_logic;
SIGNAL \stage16|d0~2_combout\ : std_logic;
SIGNAL \stage16|d0~3_combout\ : std_logic;
SIGNAL \stage16|d0~4_combout\ : std_logic;
SIGNAL \stage16|c0~0_combout\ : std_logic;
SIGNAL \stage16|b0~0_combout\ : std_logic;
SIGNAL \stage16|a0~0_combout\ : std_logic;
SIGNAL \B0[5]~input_o\ : std_logic;
SIGNAL \B0[4]~input_o\ : std_logic;
SIGNAL \A0[4]~input_o\ : std_logic;
SIGNAL \stage8|Cout~0_combout\ : std_logic;
SIGNAL \A0[5]~input_o\ : std_logic;
SIGNAL \stage9|Cout~0_combout\ : std_logic;
SIGNAL \A0[6]~input_o\ : std_logic;
SIGNAL \B0[6]~input_o\ : std_logic;
SIGNAL \stage10|Cout~0_combout\ : std_logic;
SIGNAL \B0[7]~input_o\ : std_logic;
SIGNAL \stage9|s~0_combout\ : std_logic;
SIGNAL \Cout1~0_combout\ : std_logic;
SIGNAL \A0[7]~input_o\ : std_logic;
SIGNAL \Cout1~1_combout\ : std_logic;
SIGNAL \stage13|s~2_combout\ : std_logic;
SIGNAL \stage10|s~0_combout\ : std_logic;
SIGNAL \stage14|s~combout\ : std_logic;
SIGNAL \stage8|s~combout\ : std_logic;
SIGNAL \stage15|s~combout\ : std_logic;
SIGNAL \stage16|g1~0_combout\ : std_logic;
SIGNAL \stage16|f1~0_combout\ : std_logic;
SIGNAL \stage16|e1~0_combout\ : std_logic;
SIGNAL \stage16|d1~0_combout\ : std_logic;
SIGNAL \stage16|d1~1_combout\ : std_logic;
SIGNAL \stage16|d1~2_combout\ : std_logic;
SIGNAL \stage16|c1~0_combout\ : std_logic;
SIGNAL \stage16|b1~0_combout\ : std_logic;
SIGNAL \stage16|a1~0_combout\ : std_logic;

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

-- Location: IOOBUF_X115_Y69_N2
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage16|g0~0_combout\,
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage16|f0~0_combout\,
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage16|e0~0_combout\,
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage16|d0~4_combout\,
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage16|c0~0_combout\,
	devoe => ww_devoe,
	o => \seg[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage16|b0~0_combout\,
	devoe => ww_devoe,
	o => \seg[5]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage16|a0~0_combout\,
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\seg[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage16|g1~0_combout\,
	devoe => ww_devoe,
	o => \seg[7]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\seg[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage16|f1~0_combout\,
	devoe => ww_devoe,
	o => \seg[8]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\seg[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage16|e1~0_combout\,
	devoe => ww_devoe,
	o => \seg[9]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\seg[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage16|d1~2_combout\,
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
	i => \stage16|c1~0_combout\,
	devoe => ww_devoe,
	o => \seg[11]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\seg[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage16|b1~0_combout\,
	devoe => ww_devoe,
	o => \seg[12]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\seg[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage16|a1~0_combout\,
	devoe => ww_devoe,
	o => \seg[13]~output_o\);

-- Location: IOIBUF_X115_Y14_N1
\A0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0(1),
	o => \A0[1]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\B0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0(0),
	o => \B0[0]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\A0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0(0),
	o => \A0[0]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\B0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0(1),
	o => \B0[1]~input_o\);

-- Location: LCCOMB_X114_Y19_N26
\stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Cout~0_combout\ = (\A0[1]~input_o\ & ((\B0[1]~input_o\) # ((\B0[0]~input_o\ & \A0[0]~input_o\)))) # (!\A0[1]~input_o\ & (\B0[0]~input_o\ & (\A0[0]~input_o\ & \B0[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0[1]~input_o\,
	datab => \B0[0]~input_o\,
	datac => \A0[0]~input_o\,
	datad => \B0[1]~input_o\,
	combout => \stage1|Cout~0_combout\);

-- Location: IOIBUF_X115_Y4_N15
\B0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0(2),
	o => \B0[2]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\A0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0(2),
	o => \A0[2]~input_o\);

-- Location: LCCOMB_X114_Y18_N10
\stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Cout~0_combout\ = (\stage1|Cout~0_combout\ & ((\B0[2]~input_o\) # (\A0[2]~input_o\))) # (!\stage1|Cout~0_combout\ & (\B0[2]~input_o\ & \A0[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|Cout~0_combout\,
	datac => \B0[2]~input_o\,
	datad => \A0[2]~input_o\,
	combout => \stage2|Cout~0_combout\);

-- Location: LCCOMB_X114_Y19_N28
\stage1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|s~0_combout\ = \A0[1]~input_o\ $ (\B0[1]~input_o\ $ (((\B0[0]~input_o\ & \A0[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0[1]~input_o\,
	datab => \B0[0]~input_o\,
	datac => \A0[0]~input_o\,
	datad => \B0[1]~input_o\,
	combout => \stage1|s~0_combout\);

-- Location: IOIBUF_X115_Y5_N15
\B0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0(3),
	o => \B0[3]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\A0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0(3),
	o => \A0[3]~input_o\);

-- Location: LCCOMB_X114_Y18_N6
\Cout0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout0~1_combout\ = (\stage2|Cout~0_combout\ & ((\stage1|s~0_combout\) # ((\B0[3]~input_o\) # (\A0[3]~input_o\)))) # (!\stage2|Cout~0_combout\ & ((\stage1|s~0_combout\ & ((\B0[3]~input_o\) # (\A0[3]~input_o\))) # (!\stage1|s~0_combout\ & (\B0[3]~input_o\ 
-- & \A0[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|Cout~0_combout\,
	datab => \stage1|s~0_combout\,
	datac => \B0[3]~input_o\,
	datad => \A0[3]~input_o\,
	combout => \Cout0~1_combout\);

-- Location: LCCOMB_X114_Y18_N0
\stage2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|s~0_combout\ = \stage1|Cout~0_combout\ $ (\B0[2]~input_o\ $ (\A0[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|Cout~0_combout\,
	datac => \B0[2]~input_o\,
	datad => \A0[2]~input_o\,
	combout => \stage2|s~0_combout\);

-- Location: LCCOMB_X114_Y18_N4
\Cout0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout0~0_combout\ = (\stage2|s~0_combout\ & (\stage2|Cout~0_combout\ $ (\B0[3]~input_o\ $ (\A0[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|Cout~0_combout\,
	datab => \stage2|s~0_combout\,
	datac => \B0[3]~input_o\,
	datad => \A0[3]~input_o\,
	combout => \Cout0~0_combout\);

-- Location: LCCOMB_X114_Y19_N6
\stage5|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|s~0_combout\ = \stage1|s~0_combout\ $ (((\Cout0~1_combout\) # (\Cout0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cout0~1_combout\,
	datab => \stage1|s~0_combout\,
	datad => \Cout0~0_combout\,
	combout => \stage5|s~0_combout\);

-- Location: LCCOMB_X114_Y18_N16
\stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|s~combout\ = \stage2|Cout~0_combout\ $ (\B0[3]~input_o\ $ (\A0[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|Cout~0_combout\,
	datac => \B0[3]~input_o\,
	datad => \A0[3]~input_o\,
	combout => \stage3|s~combout\);

-- Location: LCCOMB_X114_Y19_N18
\stage7|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage7|s~combout\ = (\Cout0~1_combout\ & (\stage3|s~combout\ $ (((\stage2|s~0_combout\) # (\stage1|s~0_combout\))))) # (!\Cout0~1_combout\ & (!\stage2|s~0_combout\ & (\stage3|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cout0~1_combout\,
	datab => \stage2|s~0_combout\,
	datac => \stage3|s~combout\,
	datad => \stage1|s~0_combout\,
	combout => \stage7|s~combout\);

-- Location: LCCOMB_X114_Y19_N8
\stage6|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage6|s~combout\ = \stage2|s~0_combout\ $ (((!\stage1|s~0_combout\ & ((\Cout0~0_combout\) # (\Cout0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cout0~0_combout\,
	datab => \stage2|s~0_combout\,
	datac => \Cout0~1_combout\,
	datad => \stage1|s~0_combout\,
	combout => \stage6|s~combout\);

-- Location: LCCOMB_X114_Y19_N24
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

-- Location: LCCOMB_X114_Y19_N12
\stage16|g0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage16|g0~0_combout\ = (!\stage7|s~combout\ & ((\stage5|s~0_combout\ & (\stage6|s~combout\ & \stage0|s~0_combout\)) # (!\stage5|s~0_combout\ & (!\stage6|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5|s~0_combout\,
	datab => \stage7|s~combout\,
	datac => \stage6|s~combout\,
	datad => \stage0|s~0_combout\,
	combout => \stage16|g0~0_combout\);

-- Location: LCCOMB_X114_Y19_N22
\stage16|f0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage16|f0~0_combout\ = (\stage5|s~0_combout\ & (!\stage7|s~combout\ & ((\stage0|s~0_combout\) # (!\stage6|s~combout\)))) # (!\stage5|s~0_combout\ & ((\stage7|s~combout\ & (\stage6|s~combout\)) # (!\stage7|s~combout\ & (!\stage6|s~combout\ & 
-- \stage0|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5|s~0_combout\,
	datab => \stage7|s~combout\,
	datac => \stage6|s~combout\,
	datad => \stage0|s~0_combout\,
	combout => \stage16|f0~0_combout\);

-- Location: LCCOMB_X114_Y19_N0
\stage16|e0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage16|e0~0_combout\ = (\stage5|s~0_combout\ & (!\stage7|s~combout\ & ((\stage0|s~0_combout\)))) # (!\stage5|s~0_combout\ & ((\stage6|s~combout\ & (!\stage7|s~combout\)) # (!\stage6|s~combout\ & ((\stage0|s~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5|s~0_combout\,
	datab => \stage7|s~combout\,
	datac => \stage6|s~combout\,
	datad => \stage0|s~0_combout\,
	combout => \stage16|e0~0_combout\);

-- Location: LCCOMB_X114_Y19_N10
\stage16|d0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage16|d0~2_combout\ = (!\stage0|s~0_combout\ & ((\stage5|s~0_combout\ & (\stage7|s~combout\ & !\stage6|s~combout\)) # (!\stage5|s~0_combout\ & (!\stage7|s~combout\ & \stage6|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5|s~0_combout\,
	datab => \stage7|s~combout\,
	datac => \stage6|s~combout\,
	datad => \stage0|s~0_combout\,
	combout => \stage16|d0~2_combout\);

-- Location: LCCOMB_X114_Y19_N20
\stage16|d0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage16|d0~3_combout\ = \stage2|s~0_combout\ $ (((!\Cout0~0_combout\ & (!\Cout0~1_combout\ & \stage1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cout0~0_combout\,
	datab => \stage2|s~0_combout\,
	datac => \Cout0~1_combout\,
	datad => \stage1|s~0_combout\,
	combout => \stage16|d0~3_combout\);

-- Location: LCCOMB_X114_Y19_N4
\stage16|d0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage16|d0~4_combout\ = (\stage16|d0~2_combout\) # ((!\stage16|d0~3_combout\ & (\A0[0]~input_o\ $ (\B0[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage16|d0~2_combout\,
	datab => \stage16|d0~3_combout\,
	datac => \A0[0]~input_o\,
	datad => \B0[0]~input_o\,
	combout => \stage16|d0~4_combout\);

-- Location: LCCOMB_X114_Y19_N30
\stage16|c0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage16|c0~0_combout\ = (\stage7|s~combout\ & (\stage6|s~combout\ & ((\stage5|s~0_combout\) # (!\stage0|s~0_combout\)))) # (!\stage7|s~combout\ & (\stage5|s~0_combout\ & (!\stage6|s~combout\ & !\stage0|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5|s~0_combout\,
	datab => \stage7|s~combout\,
	datac => \stage6|s~combout\,
	datad => \stage0|s~0_combout\,
	combout => \stage16|c0~0_combout\);

-- Location: LCCOMB_X114_Y19_N16
\stage16|b0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage16|b0~0_combout\ = (\stage5|s~0_combout\ & ((\stage0|s~0_combout\ & (\stage7|s~combout\)) # (!\stage0|s~0_combout\ & ((\stage6|s~combout\))))) # (!\stage5|s~0_combout\ & (\stage6|s~combout\ & (\stage7|s~combout\ $ (\stage0|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5|s~0_combout\,
	datab => \stage7|s~combout\,
	datac => \stage6|s~combout\,
	datad => \stage0|s~0_combout\,
	combout => \stage16|b0~0_combout\);

-- Location: LCCOMB_X114_Y19_N2
\stage16|a0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage16|a0~0_combout\ = (\stage5|s~0_combout\ & (\stage7|s~combout\ & (!\stage6|s~combout\ & \stage0|s~0_combout\))) # (!\stage5|s~0_combout\ & (\stage6|s~combout\ $ (((!\stage7|s~combout\ & \stage0|s~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5|s~0_combout\,
	datab => \stage7|s~combout\,
	datac => \stage6|s~combout\,
	datad => \stage0|s~0_combout\,
	combout => \stage16|a0~0_combout\);

-- Location: IOIBUF_X115_Y9_N22
\B0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0(5),
	o => \B0[5]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\B0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0(4),
	o => \B0[4]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\A0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0(4),
	o => \A0[4]~input_o\);

-- Location: LCCOMB_X114_Y18_N20
\stage8|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Cout~0_combout\ = (\B0[4]~input_o\ & ((\Cout0~1_combout\) # ((\Cout0~0_combout\) # (\A0[4]~input_o\)))) # (!\B0[4]~input_o\ & (\A0[4]~input_o\ & ((\Cout0~1_combout\) # (\Cout0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cout0~1_combout\,
	datab => \B0[4]~input_o\,
	datac => \Cout0~0_combout\,
	datad => \A0[4]~input_o\,
	combout => \stage8|Cout~0_combout\);

-- Location: IOIBUF_X115_Y11_N8
\A0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0(5),
	o => \A0[5]~input_o\);

-- Location: LCCOMB_X114_Y15_N18
\stage9|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage9|Cout~0_combout\ = (\B0[5]~input_o\ & ((\stage8|Cout~0_combout\) # (\A0[5]~input_o\))) # (!\B0[5]~input_o\ & (\stage8|Cout~0_combout\ & \A0[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B0[5]~input_o\,
	datac => \stage8|Cout~0_combout\,
	datad => \A0[5]~input_o\,
	combout => \stage9|Cout~0_combout\);

-- Location: IOIBUF_X115_Y10_N1
\A0[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0(6),
	o => \A0[6]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\B0[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0(6),
	o => \B0[6]~input_o\);

-- Location: LCCOMB_X114_Y15_N6
\stage10|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage10|Cout~0_combout\ = (\stage9|Cout~0_combout\ & ((\A0[6]~input_o\) # (\B0[6]~input_o\))) # (!\stage9|Cout~0_combout\ & (\A0[6]~input_o\ & \B0[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage9|Cout~0_combout\,
	datac => \A0[6]~input_o\,
	datad => \B0[6]~input_o\,
	combout => \stage10|Cout~0_combout\);

-- Location: IOIBUF_X89_Y73_N8
\B0[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0(7),
	o => \B0[7]~input_o\);

-- Location: LCCOMB_X114_Y15_N24
\stage9|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage9|s~0_combout\ = \B0[5]~input_o\ $ (\stage8|Cout~0_combout\ $ (\A0[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B0[5]~input_o\,
	datac => \stage8|Cout~0_combout\,
	datad => \A0[5]~input_o\,
	combout => \stage9|s~0_combout\);

-- Location: LCCOMB_X114_Y15_N4
\Cout1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout1~0_combout\ = (\stage9|s~0_combout\) # (\B0[6]~input_o\ $ (\A0[6]~input_o\ $ (\stage9|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B0[6]~input_o\,
	datab => \stage9|s~0_combout\,
	datac => \A0[6]~input_o\,
	datad => \stage9|Cout~0_combout\,
	combout => \Cout1~0_combout\);

-- Location: IOIBUF_X115_Y15_N1
\A0[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0(7),
	o => \A0[7]~input_o\);

-- Location: LCCOMB_X114_Y15_N0
\Cout1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout1~1_combout\ = (\stage10|Cout~0_combout\ & ((\B0[7]~input_o\) # ((\Cout1~0_combout\) # (\A0[7]~input_o\)))) # (!\stage10|Cout~0_combout\ & ((\B0[7]~input_o\ & ((\Cout1~0_combout\) # (\A0[7]~input_o\))) # (!\B0[7]~input_o\ & (\Cout1~0_combout\ & 
-- \A0[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage10|Cout~0_combout\,
	datab => \B0[7]~input_o\,
	datac => \Cout1~0_combout\,
	datad => \A0[7]~input_o\,
	combout => \Cout1~1_combout\);

-- Location: LCCOMB_X114_Y15_N10
\stage13|s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage13|s~2_combout\ = \B0[5]~input_o\ $ (\Cout1~1_combout\ $ (\stage8|Cout~0_combout\ $ (\A0[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B0[5]~input_o\,
	datab => \Cout1~1_combout\,
	datac => \stage8|Cout~0_combout\,
	datad => \A0[5]~input_o\,
	combout => \stage13|s~2_combout\);

-- Location: LCCOMB_X114_Y15_N26
\stage10|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage10|s~0_combout\ = \stage9|Cout~0_combout\ $ (\A0[6]~input_o\ $ (\B0[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage9|Cout~0_combout\,
	datac => \A0[6]~input_o\,
	datad => \B0[6]~input_o\,
	combout => \stage10|s~0_combout\);

-- Location: LCCOMB_X114_Y15_N12
\stage14|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage14|s~combout\ = \stage10|s~0_combout\ $ (((\Cout1~1_combout\ & !\stage9|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cout1~1_combout\,
	datac => \stage10|s~0_combout\,
	datad => \stage9|s~0_combout\,
	combout => \stage14|s~combout\);

-- Location: LCCOMB_X114_Y18_N26
\stage8|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|s~combout\ = \B0[4]~input_o\ $ (\A0[4]~input_o\ $ (((\Cout0~1_combout\) # (\Cout0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cout0~1_combout\,
	datab => \B0[4]~input_o\,
	datac => \Cout0~0_combout\,
	datad => \A0[4]~input_o\,
	combout => \stage8|s~combout\);

-- Location: LCCOMB_X114_Y15_N22
\stage15|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage15|s~combout\ = (\stage10|Cout~0_combout\ & (\B0[7]~input_o\ $ (\Cout1~0_combout\ $ (!\A0[7]~input_o\)))) # (!\stage10|Cout~0_combout\ & ((\B0[7]~input_o\ & (\Cout1~0_combout\ $ (!\A0[7]~input_o\))) # (!\B0[7]~input_o\ & (!\Cout1~0_combout\ & 
-- \A0[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage10|Cout~0_combout\,
	datab => \B0[7]~input_o\,
	datac => \Cout1~0_combout\,
	datad => \A0[7]~input_o\,
	combout => \stage15|s~combout\);

-- Location: LCCOMB_X114_Y18_N22
\stage16|g1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage16|g1~0_combout\ = (!\stage15|s~combout\ & ((\stage13|s~2_combout\ & (\stage14|s~combout\ & \stage8|s~combout\)) # (!\stage13|s~2_combout\ & (!\stage14|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage13|s~2_combout\,
	datab => \stage14|s~combout\,
	datac => \stage8|s~combout\,
	datad => \stage15|s~combout\,
	combout => \stage16|g1~0_combout\);

-- Location: LCCOMB_X114_Y18_N8
\stage16|f1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage16|f1~0_combout\ = (\stage13|s~2_combout\ & (!\stage15|s~combout\ & ((\stage8|s~combout\) # (!\stage14|s~combout\)))) # (!\stage13|s~2_combout\ & ((\stage14|s~combout\ & ((\stage15|s~combout\))) # (!\stage14|s~combout\ & (\stage8|s~combout\ & 
-- !\stage15|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage13|s~2_combout\,
	datab => \stage14|s~combout\,
	datac => \stage8|s~combout\,
	datad => \stage15|s~combout\,
	combout => \stage16|f1~0_combout\);

-- Location: LCCOMB_X114_Y18_N2
\stage16|e1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage16|e1~0_combout\ = (\stage13|s~2_combout\ & (((\stage8|s~combout\ & !\stage15|s~combout\)))) # (!\stage13|s~2_combout\ & ((\stage14|s~combout\ & ((!\stage15|s~combout\))) # (!\stage14|s~combout\ & (\stage8|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage13|s~2_combout\,
	datab => \stage14|s~combout\,
	datac => \stage8|s~combout\,
	datad => \stage15|s~combout\,
	combout => \stage16|e1~0_combout\);

-- Location: LCCOMB_X114_Y15_N16
\stage16|d1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage16|d1~0_combout\ = \stage10|s~0_combout\ $ (((!\Cout1~1_combout\ & \stage9|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cout1~1_combout\,
	datac => \stage10|s~0_combout\,
	datad => \stage9|s~0_combout\,
	combout => \stage16|d1~0_combout\);

-- Location: LCCOMB_X114_Y18_N28
\stage16|d1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage16|d1~1_combout\ = (\stage15|s~combout\ & (!\stage14|s~combout\ & \stage13|s~2_combout\)) # (!\stage15|s~combout\ & (\stage14|s~combout\ & !\stage13|s~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage15|s~combout\,
	datac => \stage14|s~combout\,
	datad => \stage13|s~2_combout\,
	combout => \stage16|d1~1_combout\);

-- Location: LCCOMB_X114_Y18_N30
\stage16|d1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage16|d1~2_combout\ = (\stage8|s~combout\ & (!\stage16|d1~0_combout\)) # (!\stage8|s~combout\ & ((\stage16|d1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage16|d1~0_combout\,
	datac => \stage8|s~combout\,
	datad => \stage16|d1~1_combout\,
	combout => \stage16|d1~2_combout\);

-- Location: LCCOMB_X114_Y18_N24
\stage16|c1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage16|c1~0_combout\ = (\stage14|s~combout\ & (\stage15|s~combout\ & ((\stage13|s~2_combout\) # (!\stage8|s~combout\)))) # (!\stage14|s~combout\ & (\stage13|s~2_combout\ & (!\stage8|s~combout\ & !\stage15|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage13|s~2_combout\,
	datab => \stage14|s~combout\,
	datac => \stage8|s~combout\,
	datad => \stage15|s~combout\,
	combout => \stage16|c1~0_combout\);

-- Location: LCCOMB_X114_Y18_N18
\stage16|b1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage16|b1~0_combout\ = (\stage13|s~2_combout\ & ((\stage8|s~combout\ & ((\stage15|s~combout\))) # (!\stage8|s~combout\ & (\stage14|s~combout\)))) # (!\stage13|s~2_combout\ & (\stage14|s~combout\ & (\stage8|s~combout\ $ (\stage15|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage13|s~2_combout\,
	datab => \stage14|s~combout\,
	datac => \stage8|s~combout\,
	datad => \stage15|s~combout\,
	combout => \stage16|b1~0_combout\);

-- Location: LCCOMB_X114_Y18_N12
\stage16|a1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage16|a1~0_combout\ = (\stage13|s~2_combout\ & (!\stage14|s~combout\ & (\stage8|s~combout\ & \stage15|s~combout\))) # (!\stage13|s~2_combout\ & (\stage14|s~combout\ $ (((\stage8|s~combout\ & !\stage15|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage13|s~2_combout\,
	datab => \stage14|s~combout\,
	datac => \stage8|s~combout\,
	datad => \stage15|s~combout\,
	combout => \stage16|a1~0_combout\);

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


