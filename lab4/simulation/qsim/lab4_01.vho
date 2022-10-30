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

-- DATE "10/20/2022 22:03:19"

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
	A : IN std_logic_vector(6 DOWNTO 0);
	B : IN std_logic_vector(6 DOWNTO 0);
	Ctrol : IN std_logic_vector(3 DOWNTO 0);
	seg : OUT std_logic_vector(13 DOWNTO 0);
	Result : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END lab4_01;

-- Design Ports Information
-- seg[0]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[7]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[8]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[10]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[11]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[12]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[13]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[0]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[4]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[6]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ctrol[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ctrol[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ctrol[2]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ctrol[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_A : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Ctrol : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seg : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_Result : std_logic_vector(6 DOWNTO 0);
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
SIGNAL \Result[0]~output_o\ : std_logic;
SIGNAL \Result[1]~output_o\ : std_logic;
SIGNAL \Result[2]~output_o\ : std_logic;
SIGNAL \Result[3]~output_o\ : std_logic;
SIGNAL \Result[4]~output_o\ : std_logic;
SIGNAL \Result[5]~output_o\ : std_logic;
SIGNAL \Result[6]~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Ctrol[3]~input_o\ : std_logic;
SIGNAL \Ctrol[0]~input_o\ : std_logic;
SIGNAL \Ctrol[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \G1:0:G3:compute2|Mux0~1_combout\ : std_logic;
SIGNAL \Ctrol[2]~input_o\ : std_logic;
SIGNAL \G1:0:G3:compute2|Mux0~2_combout\ : std_logic;
SIGNAL \G1:0:G3:compute2|set~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \G1:5:G2:compute1|bt~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \G1:4:G2:compute1|bt~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \G1:2:G2:compute1|bt~0_combout\ : std_logic;
SIGNAL \G1:0:G3:compute2|Cout~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \G1:1:G2:compute1|bt~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \G1:1:G2:compute1|Cout~0_combout\ : std_logic;
SIGNAL \G1:2:G2:compute1|Cout~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \G1:3:G2:compute1|bt~0_combout\ : std_logic;
SIGNAL \G1:3:G2:compute1|Cout~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \G1:4:G2:compute1|Cout~0_combout\ : std_logic;
SIGNAL \G1:5:G2:compute1|Cout~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \G1:6:G2:compute1|bt~0_combout\ : std_logic;
SIGNAL \G1:6:G2:compute1|set~combout\ : std_logic;
SIGNAL \G1:0:G3:compute2|Mux0~0_combout\ : std_logic;
SIGNAL \G1:2:G2:compute1|Mux0~0_combout\ : std_logic;
SIGNAL \G1:2:G2:compute1|Mux0~1_combout\ : std_logic;
SIGNAL \G1:3:G2:compute1|Mux0~0_combout\ : std_logic;
SIGNAL \G1:3:G2:compute1|Mux0~1_combout\ : std_logic;
SIGNAL \G1:1:G2:compute1|Mux0~0_combout\ : std_logic;
SIGNAL \G1:1:G2:compute1|Mux0~1_combout\ : std_logic;
SIGNAL \stage1|g0~0_combout\ : std_logic;
SIGNAL \stage1|f0~0_combout\ : std_logic;
SIGNAL \stage1|e0~0_combout\ : std_logic;
SIGNAL \stage1|d0~0_combout\ : std_logic;
SIGNAL \stage1|c0~0_combout\ : std_logic;
SIGNAL \stage1|b0~0_combout\ : std_logic;
SIGNAL \stage1|a0~0_combout\ : std_logic;
SIGNAL \G1:6:G2:compute1|Mux0~0_combout\ : std_logic;
SIGNAL \G1:6:G2:compute1|Mux0~1_combout\ : std_logic;
SIGNAL \G1:5:G2:compute1|Mux0~0_combout\ : std_logic;
SIGNAL \G1:5:G2:compute1|Mux0~1_combout\ : std_logic;
SIGNAL \G1:6:G2:compute1|Cout~0_combout\ : std_logic;
SIGNAL \G1:4:G2:compute1|Mux0~0_combout\ : std_logic;
SIGNAL \G1:4:G2:compute1|Mux0~1_combout\ : std_logic;
SIGNAL \stage1|g1~0_combout\ : std_logic;
SIGNAL \stage1|f1~0_combout\ : std_logic;
SIGNAL \stage1|e1~0_combout\ : std_logic;
SIGNAL \stage1|d1~0_combout\ : std_logic;
SIGNAL \stage1|c1~0_combout\ : std_logic;
SIGNAL \stage1|b1~0_combout\ : std_logic;
SIGNAL \stage1|a1~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Ctrol <= Ctrol;
seg <= ww_seg;
Result <= ww_Result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X43_Y43_N23
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|g0~0_combout\,
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOOBUF_X38_Y43_N16
\seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|f0~0_combout\,
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X43_Y43_N9
\seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|e0~0_combout\,
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X41_Y43_N2
\seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|d0~0_combout\,
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X41_Y43_N9
\seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|c0~0_combout\,
	devoe => ww_devoe,
	o => \seg[4]~output_o\);

-- Location: IOOBUF_X38_Y43_N30
\seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|b0~0_combout\,
	devoe => ww_devoe,
	o => \seg[5]~output_o\);

-- Location: IOOBUF_X43_Y43_N2
\seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|a0~0_combout\,
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

-- Location: IOOBUF_X22_Y43_N30
\seg[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|g1~0_combout\,
	devoe => ww_devoe,
	o => \seg[7]~output_o\);

-- Location: IOOBUF_X22_Y43_N16
\seg[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|f1~0_combout\,
	devoe => ww_devoe,
	o => \seg[8]~output_o\);

-- Location: IOOBUF_X25_Y43_N9
\seg[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|e1~0_combout\,
	devoe => ww_devoe,
	o => \seg[9]~output_o\);

-- Location: IOOBUF_X25_Y43_N2
\seg[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|d1~0_combout\,
	devoe => ww_devoe,
	o => \seg[10]~output_o\);

-- Location: IOOBUF_X25_Y43_N16
\seg[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|c1~0_combout\,
	devoe => ww_devoe,
	o => \seg[11]~output_o\);

-- Location: IOOBUF_X22_Y43_N9
\seg[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|b1~0_combout\,
	devoe => ww_devoe,
	o => \seg[12]~output_o\);

-- Location: IOOBUF_X22_Y43_N2
\seg[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|a1~0_combout\,
	devoe => ww_devoe,
	o => \seg[13]~output_o\);

-- Location: IOOBUF_X38_Y43_N2
\Result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G1:0:G3:compute2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Result[0]~output_o\);

-- Location: IOOBUF_X38_Y43_N9
\Result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G1:1:G2:compute1|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[1]~output_o\);

