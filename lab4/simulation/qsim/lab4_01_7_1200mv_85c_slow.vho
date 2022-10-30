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

-- DATE "10/18/2022 16:59:52"

-- 
-- Device: Altera EP4CE40F29C7 Package FBGA780
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

ENTITY 	lab4_01 IS
    PORT (
	Cin : IN std_logic;
	a : IN std_logic;
	b : IN std_logic;
	less : IN std_logic;
	Ctrol : IN std_logic_vector(3 DOWNTO 0);
	Result : OUT std_logic;
	Cout : OUT std_logic
	);
END lab4_01;

-- Design Ports Information
-- Result	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ctrol[3]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ctrol[2]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ctrol[1]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ctrol[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- less	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab4_01 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_less : std_logic;
SIGNAL ww_Ctrol : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Result : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL \Result~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Ctrol[0]~input_o\ : std_logic;
SIGNAL \Ctrol[1]~input_o\ : std_logic;
SIGNAL \Ctrol[3]~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \stage0|at~0_combout\ : std_logic;
SIGNAL \Ctrol[2]~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \stage0|bt~0_combout\ : std_logic;
SIGNAL \stage0|Mux0~0_combout\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \stage0|Result~4_combout\ : std_logic;
SIGNAL \less~input_o\ : std_logic;
SIGNAL \stage0|Mux0~1_combout\ : std_logic;
SIGNAL \stage0|Cout~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Cin <= Cin;
ww_a <= a;
ww_b <= b;
ww_less <= less;
ww_Ctrol <= Ctrol;
Result <= ww_Result;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y0_N9
\Result~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage0|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage0|Cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOIBUF_X3_Y0_N15
\Ctrol[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ctrol(0),
	o => \Ctrol[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\Ctrol[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ctrol(1),
	o => \Ctrol[1]~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\Ctrol[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ctrol(3),
	o => \Ctrol[3]~input_o\);

-- Location: IOIBUF_X1_Y0_N29
\a~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: LCCOMB_X2_Y1_N8
\stage0|at~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|at~0_combout\ = \Ctrol[3]~input_o\ $ (\a~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctrol[3]~input_o\,
	datad => \a~input_o\,
	combout => \stage0|at~0_combout\);

-- Location: IOIBUF_X3_Y0_N1
\Ctrol[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ctrol(2),
	o => \Ctrol[2]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\b~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: LCCOMB_X3_Y1_N24
\stage0|bt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|bt~0_combout\ = \Ctrol[2]~input_o\ $ (\b~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctrol[2]~input_o\,
	datad => \b~input_o\,
	combout => \stage0|bt~0_combout\);

-- Location: LCCOMB_X2_Y1_N10
\stage0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux0~0_combout\ = (\Ctrol[0]~input_o\ & ((\Ctrol[1]~input_o\) # ((\stage0|at~0_combout\) # (\stage0|bt~0_combout\)))) # (!\Ctrol[0]~input_o\ & (!\Ctrol[1]~input_o\ & (\stage0|at~0_combout\ & \stage0|bt~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrol[0]~input_o\,
	datab => \Ctrol[1]~input_o\,
	datac => \stage0|at~0_combout\,
	datad => \stage0|bt~0_combout\,
	combout => \stage0|Mux0~0_combout\);

-- Location: IOIBUF_X3_Y0_N22
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X2_Y1_N24
\stage0|Result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Result~4_combout\ = \a~input_o\ $ (\Ctrol[3]~input_o\ $ (\Cin~input_o\ $ (\stage0|bt~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datab => \Ctrol[3]~input_o\,
	datac => \Cin~input_o\,
	datad => \stage0|bt~0_combout\,
	combout => \stage0|Result~4_combout\);

-- Location: IOIBUF_X3_Y0_N29
\less~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_less,
	o => \less~input_o\);

-- Location: LCCOMB_X2_Y1_N28
\stage0|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux0~1_combout\ = (\stage0|Mux0~0_combout\ & (((\less~input_o\) # (!\Ctrol[1]~input_o\)))) # (!\stage0|Mux0~0_combout\ & (\stage0|Result~4_combout\ & (\Ctrol[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Mux0~0_combout\,
	datab => \stage0|Result~4_combout\,
	datac => \Ctrol[1]~input_o\,
	datad => \less~input_o\,
	combout => \stage0|Mux0~1_combout\);

-- Location: LCCOMB_X2_Y1_N30
\stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Cout~0_combout\ = (\Cin~input_o\ & ((\stage0|bt~0_combout\) # (\a~input_o\ $ (\Ctrol[3]~input_o\)))) # (!\Cin~input_o\ & (\stage0|bt~0_combout\ & (\a~input_o\ $ (\Ctrol[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datab => \Ctrol[3]~input_o\,
	datac => \Cin~input_o\,
	datad => \stage0|bt~0_combout\,
	combout => \stage0|Cout~0_combout\);

ww_Result <= \Result~output_o\;

ww_Cout <= \Cout~output_o\;
END structure;


