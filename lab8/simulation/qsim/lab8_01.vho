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

-- DATE "12/07/2022 12:43:23"

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

ENTITY 	lab8_01 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	divisor : IN std_logic_vector(7 DOWNTO 0);
	dividend : IN std_logic_vector(7 DOWNTO 0);
	quotient : BUFFER std_logic_vector(7 DOWNTO 0);
	remainder : BUFFER std_logic_vector(15 DOWNTO 0);
	hex0 : OUT std_logic_vector(6 DOWNTO 0);
	hex1 : OUT std_logic_vector(6 DOWNTO 0);
	hex2 : OUT std_logic_vector(6 DOWNTO 0);
	hex3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END lab8_01;

-- Design Ports Information
-- quotient[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[1]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[2]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[3]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[4]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[5]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[6]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[7]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[0]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[1]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[2]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[3]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[6]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[7]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[8]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[9]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[10]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[11]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[12]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[13]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[14]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[15]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[0]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[6]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[0]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[1]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[2]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[4]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[5]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[6]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[0]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[1]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[2]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[3]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[4]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[6]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[0]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[1]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[2]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[3]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[4]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[6]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[7]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[0]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[1]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[2]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[3]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[4]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[5]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[6]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[7]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab8_01 IS
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
SIGNAL ww_remainder : std_logic_vector(15 DOWNTO 0);
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
SIGNAL \remainder[8]~output_o\ : std_logic;
SIGNAL \remainder[9]~output_o\ : std_logic;
SIGNAL \remainder[10]~output_o\ : std_logic;
SIGNAL \remainder[11]~output_o\ : std_logic;
SIGNAL \remainder[12]~output_o\ : std_logic;
SIGNAL \remainder[13]~output_o\ : std_logic;
SIGNAL \remainder[14]~output_o\ : std_logic;
SIGNAL \remainder[15]~output_o\ : std_logic;
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
SIGNAL \d[14]~0_combout\ : std_logic;
SIGNAL \times[0]~3_combout\ : std_logic;
SIGNAL \times[0]~1_combout\ : std_logic;
SIGNAL \times[1]~4_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \times[2]~5_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \times[3]~2_combout\ : std_logic;
SIGNAL \times[0]~0_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \divisor[7]~input_o\ : std_logic;
SIGNAL \d[15]~1_combout\ : std_logic;
SIGNAL \r[0]~8_combout\ : std_logic;
SIGNAL \r[15]~9_combout\ : std_logic;
SIGNAL \divisor[6]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \divisor[5]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \divisor[4]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \divisor[3]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \divisor[2]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \divisor[1]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \divisor[0]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \dividend[7]~input_o\ : std_logic;
SIGNAL \dividend[6]~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \dividend[5]~input_o\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \dividend[3]~input_o\ : std_logic;
SIGNAL \dividend[2]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \dividend[1]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \dividend[0]~input_o\ : std_logic;
SIGNAL \r[0]~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \r[1]~1_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \r[2]~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \r[3]~3_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \dividend[4]~input_o\ : std_logic;
SIGNAL \r[4]~4_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \r[5]~5_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \r[6]~6_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \r[7]~7_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \r[15]~10_combout\ : std_logic;
SIGNAL \r[15]~11_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \quotient[0]~0_combout\ : std_logic;
SIGNAL \quotient[0]~reg0_q\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \quotient[1]~reg0_q\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \quotient[2]~reg0_q\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \quotient[3]~reg0_q\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \quotient[4]~reg0_q\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \quotient[5]~reg0_q\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \quotient[6]~reg0_q\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
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
SIGNAL r : std_logic_vector(15 DOWNTO 0);
SIGNAL state : std_logic_vector(2 DOWNTO 0);
SIGNAL d : std_logic_vector(15 DOWNTO 0);
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

-- Location: IOOBUF_X98_Y0_N23
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

-- Location: IOOBUF_X96_Y0_N9
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

-- Location: IOOBUF_X102_Y0_N16
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

-- Location: IOOBUF_X100_Y0_N2
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

-- Location: IOOBUF_X107_Y0_N9
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

-- Location: IOOBUF_X105_Y0_N16
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

-- Location: IOOBUF_X102_Y0_N23
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

-- Location: IOOBUF_X105_Y0_N23
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

-- Location: IOOBUF_X79_Y0_N9
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

-- Location: IOOBUF_X83_Y0_N23
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

-- Location: IOOBUF_X79_Y0_N16
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

-- Location: IOOBUF_X79_Y0_N23
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

-- Location: IOOBUF_X67_Y0_N2
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

-- Location: IOOBUF_X69_Y0_N9
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

-- Location: IOOBUF_X67_Y0_N9
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

-- Location: IOOBUF_X69_Y0_N2
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

-- Location: IOOBUF_X85_Y0_N2
\remainder[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r(8),
	devoe => ww_devoe,
	o => \remainder[8]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\remainder[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r(9),
	devoe => ww_devoe,
	o => \remainder[9]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\remainder[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r(10),
	devoe => ww_devoe,
	o => \remainder[10]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\remainder[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r(11),
	devoe => ww_devoe,
	o => \remainder[11]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\remainder[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r(12),
	devoe => ww_devoe,
	o => \remainder[12]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\remainder[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r(13),
	devoe => ww_devoe,
	o => \remainder[13]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\remainder[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r(14),
	devoe => ww_devoe,
	o => \remainder[14]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\remainder[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r(15),
	devoe => ww_devoe,
	o => \remainder[15]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
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

-- Location: IOOBUF_X60_Y0_N9
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

-- Location: IOOBUF_X79_Y0_N2
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

-- Location: IOOBUF_X74_Y0_N2
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

-- Location: IOOBUF_X60_Y0_N2
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

-- Location: IOOBUF_X72_Y0_N2
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

-- Location: IOOBUF_X74_Y0_N9
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

-- Location: IOOBUF_X67_Y0_N23
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

-- Location: IOOBUF_X65_Y0_N23
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

-- Location: IOOBUF_X65_Y0_N2
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

-- Location: IOOBUF_X67_Y0_N16
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

-- Location: IOOBUF_X62_Y0_N16
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

-- Location: IOOBUF_X65_Y0_N9
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

-- Location: IOOBUF_X62_Y0_N23
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

-- Location: IOOBUF_X94_Y0_N2
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

-- Location: IOOBUF_X96_Y0_N16
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

-- Location: IOOBUF_X96_Y0_N2
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

-- Location: IOOBUF_X96_Y0_N23
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

-- Location: IOOBUF_X100_Y0_N23
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

-- Location: IOOBUF_X100_Y0_N16
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

-- Location: IOOBUF_X98_Y0_N16
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

-- Location: IOOBUF_X109_Y0_N2
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

-- Location: IOOBUF_X107_Y0_N2
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

-- Location: IOOBUF_X109_Y0_N9
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

-- Location: IOOBUF_X111_Y0_N9
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

-- Location: IOOBUF_X105_Y0_N2
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

-- Location: IOOBUF_X105_Y0_N9
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

-- Location: IOOBUF_X111_Y0_N2
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

-- Location: IOIBUF_X89_Y0_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X85_Y4_N12
\d[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[14]~0_combout\ = (!state(1) & (!\reset~input_o\ & !state(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => \reset~input_o\,
	datac => state(0),
	combout => \d[14]~0_combout\);

-- Location: LCCOMB_X86_Y4_N18
\times[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \times[0]~3_combout\ = (\d[14]~0_combout\ & (state(2) & (\times[0]~0_combout\ $ (!times(0))))) # (!\d[14]~0_combout\ & (((times(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[14]~0_combout\,
	datab => \times[0]~0_combout\,
	datac => times(0),
	datad => state(2),
	combout => \times[0]~3_combout\);

-- Location: FF_X86_Y4_N19
\times[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \times[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => times(0));

-- Location: LCCOMB_X86_Y4_N20
\times[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \times[0]~1_combout\ = ((state(2) & \times[0]~0_combout\)) # (!\d[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(2),
	datac => \times[0]~0_combout\,
	datad => \d[14]~0_combout\,
	combout => \times[0]~1_combout\);

-- Location: LCCOMB_X86_Y4_N12
\times[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \times[1]~4_combout\ = (\times[0]~1_combout\ & (((times(1))))) # (!\times[0]~1_combout\ & (state(2) & (times(0) $ (times(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => times(0),
	datac => times(1),
	datad => \times[0]~1_combout\,
	combout => \times[1]~4_combout\);

-- Location: FF_X86_Y4_N13
\times[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \times[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => times(1));

-- Location: LCCOMB_X86_Y4_N10
\Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = times(2) $ (((times(1) & times(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => times(1),
	datac => times(2),
	datad => times(0),
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X86_Y4_N22
\times[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \times[2]~5_combout\ = (\times[0]~1_combout\ & (((times(2))))) # (!\times[0]~1_combout\ & (\Add2~1_combout\ & (state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datab => state(2),
	datac => times(2),
	datad => \times[0]~1_combout\,
	combout => \times[2]~5_combout\);

-- Location: FF_X86_Y4_N23
\times[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \times[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => times(2));

-- Location: LCCOMB_X86_Y4_N6
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = times(3) $ (((times(1) & (times(0) & times(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => times(1),
	datab => times(0),
	datac => times(2),
	datad => times(3),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X86_Y4_N28
\times[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \times[3]~2_combout\ = (\times[0]~1_combout\ & (((times(3))))) # (!\times[0]~1_combout\ & (\Add2~0_combout\ & (state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => state(2),
	datac => times(3),
	datad => \times[0]~1_combout\,
	combout => \times[3]~2_combout\);

-- Location: FF_X86_Y4_N29
\times[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \times[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => times(3));

-- Location: LCCOMB_X86_Y4_N4
\times[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \times[0]~0_combout\ = (!times(1) & (times(3) & (!times(2) & !times(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => times(1),
	datab => times(3),
	datac => times(2),
	datad => times(0),
	combout => \times[0]~0_combout\);

-- Location: LCCOMB_X85_Y4_N24
\Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (state(1)) # ((state(2) & ((state(0)) # (\times[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(0),
	datac => state(2),
	datad => \times[0]~0_combout\,
	combout => \Mux44~0_combout\);

-- Location: FF_X85_Y4_N25
\state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux44~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(2));

-- Location: IOIBUF_X74_Y0_N22
\divisor[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(7),
	o => \divisor[7]~input_o\);

-- Location: LCCOMB_X81_Y4_N10
\d[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[15]~1_combout\ = (\d[14]~0_combout\ & (!state(2) & (\divisor[7]~input_o\))) # (!\d[14]~0_combout\ & (((d(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => \divisor[7]~input_o\,
	datac => d(15),
	datad => \d[14]~0_combout\,
	combout => \d[15]~1_combout\);

-- Location: FF_X81_Y4_N11
\d[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(15));

-- Location: LCCOMB_X85_Y4_N30
\r[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r[0]~8_combout\ = (!\reset~input_o\ & (!state(2) & ((state(0)) # (!state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => \reset~input_o\,
	datac => state(0),
	datad => state(2),
	combout => \r[0]~8_combout\);

-- Location: LCCOMB_X85_Y4_N28
\r[15]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \r[15]~9_combout\ = (!state(2) & (state(0) & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(2),
	datac => state(0),
	datad => \reset~input_o\,
	combout => \r[15]~9_combout\);

-- Location: IOIBUF_X56_Y0_N22
\divisor[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(6),
	o => \divisor[6]~input_o\);

-- Location: LCCOMB_X81_Y4_N24
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (state(2) & ((d(15)))) # (!state(2) & (\divisor[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[6]~input_o\,
	datac => state(2),
	datad => d(15),
	combout => \Mux1~0_combout\);

-- Location: FF_X84_Y4_N7
\d[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux1~0_combout\,
	sload => VCC,
	ena => \d[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(14));

-- Location: IOIBUF_X74_Y0_N15
\divisor[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(5),
	o => \divisor[5]~input_o\);

-- Location: LCCOMB_X81_Y4_N28
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (state(2) & ((d(14)))) # (!state(2) & (\divisor[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[5]~input_o\,
	datac => state(2),
	datad => d(14),
	combout => \Mux2~0_combout\);

-- Location: FF_X81_Y4_N29
\d[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	ena => \d[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(13));

-- Location: IOIBUF_X60_Y0_N22
\divisor[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(4),
	o => \divisor[4]~input_o\);

-- Location: LCCOMB_X81_Y4_N14
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (state(2) & ((d(13)))) # (!state(2) & (\divisor[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datac => \divisor[4]~input_o\,
	datad => d(13),
	combout => \Mux3~0_combout\);

-- Location: FF_X81_Y4_N15
\d[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux3~0_combout\,
	ena => \d[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(12));

-- Location: IOIBUF_X81_Y0_N15
\divisor[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(3),
	o => \divisor[3]~input_o\);

-- Location: LCCOMB_X81_Y4_N12
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (state(2) & (d(12))) # (!state(2) & ((\divisor[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => d(12),
	datac => state(2),
	datad => \divisor[3]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: FF_X81_Y4_N13
\d[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux4~0_combout\,
	ena => \d[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(11));

-- Location: IOIBUF_X60_Y0_N15
\divisor[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(2),
	o => \divisor[2]~input_o\);

-- Location: LCCOMB_X81_Y4_N26
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (state(2) & ((d(11)))) # (!state(2) & (\divisor[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datac => \divisor[2]~input_o\,
	datad => d(11),
	combout => \Mux5~0_combout\);

-- Location: FF_X82_Y4_N25
\d[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux5~0_combout\,
	sload => VCC,
	ena => \d[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(10));

-- Location: IOIBUF_X81_Y0_N22
\divisor[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(1),
	o => \divisor[1]~input_o\);

-- Location: LCCOMB_X81_Y4_N16
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (state(2) & (d(10))) # (!state(2) & ((\divisor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => d(10),
	datac => \divisor[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: FF_X82_Y4_N5
\d[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux6~0_combout\,
	sload => VCC,
	ena => \d[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(9));

-- Location: IOIBUF_X65_Y0_N15
\divisor[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(0),
	o => \divisor[0]~input_o\);

-- Location: LCCOMB_X81_Y4_N22
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (state(2) & ((d(9)))) # (!state(2) & (\divisor[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => \divisor[0]~input_o\,
	datac => d(9),
	combout => \Mux7~0_combout\);

-- Location: FF_X82_Y4_N19
\d[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux7~0_combout\,
	sload => VCC,
	ena => \d[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(8));

-- Location: LCCOMB_X81_Y4_N0
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (state(2) & d(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(2),
	datad => d(8),
	combout => \Mux8~0_combout\);

-- Location: FF_X82_Y4_N7
\d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux8~0_combout\,
	sload => VCC,
	ena => \d[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(7));

-- Location: IOIBUF_X91_Y0_N22
\dividend[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(7),
	o => \dividend[7]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\dividend[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(6),
	o => \dividend[6]~input_o\);

-- Location: LCCOMB_X81_Y4_N6
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (state(2) & d(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(2),
	datad => d(7),
	combout => \Mux9~0_combout\);

-- Location: FF_X82_Y4_N21
\d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux9~0_combout\,
	sload => VCC,
	ena => \d[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(6));

-- Location: LCCOMB_X81_Y4_N4
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (state(2) & d(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datac => d(6),
	combout => \Mux10~0_combout\);

-- Location: FF_X82_Y4_N11
\d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux10~0_combout\,
	sload => VCC,
	ena => \d[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(5));

-- Location: IOIBUF_X83_Y0_N15
\dividend[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(5),
	o => \dividend[5]~input_o\);

-- Location: LCCOMB_X83_Y4_N4
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (state(2) & d(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(2),
	datad => d(5),
	combout => \Mux11~0_combout\);

-- Location: FF_X83_Y4_N5
\d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux11~0_combout\,
	ena => \d[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(4));

-- Location: LCCOMB_X83_Y4_N2
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (state(2) & d(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datac => d(4),
	combout => \Mux12~0_combout\);

-- Location: FF_X83_Y4_N3
\d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux12~0_combout\,
	ena => \d[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(3));

-- Location: IOIBUF_X56_Y0_N15
\dividend[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(3),
	o => \dividend[3]~input_o\);

-- Location: IOIBUF_X87_Y0_N22
\dividend[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(2),
	o => \dividend[2]~input_o\);

-- Location: LCCOMB_X83_Y4_N20
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (state(2) & d(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datad => d(3),
	combout => \Mux13~0_combout\);

-- Location: FF_X83_Y4_N21
\d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux13~0_combout\,
	ena => \d[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(2));

-- Location: LCCOMB_X83_Y4_N14
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (d(2) & state(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => d(2),
	datac => state(2),
	combout => \Mux14~0_combout\);

-- Location: FF_X83_Y4_N15
\d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux14~0_combout\,
	ena => \d[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(1));

-- Location: IOIBUF_X91_Y0_N15
\dividend[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(1),
	o => \dividend[1]~input_o\);

-- Location: LCCOMB_X83_Y4_N10
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (state(2) & d(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datac => d(1),
	combout => \Mux15~0_combout\);

-- Location: FF_X82_Y4_N31
\d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux15~0_combout\,
	sload => VCC,
	ena => \d[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(0));

-- Location: LCCOMB_X84_Y4_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (d(0) & (r(0) $ (VCC))) # (!d(0) & ((r(0)) # (GND)))
-- \Add0~1\ = CARRY((r(0)) # (!d(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d(0),
	datab => r(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X83_Y0_N8
\dividend[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(0),
	o => \dividend[0]~input_o\);

-- Location: LCCOMB_X83_Y4_N24
\r[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r[0]~0_combout\ = (state(0) & (\Add0~0_combout\)) # (!state(0) & ((\dividend[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \Add0~0_combout\,
	datad => \dividend[0]~input_o\,
	combout => \r[0]~0_combout\);

-- Location: LCCOMB_X82_Y4_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (d(0) & (r(0) $ (VCC))) # (!d(0) & (r(0) & VCC))
-- \Add1~1\ = CARRY((d(0) & r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d(0),
	datab => r(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: FF_X83_Y4_N25
\r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r[0]~0_combout\,
	asdata => \Add1~0_combout\,
	sload => state(1),
	ena => \r[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(0));

-- Location: LCCOMB_X84_Y4_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (d(1) & ((r(1) & (!\Add0~1\)) # (!r(1) & ((\Add0~1\) # (GND))))) # (!d(1) & ((r(1) & (\Add0~1\ & VCC)) # (!r(1) & (!\Add0~1\))))
-- \Add0~3\ = CARRY((d(1) & ((!\Add0~1\) # (!r(1)))) # (!d(1) & (!r(1) & !\Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d(1),
	datab => r(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X83_Y4_N30
\r[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r[1]~1_combout\ = (state(0) & ((\Add0~2_combout\))) # (!state(0) & (\dividend[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \dividend[1]~input_o\,
	datad => \Add0~2_combout\,
	combout => \r[1]~1_combout\);

-- Location: LCCOMB_X82_Y4_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (r(1) & ((d(1) & (\Add1~1\ & VCC)) # (!d(1) & (!\Add1~1\)))) # (!r(1) & ((d(1) & (!\Add1~1\)) # (!d(1) & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((r(1) & (!d(1) & !\Add1~1\)) # (!r(1) & ((!\Add1~1\) # (!d(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(1),
	datab => d(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X83_Y4_N31
\r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r[1]~1_combout\,
	asdata => \Add1~2_combout\,
	sload => state(1),
	ena => \r[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(1));

-- Location: LCCOMB_X84_Y4_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((r(2) $ (d(2) $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((r(2) & ((!\Add0~3\) # (!d(2)))) # (!r(2) & (!d(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(2),
	datab => d(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X83_Y4_N8
\r[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r[2]~2_combout\ = (state(0) & ((\Add0~4_combout\))) # (!state(0) & (\dividend[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \dividend[2]~input_o\,
	datad => \Add0~4_combout\,
	combout => \r[2]~2_combout\);

-- Location: LCCOMB_X82_Y4_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((d(2) $ (r(2) $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((d(2) & ((r(2)) # (!\Add1~3\))) # (!d(2) & (r(2) & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d(2),
	datab => r(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X83_Y4_N9
\r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r[2]~2_combout\,
	asdata => \Add1~4_combout\,
	sload => state(1),
	ena => \r[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(2));

-- Location: LCCOMB_X84_Y4_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (d(3) & ((r(3) & (!\Add0~5\)) # (!r(3) & ((\Add0~5\) # (GND))))) # (!d(3) & ((r(3) & (\Add0~5\ & VCC)) # (!r(3) & (!\Add0~5\))))
-- \Add0~7\ = CARRY((d(3) & ((!\Add0~5\) # (!r(3)))) # (!d(3) & (!r(3) & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d(3),
	datab => r(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X83_Y4_N6
\r[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r[3]~3_combout\ = (state(0) & ((\Add0~6_combout\))) # (!state(0) & (\dividend[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \dividend[3]~input_o\,
	datad => \Add0~6_combout\,
	combout => \r[3]~3_combout\);

-- Location: LCCOMB_X82_Y4_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (d(3) & ((r(3) & (\Add1~5\ & VCC)) # (!r(3) & (!\Add1~5\)))) # (!d(3) & ((r(3) & (!\Add1~5\)) # (!r(3) & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((d(3) & (!r(3) & !\Add1~5\)) # (!d(3) & ((!\Add1~5\) # (!r(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d(3),
	datab => r(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X83_Y4_N7
\r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r[3]~3_combout\,
	asdata => \Add1~6_combout\,
	sload => state(1),
	ena => \r[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(3));

-- Location: LCCOMB_X84_Y4_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((r(4) $ (d(4) $ (\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((r(4) & ((!\Add0~7\) # (!d(4)))) # (!r(4) & (!d(4) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(4),
	datab => d(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: IOIBUF_X83_Y0_N1
\dividend[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(4),
	o => \dividend[4]~input_o\);

-- Location: LCCOMB_X83_Y4_N16
\r[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r[4]~4_combout\ = (state(0) & (\Add0~8_combout\)) # (!state(0) & ((\dividend[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \Add0~8_combout\,
	datad => \dividend[4]~input_o\,
	combout => \r[4]~4_combout\);

-- Location: LCCOMB_X82_Y4_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((d(4) $ (r(4) $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((d(4) & ((r(4)) # (!\Add1~7\))) # (!d(4) & (r(4) & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d(4),
	datab => r(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X83_Y4_N17
\r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r[4]~4_combout\,
	asdata => \Add1~8_combout\,
	sload => state(1),
	ena => \r[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(4));

-- Location: LCCOMB_X84_Y4_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (d(5) & ((r(5) & (!\Add0~9\)) # (!r(5) & ((\Add0~9\) # (GND))))) # (!d(5) & ((r(5) & (\Add0~9\ & VCC)) # (!r(5) & (!\Add0~9\))))
-- \Add0~11\ = CARRY((d(5) & ((!\Add0~9\) # (!r(5)))) # (!d(5) & (!r(5) & !\Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d(5),
	datab => r(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X83_Y4_N22
\r[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r[5]~5_combout\ = (state(0) & ((\Add0~10_combout\))) # (!state(0) & (\dividend[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[5]~input_o\,
	datab => \Add0~10_combout\,
	datad => state(0),
	combout => \r[5]~5_combout\);

-- Location: LCCOMB_X82_Y4_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (d(5) & ((r(5) & (\Add1~9\ & VCC)) # (!r(5) & (!\Add1~9\)))) # (!d(5) & ((r(5) & (!\Add1~9\)) # (!r(5) & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((d(5) & (!r(5) & !\Add1~9\)) # (!d(5) & ((!\Add1~9\) # (!r(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d(5),
	datab => r(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X83_Y4_N23
\r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r[5]~5_combout\,
	asdata => \Add1~10_combout\,
	sload => state(1),
	ena => \r[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(5));

-- Location: LCCOMB_X84_Y4_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((r(6) $ (d(6) $ (\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((r(6) & ((!\Add0~11\) # (!d(6)))) # (!r(6) & (!d(6) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(6),
	datab => d(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X83_Y4_N12
\r[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r[6]~6_combout\ = (state(0) & ((\Add0~12_combout\))) # (!state(0) & (\dividend[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[6]~input_o\,
	datab => \Add0~12_combout\,
	datad => state(0),
	combout => \r[6]~6_combout\);

-- Location: LCCOMB_X82_Y4_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((r(6) $ (d(6) $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((r(6) & ((d(6)) # (!\Add1~11\))) # (!r(6) & (d(6) & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(6),
	datab => d(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X83_Y4_N13
\r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r[6]~6_combout\,
	asdata => \Add1~12_combout\,
	sload => state(1),
	ena => \r[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(6));

-- Location: LCCOMB_X84_Y4_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (d(7) & ((r(7) & (!\Add0~13\)) # (!r(7) & ((\Add0~13\) # (GND))))) # (!d(7) & ((r(7) & (\Add0~13\ & VCC)) # (!r(7) & (!\Add0~13\))))
-- \Add0~15\ = CARRY((d(7) & ((!\Add0~13\) # (!r(7)))) # (!d(7) & (!r(7) & !\Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d(7),
	datab => r(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X83_Y4_N18
\r[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r[7]~7_combout\ = (state(0) & ((\Add0~14_combout\))) # (!state(0) & (\dividend[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \dividend[7]~input_o\,
	datad => \Add0~14_combout\,
	combout => \r[7]~7_combout\);

-- Location: LCCOMB_X82_Y4_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (d(7) & ((r(7) & (\Add1~13\ & VCC)) # (!r(7) & (!\Add1~13\)))) # (!d(7) & ((r(7) & (!\Add1~13\)) # (!r(7) & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((d(7) & (!r(7) & !\Add1~13\)) # (!d(7) & ((!\Add1~13\) # (!r(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d(7),
	datab => r(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: FF_X83_Y4_N19
\r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r[7]~7_combout\,
	asdata => \Add1~14_combout\,
	sload => state(1),
	ena => \r[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(7));

-- Location: LCCOMB_X84_Y4_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((r(8) $ (d(8) $ (\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((r(8) & ((!\Add0~15\) # (!d(8)))) # (!r(8) & (!d(8) & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(8),
	datab => d(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X82_Y4_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((r(8) $ (d(8) $ (!\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((r(8) & ((d(8)) # (!\Add1~15\))) # (!r(8) & (d(8) & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(8),
	datab => d(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X85_Y4_N18
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (state(1) & (((\Add1~16_combout\)))) # (!state(1) & (state(0) & (\Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(0),
	datac => \Add0~16_combout\,
	datad => \Add1~16_combout\,
	combout => \Mux23~0_combout\);

-- Location: FF_X85_Y4_N19
\r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux23~0_combout\,
	ena => \r[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(8));

-- Location: LCCOMB_X82_Y4_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (r(9) & ((d(9) & (\Add1~17\ & VCC)) # (!d(9) & (!\Add1~17\)))) # (!r(9) & ((d(9) & (!\Add1~17\)) # (!d(9) & ((\Add1~17\) # (GND)))))
-- \Add1~19\ = CARRY((r(9) & (!d(9) & !\Add1~17\)) # (!r(9) & ((!\Add1~17\) # (!d(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(9),
	datab => d(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X84_Y4_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (d(9) & ((r(9) & (!\Add0~17\)) # (!r(9) & ((\Add0~17\) # (GND))))) # (!d(9) & ((r(9) & (\Add0~17\ & VCC)) # (!r(9) & (!\Add0~17\))))
-- \Add0~19\ = CARRY((d(9) & ((!\Add0~17\) # (!r(9)))) # (!d(9) & (!r(9) & !\Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d(9),
	datab => r(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X85_Y4_N8
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (state(1) & (((\Add1~18_combout\)))) # (!state(1) & (state(0) & ((\Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(0),
	datac => \Add1~18_combout\,
	datad => \Add0~18_combout\,
	combout => \Mux22~0_combout\);

-- Location: FF_X85_Y4_N9
\r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux22~0_combout\,
	ena => \r[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(9));

-- Location: LCCOMB_X82_Y4_N20
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((r(10) $ (d(10) $ (!\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((r(10) & ((d(10)) # (!\Add1~19\))) # (!r(10) & (d(10) & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(10),
	datab => d(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X84_Y4_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((d(10) $ (r(10) $ (\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((d(10) & (r(10) & !\Add0~19\)) # (!d(10) & ((r(10)) # (!\Add0~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d(10),
	datab => r(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X85_Y4_N14
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (state(1) & (((\Add1~20_combout\)))) # (!state(1) & (state(0) & ((\Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(0),
	datac => \Add1~20_combout\,
	datad => \Add0~20_combout\,
	combout => \Mux21~0_combout\);

-- Location: FF_X85_Y4_N15
\r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux21~0_combout\,
	ena => \r[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(10));

-- Location: LCCOMB_X82_Y4_N22
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (d(11) & ((r(11) & (\Add1~21\ & VCC)) # (!r(11) & (!\Add1~21\)))) # (!d(11) & ((r(11) & (!\Add1~21\)) # (!r(11) & ((\Add1~21\) # (GND)))))
-- \Add1~23\ = CARRY((d(11) & (!r(11) & !\Add1~21\)) # (!d(11) & ((!\Add1~21\) # (!r(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d(11),
	datab => r(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X84_Y4_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (r(11) & ((d(11) & (!\Add0~21\)) # (!d(11) & (\Add0~21\ & VCC)))) # (!r(11) & ((d(11) & ((\Add0~21\) # (GND))) # (!d(11) & (!\Add0~21\))))
-- \Add0~23\ = CARRY((r(11) & (d(11) & !\Add0~21\)) # (!r(11) & ((d(11)) # (!\Add0~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(11),
	datab => d(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X85_Y4_N20
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (state(1) & (((\Add1~22_combout\)))) # (!state(1) & (state(0) & ((\Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(0),
	datac => \Add1~22_combout\,
	datad => \Add0~22_combout\,
	combout => \Mux20~0_combout\);

-- Location: FF_X85_Y4_N21
\r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux20~0_combout\,
	ena => \r[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(11));

-- Location: LCCOMB_X82_Y4_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((d(12) $ (r(12) $ (!\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((d(12) & ((r(12)) # (!\Add1~23\))) # (!d(12) & (r(12) & !\Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d(12),
	datab => r(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X84_Y4_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((r(12) $ (d(12) $ (\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((r(12) & ((!\Add0~23\) # (!d(12)))) # (!r(12) & (!d(12) & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(12),
	datab => d(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X83_Y4_N0
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (state(1) & (((\Add1~24_combout\)))) # (!state(1) & (state(0) & ((\Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \Add1~24_combout\,
	datac => state(1),
	datad => \Add0~24_combout\,
	combout => \Mux19~0_combout\);

-- Location: FF_X83_Y4_N1
\r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux19~0_combout\,
	ena => \r[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(12));

-- Location: LCCOMB_X84_Y4_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (r(13) & ((d(13) & (!\Add0~25\)) # (!d(13) & (\Add0~25\ & VCC)))) # (!r(13) & ((d(13) & ((\Add0~25\) # (GND))) # (!d(13) & (!\Add0~25\))))
-- \Add0~27\ = CARRY((r(13) & (d(13) & !\Add0~25\)) # (!r(13) & ((d(13)) # (!\Add0~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(13),
	datab => d(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X82_Y4_N26
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (r(13) & ((d(13) & (\Add1~25\ & VCC)) # (!d(13) & (!\Add1~25\)))) # (!r(13) & ((d(13) & (!\Add1~25\)) # (!d(13) & ((\Add1~25\) # (GND)))))
-- \Add1~27\ = CARRY((r(13) & (!d(13) & !\Add1~25\)) # (!r(13) & ((!\Add1~25\) # (!d(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(13),
	datab => d(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X83_Y4_N26
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (state(1) & (((\Add1~26_combout\)))) # (!state(1) & (\Add0~26_combout\ & ((state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => \Add0~26_combout\,
	datac => \Add1~26_combout\,
	datad => state(0),
	combout => \Mux18~0_combout\);

-- Location: FF_X83_Y4_N27
\r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux18~0_combout\,
	ena => \r[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(13));

-- Location: LCCOMB_X82_Y4_N28
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((d(14) $ (r(14) $ (!\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((d(14) & ((r(14)) # (!\Add1~27\))) # (!d(14) & (r(14) & !\Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d(14),
	datab => r(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X84_Y4_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((d(14) $ (r(14) $ (\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((d(14) & (r(14) & !\Add0~27\)) # (!d(14) & ((r(14)) # (!\Add0~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d(14),
	datab => r(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X83_Y4_N28
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (state(1) & (((\Add1~28_combout\)))) # (!state(1) & (state(0) & ((\Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \Add1~28_combout\,
	datac => state(1),
	datad => \Add0~28_combout\,
	combout => \Mux17~0_combout\);

-- Location: FF_X83_Y4_N29
\r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux17~0_combout\,
	ena => \r[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(14));

-- Location: LCCOMB_X82_Y4_N30
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = d(15) $ (\Add1~29\ $ (r(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d(15),
	datad => r(15),
	cin => \Add1~29\,
	combout => \Add1~30_combout\);

-- Location: LCCOMB_X85_Y4_N10
\r[15]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r[15]~10_combout\ = (state(1) & (\Add1~30_combout\)) # (!state(1) & ((\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datac => \Add1~30_combout\,
	datad => \Add0~30_combout\,
	combout => \r[15]~10_combout\);

-- Location: LCCOMB_X85_Y4_N22
\r[15]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \r[15]~11_combout\ = (\r[0]~8_combout\ & (\r[15]~9_combout\ & ((\r[15]~10_combout\)))) # (!\r[0]~8_combout\ & ((r(15)) # ((\r[15]~9_combout\ & \r[15]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[0]~8_combout\,
	datab => \r[15]~9_combout\,
	datac => r(15),
	datad => \r[15]~10_combout\,
	combout => \r[15]~11_combout\);

-- Location: FF_X85_Y4_N23
\r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(15));

-- Location: LCCOMB_X84_Y4_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = d(15) $ (\Add0~29\ $ (!r(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => d(15),
	datad => r(15),
	cin => \Add0~29\,
	combout => \Add0~30_combout\);

-- Location: LCCOMB_X85_Y4_N4
\Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (state(0) & ((state(2)) # ((!state(1) & \Add0~30_combout\)))) # (!state(0) & (!state(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datac => state(0),
	datad => \Add0~30_combout\,
	combout => \Mux46~0_combout\);

-- Location: FF_X85_Y4_N5
\state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux46~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(0));

-- Location: LCCOMB_X85_Y4_N26
\Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (state(1) & ((state(2)))) # (!state(1) & (state(0) & !state(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(0),
	datac => state(1),
	datad => state(2),
	combout => \Mux45~0_combout\);

-- Location: FF_X85_Y4_N27
\state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux45~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(1));

-- Location: LCCOMB_X97_Y4_N16
\Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (state(1) & !state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(1),
	datac => state(0),
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X85_Y4_N16
\quotient[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient[0]~0_combout\ = (!\reset~input_o\ & (!state(2) & ((state(1)) # (!state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => \reset~input_o\,
	datac => state(0),
	datad => state(2),
	combout => \quotient[0]~0_combout\);

-- Location: FF_X97_Y4_N17
\quotient[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux39~0_combout\,
	ena => \quotient[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[0]~reg0_q\);

-- Location: LCCOMB_X97_Y4_N18
\Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (state(1) & \quotient[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => \quotient[0]~reg0_q\,
	combout => \Mux38~0_combout\);

-- Location: FF_X97_Y4_N19
\quotient[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux38~0_combout\,
	ena => \quotient[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[1]~reg0_q\);

-- Location: LCCOMB_X97_Y4_N12
\Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (state(1) & \quotient[1]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => \quotient[1]~reg0_q\,
	combout => \Mux37~0_combout\);

-- Location: FF_X97_Y4_N13
\quotient[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux37~0_combout\,
	ena => \quotient[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[2]~reg0_q\);

-- Location: LCCOMB_X97_Y4_N6
\Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (state(1) & \quotient[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => \quotient[2]~reg0_q\,
	combout => \Mux36~0_combout\);

-- Location: FF_X97_Y4_N7
\quotient[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux36~0_combout\,
	ena => \quotient[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[3]~reg0_q\);

-- Location: LCCOMB_X97_Y4_N0
\Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (state(1) & \quotient[3]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => \quotient[3]~reg0_q\,
	combout => \Mux35~0_combout\);

-- Location: FF_X97_Y4_N1
\quotient[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux35~0_combout\,
	ena => \quotient[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[4]~reg0_q\);

-- Location: LCCOMB_X97_Y4_N14
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (state(1) & \quotient[4]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => \quotient[4]~reg0_q\,
	combout => \Mux34~0_combout\);

-- Location: FF_X97_Y4_N15
\quotient[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux34~0_combout\,
	ena => \quotient[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[5]~reg0_q\);

-- Location: LCCOMB_X97_Y4_N20
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\quotient[5]~reg0_q\ & state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \quotient[5]~reg0_q\,
	datac => state(1),
	combout => \Mux33~0_combout\);

-- Location: FF_X97_Y4_N21
\quotient[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux33~0_combout\,
	ena => \quotient[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[6]~reg0_q\);

-- Location: LCCOMB_X97_Y4_N26
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (state(1) & \quotient[6]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => \quotient[6]~reg0_q\,
	combout => \Mux32~0_combout\);

-- Location: FF_X97_Y4_N27
\quotient[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux32~0_combout\,
	ena => \quotient[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[7]~reg0_q\);

-- Location: LCCOMB_X81_Y1_N20
\f1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Mux6~0_combout\ = (r(3)) # ((r(2) & ((!r(1)) # (!r(0)))) # (!r(2) & ((r(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(2),
	datab => r(0),
	datac => r(1),
	datad => r(3),
	combout => \f1|Mux6~0_combout\);

-- Location: LCCOMB_X81_Y1_N22
\f1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Mux5~0_combout\ = (r(2) & ((r(1) & (r(0) & !r(3))) # (!r(1) & ((r(3)))))) # (!r(2) & (!r(3) & ((r(0)) # (r(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(2),
	datab => r(0),
	datac => r(1),
	datad => r(3),
	combout => \f1|Mux5~0_combout\);

-- Location: LCCOMB_X81_Y1_N28
\f1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Mux4~0_combout\ = (r(1) & (((r(0) & !r(3))))) # (!r(1) & ((r(2) & ((!r(3)))) # (!r(2) & (r(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(2),
	datab => r(0),
	datac => r(1),
	datad => r(3),
	combout => \f1|Mux4~0_combout\);

-- Location: LCCOMB_X81_Y1_N6
\f1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Mux3~0_combout\ = (r(0) & (r(2) $ ((!r(1))))) # (!r(0) & ((r(2) & (!r(1) & !r(3))) # (!r(2) & (r(1) & r(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(2),
	datab => r(0),
	datac => r(1),
	datad => r(3),
	combout => \f1|Mux3~0_combout\);

-- Location: LCCOMB_X81_Y1_N12
\f1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Mux2~0_combout\ = (r(2) & (r(3) & ((r(1)) # (!r(0))))) # (!r(2) & (!r(0) & (r(1) & !r(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(2),
	datab => r(0),
	datac => r(1),
	datad => r(3),
	combout => \f1|Mux2~0_combout\);

-- Location: LCCOMB_X81_Y1_N10
\f1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Mux1~0_combout\ = (r(1) & ((r(0) & ((r(3)))) # (!r(0) & (r(2))))) # (!r(1) & (r(2) & (r(0) $ (r(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(2),
	datab => r(0),
	datac => r(1),
	datad => r(3),
	combout => \f1|Mux1~0_combout\);

-- Location: LCCOMB_X81_Y1_N4
\f1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Mux0~0_combout\ = (r(2) & (!r(1) & ((r(3)) # (!r(0))))) # (!r(2) & (r(0) & (r(1) $ (!r(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(2),
	datab => r(0),
	datac => r(1),
	datad => r(3),
	combout => \f1|Mux0~0_combout\);

-- Location: LCCOMB_X70_Y1_N8
\f2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|Mux6~0_combout\ = (r(7)) # ((r(6) & ((!r(5)) # (!r(4)))) # (!r(6) & ((r(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(6),
	datab => r(4),
	datac => r(7),
	datad => r(5),
	combout => \f2|Mux6~0_combout\);

-- Location: LCCOMB_X70_Y1_N30
\f2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|Mux5~0_combout\ = (r(6) & ((r(7) & ((!r(5)))) # (!r(7) & (r(4) & r(5))))) # (!r(6) & (!r(7) & ((r(4)) # (r(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(6),
	datab => r(4),
	datac => r(7),
	datad => r(5),
	combout => \f2|Mux5~0_combout\);

-- Location: LCCOMB_X70_Y1_N24
\f2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|Mux4~0_combout\ = (r(5) & (((r(4) & !r(7))))) # (!r(5) & ((r(6) & ((!r(7)))) # (!r(6) & (r(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(6),
	datab => r(4),
	datac => r(7),
	datad => r(5),
	combout => \f2|Mux4~0_combout\);

-- Location: LCCOMB_X70_Y1_N10
\f2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|Mux3~0_combout\ = (r(4) & (r(6) $ (((!r(5)))))) # (!r(4) & ((r(6) & (!r(7) & !r(5))) # (!r(6) & (r(7) & r(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(6),
	datab => r(4),
	datac => r(7),
	datad => r(5),
	combout => \f2|Mux3~0_combout\);

-- Location: LCCOMB_X70_Y1_N16
\f2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|Mux2~0_combout\ = (r(6) & (r(7) & ((r(5)) # (!r(4))))) # (!r(6) & (!r(4) & (!r(7) & r(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(6),
	datab => r(4),
	datac => r(7),
	datad => r(5),
	combout => \f2|Mux2~0_combout\);

-- Location: LCCOMB_X70_Y1_N26
\f2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|Mux1~0_combout\ = (r(7) & ((r(4) & ((r(5)))) # (!r(4) & (r(6))))) # (!r(7) & (r(6) & (r(4) $ (r(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(6),
	datab => r(4),
	datac => r(7),
	datad => r(5),
	combout => \f2|Mux1~0_combout\);

-- Location: LCCOMB_X70_Y1_N12
\f2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|Mux0~0_combout\ = (r(6) & (!r(5) & ((r(7)) # (!r(4))))) # (!r(6) & (r(4) & (r(7) $ (!r(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r(6),
	datab => r(4),
	datac => r(7),
	datad => r(5),
	combout => \f2|Mux0~0_combout\);

-- Location: LCCOMB_X97_Y4_N28
\f3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|Mux6~0_combout\ = (\quotient[3]~reg0_q\) # ((\quotient[2]~reg0_q\ & ((!\quotient[1]~reg0_q\) # (!\quotient[0]~reg0_q\))) # (!\quotient[2]~reg0_q\ & ((\quotient[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[2]~reg0_q\,
	datab => \quotient[0]~reg0_q\,
	datac => \quotient[1]~reg0_q\,
	datad => \quotient[3]~reg0_q\,
	combout => \f3|Mux6~0_combout\);

-- Location: LCCOMB_X97_Y4_N30
\f3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|Mux5~0_combout\ = (\quotient[2]~reg0_q\ & ((\quotient[1]~reg0_q\ & (\quotient[0]~reg0_q\ & !\quotient[3]~reg0_q\)) # (!\quotient[1]~reg0_q\ & ((\quotient[3]~reg0_q\))))) # (!\quotient[2]~reg0_q\ & (!\quotient[3]~reg0_q\ & ((\quotient[0]~reg0_q\) # 
-- (\quotient[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[2]~reg0_q\,
	datab => \quotient[0]~reg0_q\,
	datac => \quotient[1]~reg0_q\,
	datad => \quotient[3]~reg0_q\,
	combout => \f3|Mux5~0_combout\);

-- Location: LCCOMB_X97_Y4_N4
\f3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|Mux4~0_combout\ = (\quotient[1]~reg0_q\ & (((\quotient[0]~reg0_q\ & !\quotient[3]~reg0_q\)))) # (!\quotient[1]~reg0_q\ & ((\quotient[2]~reg0_q\ & ((!\quotient[3]~reg0_q\))) # (!\quotient[2]~reg0_q\ & (\quotient[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[2]~reg0_q\,
	datab => \quotient[0]~reg0_q\,
	datac => \quotient[1]~reg0_q\,
	datad => \quotient[3]~reg0_q\,
	combout => \f3|Mux4~0_combout\);

-- Location: LCCOMB_X97_Y4_N10
\f3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|Mux3~0_combout\ = (\quotient[0]~reg0_q\ & (\quotient[2]~reg0_q\ $ ((!\quotient[1]~reg0_q\)))) # (!\quotient[0]~reg0_q\ & ((\quotient[2]~reg0_q\ & (!\quotient[1]~reg0_q\ & !\quotient[3]~reg0_q\)) # (!\quotient[2]~reg0_q\ & (\quotient[1]~reg0_q\ & 
-- \quotient[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[2]~reg0_q\,
	datab => \quotient[0]~reg0_q\,
	datac => \quotient[1]~reg0_q\,
	datad => \quotient[3]~reg0_q\,
	combout => \f3|Mux3~0_combout\);

-- Location: LCCOMB_X97_Y4_N24
\f3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|Mux2~0_combout\ = (\quotient[2]~reg0_q\ & (\quotient[3]~reg0_q\ & ((\quotient[1]~reg0_q\) # (!\quotient[0]~reg0_q\)))) # (!\quotient[2]~reg0_q\ & (!\quotient[0]~reg0_q\ & (\quotient[1]~reg0_q\ & !\quotient[3]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[2]~reg0_q\,
	datab => \quotient[0]~reg0_q\,
	datac => \quotient[1]~reg0_q\,
	datad => \quotient[3]~reg0_q\,
	combout => \f3|Mux2~0_combout\);

-- Location: LCCOMB_X97_Y4_N22
\f3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|Mux1~0_combout\ = (\quotient[1]~reg0_q\ & ((\quotient[0]~reg0_q\ & ((\quotient[3]~reg0_q\))) # (!\quotient[0]~reg0_q\ & (\quotient[2]~reg0_q\)))) # (!\quotient[1]~reg0_q\ & (\quotient[2]~reg0_q\ & (\quotient[0]~reg0_q\ $ (\quotient[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[2]~reg0_q\,
	datab => \quotient[0]~reg0_q\,
	datac => \quotient[1]~reg0_q\,
	datad => \quotient[3]~reg0_q\,
	combout => \f3|Mux1~0_combout\);

-- Location: LCCOMB_X97_Y4_N8
\f3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|Mux0~0_combout\ = (\quotient[2]~reg0_q\ & (!\quotient[1]~reg0_q\ & ((\quotient[3]~reg0_q\) # (!\quotient[0]~reg0_q\)))) # (!\quotient[2]~reg0_q\ & (\quotient[0]~reg0_q\ & (\quotient[1]~reg0_q\ $ (!\quotient[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[2]~reg0_q\,
	datab => \quotient[0]~reg0_q\,
	datac => \quotient[1]~reg0_q\,
	datad => \quotient[3]~reg0_q\,
	combout => \f3|Mux0~0_combout\);

-- Location: LCCOMB_X106_Y1_N4
\f4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f4|Mux6~0_combout\ = (\quotient[7]~reg0_q\) # ((\quotient[6]~reg0_q\ & ((!\quotient[4]~reg0_q\) # (!\quotient[5]~reg0_q\))) # (!\quotient[6]~reg0_q\ & (\quotient[5]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[6]~reg0_q\,
	datab => \quotient[5]~reg0_q\,
	datac => \quotient[7]~reg0_q\,
	datad => \quotient[4]~reg0_q\,
	combout => \f4|Mux6~0_combout\);

-- Location: LCCOMB_X106_Y1_N30
\f4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f4|Mux5~0_combout\ = (\quotient[6]~reg0_q\ & ((\quotient[5]~reg0_q\ & (!\quotient[7]~reg0_q\ & \quotient[4]~reg0_q\)) # (!\quotient[5]~reg0_q\ & (\quotient[7]~reg0_q\)))) # (!\quotient[6]~reg0_q\ & (!\quotient[7]~reg0_q\ & ((\quotient[5]~reg0_q\) # 
-- (\quotient[4]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[6]~reg0_q\,
	datab => \quotient[5]~reg0_q\,
	datac => \quotient[7]~reg0_q\,
	datad => \quotient[4]~reg0_q\,
	combout => \f4|Mux5~0_combout\);

-- Location: LCCOMB_X106_Y1_N12
\f4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f4|Mux4~0_combout\ = (\quotient[5]~reg0_q\ & (((!\quotient[7]~reg0_q\ & \quotient[4]~reg0_q\)))) # (!\quotient[5]~reg0_q\ & ((\quotient[6]~reg0_q\ & (!\quotient[7]~reg0_q\)) # (!\quotient[6]~reg0_q\ & ((\quotient[4]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[6]~reg0_q\,
	datab => \quotient[5]~reg0_q\,
	datac => \quotient[7]~reg0_q\,
	datad => \quotient[4]~reg0_q\,
	combout => \f4|Mux4~0_combout\);

-- Location: LCCOMB_X106_Y1_N10
\f4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f4|Mux3~0_combout\ = (\quotient[4]~reg0_q\ & (\quotient[6]~reg0_q\ $ ((!\quotient[5]~reg0_q\)))) # (!\quotient[4]~reg0_q\ & ((\quotient[6]~reg0_q\ & (!\quotient[5]~reg0_q\ & !\quotient[7]~reg0_q\)) # (!\quotient[6]~reg0_q\ & (\quotient[5]~reg0_q\ & 
-- \quotient[7]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[6]~reg0_q\,
	datab => \quotient[5]~reg0_q\,
	datac => \quotient[7]~reg0_q\,
	datad => \quotient[4]~reg0_q\,
	combout => \f4|Mux3~0_combout\);

-- Location: LCCOMB_X106_Y1_N28
\f4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f4|Mux2~0_combout\ = (\quotient[6]~reg0_q\ & (\quotient[7]~reg0_q\ & ((\quotient[5]~reg0_q\) # (!\quotient[4]~reg0_q\)))) # (!\quotient[6]~reg0_q\ & (\quotient[5]~reg0_q\ & (!\quotient[7]~reg0_q\ & !\quotient[4]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[6]~reg0_q\,
	datab => \quotient[5]~reg0_q\,
	datac => \quotient[7]~reg0_q\,
	datad => \quotient[4]~reg0_q\,
	combout => \f4|Mux2~0_combout\);

-- Location: LCCOMB_X106_Y1_N22
\f4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f4|Mux1~0_combout\ = (\quotient[5]~reg0_q\ & ((\quotient[4]~reg0_q\ & ((\quotient[7]~reg0_q\))) # (!\quotient[4]~reg0_q\ & (\quotient[6]~reg0_q\)))) # (!\quotient[5]~reg0_q\ & (\quotient[6]~reg0_q\ & (\quotient[7]~reg0_q\ $ (\quotient[4]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[6]~reg0_q\,
	datab => \quotient[5]~reg0_q\,
	datac => \quotient[7]~reg0_q\,
	datad => \quotient[4]~reg0_q\,
	combout => \f4|Mux1~0_combout\);

-- Location: LCCOMB_X106_Y1_N0
\f4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f4|Mux0~0_combout\ = (\quotient[6]~reg0_q\ & (!\quotient[5]~reg0_q\ & ((\quotient[7]~reg0_q\) # (!\quotient[4]~reg0_q\)))) # (!\quotient[6]~reg0_q\ & (\quotient[4]~reg0_q\ & (\quotient[5]~reg0_q\ $ (!\quotient[7]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient[6]~reg0_q\,
	datab => \quotient[5]~reg0_q\,
	datac => \quotient[7]~reg0_q\,
	datad => \quotient[4]~reg0_q\,
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

ww_remainder(8) <= \remainder[8]~output_o\;

ww_remainder(9) <= \remainder[9]~output_o\;

ww_remainder(10) <= \remainder[10]~output_o\;

ww_remainder(11) <= \remainder[11]~output_o\;

ww_remainder(12) <= \remainder[12]~output_o\;

ww_remainder(13) <= \remainder[13]~output_o\;

ww_remainder(14) <= \remainder[14]~output_o\;

ww_remainder(15) <= \remainder[15]~output_o\;

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