-- Location: IOOBUF_X43_Y43_N30
\Result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G1:2:G2:compute1|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[2]~output_o\);

-- Location: IOOBUF_X38_Y43_N23
\Result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G1:3:G2:compute1|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[3]~output_o\);

-- Location: IOOBUF_X27_Y43_N16
\Result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G1:4:G2:compute1|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[4]~output_o\);

-- Location: IOOBUF_X27_Y43_N30
\Result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G1:5:G2:compute1|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[5]~output_o\);

-- Location: IOOBUF_X27_Y43_N23
\Result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G1:6:G2:compute1|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[6]~output_o\);

-- Location: IOIBUF_X29_Y43_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X27_Y43_N8
\Ctrol[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ctrol(3),
	o => \Ctrol[3]~input_o\);

-- Location: IOIBUF_X32_Y43_N8
\Ctrol[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ctrol(0),
	o => \Ctrol[0]~input_o\);

-- Location: IOIBUF_X32_Y43_N1
\Ctrol[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ctrol(1),
	o => \Ctrol[1]~input_o\);

-- Location: IOIBUF_X29_Y43_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X29_Y42_N16
\G1:0:G3:compute2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:0:G3:compute2|Mux0~1_combout\ = (\Ctrol[1]~input_o\ & (((\Ctrol[0]~input_o\)))) # (!\Ctrol[1]~input_o\ & (\Ctrol[3]~input_o\ $ (((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrol[3]~input_o\,
	datab => \Ctrol[0]~input_o\,
	datac => \Ctrol[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \G1:0:G3:compute2|Mux0~1_combout\);

-- Location: IOIBUF_X27_Y43_N1
\Ctrol[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ctrol(2),
	o => \Ctrol[2]~input_o\);

