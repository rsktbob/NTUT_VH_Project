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

-- DATE "11/15/2022 22:55:43"

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

ENTITY 	lab6 IS
    PORT (
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	control : IN std_logic_vector(3 DOWNTO 0);
	s : OUT std_logic_vector(7 DOWNTO 0)
	);
END lab6;

-- Design Ports Information
-- s[0]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[2]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[3]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[1]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_control : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(7 DOWNTO 0);
SIGNAL \s[0]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \s[4]~output_o\ : std_logic;
SIGNAL \s[5]~output_o\ : std_logic;
SIGNAL \s[6]~output_o\ : std_logic;
SIGNAL \s[7]~output_o\ : std_logic;
SIGNAL \control[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \control[2]~input_o\ : std_logic;
SIGNAL \bt[0]~0_combout\ : std_logic;
SIGNAL \control[3]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \at[0]~0_combout\ : std_logic;
SIGNAL \control[0]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \bt[7]~1_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \at[7]~1_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \at[6]~2_combout\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \bt[6]~2_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \at[5]~3_combout\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \bt[5]~3_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \at[4]~4_combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \bt[4]~4_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \bt[3]~5_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \at[3]~5_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \bt[2]~6_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \at[2]~6_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \at[1]~7_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \bt[1]~7_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
ww_b <= b;
ww_control <= control;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X3_Y0_N16
\s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \s[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \s[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => \s[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \s[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\s[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \s[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\s[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \s[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\s[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \s[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\s[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \s[7]~output_o\);

-- Location: IOIBUF_X9_Y0_N8
\control[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(1),
	o => \control[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\control[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(2),
	o => \control[2]~input_o\);

-- Location: LCCOMB_X5_Y4_N8
\bt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bt[0]~0_combout\ = \b[0]~input_o\ $ (\control[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[0]~input_o\,
	datad => \control[2]~input_o\,
	combout => \bt[0]~0_combout\);

-- Location: IOIBUF_X0_Y4_N1
\control[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(3),
	o => \control[3]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X7_Y4_N24
\at[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[0]~0_combout\ = \control[3]~input_o\ $ (\a[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control[3]~input_o\,
	datad => \a[0]~input_o\,
	combout => \at[0]~0_combout\);

-- Location: IOIBUF_X0_Y4_N22
\control[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(0),
	o => \control[0]~input_o\);

-- Location: LCCOMB_X6_Y4_N0
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\bt[0]~0_combout\ & ((\control[0]~input_o\) # ((\at[0]~0_combout\ & !\control[1]~input_o\)))) # (!\bt[0]~0_combout\ & (\control[0]~input_o\ & ((\at[0]~0_combout\) # (\control[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt[0]~0_combout\,
	datab => \at[0]~0_combout\,
	datac => \control[0]~input_o\,
	datad => \control[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X6_Y4_N12
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY(\control[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control[2]~input_o\,
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X6_Y4_N14
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\bt[0]~0_combout\ & ((\at[0]~0_combout\ & (\Add0~1_cout\ & VCC)) # (!\at[0]~0_combout\ & (!\Add0~1_cout\)))) # (!\bt[0]~0_combout\ & ((\at[0]~0_combout\ & (!\Add0~1_cout\)) # (!\at[0]~0_combout\ & ((\Add0~1_cout\) # (GND)))))
-- \Add0~3\ = CARRY((\bt[0]~0_combout\ & (!\at[0]~0_combout\ & !\Add0~1_cout\)) # (!\bt[0]~0_combout\ & ((!\Add0~1_cout\) # (!\at[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bt[0]~0_combout\,
	datab => \at[0]~0_combout\,
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: IOIBUF_X1_Y0_N22
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: LCCOMB_X5_Y4_N18
\bt[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bt[7]~1_combout\ = \b[7]~input_o\ $ (\control[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[7]~input_o\,
	datad => \control[2]~input_o\,
	combout => \bt[7]~1_combout\);

-- Location: IOIBUF_X11_Y0_N1
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X7_Y4_N18
\at[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[7]~1_combout\ = \control[3]~input_o\ $ (\a[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control[3]~input_o\,
	datad => \a[7]~input_o\,
	combout => \at[7]~1_combout\);

-- Location: IOIBUF_X0_Y6_N1
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X5_Y4_N4
\at[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[6]~2_combout\ = \control[3]~input_o\ $ (\a[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[3]~input_o\,
	datac => \a[6]~input_o\,
	combout => \at[6]~2_combout\);

-- Location: IOIBUF_X5_Y0_N15
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: LCCOMB_X5_Y4_N6
\bt[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bt[6]~2_combout\ = \control[2]~input_o\ $ (\b[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[2]~input_o\,
	datad => \b[6]~input_o\,
	combout => \bt[6]~2_combout\);

-- Location: IOIBUF_X0_Y4_N8
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X5_Y4_N16
\at[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[5]~3_combout\ = \control[3]~input_o\ $ (\a[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[3]~input_o\,
	datad => \a[5]~input_o\,
	combout => \at[5]~3_combout\);

-- Location: IOIBUF_X5_Y0_N8
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: LCCOMB_X5_Y4_N2
\bt[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bt[5]~3_combout\ = \control[2]~input_o\ $ (\b[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[2]~input_o\,
	datac => \b[5]~input_o\,
	combout => \bt[5]~3_combout\);

-- Location: IOIBUF_X7_Y0_N8
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X7_Y4_N4
\at[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[4]~4_combout\ = \a[4]~input_o\ $ (\control[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datac => \control[3]~input_o\,
	combout => \at[4]~4_combout\);

-- Location: IOIBUF_X0_Y7_N8
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: LCCOMB_X5_Y4_N12
\bt[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bt[4]~4_combout\ = \b[4]~input_o\ $ (\control[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datad => \control[2]~input_o\,
	combout => \bt[4]~4_combout\);

-- Location: IOIBUF_X9_Y0_N15
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X6_Y4_N10
\bt[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bt[3]~5_combout\ = \b[3]~input_o\ $ (\control[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datac => \control[2]~input_o\,
	combout => \bt[3]~5_combout\);

-- Location: IOIBUF_X13_Y0_N22
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X7_Y4_N22
\at[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[3]~5_combout\ = \control[3]~input_o\ $ (\a[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control[3]~input_o\,
	datad => \a[3]~input_o\,
	combout => \at[3]~5_combout\);

-- Location: IOIBUF_X9_Y0_N22
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X6_Y4_N4
\bt[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bt[2]~6_combout\ = \control[2]~input_o\ $ (\b[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control[2]~input_o\,
	datad => \b[2]~input_o\,
	combout => \bt[2]~6_combout\);

-- Location: IOIBUF_X11_Y0_N22
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X7_Y4_N16
\at[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[2]~6_combout\ = \control[3]~input_o\ $ (\a[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control[3]~input_o\,
	datad => \a[2]~input_o\,
	combout => \at[2]~6_combout\);

-- Location: IOIBUF_X11_Y0_N8
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X7_Y4_N2
\at[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[1]~7_combout\ = \control[3]~input_o\ $ (\a[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control[3]~input_o\,
	datad => \a[1]~input_o\,
	combout => \at[1]~7_combout\);

-- Location: IOIBUF_X5_Y0_N22
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X5_Y4_N22
\bt[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bt[1]~7_combout\ = \control[2]~input_o\ $ (\b[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[2]~input_o\,
	datad => \b[1]~input_o\,
	combout => \bt[1]~7_combout\);

-- Location: LCCOMB_X6_Y4_N16
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\at[1]~7_combout\ $ (\bt[1]~7_combout\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\at[1]~7_combout\ & ((\bt[1]~7_combout\) # (!\Add0~3\))) # (!\at[1]~7_combout\ & (\bt[1]~7_combout\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[1]~7_combout\,
	datab => \bt[1]~7_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X6_Y4_N18
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\bt[2]~6_combout\ & ((\at[2]~6_combout\ & (\Add0~5\ & VCC)) # (!\at[2]~6_combout\ & (!\Add0~5\)))) # (!\bt[2]~6_combout\ & ((\at[2]~6_combout\ & (!\Add0~5\)) # (!\at[2]~6_combout\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\bt[2]~6_combout\ & (!\at[2]~6_combout\ & !\Add0~5\)) # (!\bt[2]~6_combout\ & ((!\Add0~5\) # (!\at[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bt[2]~6_combout\,
	datab => \at[2]~6_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X6_Y4_N20
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\bt[3]~5_combout\ $ (\at[3]~5_combout\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\bt[3]~5_combout\ & ((\at[3]~5_combout\) # (!\Add0~7\))) # (!\bt[3]~5_combout\ & (\at[3]~5_combout\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bt[3]~5_combout\,
	datab => \at[3]~5_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X6_Y4_N22
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\at[4]~4_combout\ & ((\bt[4]~4_combout\ & (\Add0~9\ & VCC)) # (!\bt[4]~4_combout\ & (!\Add0~9\)))) # (!\at[4]~4_combout\ & ((\bt[4]~4_combout\ & (!\Add0~9\)) # (!\bt[4]~4_combout\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\at[4]~4_combout\ & (!\bt[4]~4_combout\ & !\Add0~9\)) # (!\at[4]~4_combout\ & ((!\Add0~9\) # (!\bt[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[4]~4_combout\,
	datab => \bt[4]~4_combout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X6_Y4_N24
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\at[5]~3_combout\ $ (\bt[5]~3_combout\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\at[5]~3_combout\ & ((\bt[5]~3_combout\) # (!\Add0~11\))) # (!\at[5]~3_combout\ & (\bt[5]~3_combout\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[5]~3_combout\,
	datab => \bt[5]~3_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X6_Y4_N26
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\at[6]~2_combout\ & ((\bt[6]~2_combout\ & (\Add0~13\ & VCC)) # (!\bt[6]~2_combout\ & (!\Add0~13\)))) # (!\at[6]~2_combout\ & ((\bt[6]~2_combout\ & (!\Add0~13\)) # (!\bt[6]~2_combout\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\at[6]~2_combout\ & (!\bt[6]~2_combout\ & !\Add0~13\)) # (!\at[6]~2_combout\ & ((!\Add0~13\) # (!\bt[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[6]~2_combout\,
	datab => \bt[6]~2_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X6_Y4_N28
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = \bt[7]~1_combout\ $ (\Add0~15\ $ (!\at[7]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bt[7]~1_combout\,
	datad => \at[7]~1_combout\,
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X6_Y4_N30
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\control[1]~input_o\ & ((\Mux7~0_combout\ & ((\Add0~16_combout\))) # (!\Mux7~0_combout\ & (\Add0~2_combout\)))) # (!\control[1]~input_o\ & (\Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datab => \Mux7~0_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~16_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X7_Y4_N20
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\control[1]~input_o\ & ((\at[1]~7_combout\ & ((\control[0]~input_o\) # (\bt[1]~7_combout\))) # (!\at[1]~7_combout\ & (\control[0]~input_o\ & \bt[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[1]~7_combout\,
	datab => \control[0]~input_o\,
	datac => \bt[1]~7_combout\,
	datad => \control[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X7_Y4_N30
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\) # ((\control[1]~input_o\ & (!\control[0]~input_o\ & \Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datab => \control[0]~input_o\,
	datac => \Add0~4_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X7_Y4_N8
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\control[1]~input_o\ & ((\control[0]~input_o\ & ((\bt[2]~6_combout\) # (\at[2]~6_combout\))) # (!\control[0]~input_o\ & (\bt[2]~6_combout\ & \at[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datab => \control[0]~input_o\,
	datac => \bt[2]~6_combout\,
	datad => \at[2]~6_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X7_Y4_N26
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\) # ((\control[1]~input_o\ & (\Add0~6_combout\ & !\control[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datab => \Add0~6_combout\,
	datac => \Mux5~0_combout\,
	datad => \control[0]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X6_Y4_N8
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\control[1]~input_o\ & ((\bt[3]~5_combout\ & ((\at[3]~5_combout\) # (\control[0]~input_o\))) # (!\bt[3]~5_combout\ & (\at[3]~5_combout\ & \control[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt[3]~5_combout\,
	datab => \at[3]~5_combout\,
	datac => \control[0]~input_o\,
	datad => \control[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X5_Y4_N24
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\) # ((!\control[0]~input_o\ & (\Add0~8_combout\ & \control[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[0]~input_o\,
	datab => \Mux4~0_combout\,
	datac => \Add0~8_combout\,
	datad => \control[1]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X6_Y4_N2
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\control[1]~input_o\ & ((\at[4]~4_combout\ & ((\bt[4]~4_combout\) # (\control[0]~input_o\))) # (!\at[4]~4_combout\ & (\bt[4]~4_combout\ & \control[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[4]~4_combout\,
	datab => \bt[4]~4_combout\,
	datac => \control[0]~input_o\,
	datad => \control[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X5_Y4_N26
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\) # ((\Add0~10_combout\ & (!\control[0]~input_o\ & \control[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Add0~10_combout\,
	datac => \control[0]~input_o\,
	datad => \control[1]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X5_Y4_N28
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\control[1]~input_o\ & ((\bt[5]~3_combout\ & ((\control[0]~input_o\) # (\at[5]~3_combout\))) # (!\bt[5]~3_combout\ & (\control[0]~input_o\ & \at[5]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datab => \bt[5]~3_combout\,
	datac => \control[0]~input_o\,
	datad => \at[5]~3_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X5_Y4_N30
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\) # ((\control[1]~input_o\ & (!\control[0]~input_o\ & \Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datab => \Mux2~0_combout\,
	datac => \control[0]~input_o\,
	datad => \Add0~12_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X5_Y4_N0
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\control[1]~input_o\ & ((\bt[6]~2_combout\ & ((\at[6]~2_combout\) # (\control[0]~input_o\))) # (!\bt[6]~2_combout\ & (\at[6]~2_combout\ & \control[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt[6]~2_combout\,
	datab => \at[6]~2_combout\,
	datac => \control[0]~input_o\,
	datad => \control[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X5_Y4_N10
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\) # ((\Add0~14_combout\ & (!\control[0]~input_o\ & \control[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Mux1~0_combout\,
	datac => \control[0]~input_o\,
	datad => \control[1]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X6_Y4_N6
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\control[1]~input_o\ & ((\bt[7]~1_combout\ & ((\control[0]~input_o\) # (\at[7]~1_combout\))) # (!\bt[7]~1_combout\ & (\control[0]~input_o\ & \at[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datab => \bt[7]~1_combout\,
	datac => \control[0]~input_o\,
	datad => \at[7]~1_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X7_Y4_N12
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\) # ((\Add0~16_combout\ & (!\control[0]~input_o\ & \control[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \control[0]~input_o\,
	datac => \Mux0~0_combout\,
	datad => \control[1]~input_o\,
	combout => \Mux0~1_combout\);

ww_s(0) <= \s[0]~output_o\;

ww_s(1) <= \s[1]~output_o\;

ww_s(2) <= \s[2]~output_o\;

ww_s(3) <= \s[3]~output_o\;

ww_s(4) <= \s[4]~output_o\;

ww_s(5) <= \s[5]~output_o\;

ww_s(6) <= \s[6]~output_o\;

ww_s(7) <= \s[7]~output_o\;
END structure;


