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

-- DATE "11/29/2022 07:29:19"

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

ENTITY 	lab7_01 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	divisor : IN std_logic_vector(7 DOWNTO 0);
	dividend : IN std_logic_vector(7 DOWNTO 0);
	quotient : BUFFER std_logic_vector(7 DOWNTO 0);
	remainder : BUFFER std_logic_vector(7 DOWNTO 0);
	hex0 : OUT std_logic_vector(6 DOWNTO 0);
	hex1 : OUT std_logic_vector(6 DOWNTO 0);
	hex2 : OUT std_logic_vector(6 DOWNTO 0);
	hex3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END lab7_01;

-- Design Ports Information
-- quotient[0]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[1]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[2]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[3]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[4]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[5]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[6]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[7]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[0]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[2]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[3]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[4]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[5]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[6]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[7]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[0]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[6]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[1]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[2]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[3]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[4]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[5]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[6]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[0]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[1]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[2]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[3]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[4]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[5]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[6]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[0]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[1]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[2]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[3]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[4]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[5]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[6]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[7]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[7]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[6]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[5]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[4]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[3]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[2]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[1]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[0]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab7_01 IS
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
SIGNAL ww_divisor : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dividend : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_quotient : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_remainder : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \quotient[0]~output_o\ : std_logic;
SIGNAL \quotient[1]~output_o\ : std_logic;
SIGNAL \quotient[2]~output_o\ : std_logic;
SIGNAL \quotient[3]~output_o\ : std_logic;
SIGNAL \quotient[4]~output_o\ : std_logic;
SIGNAL \quotient[5]~output_o\ : std_logic;
SIGNAL \quotient[6]~output_o\ : std_logic;
SIGNAL \quotient[7]~output_o\ : std_logic;
SIGNAL \remainder[0]~output_o\ : std_logic;
SIGNAL \remainder[1]~output_o\ : std_logic;
SIGNAL \remainder[2]~output_o\ : std_logic;
SIGNAL \remainder[3]~output_o\ : std_logic;
SIGNAL \remainder[4]~output_o\ : std_logic;
SIGNAL \remainder[5]~output_o\ : std_logic;
SIGNAL \remainder[6]~output_o\ : std_logic;
SIGNAL \remainder[7]~output_o\ : std_logic;
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \hex1[0]~output_o\ : std_logic;
SIGNAL \hex1[1]~output_o\ : std_logic;
SIGNAL \hex1[2]~output_o\ : std_logic;
SIGNAL \hex1[3]~output_o\ : std_logic;
SIGNAL \hex1[4]~output_o\ : std_logic;
SIGNAL \hex1[5]~output_o\ : std_logic;
SIGNAL \hex1[6]~output_o\ : std_logic;
SIGNAL \hex2[0]~output_o\ : std_logic;
SIGNAL \hex2[1]~output_o\ : std_logic;
SIGNAL \hex2[2]~output_o\ : std_logic;
SIGNAL \hex2[3]~output_o\ : std_logic;
SIGNAL \hex2[4]~output_o\ : std_logic;
SIGNAL \hex2[5]~output_o\ : std_logic;
SIGNAL \hex2[6]~output_o\ : std_logic;
SIGNAL \hex3[0]~output_o\ : std_logic;
SIGNAL \hex3[1]~output_o\ : std_logic;
SIGNAL \hex3[2]~output_o\ : std_logic;
SIGNAL \hex3[3]~output_o\ : std_logic;
SIGNAL \hex3[4]~output_o\ : std_logic;
SIGNAL \hex3[5]~output_o\ : std_logic;
SIGNAL \hex3[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \times[1]~0_combout\ : std_logic;
SIGNAL \d[0]~9_combout\ : std_logic;
SIGNAL \times[0]~2_combout\ : std_logic;
SIGNAL \times[1]~3_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \times[2]~4_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \times[3]~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \r[15]~9_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \divisor[7]~input_o\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \divisor[6]~input_o\ : std_logic;
SIGNAL \d~1_combout\ : std_logic;
SIGNAL \d[14]~feeder_combout\ : std_logic;
SIGNAL \d[8]~2_combout\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \divisor[5]~input_o\ : std_logic;
SIGNAL \d~3_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \divisor[4]~input_o\ : std_logic;
SIGNAL \d~4_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \divisor[3]~input_o\ : std_logic;
SIGNAL \d~5_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \divisor[2]~input_o\ : std_logic;
SIGNAL \d~6_combout\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \divisor[1]~input_o\ : std_logic;
SIGNAL \d~7_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \divisor[0]~input_o\ : std_logic;
SIGNAL \d~8_combout\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \d[7]~feeder_combout\ : std_logic;
SIGNAL \d[0]~0_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \d[6]~feeder_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \d[5]~feeder_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \dividend[5]~input_o\ : std_logic;
SIGNAL \d[4]~feeder_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \dividend[3]~input_o\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \dividend[0]~input_o\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \r~0_combout\ : std_logic;
SIGNAL \r[0]~1_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \dividend[1]~input_o\ : std_logic;
SIGNAL \r~2_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \dividend[2]~input_o\ : std_logic;
SIGNAL \r~3_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \r~4_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \dividend[4]~input_o\ : std_logic;
SIGNAL \r~5_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \r~6_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \dividend[6]~input_o\ : std_logic;
SIGNAL \r~7_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \dividend[7]~input_o\ : std_logic;
SIGNAL \r~8_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \r[8]~11_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \r[15]~10_combout\ : std_logic;
SIGNAL \quotient~0_combout\ : std_logic;
SIGNAL \quotient[0]~1_combout\ : std_logic;
SIGNAL \quotient[0]~reg0_q\ : std_logic;
SIGNAL \quotient~2_combout\ : std_logic;
SIGNAL \quotient[1]~reg0_q\ : std_logic;
SIGNAL \quotient~3_combout\ : std_logic;
SIGNAL \quotient[2]~reg0_q\ : std_logic;
SIGNAL \quotient~4_combout\ : std_logic;
SIGNAL \quotient[3]~reg0_q\ : std_logic;
SIGNAL \quotient~5_combout\ : std_logic;
SIGNAL \quotient[4]~reg0_q\ : std_logic;
SIGNAL \quotient~6_combout\ : std_logic;
SIGNAL \quotient[5]~reg0_q\ : std_logic;
SIGNAL \quotient~7_combout\ : std_logic;
SIGNAL \quotient[6]~reg0_q\ : std_logic;
SIGNAL \quotient~8_combout\ : std_logic;
SIGNAL \quotient[7]~reg0_q\ : std_logic;
SIGNAL \f1|Mux6~0_combout\ : std_logic;
SIGNAL \f1|Mux5~0_combout\ : std_logic;
SIGNAL \f1|Mux4~0_combout\ : std_logic;
SIGNAL \f1|Mux3~0_combout\ : std_logic;
SIGNAL \f1|Mux2~0_combout\ : std_logic;
SIGNAL \f1|Mux1~0_combout\ : std_logic;
SIGNAL \f1|Mux0~0_combout\ : std_logic;
SIGNAL \f2|Mux6~0_combout\ : std_logic;
SIGNAL \f2|Mux5~0_combout\ : std_logic;
SIGNAL \f2|Mux4~0_combout\ : std_logic;
SIGNAL \f2|Mux3~0_combout\ : std_logic;
SIGNAL \f2|Mux2~0_combout\ : std_logic;
SIGNAL \f2|Mux1~0_combout\ : std_logic;
SIGNAL \f2|Mux0~0_combout\ : std_logic;
SIGNAL \f3|Mux6~0_combout\ : std_logic;
SIGNAL \f3|Mux5~0_combout\ : std_logic;
SIGNAL \f3|Mux4~0_combout\ : std_logic;
SIGNAL \f3|Mux3~0_combout\ : std_logic;
SIGNAL \f3|Mux2~0_combout\ : std_logic;
SIGNAL \f3|Mux1~0_combout\ : std_logic;
SIGNAL \f3|Mux0~0_combout\ : std_logic;
SIGNAL \f4|Mux6~0_combout\ : std_logic;
SIGNAL \f4|Mux5~0_combout\ : std_logic;
SIGNAL \f4|Mux4~0_combout\ : std_logic;
SIGNAL \f4|Mux3~0_combout\ : std_logic;
SIGNAL \f4|Mux2~0_combout\ : std_logic;
SIGNAL \f4|Mux1~0_combout\ : std_logic;
SIGNAL \f4|Mux0~0_combout\ : std_logic;
SIGNAL state : std_logic_vector(1 DOWNTO 0);
SIGNAL d : std_logic_vector(15 DOWNTO 0);
SIGNAL r : std_logic_vector(15 DOWNTO 0);
SIGNAL times : std_logic_vector(3 DOWNTO 0);
SIGNAL \f4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \f3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \f2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \f1|ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_divisor <= divisor;
ww_dividend <= dividend;
quotient <= ww_quotient;
remainder <= ww_remainder;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\f4|ALT_INV_Mux6~0_combout\ <= NOT \f4|Mux6~0_combout\;
\f3|ALT_INV_Mux6~0_combout\ <= NOT \f3|Mux6~0_combout\;
\f2|ALT_INV_Mux6~0_combout\ <= NOT \f2|Mux6~0_combout\;
\f1|ALT_INV_Mux6~0_combout\ <= NOT \f1|Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y49_N9
\quotient[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[0]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[0]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\quotient[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[1]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[1]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\quotient[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[2]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[2]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\quotient[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[3]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[3]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\quotient[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[4]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[4]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\quotient[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[5]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[5]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\quotient[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[6]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[6]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\quotient[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[7]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[7]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\remainder[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r(0),
	devoe => ww_devoe,
	o => \remainder[0]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\remainder[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r(1),
	devoe => ww_devoe,
	o => \remainder[1]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\remainder[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r(2),
	devoe => ww_devoe,
	o => \remainder[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\remainder[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r(3),
	devoe => ww_devoe,
	o => \remainder[3]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\remainder[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r(4),
	devoe => ww_devoe,
	o => \remainder[4]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\remainder[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r(5),
	devoe => ww_devoe,
	o => \remainder[5]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\remainder[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r(6),
	devoe => ww_devoe,
	o => \remainder[6]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\remainder[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r(7),
	devoe => ww_devoe,
	o => \remainder[7]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\hex0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\hex0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\hex0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\hex0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\hex0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \hex0[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\hex0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \hex0[5]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\hex0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \hex0[6]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\hex1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \hex1[0]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\hex1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \hex1[1]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\hex1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \hex1[2]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\hex1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \hex1[3]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\hex1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \hex1[4]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\hex1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \hex1[5]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\hex1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \hex1[6]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\hex2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \hex2[0]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\hex2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \hex2[1]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\hex2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \hex2[2]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\hex2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \hex2[3]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\hex2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \hex2[4]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\hex2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \hex2[5]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\hex2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \hex2[6]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\hex3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f4|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \hex3[0]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\hex3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \hex3[1]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\hex3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \hex3[2]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\hex3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \hex3[3]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\hex3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \hex3[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\hex3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \hex3[5]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\hex3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \hex3[6]~output_o\);

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

-- Location: IOIBUF_X115_Y37_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X114_Y32_N20
\times[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \times[1]~0_combout\ = (!\reset~input_o\ & ((\Equal0~0_combout\) # ((!state(0)) # (!state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \reset~input_o\,
	datac => state(1),
	datad => state(0),
	combout => \times[1]~0_combout\);

-- Location: LCCOMB_X114_Y32_N26
\d[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[0]~9_combout\ = (state(1) & state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => state(0),
	combout => \d[0]~9_combout\);

-- Location: LCCOMB_X114_Y32_N4
\times[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \times[0]~2_combout\ = (!\reset~input_o\ & (times(0) $ (((\d[0]~9_combout\ & !\Equal0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[0]~9_combout\,
	datab => \reset~input_o\,
	datac => times(0),
	datad => \Equal0~0_combout\,
	combout => \times[0]~2_combout\);

-- Location: FF_X114_Y32_N5
\times[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \times[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => times(0));

-- Location: LCCOMB_X113_Y32_N6
\times[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \times[1]~3_combout\ = (\times[1]~0_combout\ & (((times(1))))) # (!\times[1]~0_combout\ & (!\reset~input_o\ & (times(1) $ (times(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \times[1]~0_combout\,
	datab => \reset~input_o\,
	datac => times(1),
	datad => times(0),
	combout => \times[1]~3_combout\);

-- Location: FF_X113_Y32_N7
\times[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \times[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => times(1));

-- Location: LCCOMB_X113_Y32_N28
\Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = times(2) $ (((times(1) & times(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => times(1),
	datab => times(2),
	datad => times(0),
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X113_Y32_N16
\times[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \times[2]~4_combout\ = (\times[1]~0_combout\ & (((times(2))))) # (!\times[1]~0_combout\ & (\Add2~1_combout\ & ((!\reset~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \times[1]~0_combout\,
	datab => \Add2~1_combout\,
	datac => times(2),
	datad => \reset~input_o\,
	combout => \times[2]~4_combout\);

-- Location: FF_X113_Y32_N17
\times[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \times[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => times(2));

-- Location: LCCOMB_X113_Y32_N18
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = times(3) $ (((times(0) & (times(2) & times(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => times(0),
	datab => times(2),
	datac => times(3),
	datad => times(1),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X113_Y32_N24
\times[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \times[3]~1_combout\ = (\times[1]~0_combout\ & (((times(3))))) # (!\times[1]~0_combout\ & (\Add2~0_combout\ & ((!\reset~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \times[1]~0_combout\,
	datab => \Add2~0_combout\,
	datac => times(3),
	datad => \reset~input_o\,
	combout => \times[3]~1_combout\);

-- Location: FF_X113_Y32_N25
\times[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \times[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => times(3));

-- Location: LCCOMB_X114_Y32_N18
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!times(2) & (!times(0) & (!times(1) & times(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => times(2),
	datab => times(0),
	datac => times(1),
	datad => times(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X114_Y36_N20
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (state(1) & ((!\Equal0~0_combout\) # (!state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(1),
	datac => state(0),
	datad => \Equal0~0_combout\,
	combout => \Mux17~0_combout\);

-- Location: FF_X114_Y36_N21
\state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux17~0_combout\,
	asdata => VCC,
	sload => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(0));

-- Location: LCCOMB_X114_Y35_N30
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = state(0) $ (state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(0),
	datad => state(1),
	combout => \Mux0~0_combout\);

-- Location: FF_X113_Y35_N23
\state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux0~0_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(1));

-- Location: LCCOMB_X114_Y35_N20
\r[15]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \r[15]~9_combout\ = (!\reset~input_o\ & (state(1) $ (state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(1),
	datac => state(0),
	datad => \reset~input_o\,
	combout => \r[15]~9_combout\);

-- Location: LCCOMB_X114_Y35_N8
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (d(15) & ((!state(1)) # (!state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(0),
	datac => d(15),
	datad => state(1),
	combout => \Mux26~0_combout\);

-- Location: IOIBUF_X115_Y46_N8
\divisor[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(7),
	o => \divisor[7]~input_o\);

-- Location: FF_X114_Y35_N9
\d[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux26~0_combout\,
	asdata => \divisor[7]~input_o\,
	sload => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(15));

-- Location: LCCOMB_X114_Y35_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = d(15) $ (state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => d(15),
	datad => state(1),
	combout => \Add0~26_combout\);

-- Location: IOIBUF_X115_Y51_N1
\divisor[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(6),
	o => \divisor[6]~input_o\);

-- Location: LCCOMB_X114_Y35_N28
\d~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d~1_combout\ = (\reset~input_o\ & ((\divisor[6]~input_o\))) # (!\reset~input_o\ & (d(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => d(15),
	datac => \divisor[6]~input_o\,
	datad => \reset~input_o\,
	combout => \d~1_combout\);

-- Location: LCCOMB_X112_Y35_N4
\d[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[14]~feeder_combout\ = \d~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d~1_combout\,
	combout => \d[14]~feeder_combout\);

-- Location: LCCOMB_X112_Y35_N16
\d[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[8]~2_combout\ = (\reset~input_o\) # ((state(1) & state(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(1),
	datac => state(0),
	datad => \reset~input_o\,
	combout => \d[8]~2_combout\);

-- Location: FF_X112_Y35_N5
\d[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[14]~feeder_combout\,
	ena => \d[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(14));

-- Location: LCCOMB_X112_Y35_N26
\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = d(14) $ (state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => d(14),
	datad => state(1),
	combout => \Add0~27_combout\);

-- Location: IOIBUF_X115_Y30_N1
\divisor[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(5),
	o => \divisor[5]~input_o\);

-- Location: LCCOMB_X112_Y35_N12
\d~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d~3_combout\ = (\reset~input_o\ & ((\divisor[5]~input_o\))) # (!\reset~input_o\ & (d(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => d(14),
	datac => \divisor[5]~input_o\,
	datad => \reset~input_o\,
	combout => \d~3_combout\);

-- Location: FF_X112_Y35_N13
\d[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d~3_combout\,
	ena => \d[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(13));

-- Location: LCCOMB_X112_Y35_N30
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = d(13) $ (state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d(13),
	datad => state(1),
	combout => \Add0~28_combout\);

-- Location: IOIBUF_X115_Y21_N15
\divisor[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(4),
	o => \divisor[4]~input_o\);

-- Location: LCCOMB_X112_Y35_N28
\d~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d~4_combout\ = (\reset~input_o\ & ((\divisor[4]~input_o\))) # (!\reset~input_o\ & (d(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d(13),
	datac => \divisor[4]~input_o\,
	datad => \reset~input_o\,
	combout => \d~4_combout\);

-- Location: FF_X112_Y35_N29
\d[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d~4_combout\,
	ena => \d[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(12));

-- Location: LCCOMB_X113_Y35_N26
\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = d(12) $ (state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => d(12),
	datac => state(1),
	combout => \Add0~29_combout\);

-- Location: IOIBUF_X115_Y31_N8
\divisor[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(3),
	o => \divisor[3]~input_o\);

-- Location: LCCOMB_X112_Y35_N22
\d~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d~5_combout\ = (\reset~input_o\ & (\divisor[3]~input_o\)) # (!\reset~input_o\ & ((d(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[3]~input_o\,
	datab => d(12),
	datad => \reset~input_o\,
	combout => \d~5_combout\);

-- Location: FF_X112_Y35_N23
\d[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d~5_combout\,
	ena => \d[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(11));

-- Location: LCCOMB_X113_Y35_N28
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = state(1) $ (d(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => d(11),
	combout => \Add0~30_combout\);

-- Location: IOIBUF_X115_Y19_N1
\divisor[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(2),
	o => \divisor[2]~input_o\);

-- Location: LCCOMB_X112_Y35_N20
\d~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d~6_combout\ = (\reset~input_o\ & (\divisor[2]~input_o\)) # (!\reset~input_o\ & ((d(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor[2]~input_o\,
	datac => d(11),
	datad => \reset~input_o\,
	combout => \d~6_combout\);

-- Location: FF_X112_Y35_N21
\d[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d~6_combout\,
	ena => \d[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(10));

-- Location: LCCOMB_X113_Y35_N18
\Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = state(1) $ (d(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => d(10),
	combout => \Add0~31_combout\);

-- Location: IOIBUF_X115_Y27_N8
\divisor[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(1),
	o => \divisor[1]~input_o\);

-- Location: LCCOMB_X112_Y35_N14
\d~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d~7_combout\ = (\reset~input_o\ & ((\divisor[1]~input_o\))) # (!\reset~input_o\ & (d(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => d(10),
	datac => \divisor[1]~input_o\,
	datad => \reset~input_o\,
	combout => \d~7_combout\);

-- Location: FF_X112_Y35_N15
\d[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d~7_combout\,
	ena => \d[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(9));

-- Location: LCCOMB_X113_Y35_N24
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = state(1) $ (d(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => d(9),
	combout => \Add0~32_combout\);

-- Location: IOIBUF_X115_Y27_N1
\divisor[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(0),
	o => \divisor[0]~input_o\);

-- Location: LCCOMB_X112_Y35_N24
\d~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d~8_combout\ = (\reset~input_o\ & (\divisor[0]~input_o\)) # (!\reset~input_o\ & ((d(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor[0]~input_o\,
	datac => d(9),
	datad => \reset~input_o\,
	combout => \d~8_combout\);

-- Location: FF_X112_Y35_N25
\d[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d~8_combout\,
	ena => \d[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(8));

-- Location: LCCOMB_X113_Y35_N30
\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = state(1) $ (d(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => d(8),
	combout => \Add0~33_combout\);

-- Location: LCCOMB_X112_Y35_N8
\d[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[7]~feeder_combout\ = d(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d(8),
	combout => \d[7]~feeder_combout\);

-- Location: LCCOMB_X112_Y35_N18
\d[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[0]~0_combout\ = (!\reset~input_o\ & (state(0) & state(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => state(0),
	datad => state(1),
	combout => \d[0]~0_combout\);

-- Location: FF_X112_Y35_N9
\d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[7]~feeder_combout\,
	ena => \d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(7));

-- Location: LCCOMB_X112_Y35_N6
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = d(7) $ (state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => d(7),
	datad => state(1),
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X112_Y36_N12
\d[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[6]~feeder_combout\ = d(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d(7),
	combout => \d[6]~feeder_combout\);

-- Location: FF_X112_Y36_N13
\d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[6]~feeder_combout\,
	ena => \d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(6));

-- Location: LCCOMB_X112_Y36_N14
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = d(6) $ (state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d(6),
	datac => state(1),
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X112_Y36_N28
\d[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[5]~feeder_combout\ = d(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d(6),
	combout => \d[5]~feeder_combout\);

-- Location: FF_X112_Y36_N29
\d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[5]~feeder_combout\,
	ena => \d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(5));

-- Location: LCCOMB_X112_Y36_N2
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = d(5) $ (state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => d(5),
	datac => state(1),
	combout => \Add0~17_combout\);

-- Location: IOIBUF_X115_Y50_N8
\dividend[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(5),
	o => \dividend[5]~input_o\);

-- Location: LCCOMB_X112_Y36_N4
\d[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[4]~feeder_combout\ = d(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d(5),
	combout => \d[4]~feeder_combout\);

-- Location: FF_X112_Y36_N5
\d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[4]~feeder_combout\,
	ena => \d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(4));

-- Location: LCCOMB_X112_Y36_N6
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = state(1) $ (d(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => d(4),
	combout => \Add0~14_combout\);

-- Location: FF_X113_Y36_N11
\d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => d(4),
	sload => VCC,
	ena => \d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(3));

-- Location: LCCOMB_X113_Y36_N10
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = d(3) $ (state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => d(3),
	datad => state(1),
	combout => \Add0~11_combout\);

-- Location: IOIBUF_X115_Y44_N1
\dividend[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(3),
	o => \dividend[3]~input_o\);

-- Location: FF_X113_Y36_N3
\d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => d(3),
	sload => VCC,
	ena => \d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(2));

-- Location: LCCOMB_X113_Y36_N2
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = d(2) $ (state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => d(2),
	datad => state(1),
	combout => \Add0~8_combout\);

-- Location: FF_X113_Y36_N15
\d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => d(2),
	sload => VCC,
	ena => \d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(1));

-- Location: LCCOMB_X113_Y36_N14
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = d(1) $ (state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => d(1),
	datad => state(1),
	combout => \Add0~5_combout\);

-- Location: FF_X113_Y36_N7
\d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => d(1),
	sload => VCC,
	ena => \d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(0));

-- Location: LCCOMB_X113_Y36_N6
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = d(0) $ (state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => d(0),
	datad => state(1),
	combout => \Add0~0_combout\);

-- Location: IOIBUF_X115_Y37_N1
\dividend[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(0),
	o => \dividend[0]~input_o\);

-- Location: LCCOMB_X113_Y36_N16
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY(state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datad => VCC,
	cout => \Add0~2_cout\);

-- Location: LCCOMB_X113_Y36_N18
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~0_combout\ & ((r(0) & (!\Add0~2_cout\)) # (!r(0) & ((\Add0~2_cout\) # (GND))))) # (!\Add0~0_combout\ & ((r(0) & (\Add0~2_cout\ & VCC)) # (!r(0) & (!\Add0~2_cout\))))
-- \Add0~4\ = CARRY((\Add0~0_combout\ & ((!\Add0~2_cout\) # (!r(0)))) # (!\Add0~0_combout\ & (!r(0) & !\Add0~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => r(0),
	datad => VCC,
	cin => \Add0~2_cout\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X114_Y36_N30
\r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r~0_combout\ = (\reset~input_o\ & (\dividend[0]~input_o\)) # (!\reset~input_o\ & ((\Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \dividend[0]~input_o\,
	datad => \Add0~3_combout\,
	combout => \r~0_combout\);

-- Location: LCCOMB_X114_Y36_N24
\r[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r[0]~1_combout\ = (\reset~input_o\) # ((state(0) & (!state(1))) # (!state(0) & (state(1) & r(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => state(0),
	datac => state(1),
	datad => r(15),
	combout => \r[0]~1_combout\);

-- Location: FF_X113_Y36_N23
\r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \r~0_combout\,
	sload => VCC,
	ena => \r[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(0));

-- Location: LCCOMB_X113_Y36_N20
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = ((r(1) $ (\Add0~5_combout\ $ (\Add0~4\)))) # (GND)
-- \Add0~7\ = CARRY((r(1) & ((!\Add0~4\) # (!\Add0~5_combout\))) # (!r(1) & (!\Add0~5_combout\ & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(1),
	datab => \Add0~5_combout\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: IOIBUF_X115_Y52_N1
\dividend[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(1),
	o => \dividend[1]~input_o\);

-- Location: LCCOMB_X112_Y36_N16
\r~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r~2_combout\ = (\reset~input_o\ & ((\dividend[1]~input_o\))) # (!\reset~input_o\ & (\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \Add0~6_combout\,
	datad => \dividend[1]~input_o\,
	combout => \r~2_combout\);

-- Location: FF_X112_Y36_N17
\r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r~2_combout\,
	ena => \r[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(1));

-- Location: LCCOMB_X113_Y36_N22
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (r(2) & ((\Add0~8_combout\ & (!\Add0~7\)) # (!\Add0~8_combout\ & (\Add0~7\ & VCC)))) # (!r(2) & ((\Add0~8_combout\ & ((\Add0~7\) # (GND))) # (!\Add0~8_combout\ & (!\Add0~7\))))
-- \Add0~10\ = CARRY((r(2) & (\Add0~8_combout\ & !\Add0~7\)) # (!r(2) & ((\Add0~8_combout\) # (!\Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(2),
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: IOIBUF_X115_Y44_N8
\dividend[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(2),
	o => \dividend[2]~input_o\);

-- Location: LCCOMB_X113_Y36_N4
\r~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r~3_combout\ = (\reset~input_o\ & ((\dividend[2]~input_o\))) # (!\reset~input_o\ & (\Add0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \Add0~9_combout\,
	datad => \dividend[2]~input_o\,
	combout => \r~3_combout\);

-- Location: FF_X113_Y36_N5
\r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r~3_combout\,
	ena => \r[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(2));

-- Location: LCCOMB_X113_Y36_N24
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\Add0~11_combout\ $ (r(3) $ (\Add0~10\)))) # (GND)
-- \Add0~13\ = CARRY((\Add0~11_combout\ & (r(3) & !\Add0~10\)) # (!\Add0~11_combout\ & ((r(3)) # (!\Add0~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => r(3),
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X113_Y36_N8
\r~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r~4_combout\ = (\reset~input_o\ & (\dividend[3]~input_o\)) # (!\reset~input_o\ & ((\Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \dividend[3]~input_o\,
	datad => \Add0~12_combout\,
	combout => \r~4_combout\);

-- Location: FF_X113_Y36_N9
\r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r~4_combout\,
	ena => \r[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(3));

-- Location: LCCOMB_X113_Y36_N26
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (r(4) & ((\Add0~14_combout\ & (!\Add0~13\)) # (!\Add0~14_combout\ & (\Add0~13\ & VCC)))) # (!r(4) & ((\Add0~14_combout\ & ((\Add0~13\) # (GND))) # (!\Add0~14_combout\ & (!\Add0~13\))))
-- \Add0~16\ = CARRY((r(4) & (\Add0~14_combout\ & !\Add0~13\)) # (!r(4) & ((\Add0~14_combout\) # (!\Add0~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(4),
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: IOIBUF_X115_Y48_N8
\dividend[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(4),
	o => \dividend[4]~input_o\);

-- Location: LCCOMB_X113_Y36_N0
\r~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r~5_combout\ = (\reset~input_o\ & ((\dividend[4]~input_o\))) # (!\reset~input_o\ & (\Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \Add0~15_combout\,
	datad => \dividend[4]~input_o\,
	combout => \r~5_combout\);

-- Location: FF_X113_Y36_N1
\r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r~5_combout\,
	ena => \r[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(4));

-- Location: LCCOMB_X113_Y36_N28
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = ((\Add0~17_combout\ $ (r(5) $ (\Add0~16\)))) # (GND)
-- \Add0~19\ = CARRY((\Add0~17_combout\ & (r(5) & !\Add0~16\)) # (!\Add0~17_combout\ & ((r(5)) # (!\Add0~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~17_combout\,
	datab => r(5),
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X113_Y36_N12
\r~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r~6_combout\ = (\reset~input_o\ & (\dividend[5]~input_o\)) # (!\reset~input_o\ & ((\Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \dividend[5]~input_o\,
	datad => \Add0~18_combout\,
	combout => \r~6_combout\);

-- Location: FF_X113_Y36_N13
\r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r~6_combout\,
	ena => \r[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(5));

-- Location: LCCOMB_X113_Y36_N30
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\Add0~20_combout\ & ((r(6) & (!\Add0~19\)) # (!r(6) & ((\Add0~19\) # (GND))))) # (!\Add0~20_combout\ & ((r(6) & (\Add0~19\ & VCC)) # (!r(6) & (!\Add0~19\))))
-- \Add0~22\ = CARRY((\Add0~20_combout\ & ((!\Add0~19\) # (!r(6)))) # (!\Add0~20_combout\ & (!r(6) & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => r(6),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: IOIBUF_X115_Y40_N1
\dividend[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(6),
	o => \dividend[6]~input_o\);

-- Location: LCCOMB_X112_Y36_N22
\r~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r~7_combout\ = (\reset~input_o\ & ((\dividend[6]~input_o\))) # (!\reset~input_o\ & (\Add0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \Add0~21_combout\,
	datad => \dividend[6]~input_o\,
	combout => \r~7_combout\);

-- Location: FF_X112_Y36_N23
\r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r~7_combout\,
	ena => \r[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(6));

-- Location: LCCOMB_X113_Y35_N0
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((r(7) $ (\Add0~23_combout\ $ (\Add0~22\)))) # (GND)
-- \Add0~25\ = CARRY((r(7) & ((!\Add0~22\) # (!\Add0~23_combout\))) # (!r(7) & (!\Add0~23_combout\ & !\Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(7),
	datab => \Add0~23_combout\,
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: IOIBUF_X115_Y51_N8
\dividend[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(7),
	o => \dividend[7]~input_o\);

-- Location: LCCOMB_X114_Y35_N2
\r~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r~8_combout\ = (\reset~input_o\ & ((\dividend[7]~input_o\))) # (!\reset~input_o\ & (\Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \Add0~24_combout\,
	datad => \dividend[7]~input_o\,
	combout => \r~8_combout\);

-- Location: FF_X114_Y35_N3
\r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r~8_combout\,
	ena => \r[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(7));

-- Location: LCCOMB_X113_Y35_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\Add0~33_combout\ & ((r(8) & (!\Add0~25\)) # (!r(8) & ((\Add0~25\) # (GND))))) # (!\Add0~33_combout\ & ((r(8) & (\Add0~25\ & VCC)) # (!r(8) & (!\Add0~25\))))
-- \Add0~35\ = CARRY((\Add0~33_combout\ & ((!\Add0~25\) # (!r(8)))) # (!\Add0~33_combout\ & (!r(8) & !\Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~33_combout\,
	datab => r(8),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X113_Y35_N22
\r[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \r[8]~11_combout\ = (!\reset~input_o\ & ((state(0) & ((!state(1)))) # (!state(0) & (r(15) & state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => r(15),
	datac => state(1),
	datad => \reset~input_o\,
	combout => \r[8]~11_combout\);

-- Location: FF_X113_Y35_N3
\r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	ena => \r[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(8));

-- Location: LCCOMB_X113_Y35_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((\Add0~32_combout\ $ (r(9) $ (\Add0~35\)))) # (GND)
-- \Add0~37\ = CARRY((\Add0~32_combout\ & (r(9) & !\Add0~35\)) # (!\Add0~32_combout\ & ((r(9)) # (!\Add0~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => r(9),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X113_Y35_N5
\r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	ena => \r[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(9));

-- Location: LCCOMB_X113_Y35_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (r(10) & ((\Add0~31_combout\ & (!\Add0~37\)) # (!\Add0~31_combout\ & (\Add0~37\ & VCC)))) # (!r(10) & ((\Add0~31_combout\ & ((\Add0~37\) # (GND))) # (!\Add0~31_combout\ & (!\Add0~37\))))
-- \Add0~39\ = CARRY((r(10) & (\Add0~31_combout\ & !\Add0~37\)) # (!r(10) & ((\Add0~31_combout\) # (!\Add0~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(10),
	datab => \Add0~31_combout\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X113_Y35_N7
\r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	ena => \r[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(10));

-- Location: LCCOMB_X113_Y35_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = ((r(11) $ (\Add0~30_combout\ $ (\Add0~39\)))) # (GND)
-- \Add0~41\ = CARRY((r(11) & ((!\Add0~39\) # (!\Add0~30_combout\))) # (!r(11) & (!\Add0~30_combout\ & !\Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(11),
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X113_Y35_N9
\r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	ena => \r[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(11));

-- Location: LCCOMB_X113_Y35_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\Add0~29_combout\ & ((r(12) & (!\Add0~41\)) # (!r(12) & ((\Add0~41\) # (GND))))) # (!\Add0~29_combout\ & ((r(12) & (\Add0~41\ & VCC)) # (!r(12) & (!\Add0~41\))))
-- \Add0~43\ = CARRY((\Add0~29_combout\ & ((!\Add0~41\) # (!r(12)))) # (!\Add0~29_combout\ & (!r(12) & !\Add0~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~29_combout\,
	datab => r(12),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X113_Y35_N11
\r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	ena => \r[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(12));

-- Location: LCCOMB_X113_Y35_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = ((r(13) $ (\Add0~28_combout\ $ (\Add0~43\)))) # (GND)
-- \Add0~45\ = CARRY((r(13) & ((!\Add0~43\) # (!\Add0~28_combout\))) # (!r(13) & (!\Add0~28_combout\ & !\Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(13),
	datab => \Add0~28_combout\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X113_Y35_N13
\r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	ena => \r[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(13));

-- Location: LCCOMB_X113_Y35_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\Add0~27_combout\ & ((r(14) & (!\Add0~45\)) # (!r(14) & ((\Add0~45\) # (GND))))) # (!\Add0~27_combout\ & ((r(14) & (\Add0~45\ & VCC)) # (!r(14) & (!\Add0~45\))))
-- \Add0~47\ = CARRY((\Add0~27_combout\ & ((!\Add0~45\) # (!r(14)))) # (!\Add0~27_combout\ & (!r(14) & !\Add0~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~27_combout\,
	datab => r(14),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X113_Y35_N15
\r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	ena => \r[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(14));

-- Location: LCCOMB_X113_Y35_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = r(15) $ (\Add0~47\ $ (\Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r(15),
	datad => \Add0~26_combout\,
	cin => \Add0~47\,
	combout => \Add0~48_combout\);

-- Location: LCCOMB_X113_Y35_N20
\r[15]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r[15]~10_combout\ = (\r[15]~9_combout\ & (\Add0~48_combout\ & ((r(15)) # (!state(1))))) # (!\r[15]~9_combout\ & (((r(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[15]~9_combout\,
	datab => state(1),
	datac => r(15),
	datad => \Add0~48_combout\,
	combout => \r[15]~10_combout\);

-- Location: FF_X113_Y35_N21
\r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(15));

-- Location: LCCOMB_X114_Y36_N22
\quotient~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient~0_combout\ = (!\reset~input_o\ & !r(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => r(15),
	combout => \quotient~0_combout\);

-- Location: LCCOMB_X114_Y36_N8
\quotient[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient[0]~1_combout\ = (\reset~input_o\) # ((state(1) & !state(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => state(1),
	datad => state(0),
	combout => \quotient[0]~1_combout\);

-- Location: FF_X114_Y36_N23
\quotient[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient~0_combout\,
	ena => \quotient[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[0]~reg0_q\);

-- Location: LCCOMB_X114_Y36_N16
\quotient~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient~2_combout\ = (!\reset~input_o\ & \quotient[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \quotient[0]~reg0_q\,
	combout => \quotient~2_combout\);

-- Location: FF_X114_Y36_N17
\quotient[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient~2_combout\,
	ena => \quotient[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[1]~reg0_q\);

-- Location: LCCOMB_X114_Y36_N18
\quotient~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient~3_combout\ = (\quotient[1]~reg0_q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \quotient[1]~reg0_q\,
	datac => \reset~input_o\,
	combout => \quotient~3_combout\);

-- Location: FF_X114_Y36_N19
\quotient[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient~3_combout\,
	ena => \quotient[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[2]~reg0_q\);

-- Location: LCCOMB_X114_Y36_N12
\quotient~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient~4_combout\ = (\quotient[2]~reg0_q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \quotient[2]~reg0_q\,
	datac => \reset~input_o\,
	combout => \quotient~4_combout\);

-- Location: FF_X114_Y36_N13
\quotient[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient~4_combout\,
	ena => \quotient[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[3]~reg0_q\);

-- Location: LCCOMB_X114_Y36_N26
\quotient~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient~5_combout\ = (\quotient[3]~reg0_q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[3]~reg0_q\,
	datac => \reset~input_o\,
	combout => \quotient~5_combout\);

-- Location: FF_X114_Y36_N27
\quotient[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient~5_combout\,
	ena => \quotient[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[4]~reg0_q\);

-- Location: LCCOMB_X114_Y32_N28
\quotient~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient~6_combout\ = (\quotient[4]~reg0_q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \quotient[4]~reg0_q\,
	datad => \reset~input_o\,
	combout => \quotient~6_combout\);

-- Location: FF_X114_Y32_N29
\quotient[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient~6_combout\,
	ena => \quotient[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[5]~reg0_q\);

-- Location: LCCOMB_X114_Y32_N6
\quotient~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient~7_combout\ = (\quotient[5]~reg0_q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \quotient[5]~reg0_q\,
	datad => \reset~input_o\,
	combout => \quotient~7_combout\);

-- Location: FF_X114_Y32_N7
\quotient[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient~7_combout\,
	ena => \quotient[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[6]~reg0_q\);

-- Location: LCCOMB_X114_Y32_N8
\quotient~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient~8_combout\ = (\quotient[6]~reg0_q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[6]~reg0_q\,
	datad => \reset~input_o\,
	combout => \quotient~8_combout\);

-- Location: FF_X114_Y32_N9
\quotient[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient~8_combout\,
	ena => \quotient[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[7]~reg0_q\);

-- Location: LCCOMB_X114_Y26_N28
\f1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Mux6~0_combout\ = (r(3)) # ((r(1) & ((!r(0)) # (!r(2)))) # (!r(1) & (r(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(1),
	datab => r(2),
	datac => r(3),
	datad => r(0),
	combout => \f1|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y26_N2
\f1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Mux5~0_combout\ = (r(1) & (!r(3) & ((r(0)) # (!r(2))))) # (!r(1) & ((r(2) & (r(3))) # (!r(2) & (!r(3) & r(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(1),
	datab => r(2),
	datac => r(3),
	datad => r(0),
	combout => \f1|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y26_N0
\f1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Mux4~0_combout\ = (r(1) & (((!r(3) & r(0))))) # (!r(1) & ((r(2) & (!r(3))) # (!r(2) & ((r(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(1),
	datab => r(2),
	datac => r(3),
	datad => r(0),
	combout => \f1|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y26_N10
\f1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Mux3~0_combout\ = (r(0) & (r(1) $ ((!r(2))))) # (!r(0) & ((r(1) & (!r(2) & r(3))) # (!r(1) & (r(2) & !r(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(1),
	datab => r(2),
	datac => r(3),
	datad => r(0),
	combout => \f1|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y26_N4
\f1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Mux2~0_combout\ = (r(2) & (r(3) & ((r(1)) # (!r(0))))) # (!r(2) & (r(1) & (!r(3) & !r(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(1),
	datab => r(2),
	datac => r(3),
	datad => r(0),
	combout => \f1|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y26_N22
\f1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Mux1~0_combout\ = (r(1) & ((r(0) & ((r(3)))) # (!r(0) & (r(2))))) # (!r(1) & (r(2) & (r(3) $ (r(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(1),
	datab => r(2),
	datac => r(3),
	datad => r(0),
	combout => \f1|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y26_N12
\f1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Mux0~0_combout\ = (r(1) & (!r(2) & (r(3) & r(0)))) # (!r(1) & (r(2) $ (((!r(3) & r(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(1),
	datab => r(2),
	datac => r(3),
	datad => r(0),
	combout => \f1|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y35_N12
\f2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|Mux6~0_combout\ = (r(7)) # ((r(5) & ((!r(4)) # (!r(6)))) # (!r(5) & (r(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(5),
	datab => r(6),
	datac => r(4),
	datad => r(7),
	combout => \f2|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y35_N14
\f2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|Mux5~0_combout\ = (r(5) & (!r(7) & ((r(4)) # (!r(6))))) # (!r(5) & ((r(6) & ((r(7)))) # (!r(6) & (r(4) & !r(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(5),
	datab => r(6),
	datac => r(4),
	datad => r(7),
	combout => \f2|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y35_N4
\f2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|Mux4~0_combout\ = (r(5) & (((r(4) & !r(7))))) # (!r(5) & ((r(6) & ((!r(7)))) # (!r(6) & (r(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(5),
	datab => r(6),
	datac => r(4),
	datad => r(7),
	combout => \f2|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y35_N10
\f2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|Mux3~0_combout\ = (r(4) & (r(5) $ ((!r(6))))) # (!r(4) & ((r(5) & (!r(6) & r(7))) # (!r(5) & (r(6) & !r(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(5),
	datab => r(6),
	datac => r(4),
	datad => r(7),
	combout => \f2|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y35_N24
\f2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|Mux2~0_combout\ = (r(6) & (r(7) & ((r(5)) # (!r(4))))) # (!r(6) & (r(5) & (!r(4) & !r(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(5),
	datab => r(6),
	datac => r(4),
	datad => r(7),
	combout => \f2|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y35_N22
\f2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|Mux1~0_combout\ = (r(5) & ((r(4) & ((r(7)))) # (!r(4) & (r(6))))) # (!r(5) & (r(6) & (r(4) $ (r(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(5),
	datab => r(6),
	datac => r(4),
	datad => r(7),
	combout => \f2|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y35_N0
\f2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|Mux0~0_combout\ = (r(5) & (!r(6) & (r(4) & r(7)))) # (!r(5) & (r(6) $ (((r(4) & !r(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(5),
	datab => r(6),
	datac => r(4),
	datad => r(7),
	combout => \f2|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y36_N28
\f3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|Mux6~0_combout\ = (\quotient[3]~reg0_q\) # ((\quotient[2]~reg0_q\ & ((!\quotient[1]~reg0_q\) # (!\quotient[0]~reg0_q\))) # (!\quotient[2]~reg0_q\ & ((\quotient[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[3]~reg0_q\,
	datab => \quotient[2]~reg0_q\,
	datac => \quotient[0]~reg0_q\,
	datad => \quotient[1]~reg0_q\,
	combout => \f3|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y36_N2
\f3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|Mux5~0_combout\ = (\quotient[3]~reg0_q\ & (\quotient[2]~reg0_q\ & ((!\quotient[1]~reg0_q\)))) # (!\quotient[3]~reg0_q\ & ((\quotient[2]~reg0_q\ & (\quotient[0]~reg0_q\ & \quotient[1]~reg0_q\)) # (!\quotient[2]~reg0_q\ & ((\quotient[0]~reg0_q\) # 
-- (\quotient[1]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[3]~reg0_q\,
	datab => \quotient[2]~reg0_q\,
	datac => \quotient[0]~reg0_q\,
	datad => \quotient[1]~reg0_q\,
	combout => \f3|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y36_N0
\f3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|Mux4~0_combout\ = (\quotient[1]~reg0_q\ & (!\quotient[3]~reg0_q\ & ((\quotient[0]~reg0_q\)))) # (!\quotient[1]~reg0_q\ & ((\quotient[2]~reg0_q\ & (!\quotient[3]~reg0_q\)) # (!\quotient[2]~reg0_q\ & ((\quotient[0]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[3]~reg0_q\,
	datab => \quotient[2]~reg0_q\,
	datac => \quotient[0]~reg0_q\,
	datad => \quotient[1]~reg0_q\,
	combout => \f3|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y47_N4
\f3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|Mux3~0_combout\ = (\quotient[0]~reg0_q\ & (\quotient[2]~reg0_q\ $ (((!\quotient[1]~reg0_q\))))) # (!\quotient[0]~reg0_q\ & ((\quotient[2]~reg0_q\ & (!\quotient[3]~reg0_q\ & !\quotient[1]~reg0_q\)) # (!\quotient[2]~reg0_q\ & (\quotient[3]~reg0_q\ & 
-- \quotient[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[0]~reg0_q\,
	datab => \quotient[2]~reg0_q\,
	datac => \quotient[3]~reg0_q\,
	datad => \quotient[1]~reg0_q\,
	combout => \f3|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y36_N6
\f3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|Mux2~0_combout\ = (\quotient[3]~reg0_q\ & (\quotient[2]~reg0_q\ & ((\quotient[1]~reg0_q\) # (!\quotient[0]~reg0_q\)))) # (!\quotient[3]~reg0_q\ & (!\quotient[2]~reg0_q\ & (!\quotient[0]~reg0_q\ & \quotient[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[3]~reg0_q\,
	datab => \quotient[2]~reg0_q\,
	datac => \quotient[0]~reg0_q\,
	datad => \quotient[1]~reg0_q\,
	combout => \f3|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y36_N4
\f3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|Mux1~0_combout\ = (\quotient[3]~reg0_q\ & ((\quotient[0]~reg0_q\ & ((\quotient[1]~reg0_q\))) # (!\quotient[0]~reg0_q\ & (\quotient[2]~reg0_q\)))) # (!\quotient[3]~reg0_q\ & (\quotient[2]~reg0_q\ & (\quotient[0]~reg0_q\ $ (\quotient[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[3]~reg0_q\,
	datab => \quotient[2]~reg0_q\,
	datac => \quotient[0]~reg0_q\,
	datad => \quotient[1]~reg0_q\,
	combout => \f3|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y36_N14
\f3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|Mux0~0_combout\ = (\quotient[2]~reg0_q\ & (!\quotient[1]~reg0_q\ & ((\quotient[3]~reg0_q\) # (!\quotient[0]~reg0_q\)))) # (!\quotient[2]~reg0_q\ & (\quotient[0]~reg0_q\ & (\quotient[3]~reg0_q\ $ (!\quotient[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[3]~reg0_q\,
	datab => \quotient[2]~reg0_q\,
	datac => \quotient[0]~reg0_q\,
	datad => \quotient[1]~reg0_q\,
	combout => \f3|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y32_N14
\f4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f4|Mux6~0_combout\ = (\quotient[7]~reg0_q\) # ((\quotient[6]~reg0_q\ & ((!\quotient[5]~reg0_q\) # (!\quotient[4]~reg0_q\))) # (!\quotient[6]~reg0_q\ & ((\quotient[5]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[6]~reg0_q\,
	datab => \quotient[7]~reg0_q\,
	datac => \quotient[4]~reg0_q\,
	datad => \quotient[5]~reg0_q\,
	combout => \f4|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y32_N0
\f4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f4|Mux5~0_combout\ = (\quotient[6]~reg0_q\ & ((\quotient[7]~reg0_q\ & ((!\quotient[5]~reg0_q\))) # (!\quotient[7]~reg0_q\ & (\quotient[4]~reg0_q\ & \quotient[5]~reg0_q\)))) # (!\quotient[6]~reg0_q\ & (!\quotient[7]~reg0_q\ & ((\quotient[4]~reg0_q\) # 
-- (\quotient[5]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[6]~reg0_q\,
	datab => \quotient[7]~reg0_q\,
	datac => \quotient[4]~reg0_q\,
	datad => \quotient[5]~reg0_q\,
	combout => \f4|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y32_N22
\f4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f4|Mux4~0_combout\ = (\quotient[5]~reg0_q\ & (((!\quotient[7]~reg0_q\ & \quotient[4]~reg0_q\)))) # (!\quotient[5]~reg0_q\ & ((\quotient[6]~reg0_q\ & (!\quotient[7]~reg0_q\)) # (!\quotient[6]~reg0_q\ & ((\quotient[4]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[6]~reg0_q\,
	datab => \quotient[7]~reg0_q\,
	datac => \quotient[4]~reg0_q\,
	datad => \quotient[5]~reg0_q\,
	combout => \f4|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y32_N24
\f4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f4|Mux3~0_combout\ = (\quotient[4]~reg0_q\ & (\quotient[6]~reg0_q\ $ (((!\quotient[5]~reg0_q\))))) # (!\quotient[4]~reg0_q\ & ((\quotient[6]~reg0_q\ & (!\quotient[7]~reg0_q\ & !\quotient[5]~reg0_q\)) # (!\quotient[6]~reg0_q\ & (\quotient[7]~reg0_q\ & 
-- \quotient[5]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[6]~reg0_q\,
	datab => \quotient[7]~reg0_q\,
	datac => \quotient[4]~reg0_q\,
	datad => \quotient[5]~reg0_q\,
	combout => \f4|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y32_N30
\f4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f4|Mux2~0_combout\ = (\quotient[6]~reg0_q\ & (\quotient[7]~reg0_q\ & ((\quotient[5]~reg0_q\) # (!\quotient[4]~reg0_q\)))) # (!\quotient[6]~reg0_q\ & (!\quotient[7]~reg0_q\ & (!\quotient[4]~reg0_q\ & \quotient[5]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[6]~reg0_q\,
	datab => \quotient[7]~reg0_q\,
	datac => \quotient[4]~reg0_q\,
	datad => \quotient[5]~reg0_q\,
	combout => \f4|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y32_N12
\f4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f4|Mux1~0_combout\ = (\quotient[7]~reg0_q\ & ((\quotient[4]~reg0_q\ & ((\quotient[5]~reg0_q\))) # (!\quotient[4]~reg0_q\ & (\quotient[6]~reg0_q\)))) # (!\quotient[7]~reg0_q\ & (\quotient[6]~reg0_q\ & (\quotient[4]~reg0_q\ $ (\quotient[5]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[6]~reg0_q\,
	datab => \quotient[7]~reg0_q\,
	datac => \quotient[4]~reg0_q\,
	datad => \quotient[5]~reg0_q\,
	combout => \f4|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y32_N2
\f4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f4|Mux0~0_combout\ = (\quotient[6]~reg0_q\ & (!\quotient[5]~reg0_q\ & ((\quotient[7]~reg0_q\) # (!\quotient[4]~reg0_q\)))) # (!\quotient[6]~reg0_q\ & (\quotient[4]~reg0_q\ & (\quotient[7]~reg0_q\ $ (!\quotient[5]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[6]~reg0_q\,
	datab => \quotient[7]~reg0_q\,
	datac => \quotient[4]~reg0_q\,
	datad => \quotient[5]~reg0_q\,
	combout => \f4|Mux0~0_combout\);

ww_quotient(0) <= \quotient[0]~output_o\;

ww_quotient(1) <= \quotient[1]~output_o\;

ww_quotient(2) <= \quotient[2]~output_o\;

ww_quotient(3) <= \quotient[3]~output_o\;

ww_quotient(4) <= \quotient[4]~output_o\;

ww_quotient(5) <= \quotient[5]~output_o\;

ww_quotient(6) <= \quotient[6]~output_o\;

ww_quotient(7) <= \quotient[7]~output_o\;

ww_remainder(0) <= \remainder[0]~output_o\;

ww_remainder(1) <= \remainder[1]~output_o\;

ww_remainder(2) <= \remainder[2]~output_o\;

ww_remainder(3) <= \remainder[3]~output_o\;

ww_remainder(4) <= \remainder[4]~output_o\;

ww_remainder(5) <= \remainder[5]~output_o\;

ww_remainder(6) <= \remainder[6]~output_o\;

ww_remainder(7) <= \remainder[7]~output_o\;

ww_hex0(0) <= \hex0[0]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(6) <= \hex0[6]~output_o\;

ww_hex1(0) <= \hex1[0]~output_o\;

ww_hex1(1) <= \hex1[1]~output_o\;

ww_hex1(2) <= \hex1[2]~output_o\;

ww_hex1(3) <= \hex1[3]~output_o\;

ww_hex1(4) <= \hex1[4]~output_o\;

ww_hex1(5) <= \hex1[5]~output_o\;

ww_hex1(6) <= \hex1[6]~output_o\;

ww_hex2(0) <= \hex2[0]~output_o\;

ww_hex2(1) <= \hex2[1]~output_o\;

ww_hex2(2) <= \hex2[2]~output_o\;

ww_hex2(3) <= \hex2[3]~output_o\;

ww_hex2(4) <= \hex2[4]~output_o\;

ww_hex2(5) <= \hex2[5]~output_o\;

ww_hex2(6) <= \hex2[6]~output_o\;

ww_hex3(0) <= \hex3[0]~output_o\;

ww_hex3(1) <= \hex3[1]~output_o\;

ww_hex3(2) <= \hex3[2]~output_o\;

ww_hex3(3) <= \hex3[3]~output_o\;

ww_hex3(4) <= \hex3[4]~output_o\;

ww_hex3(5) <= \hex3[5]~output_o\;

ww_hex3(6) <= \hex3[6]~output_o\;
END structure;