-- Location: LCCOMB_X29_Y42_N10
\G1:0:G3:compute2|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:0:G3:compute2|Mux0~2_combout\ = (\G1:0:G3:compute2|Mux0~1_combout\ & ((\Ctrol[0]~input_o\) # (\B[0]~input_o\ $ (\Ctrol[2]~input_o\)))) # (!\G1:0:G3:compute2|Mux0~1_combout\ & (\Ctrol[0]~input_o\ & (\B[0]~input_o\ $ (\Ctrol[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \G1:0:G3:compute2|Mux0~1_combout\,
	datac => \Ctrol[2]~input_o\,
	datad => \Ctrol[0]~input_o\,
	combout => \G1:0:G3:compute2|Mux0~2_combout\);

-- Location: LCCOMB_X29_Y42_N8
\G1:0:G3:compute2|set~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:0:G3:compute2|set~0_combout\ = \B[0]~input_o\ $ (\Ctrol[3]~input_o\ $ (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Ctrol[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \G1:0:G3:compute2|set~0_combout\);

-- Location: IOIBUF_X22_Y43_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X29_Y42_N12
\G1:5:G2:compute1|bt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:5:G2:compute1|bt~0_combout\ = \B[5]~input_o\ $ (\Ctrol[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \Ctrol[2]~input_o\,
	combout => \G1:5:G2:compute1|bt~0_combout\);

-- Location: IOIBUF_X29_Y43_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X32_Y43_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X33_Y42_N12
\G1:4:G2:compute1|bt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:4:G2:compute1|bt~0_combout\ = \Ctrol[2]~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrol[2]~input_o\,
	datad => \B[4]~input_o\,
	combout => \G1:4:G2:compute1|bt~0_combout\);

-- Location: IOIBUF_X32_Y43_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X32_Y43_N29
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X36_Y43_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X33_Y42_N4
\G1:2:G2:compute1|bt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:2:G2:compute1|bt~0_combout\ = \Ctrol[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrol[2]~input_o\,
	datac => \B[2]~input_o\,
	combout => \G1:2:G2:compute1|bt~0_combout\);

-- Location: LCCOMB_X29_Y42_N26
\G1:0:G3:compute2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:0:G3:compute2|Cout~0_combout\ = (\B[0]~input_o\ & (\Ctrol[3]~input_o\ $ (((\A[0]~input_o\))))) # (!\B[0]~input_o\ & (((\Ctrol[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrol[3]~input_o\,
	datab => \Ctrol[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \G1:0:G3:compute2|Cout~0_combout\);

-- Location: IOIBUF_X36_Y43_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X33_Y42_N16
\G1:1:G2:compute1|bt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:1:G2:compute1|bt~0_combout\ = \Ctrol[2]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrol[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \G1:1:G2:compute1|bt~0_combout\);

-- Location: IOIBUF_X36_Y43_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X33_Y42_N18
\G1:1:G2:compute1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:1:G2:compute1|Cout~0_combout\ = (\G1:0:G3:compute2|Cout~0_combout\ & ((\G1:1:G2:compute1|bt~0_combout\) # (\A[1]~input_o\ $ (\Ctrol[3]~input_o\)))) # (!\G1:0:G3:compute2|Cout~0_combout\ & (\G1:1:G2:compute1|bt~0_combout\ & (\A[1]~input_o\ $ 
-- (\Ctrol[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:0:G3:compute2|Cout~0_combout\,
	datab => \G1:1:G2:compute1|bt~0_combout\,
	datac => \A[1]~input_o\,
	datad => \Ctrol[3]~input_o\,
	combout => \G1:1:G2:compute1|Cout~0_combout\);

-- Location: LCCOMB_X33_Y42_N30
\G1:2:G2:compute1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:2:G2:compute1|Cout~0_combout\ = (\G1:2:G2:compute1|bt~0_combout\ & ((\G1:1:G2:compute1|Cout~0_combout\) # (\Ctrol[3]~input_o\ $ (\A[2]~input_o\)))) # (!\G1:2:G2:compute1|bt~0_combout\ & (\G1:1:G2:compute1|Cout~0_combout\ & (\Ctrol[3]~input_o\ $ 
-- (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrol[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \G1:2:G2:compute1|bt~0_combout\,
	datad => \G1:1:G2:compute1|Cout~0_combout\,
	combout => \G1:2:G2:compute1|Cout~0_combout\);

-- Location: IOIBUF_X41_Y43_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X33_Y42_N24
\G1:3:G2:compute1|bt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:3:G2:compute1|bt~0_combout\ = \Ctrol[2]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrol[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \G1:3:G2:compute1|bt~0_combout\);

-- Location: LCCOMB_X33_Y42_N2
\G1:3:G2:compute1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:3:G2:compute1|Cout~0_combout\ = (\G1:2:G2:compute1|Cout~0_combout\ & ((\G1:3:G2:compute1|bt~0_combout\) # (\Ctrol[3]~input_o\ $ (\A[3]~input_o\)))) # (!\G1:2:G2:compute1|Cout~0_combout\ & (\G1:3:G2:compute1|bt~0_combout\ & (\Ctrol[3]~input_o\ $ 
-- (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrol[3]~input_o\,
	datab => \A[3]~input_o\,
	datac => \G1:2:G2:compute1|Cout~0_combout\,
	datad => \G1:3:G2:compute1|bt~0_combout\,
	combout => \G1:3:G2:compute1|Cout~0_combout\);

-- Location: IOIBUF_X36_Y43_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X33_Y42_N22
\G1:4:G2:compute1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:4:G2:compute1|Cout~0_combout\ = (\G1:4:G2:compute1|bt~0_combout\ & ((\G1:3:G2:compute1|Cout~0_combout\) # (\Ctrol[3]~input_o\ $ (\A[4]~input_o\)))) # (!\G1:4:G2:compute1|bt~0_combout\ & (\G1:3:G2:compute1|Cout~0_combout\ & (\Ctrol[3]~input_o\ $ 
-- (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:4:G2:compute1|bt~0_combout\,
	datab => \G1:3:G2:compute1|Cout~0_combout\,
	datac => \Ctrol[3]~input_o\,
	datad => \A[4]~input_o\,
	combout => \G1:4:G2:compute1|Cout~0_combout\);

-- Location: LCCOMB_X29_Y42_N6
\G1:5:G2:compute1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:5:G2:compute1|Cout~0_combout\ = (\G1:5:G2:compute1|bt~0_combout\ & ((\G1:4:G2:compute1|Cout~0_combout\) # (\A[5]~input_o\ $ (\Ctrol[3]~input_o\)))) # (!\G1:5:G2:compute1|bt~0_combout\ & (\G1:4:G2:compute1|Cout~0_combout\ & (\A[5]~input_o\ $ 
-- (\Ctrol[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:5:G2:compute1|bt~0_combout\,
	datab => \A[5]~input_o\,
	datac => \Ctrol[3]~input_o\,
	datad => \G1:4:G2:compute1|Cout~0_combout\,
	combout => \G1:5:G2:compute1|Cout~0_combout\);

-- Location: IOIBUF_X25_Y43_N29
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X25_Y43_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X29_Y42_N24
\G1:6:G2:compute1|bt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:6:G2:compute1|bt~0_combout\ = \B[6]~input_o\ $ (\Ctrol[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datac => \Ctrol[2]~input_o\,
	combout => \G1:6:G2:compute1|bt~0_combout\);

-- Location: LCCOMB_X29_Y42_N18
\G1:6:G2:compute1|set\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:6:G2:compute1|set~combout\ = \G1:5:G2:compute1|Cout~0_combout\ $ (\A[6]~input_o\ $ (\Ctrol[3]~input_o\ $ (\G1:6:G2:compute1|bt~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:5:G2:compute1|Cout~0_combout\,
	datab => \A[6]~input_o\,
	datac => \Ctrol[3]~input_o\,
	datad => \G1:6:G2:compute1|bt~0_combout\,
	combout => \G1:6:G2:compute1|set~combout\);

-- Location: LCCOMB_X29_Y42_N4
\G1:0:G3:compute2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:0:G3:compute2|Mux0~0_combout\ = (\G1:0:G3:compute2|Mux0~2_combout\ & (((\G1:6:G2:compute1|set~combout\) # (!\Ctrol[1]~input_o\)))) # (!\G1:0:G3:compute2|Mux0~2_combout\ & (\G1:0:G3:compute2|set~0_combout\ & (\Ctrol[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:0:G3:compute2|Mux0~2_combout\,
	datab => \G1:0:G3:compute2|set~0_combout\,
	datac => \Ctrol[1]~input_o\,
	datad => \G1:6:G2:compute1|set~combout\,
	combout => \G1:0:G3:compute2|Mux0~0_combout\);

-- Location: LCCOMB_X33_Y42_N28
\G1:2:G2:compute1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:2:G2:compute1|Mux0~0_combout\ = \Ctrol[3]~input_o\ $ (\A[2]~input_o\ $ (((\Ctrol[1]~input_o\ & \G1:1:G2:compute1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrol[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \Ctrol[1]~input_o\,
	datad => \G1:1:G2:compute1|Cout~0_combout\,
	combout => \G1:2:G2:compute1|Mux0~0_combout\);

-- Location: LCCOMB_X33_Y42_N6
\G1:2:G2:compute1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:2:G2:compute1|Mux0~1_combout\ = (\G1:2:G2:compute1|bt~0_combout\ & (\Ctrol[1]~input_o\ $ (((\Ctrol[0]~input_o\) # (\G1:2:G2:compute1|Mux0~0_combout\))))) # (!\G1:2:G2:compute1|bt~0_combout\ & (\G1:2:G2:compute1|Mux0~0_combout\ & (\Ctrol[0]~input_o\ $ 
-- (\Ctrol[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrol[0]~input_o\,
	datab => \G1:2:G2:compute1|bt~0_combout\,
	datac => \Ctrol[1]~input_o\,
	datad => \G1:2:G2:compute1|Mux0~0_combout\,
	combout => \G1:2:G2:compute1|Mux0~1_combout\);

-- Location: LCCOMB_X33_Y42_N8
\G1:3:G2:compute1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:3:G2:compute1|Mux0~0_combout\ = \A[3]~input_o\ $ (\Ctrol[3]~input_o\ $ (((\Ctrol[1]~input_o\ & \G1:2:G2:compute1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrol[1]~input_o\,
	datab => \A[3]~input_o\,
	datac => \G1:2:G2:compute1|Cout~0_combout\,
	datad => \Ctrol[3]~input_o\,
	combout => \G1:3:G2:compute1|Mux0~0_combout\);

-- Location: LCCOMB_X33_Y42_N10
\G1:3:G2:compute1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:3:G2:compute1|Mux0~1_combout\ = (\G1:3:G2:compute1|Mux0~0_combout\ & (\Ctrol[1]~input_o\ $ (((\Ctrol[0]~input_o\) # (\G1:3:G2:compute1|bt~0_combout\))))) # (!\G1:3:G2:compute1|Mux0~0_combout\ & (\G1:3:G2:compute1|bt~0_combout\ & (\Ctrol[0]~input_o\ $ 
-- (\Ctrol[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrol[0]~input_o\,
	datab => \G1:3:G2:compute1|Mux0~0_combout\,
	datac => \Ctrol[1]~input_o\,
	datad => \G1:3:G2:compute1|bt~0_combout\,
	combout => \G1:3:G2:compute1|Mux0~1_combout\);

-- Location: LCCOMB_X33_Y42_N0
\G1:1:G2:compute1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:1:G2:compute1|Mux0~0_combout\ = \A[1]~input_o\ $ (\Ctrol[3]~input_o\ $ (((\G1:0:G3:compute2|Cout~0_combout\ & \Ctrol[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:0:G3:compute2|Cout~0_combout\,
	datab => \A[1]~input_o\,
	datac => \Ctrol[1]~input_o\,
	datad => \Ctrol[3]~input_o\,
	combout => \G1:1:G2:compute1|Mux0~0_combout\);

-- Location: LCCOMB_X33_Y42_N26
\G1:1:G2:compute1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:1:G2:compute1|Mux0~1_combout\ = (\G1:1:G2:compute1|bt~0_combout\ & (\Ctrol[1]~input_o\ $ (((\Ctrol[0]~input_o\) # (\G1:1:G2:compute1|Mux0~0_combout\))))) # (!\G1:1:G2:compute1|bt~0_combout\ & (\G1:1:G2:compute1|Mux0~0_combout\ & (\Ctrol[0]~input_o\ $ 
-- (\Ctrol[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrol[0]~input_o\,
	datab => \G1:1:G2:compute1|bt~0_combout\,
	datac => \Ctrol[1]~input_o\,
	datad => \G1:1:G2:compute1|Mux0~0_combout\,
	combout => \G1:1:G2:compute1|Mux0~1_combout\);

-- Location: LCCOMB_X38_Y42_N24
\stage1|g0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|g0~0_combout\ = (!\G1:3:G2:compute1|Mux0~1_combout\ & ((\G1:2:G2:compute1|Mux0~1_combout\ & (\G1:0:G3:compute2|Mux0~0_combout\ & \G1:1:G2:compute1|Mux0~1_combout\)) # (!\G1:2:G2:compute1|Mux0~1_combout\ & ((!\G1:1:G2:compute1|Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:0:G3:compute2|Mux0~0_combout\,
	datab => \G1:2:G2:compute1|Mux0~1_combout\,
	datac => \G1:3:G2:compute1|Mux0~1_combout\,
	datad => \G1:1:G2:compute1|Mux0~1_combout\,
	combout => \stage1|g0~0_combout\);

-- Location: LCCOMB_X38_Y42_N2
\stage1|f0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|f0~0_combout\ = (\G1:2:G2:compute1|Mux0~1_combout\ & ((\G1:3:G2:compute1|Mux0~1_combout\ & ((!\G1:1:G2:compute1|Mux0~1_combout\))) # (!\G1:3:G2:compute1|Mux0~1_combout\ & (\G1:0:G3:compute2|Mux0~0_combout\ & \G1:1:G2:compute1|Mux0~1_combout\)))) # 
-- (!\G1:2:G2:compute1|Mux0~1_combout\ & (!\G1:3:G2:compute1|Mux0~1_combout\ & ((\G1:0:G3:compute2|Mux0~0_combout\) # (\G1:1:G2:compute1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:0:G3:compute2|Mux0~0_combout\,
	datab => \G1:2:G2:compute1|Mux0~1_combout\,
	datac => \G1:3:G2:compute1|Mux0~1_combout\,
	datad => \G1:1:G2:compute1|Mux0~1_combout\,
	combout => \stage1|f0~0_combout\);

-- Location: LCCOMB_X38_Y42_N12
\stage1|e0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|e0~0_combout\ = (\G1:1:G2:compute1|Mux0~1_combout\ & (\G1:0:G3:compute2|Mux0~0_combout\ & ((!\G1:3:G2:compute1|Mux0~1_combout\)))) # (!\G1:1:G2:compute1|Mux0~1_combout\ & ((\G1:2:G2:compute1|Mux0~1_combout\ & 
-- ((!\G1:3:G2:compute1|Mux0~1_combout\))) # (!\G1:2:G2:compute1|Mux0~1_combout\ & (\G1:0:G3:compute2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:0:G3:compute2|Mux0~0_combout\,
	datab => \G1:2:G2:compute1|Mux0~1_combout\,
	datac => \G1:3:G2:compute1|Mux0~1_combout\,
	datad => \G1:1:G2:compute1|Mux0~1_combout\,
	combout => \stage1|e0~0_combout\);

-- Location: LCCOMB_X38_Y42_N6
\stage1|d0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|d0~0_combout\ = (\G1:0:G3:compute2|Mux0~0_combout\ & (\G1:2:G2:compute1|Mux0~1_combout\ $ (((!\G1:1:G2:compute1|Mux0~1_combout\))))) # (!\G1:0:G3:compute2|Mux0~0_combout\ & ((\G1:2:G2:compute1|Mux0~1_combout\ & (!\G1:3:G2:compute1|Mux0~1_combout\ 
-- & !\G1:1:G2:compute1|Mux0~1_combout\)) # (!\G1:2:G2:compute1|Mux0~1_combout\ & (\G1:3:G2:compute1|Mux0~1_combout\ & \G1:1:G2:compute1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:0:G3:compute2|Mux0~0_combout\,
	datab => \G1:2:G2:compute1|Mux0~1_combout\,
	datac => \G1:3:G2:compute1|Mux0~1_combout\,
	datad => \G1:1:G2:compute1|Mux0~1_combout\,
	combout => \stage1|d0~0_combout\);

-- Location: LCCOMB_X38_Y42_N0
\stage1|c0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|c0~0_combout\ = (\G1:2:G2:compute1|Mux0~1_combout\ & (\G1:3:G2:compute1|Mux0~1_combout\ & ((\G1:1:G2:compute1|Mux0~1_combout\) # (!\G1:0:G3:compute2|Mux0~0_combout\)))) # (!\G1:2:G2:compute1|Mux0~1_combout\ & (!\G1:0:G3:compute2|Mux0~0_combout\ & 
-- (!\G1:3:G2:compute1|Mux0~1_combout\ & \G1:1:G2:compute1|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:0:G3:compute2|Mux0~0_combout\,
	datab => \G1:2:G2:compute1|Mux0~1_combout\,
	datac => \G1:3:G2:compute1|Mux0~1_combout\,
	datad => \G1:1:G2:compute1|Mux0~1_combout\,
	combout => \stage1|c0~0_combout\);

-- Location: LCCOMB_X38_Y42_N10
\stage1|b0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|b0~0_combout\ = (\G1:3:G2:compute1|Mux0~1_combout\ & ((\G1:0:G3:compute2|Mux0~0_combout\ & ((\G1:1:G2:compute1|Mux0~1_combout\))) # (!\G1:0:G3:compute2|Mux0~0_combout\ & (\G1:2:G2:compute1|Mux0~1_combout\)))) # (!\G1:3:G2:compute1|Mux0~1_combout\ 
-- & (\G1:2:G2:compute1|Mux0~1_combout\ & (\G1:0:G3:compute2|Mux0~0_combout\ $ (\G1:1:G2:compute1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:0:G3:compute2|Mux0~0_combout\,
	datab => \G1:2:G2:compute1|Mux0~1_combout\,
	datac => \G1:3:G2:compute1|Mux0~1_combout\,
	datad => \G1:1:G2:compute1|Mux0~1_combout\,
	combout => \stage1|b0~0_combout\);

-- Location: LCCOMB_X38_Y42_N4
\stage1|a0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|a0~0_combout\ = (\G1:2:G2:compute1|Mux0~1_combout\ & (!\G1:1:G2:compute1|Mux0~1_combout\ & ((\G1:3:G2:compute1|Mux0~1_combout\) # (!\G1:0:G3:compute2|Mux0~0_combout\)))) # (!\G1:2:G2:compute1|Mux0~1_combout\ & (\G1:0:G3:compute2|Mux0~0_combout\ & 
-- (\G1:3:G2:compute1|Mux0~1_combout\ $ (!\G1:1:G2:compute1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:0:G3:compute2|Mux0~0_combout\,
	datab => \G1:2:G2:compute1|Mux0~1_combout\,
	datac => \G1:3:G2:compute1|Mux0~1_combout\,
	datad => \G1:1:G2:compute1|Mux0~1_combout\,
	combout => \stage1|a0~0_combout\);

-- Location: LCCOMB_X29_Y42_N30
\G1:6:G2:compute1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:6:G2:compute1|Mux0~0_combout\ = (\G1:6:G2:compute1|bt~0_combout\ & ((\Ctrol[0]~input_o\) # (\A[6]~input_o\ $ (\Ctrol[3]~input_o\)))) # (!\G1:6:G2:compute1|bt~0_combout\ & (\Ctrol[0]~input_o\ & (\A[6]~input_o\ $ (\Ctrol[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \G1:6:G2:compute1|bt~0_combout\,
	datac => \Ctrol[3]~input_o\,
	datad => \Ctrol[0]~input_o\,
	combout => \G1:6:G2:compute1|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y42_N0
\G1:6:G2:compute1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:6:G2:compute1|Mux0~1_combout\ = (\Ctrol[1]~input_o\ & (\G1:6:G2:compute1|set~combout\ & ((!\Ctrol[0]~input_o\)))) # (!\Ctrol[1]~input_o\ & (((\G1:6:G2:compute1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrol[1]~input_o\,
	datab => \G1:6:G2:compute1|set~combout\,
	datac => \G1:6:G2:compute1|Mux0~0_combout\,
	datad => \Ctrol[0]~input_o\,
	combout => \G1:6:G2:compute1|Mux0~1_combout\);

-- Location: LCCOMB_X29_Y42_N2
\G1:5:G2:compute1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:5:G2:compute1|Mux0~0_combout\ = \A[5]~input_o\ $ (\Ctrol[3]~input_o\ $ (((\Ctrol[1]~input_o\ & \G1:4:G2:compute1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrol[1]~input_o\,
	datab => \A[5]~input_o\,
	datac => \Ctrol[3]~input_o\,
	datad => \G1:4:G2:compute1|Cout~0_combout\,
	combout => \G1:5:G2:compute1|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y42_N28
\G1:5:G2:compute1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:5:G2:compute1|Mux0~1_combout\ = (\G1:5:G2:compute1|bt~0_combout\ & (\Ctrol[1]~input_o\ $ (((\G1:5:G2:compute1|Mux0~0_combout\) # (\Ctrol[0]~input_o\))))) # (!\G1:5:G2:compute1|bt~0_combout\ & (\G1:5:G2:compute1|Mux0~0_combout\ & (\Ctrol[1]~input_o\ $ 
-- (\Ctrol[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:5:G2:compute1|bt~0_combout\,
	datab => \G1:5:G2:compute1|Mux0~0_combout\,
	datac => \Ctrol[1]~input_o\,
	datad => \Ctrol[0]~input_o\,
	combout => \G1:5:G2:compute1|Mux0~1_combout\);

-- Location: LCCOMB_X29_Y42_N22
\G1:6:G2:compute1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:6:G2:compute1|Cout~0_combout\ = (\G1:5:G2:compute1|Cout~0_combout\ & ((\G1:6:G2:compute1|bt~0_combout\) # (\A[6]~input_o\ $ (\Ctrol[3]~input_o\)))) # (!\G1:5:G2:compute1|Cout~0_combout\ & (\G1:6:G2:compute1|bt~0_combout\ & (\A[6]~input_o\ $ 
-- (\Ctrol[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:5:G2:compute1|Cout~0_combout\,
	datab => \A[6]~input_o\,
	datac => \Ctrol[3]~input_o\,
	datad => \G1:6:G2:compute1|bt~0_combout\,
	combout => \G1:6:G2:compute1|Cout~0_combout\);

-- Location: LCCOMB_X33_Y42_N20
\G1:4:G2:compute1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:4:G2:compute1|Mux0~0_combout\ = \Ctrol[3]~input_o\ $ (\A[4]~input_o\ $ (((\G1:3:G2:compute1|Cout~0_combout\ & \Ctrol[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrol[3]~input_o\,
	datab => \G1:3:G2:compute1|Cout~0_combout\,
	datac => \Ctrol[1]~input_o\,
	datad => \A[4]~input_o\,
	combout => \G1:4:G2:compute1|Mux0~0_combout\);

-- Location: LCCOMB_X33_Y42_N14
\G1:4:G2:compute1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:4:G2:compute1|Mux0~1_combout\ = (\G1:4:G2:compute1|Mux0~0_combout\ & (\Ctrol[1]~input_o\ $ (((\Ctrol[0]~input_o\) # (\G1:4:G2:compute1|bt~0_combout\))))) # (!\G1:4:G2:compute1|Mux0~0_combout\ & (\G1:4:G2:compute1|bt~0_combout\ & (\Ctrol[0]~input_o\ $ 
-- (\Ctrol[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrol[0]~input_o\,
	datab => \G1:4:G2:compute1|Mux0~0_combout\,
	datac => \Ctrol[1]~input_o\,
	datad => \G1:4:G2:compute1|bt~0_combout\,
	combout => \G1:4:G2:compute1|Mux0~1_combout\);

-- Location: LCCOMB_X26_Y42_N24
\stage1|g1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|g1~0_combout\ = (!\G1:6:G2:compute1|Cout~0_combout\ & ((\G1:6:G2:compute1|Mux0~1_combout\ & (\G1:5:G2:compute1|Mux0~1_combout\ & \G1:4:G2:compute1|Mux0~1_combout\)) # (!\G1:6:G2:compute1|Mux0~1_combout\ & (!\G1:5:G2:compute1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:6:G2:compute1|Mux0~1_combout\,
	datab => \G1:5:G2:compute1|Mux0~1_combout\,
	datac => \G1:6:G2:compute1|Cout~0_combout\,
	datad => \G1:4:G2:compute1|Mux0~1_combout\,
	combout => \stage1|g1~0_combout\);

-- Location: LCCOMB_X26_Y42_N10
\stage1|f1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|f1~0_combout\ = (\G1:6:G2:compute1|Mux0~1_combout\ & ((\G1:5:G2:compute1|Mux0~1_combout\ & (!\G1:6:G2:compute1|Cout~0_combout\ & \G1:4:G2:compute1|Mux0~1_combout\)) # (!\G1:5:G2:compute1|Mux0~1_combout\ & (\G1:6:G2:compute1|Cout~0_combout\)))) # 
-- (!\G1:6:G2:compute1|Mux0~1_combout\ & (!\G1:6:G2:compute1|Cout~0_combout\ & ((\G1:5:G2:compute1|Mux0~1_combout\) # (\G1:4:G2:compute1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:6:G2:compute1|Mux0~1_combout\,
	datab => \G1:5:G2:compute1|Mux0~1_combout\,
	datac => \G1:6:G2:compute1|Cout~0_combout\,
	datad => \G1:4:G2:compute1|Mux0~1_combout\,
	combout => \stage1|f1~0_combout\);

-- Location: LCCOMB_X26_Y42_N12
\stage1|e1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|e1~0_combout\ = (\G1:5:G2:compute1|Mux0~1_combout\ & (((!\G1:6:G2:compute1|Cout~0_combout\ & \G1:4:G2:compute1|Mux0~1_combout\)))) # (!\G1:5:G2:compute1|Mux0~1_combout\ & ((\G1:6:G2:compute1|Mux0~1_combout\ & (!\G1:6:G2:compute1|Cout~0_combout\)) 
-- # (!\G1:6:G2:compute1|Mux0~1_combout\ & ((\G1:4:G2:compute1|Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:6:G2:compute1|Mux0~1_combout\,
	datab => \G1:5:G2:compute1|Mux0~1_combout\,
	datac => \G1:6:G2:compute1|Cout~0_combout\,
	datad => \G1:4:G2:compute1|Mux0~1_combout\,
	combout => \stage1|e1~0_combout\);

-- Location: LCCOMB_X26_Y42_N22
\stage1|d1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|d1~0_combout\ = (\G1:4:G2:compute1|Mux0~1_combout\ & (\G1:6:G2:compute1|Mux0~1_combout\ $ ((!\G1:5:G2:compute1|Mux0~1_combout\)))) # (!\G1:4:G2:compute1|Mux0~1_combout\ & ((\G1:6:G2:compute1|Mux0~1_combout\ & (!\G1:5:G2:compute1|Mux0~1_combout\ & 
-- !\G1:6:G2:compute1|Cout~0_combout\)) # (!\G1:6:G2:compute1|Mux0~1_combout\ & (\G1:5:G2:compute1|Mux0~1_combout\ & \G1:6:G2:compute1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:6:G2:compute1|Mux0~1_combout\,
	datab => \G1:5:G2:compute1|Mux0~1_combout\,
	datac => \G1:6:G2:compute1|Cout~0_combout\,
	datad => \G1:4:G2:compute1|Mux0~1_combout\,
	combout => \stage1|d1~0_combout\);

-- Location: LCCOMB_X26_Y42_N0
\stage1|c1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|c1~0_combout\ = (\G1:6:G2:compute1|Mux0~1_combout\ & (\G1:6:G2:compute1|Cout~0_combout\ & ((\G1:5:G2:compute1|Mux0~1_combout\) # (!\G1:4:G2:compute1|Mux0~1_combout\)))) # (!\G1:6:G2:compute1|Mux0~1_combout\ & (\G1:5:G2:compute1|Mux0~1_combout\ & 
-- (!\G1:6:G2:compute1|Cout~0_combout\ & !\G1:4:G2:compute1|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:6:G2:compute1|Mux0~1_combout\,
	datab => \G1:5:G2:compute1|Mux0~1_combout\,
	datac => \G1:6:G2:compute1|Cout~0_combout\,
	datad => \G1:4:G2:compute1|Mux0~1_combout\,
	combout => \stage1|c1~0_combout\);

-- Location: LCCOMB_X26_Y42_N26
\stage1|b1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|b1~0_combout\ = (\G1:5:G2:compute1|Mux0~1_combout\ & ((\G1:4:G2:compute1|Mux0~1_combout\ & ((\G1:6:G2:compute1|Cout~0_combout\))) # (!\G1:4:G2:compute1|Mux0~1_combout\ & (\G1:6:G2:compute1|Mux0~1_combout\)))) # (!\G1:5:G2:compute1|Mux0~1_combout\ 
-- & (\G1:6:G2:compute1|Mux0~1_combout\ & (\G1:6:G2:compute1|Cout~0_combout\ $ (\G1:4:G2:compute1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:6:G2:compute1|Mux0~1_combout\,
	datab => \G1:5:G2:compute1|Mux0~1_combout\,
	datac => \G1:6:G2:compute1|Cout~0_combout\,
	datad => \G1:4:G2:compute1|Mux0~1_combout\,
	combout => \stage1|b1~0_combout\);

-- Location: LCCOMB_X26_Y42_N4
\stage1|a1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|a1~0_combout\ = (\G1:6:G2:compute1|Mux0~1_combout\ & (!\G1:5:G2:compute1|Mux0~1_combout\ & ((\G1:6:G2:compute1|Cout~0_combout\) # (!\G1:4:G2:compute1|Mux0~1_combout\)))) # (!\G1:6:G2:compute1|Mux0~1_combout\ & (\G1:4:G2:compute1|Mux0~1_combout\ & 
-- (\G1:5:G2:compute1|Mux0~1_combout\ $ (!\G1:6:G2:compute1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:6:G2:compute1|Mux0~1_combout\,
	datab => \G1:5:G2:compute1|Mux0~1_combout\,
	datac => \G1:6:G2:compute1|Cout~0_combout\,
	datad => \G1:4:G2:compute1|Mux0~1_combout\,
	combout => \stage1|a1~0_combout\);

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

ww_Result(0) <= \Result[0]~output_o\;

ww_Result(1) <= \Result[1]~output_o\;

ww_Result(2) <= \Result[2]~output_o\;

ww_Result(3) <= \Result[3]~output_o\;

ww_Result(4) <= \Result[4]~output_o\;

ww_Result(5) <= \Result[5]~output_o\;

ww_Result(6) <= \Result[6]~output_o\;
END structure;


