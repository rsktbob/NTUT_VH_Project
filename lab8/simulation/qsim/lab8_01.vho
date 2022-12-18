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

-- DATE "12/18/2022 15:48:01"

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
	op : IN std_logic_vector(3 DOWNTO 0);
	Data : IN std_logic_vector(7 DOWNTO 0);
	Rs : IN std_logic_vector(1 DOWNTO 0);
	Rt : IN std_logic_vector(1 DOWNTO 0);
	Rs_seg0 : BUFFER std_logic_vector(6 DOWNTO 0);
	Rs_seg1 : BUFFER std_logic_vector(6 DOWNTO 0);
	Rt_seg0 : BUFFER std_logic_vector(6 DOWNTO 0);
	Rt_seg1 : BUFFER std_logic_vector(6 DOWNTO 0);
	Data_seg0 : BUFFER std_logic_vector(6 DOWNTO 0);
	Data_seg1 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END lab8_01;

-- Design Ports Information
-- Rs_seg0[0]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_seg0[1]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_seg0[2]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_seg0[3]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_seg0[4]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_seg0[5]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_seg0[6]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_seg1[0]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_seg1[1]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_seg1[2]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_seg1[3]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_seg1[4]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_seg1[5]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_seg1[6]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_seg0[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_seg0[1]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_seg0[2]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_seg0[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_seg0[4]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_seg0[5]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_seg0[6]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_seg1[0]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_seg1[1]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_seg1[2]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_seg1[3]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_seg1[4]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_seg1[5]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_seg1[6]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_seg0[0]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_seg0[1]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_seg0[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_seg0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_seg0[4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_seg0[5]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_seg0[6]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_seg1[0]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_seg1[1]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_seg1[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_seg1[3]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_seg1[4]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_seg1[5]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_seg1[6]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs[0]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs[1]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[3]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[1]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[2]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[0]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[2]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[3]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[4]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[5]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[6]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[7]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt[0]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_op : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Rs : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Rt : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Rs_seg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Rs_seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Rt_seg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Rt_seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Data_seg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Data_seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Rs_seg0[0]~output_o\ : std_logic;
SIGNAL \Rs_seg0[1]~output_o\ : std_logic;
SIGNAL \Rs_seg0[2]~output_o\ : std_logic;
SIGNAL \Rs_seg0[3]~output_o\ : std_logic;
SIGNAL \Rs_seg0[4]~output_o\ : std_logic;
SIGNAL \Rs_seg0[5]~output_o\ : std_logic;
SIGNAL \Rs_seg0[6]~output_o\ : std_logic;
SIGNAL \Rs_seg1[0]~output_o\ : std_logic;
SIGNAL \Rs_seg1[1]~output_o\ : std_logic;
SIGNAL \Rs_seg1[2]~output_o\ : std_logic;
SIGNAL \Rs_seg1[3]~output_o\ : std_logic;
SIGNAL \Rs_seg1[4]~output_o\ : std_logic;
SIGNAL \Rs_seg1[5]~output_o\ : std_logic;
SIGNAL \Rs_seg1[6]~output_o\ : std_logic;
SIGNAL \Rt_seg0[0]~output_o\ : std_logic;
SIGNAL \Rt_seg0[1]~output_o\ : std_logic;
SIGNAL \Rt_seg0[2]~output_o\ : std_logic;
SIGNAL \Rt_seg0[3]~output_o\ : std_logic;
SIGNAL \Rt_seg0[4]~output_o\ : std_logic;
SIGNAL \Rt_seg0[5]~output_o\ : std_logic;
SIGNAL \Rt_seg0[6]~output_o\ : std_logic;
SIGNAL \Rt_seg1[0]~output_o\ : std_logic;
SIGNAL \Rt_seg1[1]~output_o\ : std_logic;
SIGNAL \Rt_seg1[2]~output_o\ : std_logic;
SIGNAL \Rt_seg1[3]~output_o\ : std_logic;
SIGNAL \Rt_seg1[4]~output_o\ : std_logic;
SIGNAL \Rt_seg1[5]~output_o\ : std_logic;
SIGNAL \Rt_seg1[6]~output_o\ : std_logic;
SIGNAL \Data_seg0[0]~output_o\ : std_logic;
SIGNAL \Data_seg0[1]~output_o\ : std_logic;
SIGNAL \Data_seg0[2]~output_o\ : std_logic;
SIGNAL \Data_seg0[3]~output_o\ : std_logic;
SIGNAL \Data_seg0[4]~output_o\ : std_logic;
SIGNAL \Data_seg0[5]~output_o\ : std_logic;
SIGNAL \Data_seg0[6]~output_o\ : std_logic;
SIGNAL \Data_seg1[0]~output_o\ : std_logic;
SIGNAL \Data_seg1[1]~output_o\ : std_logic;
SIGNAL \Data_seg1[2]~output_o\ : std_logic;
SIGNAL \Data_seg1[3]~output_o\ : std_logic;
SIGNAL \Data_seg1[4]~output_o\ : std_logic;
SIGNAL \Data_seg1[5]~output_o\ : std_logic;
SIGNAL \Data_seg1[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \op[3]~input_o\ : std_logic;
SIGNAL \op[1]~input_o\ : std_logic;
SIGNAL \Rt[0]~input_o\ : std_logic;
SIGNAL \Rt[1]~input_o\ : std_logic;
SIGNAL \Mux87~0_combout\ : std_logic;
SIGNAL \Rs[1]~input_o\ : std_logic;
SIGNAL \Rs[0]~input_o\ : std_logic;
SIGNAL \R3[5]~0_combout\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \R0[6]~0_combout\ : std_logic;
SIGNAL \Mux79~0_combout\ : std_logic;
SIGNAL \R2[6]~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Rt_sel[0]~feeder_combout\ : std_logic;
SIGNAL \Mux71~0_combout\ : std_logic;
SIGNAL \R1[7]~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \op[2]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \op[0]~input_o\ : std_logic;
SIGNAL \Add0~3_cout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Data[0]~input_o\ : std_logic;
SIGNAL \Rs_sel[3]~3_combout\ : std_logic;
SIGNAL \Rs_sel[3]~2_combout\ : std_logic;
SIGNAL \Data[7]~input_o\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Rs_sel[3]~0_combout\ : std_logic;
SIGNAL \Mux80~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Mux64~0_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Mux81~0_combout\ : std_logic;
SIGNAL \Mux73~0_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux65~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Data[6]~input_o\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Rs_sel~8_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Mux74~0_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Mux66~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Data[5]~input_o\ : std_logic;
SIGNAL \Rs_sel~7_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Mux83~0_combout\ : std_logic;
SIGNAL \Mux75~0_combout\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Rs_sel~6_combout\ : std_logic;
SIGNAL \Data[4]~input_o\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Mux84~0_combout\ : std_logic;
SIGNAL \Mux76~0_combout\ : std_logic;
SIGNAL \Mux68~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Rs_sel~5_combout\ : std_logic;
SIGNAL \Data[3]~input_o\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Mux69~0_combout\ : std_logic;
SIGNAL \Mux77~0_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux85~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mux86~0_combout\ : std_logic;
SIGNAL \Mux78~0_combout\ : std_logic;
SIGNAL \Mux70~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Data[1]~input_o\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Rs_sel~1_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Data[2]~input_o\ : std_logic;
SIGNAL \Rs_sel~4_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux67~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~24\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux82~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Mux16~6_combout\ : std_logic;
SIGNAL \Mux72~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
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
SIGNAL \Data_sel[3]~feeder_combout\ : std_logic;
SIGNAL \Data_sel[0]~feeder_combout\ : std_logic;
SIGNAL \Data_sel[1]~feeder_combout\ : std_logic;
SIGNAL \Data_sel[2]~feeder_combout\ : std_logic;
SIGNAL \f5|Mux6~0_combout\ : std_logic;
SIGNAL \f5|Mux5~0_combout\ : std_logic;
SIGNAL \f5|Mux4~0_combout\ : std_logic;
SIGNAL \f5|Mux3~0_combout\ : std_logic;
SIGNAL \f5|Mux2~0_combout\ : std_logic;
SIGNAL \f5|Mux1~0_combout\ : std_logic;
SIGNAL \f5|Mux0~0_combout\ : std_logic;
SIGNAL \Data_sel[7]~feeder_combout\ : std_logic;
SIGNAL \f6|Mux6~0_combout\ : std_logic;
SIGNAL \f6|Mux5~0_combout\ : std_logic;
SIGNAL \f6|Mux4~0_combout\ : std_logic;
SIGNAL \f6|Mux3~0_combout\ : std_logic;
SIGNAL \f6|Mux2~0_combout\ : std_logic;
SIGNAL \f6|Mux1~0_combout\ : std_logic;
SIGNAL \f6|Mux0~0_combout\ : std_logic;
SIGNAL Rs_sel : std_logic_vector(7 DOWNTO 0);
SIGNAL Rt_sel : std_logic_vector(7 DOWNTO 0);
SIGNAL Data_sel : std_logic_vector(7 DOWNTO 0);
SIGNAL R1 : std_logic_vector(7 DOWNTO 0);
SIGNAL R2 : std_logic_vector(7 DOWNTO 0);
SIGNAL R0 : std_logic_vector(7 DOWNTO 0);
SIGNAL R3 : std_logic_vector(7 DOWNTO 0);
SIGNAL \f6|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \f5|ALT_INV_Mux6~0_combout\ : std_logic;
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
ww_op <= op;
ww_Data <= Data;
ww_Rs <= Rs;
ww_Rt <= Rt;
Rs_seg0 <= ww_Rs_seg0;
Rs_seg1 <= ww_Rs_seg1;
Rt_seg0 <= ww_Rt_seg0;
Rt_seg1 <= ww_Rt_seg1;
Data_seg0 <= ww_Data_seg0;
Data_seg1 <= ww_Data_seg1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\f6|ALT_INV_Mux6~0_combout\ <= NOT \f6|Mux6~0_combout\;
\f5|ALT_INV_Mux6~0_combout\ <= NOT \f5|Mux6~0_combout\;
\f4|ALT_INV_Mux6~0_combout\ <= NOT \f4|Mux6~0_combout\;
\f3|ALT_INV_Mux6~0_combout\ <= NOT \f3|Mux6~0_combout\;
\f2|ALT_INV_Mux6~0_combout\ <= NOT \f2|Mux6~0_combout\;
\f1|ALT_INV_Mux6~0_combout\ <= NOT \f1|Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X98_Y73_N16
\Rs_seg0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Rs_seg0[0]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\Rs_seg0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Rs_seg0[1]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\Rs_seg0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Rs_seg0[2]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\Rs_seg0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Rs_seg0[3]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\Rs_seg0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Rs_seg0[4]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\Rs_seg0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Rs_seg0[5]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\Rs_seg0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Rs_seg0[6]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\Rs_seg1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Rs_seg1[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\Rs_seg1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Rs_seg1[1]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\Rs_seg1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Rs_seg1[2]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\Rs_seg1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Rs_seg1[3]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\Rs_seg1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Rs_seg1[4]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\Rs_seg1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Rs_seg1[5]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\Rs_seg1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Rs_seg1[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\Rt_seg0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Rt_seg0[0]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\Rt_seg0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Rt_seg0[1]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\Rt_seg0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Rt_seg0[2]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\Rt_seg0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Rt_seg0[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\Rt_seg0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Rt_seg0[4]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\Rt_seg0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Rt_seg0[5]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\Rt_seg0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Rt_seg0[6]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\Rt_seg1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f4|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Rt_seg1[0]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\Rt_seg1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Rt_seg1[1]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\Rt_seg1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Rt_seg1[2]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\Rt_seg1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Rt_seg1[3]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\Rt_seg1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Rt_seg1[4]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\Rt_seg1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Rt_seg1[5]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\Rt_seg1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Rt_seg1[6]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\Data_seg0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f5|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Data_seg0[0]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\Data_seg0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Data_seg0[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\Data_seg0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Data_seg0[2]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\Data_seg0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Data_seg0[3]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\Data_seg0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Data_seg0[4]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\Data_seg0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Data_seg0[5]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\Data_seg0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f5|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Data_seg0[6]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\Data_seg1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f6|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Data_seg1[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\Data_seg1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f6|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Data_seg1[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\Data_seg1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f6|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Data_seg1[2]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\Data_seg1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f6|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Data_seg1[3]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\Data_seg1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f6|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Data_seg1[4]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\Data_seg1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f6|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Data_seg1[5]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\Data_seg1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f6|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Data_seg1[6]~output_o\);

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

-- Location: IOIBUF_X87_Y73_N15
\op[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(3),
	o => \op[3]~input_o\);

-- Location: IOIBUF_X89_Y73_N15
\op[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(1),
	o => \op[1]~input_o\);

-- Location: IOIBUF_X94_Y73_N8
\Rt[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rt(0),
	o => \Rt[0]~input_o\);

-- Location: IOIBUF_X91_Y73_N15
\Rt[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rt(1),
	o => \Rt[1]~input_o\);

-- Location: LCCOMB_X91_Y69_N26
\Mux87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux87~0_combout\ = (\Rt[1]~input_o\ & ((\Rt[0]~input_o\ & (Rt_sel(0))) # (!\Rt[0]~input_o\ & ((Rs_sel(0)))))) # (!\Rt[1]~input_o\ & (((Rs_sel(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[1]~input_o\,
	datab => Rt_sel(0),
	datac => \Rt[0]~input_o\,
	datad => Rs_sel(0),
	combout => \Mux87~0_combout\);

-- Location: IOIBUF_X115_Y37_N1
\Rs[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rs(1),
	o => \Rs[1]~input_o\);

-- Location: IOIBUF_X115_Y37_N8
\Rs[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rs(0),
	o => \Rs[0]~input_o\);

-- Location: LCCOMB_X94_Y69_N4
\R3[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R3[5]~0_combout\ = (\Rt[0]~input_o\ & ((\Rt[1]~input_o\) # ((\Rs[1]~input_o\ & \Rs[0]~input_o\)))) # (!\Rt[0]~input_o\ & (\Rs[1]~input_o\ & ((\Rs[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[0]~input_o\,
	datab => \Rs[1]~input_o\,
	datac => \Rt[1]~input_o\,
	datad => \Rs[0]~input_o\,
	combout => \R3[5]~0_combout\);

-- Location: FF_X92_Y69_N3
\R3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux87~0_combout\,
	sload => VCC,
	ena => \R3[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R3(0));

-- Location: LCCOMB_X91_Y68_N30
\Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = (\Rt[0]~input_o\ & (((Rs_sel(0))))) # (!\Rt[0]~input_o\ & ((\Rt[1]~input_o\ & ((Rs_sel(0)))) # (!\Rt[1]~input_o\ & (Rt_sel(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[0]~input_o\,
	datab => Rt_sel(0),
	datac => \Rt[1]~input_o\,
	datad => Rs_sel(0),
	combout => \Mux63~0_combout\);

-- Location: LCCOMB_X91_Y68_N8
\R0[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0[6]~0_combout\ = (\Rt[0]~input_o\ & (!\Rs[1]~input_o\ & ((!\Rs[0]~input_o\)))) # (!\Rt[0]~input_o\ & (((!\Rs[1]~input_o\ & !\Rs[0]~input_o\)) # (!\Rt[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[0]~input_o\,
	datab => \Rs[1]~input_o\,
	datac => \Rt[1]~input_o\,
	datad => \Rs[0]~input_o\,
	combout => \R0[6]~0_combout\);

-- Location: FF_X91_Y68_N31
\R0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux63~0_combout\,
	ena => \R0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R0(0));

-- Location: LCCOMB_X91_Y68_N16
\Mux79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux79~0_combout\ = (\Rt[0]~input_o\ & (((Rs_sel(0))))) # (!\Rt[0]~input_o\ & ((\Rt[1]~input_o\ & (Rt_sel(0))) # (!\Rt[1]~input_o\ & ((Rs_sel(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[0]~input_o\,
	datab => Rt_sel(0),
	datac => \Rt[1]~input_o\,
	datad => Rs_sel(0),
	combout => \Mux79~0_combout\);

-- Location: LCCOMB_X91_Y68_N18
\R2[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R2[6]~0_combout\ = (\Rt[0]~input_o\ & (\Rs[1]~input_o\ & ((!\Rs[0]~input_o\)))) # (!\Rt[0]~input_o\ & ((\Rt[1]~input_o\) # ((\Rs[1]~input_o\ & !\Rs[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[0]~input_o\,
	datab => \Rs[1]~input_o\,
	datac => \Rt[1]~input_o\,
	datad => \Rs[0]~input_o\,
	combout => \R2[6]~0_combout\);

-- Location: FF_X91_Y68_N17
\R2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux79~0_combout\,
	ena => \R2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R2(0));

-- Location: LCCOMB_X91_Y68_N26
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\Rt[1]~input_o\ & ((\Rt[0]~input_o\) # ((R2(0))))) # (!\Rt[1]~input_o\ & (!\Rt[0]~input_o\ & (R0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[1]~input_o\,
	datab => \Rt[0]~input_o\,
	datac => R0(0),
	datad => R2(0),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X91_Y69_N6
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Rt[0]~input_o\ & ((\Mux15~0_combout\ & (R3(0))) # (!\Mux15~0_combout\ & ((R1(0)))))) # (!\Rt[0]~input_o\ & (((\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R3(0),
	datab => \Rt[0]~input_o\,
	datac => \Mux15~0_combout\,
	datad => R1(0),
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X90_Y69_N28
\Rt_sel[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rt_sel[0]~feeder_combout\ = \Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux15~1_combout\,
	combout => \Rt_sel[0]~feeder_combout\);

-- Location: FF_X90_Y69_N29
\Rt_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Rt_sel[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Rt_sel(0));

-- Location: LCCOMB_X90_Y69_N10
\Mux71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux71~0_combout\ = (\Rt[0]~input_o\ & ((\Rt[1]~input_o\ & (Rs_sel(0))) # (!\Rt[1]~input_o\ & ((Rt_sel(0)))))) # (!\Rt[0]~input_o\ & (((Rs_sel(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[0]~input_o\,
	datab => \Rt[1]~input_o\,
	datac => Rs_sel(0),
	datad => Rt_sel(0),
	combout => \Mux71~0_combout\);

-- Location: LCCOMB_X91_Y68_N28
\R1[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1[7]~0_combout\ = (\Rt[0]~input_o\ & (((!\Rs[1]~input_o\ & \Rs[0]~input_o\)) # (!\Rt[1]~input_o\))) # (!\Rt[0]~input_o\ & (!\Rs[1]~input_o\ & ((\Rs[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[0]~input_o\,
	datab => \Rs[1]~input_o\,
	datac => \Rt[1]~input_o\,
	datad => \Rs[0]~input_o\,
	combout => \R1[7]~0_combout\);

-- Location: FF_X90_Y69_N11
\R1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux71~0_combout\,
	ena => \R1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1(0));

-- Location: LCCOMB_X91_Y68_N0
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Rs[0]~input_o\ & (\Rs[1]~input_o\)) # (!\Rs[0]~input_o\ & ((\Rs[1]~input_o\ & ((R2(0)))) # (!\Rs[1]~input_o\ & (R0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rs[0]~input_o\,
	datab => \Rs[1]~input_o\,
	datac => R0(0),
	datad => R2(0),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X91_Y69_N14
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & (((R3(0)) # (!\Rs[0]~input_o\)))) # (!\Mux7~0_combout\ & (R1(0) & (\Rs[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R1(0),
	datab => \Mux7~0_combout\,
	datac => \Rs[0]~input_o\,
	datad => R3(0),
	combout => \Mux7~1_combout\);

-- Location: IOIBUF_X87_Y73_N1
\op[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(2),
	o => \op[2]~input_o\);

-- Location: LCCOMB_X88_Y69_N22
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = Rt_sel(0) $ (((\op[1]~input_o\) # (\op[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datac => Rt_sel(0),
	datad => \op[3]~input_o\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X88_Y69_N2
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \op[3]~input_o\ $ (Rs_sel(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datad => Rs_sel(0),
	combout => \Add0~0_combout\);

-- Location: IOIBUF_X87_Y73_N22
\op[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(0),
	o => \op[0]~input_o\);

-- Location: LCCOMB_X88_Y69_N4
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_cout\ = CARRY(\op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[0]~input_o\,
	datad => VCC,
	cout => \Add0~3_cout\);

-- Location: LCCOMB_X88_Y69_N6
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\Add0~1_combout\ & ((\Add0~0_combout\ & (!\Add0~3_cout\)) # (!\Add0~0_combout\ & ((\Add0~3_cout\) # (GND))))) # (!\Add0~1_combout\ & ((\Add0~0_combout\ & (\Add0~3_cout\ & VCC)) # (!\Add0~0_combout\ & (!\Add0~3_cout\))))
-- \Add0~5\ = CARRY((\Add0~1_combout\ & ((!\Add0~3_cout\) # (!\Add0~0_combout\))) # (!\Add0~1_combout\ & (!\Add0~0_combout\ & !\Add0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \Add0~3_cout\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X91_Y69_N4
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\op[2]~input_o\ & (\Mux7~1_combout\)) # (!\op[2]~input_o\ & ((\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datac => \Mux7~1_combout\,
	datad => \Add0~4_combout\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X91_Y69_N22
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\op[1]~input_o\ & (\Mux7~1_combout\)) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & ((\Add0~6_combout\))) # (!\op[0]~input_o\ & (\Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mux7~1_combout\,
	datac => \Add0~6_combout\,
	datad => \op[0]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X91_Y69_N16
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\op[2]~input_o\ & ((\Add0~4_combout\))) # (!\op[2]~input_o\ & (Rt_sel(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => Rt_sel(0),
	datad => \Add0~4_combout\,
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X91_Y69_N2
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\op[2]~input_o\ & (((\Mux7~1_combout\)))) # (!\op[2]~input_o\ & (Rs_sel(0) & ((Rt_sel(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => Rs_sel(0),
	datac => \Mux7~1_combout\,
	datad => Rt_sel(0),
	combout => \Add0~8_combout\);

-- Location: IOIBUF_X67_Y73_N8
\Data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(0),
	o => \Data[0]~input_o\);

-- Location: LCCOMB_X86_Y69_N28
\Rs_sel[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rs_sel[3]~3_combout\ = (\op[3]~input_o\) # (\op[0]~input_o\ $ (\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \op[3]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Rs_sel[3]~3_combout\);

-- Location: LCCOMB_X86_Y69_N0
\Rs_sel[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rs_sel[3]~2_combout\ = (!\op[3]~input_o\ & (!\op[1]~input_o\ & ((!\op[2]~input_o\) # (!\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \op[3]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Rs_sel[3]~2_combout\);

-- Location: IOIBUF_X87_Y73_N8
\Data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(7),
	o => \Data[7]~input_o\);

-- Location: LCCOMB_X86_Y69_N18
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Rs_sel[3]~3_combout\ & (\Rs_sel[3]~2_combout\ & (Rt_sel(7)))) # (!\Rs_sel[3]~3_combout\ & ((\Rs_sel[3]~2_combout\ & ((\Data[7]~input_o\))) # (!\Rs_sel[3]~2_combout\ & (Rt_sel(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rs_sel[3]~3_combout\,
	datab => \Rs_sel[3]~2_combout\,
	datac => Rt_sel(7),
	datad => \Data[7]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X86_Y69_N6
\Rs_sel[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rs_sel[3]~0_combout\ = (\op[3]~input_o\ & (((\op[2]~input_o\) # (\op[1]~input_o\)) # (!\op[0]~input_o\))) # (!\op[3]~input_o\ & (((\op[2]~input_o\ & \op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \op[3]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Rs_sel[3]~0_combout\);

-- Location: LCCOMB_X92_Y69_N6
\Mux80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux80~0_combout\ = (\Rt[1]~input_o\ & ((\Rt[0]~input_o\ & (Rt_sel(7))) # (!\Rt[0]~input_o\ & ((Rs_sel(7)))))) # (!\Rt[1]~input_o\ & (((Rs_sel(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[1]~input_o\,
	datab => Rt_sel(7),
	datac => \Rt[0]~input_o\,
	datad => Rs_sel(7),
	combout => \Mux80~0_combout\);

-- Location: FF_X92_Y69_N7
\R3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux80~0_combout\,
	ena => \R3[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R3(7));

-- Location: LCCOMB_X92_Y69_N2
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Rs[0]~input_o\ & (R3(7))) # (!\Rs[0]~input_o\ & ((R2(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R3(7),
	datab => \Rs[0]~input_o\,
	datad => R2(7),
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X90_Y68_N30
\Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (\Rt[1]~input_o\ & (Rs_sel(7))) # (!\Rt[1]~input_o\ & ((\Rt[0]~input_o\ & (Rs_sel(7))) # (!\Rt[0]~input_o\ & ((Rt_sel(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(7),
	datab => \Rt[1]~input_o\,
	datac => Rt_sel(7),
	datad => \Rt[0]~input_o\,
	combout => \Mux56~0_combout\);

-- Location: FF_X90_Y68_N31
\R0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux56~0_combout\,
	ena => \R0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R0(7));

-- Location: LCCOMB_X90_Y68_N4
\Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux64~0_combout\ = (\Rt[1]~input_o\ & (Rs_sel(7))) # (!\Rt[1]~input_o\ & ((\Rt[0]~input_o\ & ((Rt_sel(7)))) # (!\Rt[0]~input_o\ & (Rs_sel(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(7),
	datab => \Rt[1]~input_o\,
	datac => Rt_sel(7),
	datad => \Rt[0]~input_o\,
	combout => \Mux64~0_combout\);

-- Location: FF_X90_Y68_N5
\R1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux64~0_combout\,
	ena => \R1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1(7));

-- Location: LCCOMB_X90_Y68_N20
\Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Rs[0]~input_o\ & ((R1(7)))) # (!\Rs[0]~input_o\ & (R0(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rs[0]~input_o\,
	datac => R0(7),
	datad => R1(7),
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X89_Y69_N26
\Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\Rs_sel[3]~0_combout\ & ((\Rs[1]~input_o\ & (\Mux16~1_combout\)) # (!\Rs[1]~input_o\ & ((\Mux16~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rs_sel[3]~0_combout\,
	datab => \Rs[1]~input_o\,
	datac => \Mux16~1_combout\,
	datad => \Mux16~2_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X86_Y69_N10
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\op[3]~input_o\ & (((\op[2]~input_o\) # (\op[1]~input_o\)) # (!\op[0]~input_o\))) # (!\op[3]~input_o\ & (\op[2]~input_o\ & ((\op[1]~input_o\) # (!\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \op[3]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X87_Y69_N0
\Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\Rs_sel[3]~2_combout\ & (((\Mux16~0_combout\)))) # (!\Rs_sel[3]~2_combout\ & ((\Rs_sel[3]~3_combout\) # ((Rs_sel(7) & \Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rs_sel[3]~3_combout\,
	datab => Rs_sel(7),
	datac => \Rs_sel[3]~2_combout\,
	datad => \Mux16~0_combout\,
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X87_Y69_N26
\Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (!\Mux20~0_combout\ & \Mux16~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux20~0_combout\,
	datad => \Mux16~4_combout\,
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X86_Y69_N30
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = Rt_sel(7) $ (((\op[3]~input_o\) # (\op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(7),
	datab => \op[3]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Add0~34_combout\);

-- Location: LCCOMB_X87_Y69_N14
\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = \op[3]~input_o\ $ (Rs_sel(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datad => Rs_sel(7),
	combout => \Add0~33_combout\);

-- Location: LCCOMB_X94_Y69_N12
\Mux81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux81~0_combout\ = (\Rt[1]~input_o\ & ((\Rt[0]~input_o\ & (Rt_sel(6))) # (!\Rt[0]~input_o\ & ((Rs_sel(6)))))) # (!\Rt[1]~input_o\ & (((Rs_sel(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(6),
	datab => \Rt[1]~input_o\,
	datac => Rs_sel(6),
	datad => \Rt[0]~input_o\,
	combout => \Mux81~0_combout\);

-- Location: FF_X94_Y69_N13
\R3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux81~0_combout\,
	ena => \R3[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R3(6));

-- Location: LCCOMB_X92_Y69_N8
\Mux73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux73~0_combout\ = (\Rt[0]~input_o\ & (Rs_sel(6))) # (!\Rt[0]~input_o\ & ((\Rt[1]~input_o\ & ((Rt_sel(6)))) # (!\Rt[1]~input_o\ & (Rs_sel(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(6),
	datab => Rt_sel(6),
	datac => \Rt[0]~input_o\,
	datad => \Rt[1]~input_o\,
	combout => \Mux73~0_combout\);

-- Location: FF_X92_Y69_N9
\R2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux73~0_combout\,
	ena => \R2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R2(6));

-- Location: LCCOMB_X94_Y69_N18
\Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (\Rt[1]~input_o\ & (((Rs_sel(6))))) # (!\Rt[1]~input_o\ & ((\Rt[0]~input_o\ & ((Rs_sel(6)))) # (!\Rt[0]~input_o\ & (Rt_sel(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(6),
	datab => \Rt[1]~input_o\,
	datac => Rs_sel(6),
	datad => \Rt[0]~input_o\,
	combout => \Mux57~0_combout\);

-- Location: FF_X94_Y69_N19
\R0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux57~0_combout\,
	ena => \R0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R0(6));

-- Location: LCCOMB_X92_Y69_N26
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Rt[1]~input_o\ & ((\Rt[0]~input_o\) # ((R2(6))))) # (!\Rt[1]~input_o\ & (!\Rt[0]~input_o\ & ((R0(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[1]~input_o\,
	datab => \Rt[0]~input_o\,
	datac => R2(6),
	datad => R0(6),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X91_Y69_N10
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Rt[0]~input_o\ & ((\Mux9~0_combout\ & (R3(6))) # (!\Mux9~0_combout\ & ((R1(6)))))) # (!\Rt[0]~input_o\ & (((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R3(6),
	datab => \Rt[0]~input_o\,
	datac => R1(6),
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: FF_X90_Y69_N7
\Rt_sel[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux9~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Rt_sel(6));

-- Location: LCCOMB_X90_Y69_N6
\Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux65~0_combout\ = (\Rt[0]~input_o\ & ((\Rt[1]~input_o\ & (Rs_sel(6))) # (!\Rt[1]~input_o\ & ((Rt_sel(6)))))) # (!\Rt[0]~input_o\ & (Rs_sel(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[0]~input_o\,
	datab => Rs_sel(6),
	datac => Rt_sel(6),
	datad => \Rt[1]~input_o\,
	combout => \Mux65~0_combout\);

-- Location: FF_X91_Y69_N11
\R1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux65~0_combout\,
	sload => VCC,
	ena => \R1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1(6));

-- Location: LCCOMB_X92_Y69_N18
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Rs[1]~input_o\ & ((\Rs[0]~input_o\) # ((R2(6))))) # (!\Rs[1]~input_o\ & (!\Rs[0]~input_o\ & ((R0(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rs[1]~input_o\,
	datab => \Rs[0]~input_o\,
	datac => R2(6),
	datad => R0(6),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X91_Y69_N8
\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Rs[0]~input_o\ & ((\Mux17~0_combout\ & ((R3(6)))) # (!\Mux17~0_combout\ & (R1(6))))) # (!\Rs[0]~input_o\ & (((\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R1(6),
	datab => R3(6),
	datac => \Rs[0]~input_o\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: IOIBUF_X83_Y73_N15
\Data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(6),
	o => \Data[6]~input_o\);

-- Location: LCCOMB_X86_Y69_N4
\Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Rs_sel[3]~3_combout\ & ((Rt_sel(6)) # ((!\Rs_sel[3]~2_combout\)))) # (!\Rs_sel[3]~3_combout\ & (((\Data[6]~input_o\ & \Rs_sel[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(6),
	datab => \Rs_sel[3]~3_combout\,
	datac => \Data[6]~input_o\,
	datad => \Rs_sel[3]~2_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X87_Y69_N22
\Rs_sel~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rs_sel~8_combout\ = (Rs_sel(6) & Rt_sel(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Rs_sel(6),
	datad => Rt_sel(6),
	combout => \Rs_sel~8_combout\);

-- Location: LCCOMB_X87_Y69_N18
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = Rt_sel(6) $ (((\op[1]~input_o\) # (\op[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(6),
	datab => \op[1]~input_o\,
	datad => \op[3]~input_o\,
	combout => \Add0~30_combout\);

-- Location: LCCOMB_X92_Y69_N12
\Mux74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux74~0_combout\ = (\Rt[1]~input_o\ & ((\Rt[0]~input_o\ & ((Rs_sel(5)))) # (!\Rt[0]~input_o\ & (Rt_sel(5))))) # (!\Rt[1]~input_o\ & (((Rs_sel(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[1]~input_o\,
	datab => Rt_sel(5),
	datac => \Rt[0]~input_o\,
	datad => Rs_sel(5),
	combout => \Mux74~0_combout\);

-- Location: FF_X92_Y69_N13
\R2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux74~0_combout\,
	ena => \R2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R2(5));

-- Location: LCCOMB_X91_Y68_N24
\Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = (\Rt[1]~input_o\ & (((Rs_sel(5))))) # (!\Rt[1]~input_o\ & ((\Rt[0]~input_o\ & (Rs_sel(5))) # (!\Rt[0]~input_o\ & ((Rt_sel(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[1]~input_o\,
	datab => \Rt[0]~input_o\,
	datac => Rs_sel(5),
	datad => Rt_sel(5),
	combout => \Mux58~0_combout\);

-- Location: FF_X91_Y68_N25
\R0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux58~0_combout\,
	ena => \R0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R0(5));

-- Location: LCCOMB_X90_Y69_N30
\Mux66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux66~0_combout\ = (\Rt[1]~input_o\ & (Rs_sel(5))) # (!\Rt[1]~input_o\ & ((\Rt[0]~input_o\ & ((Rt_sel(5)))) # (!\Rt[0]~input_o\ & (Rs_sel(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(5),
	datab => \Rt[1]~input_o\,
	datac => Rt_sel(5),
	datad => \Rt[0]~input_o\,
	combout => \Mux66~0_combout\);

-- Location: FF_X90_Y69_N31
\R1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux66~0_combout\,
	ena => \R1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1(5));

-- Location: LCCOMB_X92_Y69_N22
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Rs[0]~input_o\ & (((R1(5)) # (\Rs[1]~input_o\)))) # (!\Rs[0]~input_o\ & (R0(5) & ((!\Rs[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R0(5),
	datab => \Rs[0]~input_o\,
	datac => R1(5),
	datad => \Rs[1]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X92_Y69_N14
\Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux18~0_combout\ & (((R3(5)) # (!\Rs[1]~input_o\)))) # (!\Mux18~0_combout\ & (R2(5) & ((\Rs[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R2(5),
	datab => R3(5),
	datac => \Mux18~0_combout\,
	datad => \Rs[1]~input_o\,
	combout => \Mux18~1_combout\);

-- Location: IOIBUF_X83_Y73_N22
\Data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(5),
	o => \Data[5]~input_o\);

-- Location: LCCOMB_X87_Y69_N8
\Rs_sel~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rs_sel~7_combout\ = (Rs_sel(5) & Rt_sel(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Rs_sel(5),
	datad => Rt_sel(5),
	combout => \Rs_sel~7_combout\);

-- Location: LCCOMB_X86_Y69_N26
\Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Rs_sel[3]~3_combout\ & (!\Rs_sel[3]~2_combout\)) # (!\Rs_sel[3]~3_combout\ & ((\Rs_sel[3]~2_combout\ & (\Data[5]~input_o\)) # (!\Rs_sel[3]~2_combout\ & ((\Rs_sel~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rs_sel[3]~3_combout\,
	datab => \Rs_sel[3]~2_combout\,
	datac => \Data[5]~input_o\,
	datad => \Rs_sel~7_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X87_Y69_N6
\Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = Rs_sel(5) $ (\op[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Rs_sel(5),
	datad => \op[3]~input_o\,
	combout => \Add0~25_combout\);

-- Location: LCCOMB_X92_Y68_N4
\Mux83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux83~0_combout\ = (\Rt[1]~input_o\ & ((\Rt[0]~input_o\ & ((Rt_sel(4)))) # (!\Rt[0]~input_o\ & (Rs_sel(4))))) # (!\Rt[1]~input_o\ & (Rs_sel(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(4),
	datab => \Rt[1]~input_o\,
	datac => Rt_sel(4),
	datad => \Rt[0]~input_o\,
	combout => \Mux83~0_combout\);

-- Location: FF_X92_Y68_N5
\R3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux83~0_combout\,
	ena => \R3[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R3(4));

-- Location: LCCOMB_X90_Y68_N16
\Mux75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux75~0_combout\ = (\Rt[1]~input_o\ & ((\Rt[0]~input_o\ & ((Rs_sel(4)))) # (!\Rt[0]~input_o\ & (Rt_sel(4))))) # (!\Rt[1]~input_o\ & (((Rs_sel(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(4),
	datab => \Rt[1]~input_o\,
	datac => Rs_sel(4),
	datad => \Rt[0]~input_o\,
	combout => \Mux75~0_combout\);

-- Location: FF_X91_Y68_N5
\R2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux75~0_combout\,
	sload => VCC,
	ena => \R2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R2(4));

-- Location: LCCOMB_X90_Y68_N24
\Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = (\Rt[1]~input_o\ & (((Rs_sel(4))))) # (!\Rt[1]~input_o\ & ((\Rt[0]~input_o\ & ((Rs_sel(4)))) # (!\Rt[0]~input_o\ & (Rt_sel(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(4),
	datab => \Rt[1]~input_o\,
	datac => Rs_sel(4),
	datad => \Rt[0]~input_o\,
	combout => \Mux59~0_combout\);

-- Location: FF_X90_Y68_N25
\R0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux59~0_combout\,
	ena => \R0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R0(4));

-- Location: LCCOMB_X91_Y68_N6
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Rs[0]~input_o\ & (\Rs[1]~input_o\)) # (!\Rs[0]~input_o\ & ((\Rs[1]~input_o\ & (R2(4))) # (!\Rs[1]~input_o\ & ((R0(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rs[0]~input_o\,
	datab => \Rs[1]~input_o\,
	datac => R2(4),
	datad => R0(4),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X90_Y68_N22
\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Rs[0]~input_o\ & ((\Mux19~0_combout\ & ((R3(4)))) # (!\Mux19~0_combout\ & (R1(4))))) # (!\Rs[0]~input_o\ & (((\Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R1(4),
	datab => \Rs[0]~input_o\,
	datac => R3(4),
	datad => \Mux19~0_combout\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X89_Y69_N22
\Rs_sel~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rs_sel~6_combout\ = (Rs_sel(4) & Rt_sel(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Rs_sel(4),
	datac => Rt_sel(4),
	combout => \Rs_sel~6_combout\);

-- Location: IOIBUF_X74_Y73_N15
\Data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(4),
	o => \Data[4]~input_o\);

-- Location: LCCOMB_X86_Y69_N20
\Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\Rs_sel[3]~2_combout\ & ((\Rs_sel[3]~3_combout\ & ((Rt_sel(4)))) # (!\Rs_sel[3]~3_combout\ & (\Data[4]~input_o\)))) # (!\Rs_sel[3]~2_combout\ & (((\Rs_sel[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[4]~input_o\,
	datab => \Rs_sel[3]~2_combout\,
	datac => Rt_sel(4),
	datad => \Rs_sel[3]~3_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X89_Y69_N8
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = \op[3]~input_o\ $ (Rs_sel(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[3]~input_o\,
	datad => Rs_sel(4),
	combout => \Add0~21_combout\);

-- Location: LCCOMB_X92_Y69_N4
\Mux84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux84~0_combout\ = (\Rt[0]~input_o\ & ((\Rt[1]~input_o\ & (Rt_sel(3))) # (!\Rt[1]~input_o\ & ((Rs_sel(3)))))) # (!\Rt[0]~input_o\ & (((Rs_sel(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(3),
	datab => \Rt[0]~input_o\,
	datac => \Rt[1]~input_o\,
	datad => Rs_sel(3),
	combout => \Mux84~0_combout\);

-- Location: FF_X92_Y69_N5
\R3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux84~0_combout\,
	ena => \R3[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R3(3));

-- Location: LCCOMB_X92_Y69_N30
\Mux76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux76~0_combout\ = (\Rt[0]~input_o\ & (((Rs_sel(3))))) # (!\Rt[0]~input_o\ & ((\Rt[1]~input_o\ & (Rt_sel(3))) # (!\Rt[1]~input_o\ & ((Rs_sel(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(3),
	datab => \Rt[0]~input_o\,
	datac => \Rt[1]~input_o\,
	datad => Rs_sel(3),
	combout => \Mux76~0_combout\);

-- Location: FF_X92_Y69_N31
\R2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux76~0_combout\,
	ena => \R2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R2(3));

-- Location: LCCOMB_X90_Y68_N14
\Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux68~0_combout\ = (\Rt[1]~input_o\ & (Rs_sel(3))) # (!\Rt[1]~input_o\ & ((\Rt[0]~input_o\ & ((Rt_sel(3)))) # (!\Rt[0]~input_o\ & (Rs_sel(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(3),
	datab => \Rt[1]~input_o\,
	datac => Rt_sel(3),
	datad => \Rt[0]~input_o\,
	combout => \Mux68~0_combout\);

-- Location: FF_X90_Y68_N15
\R1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux68~0_combout\,
	ena => \R1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1(3));

-- Location: LCCOMB_X90_Y68_N6
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Rt[0]~input_o\ & (((R1(3)) # (\Rt[1]~input_o\)))) # (!\Rt[0]~input_o\ & (R0(3) & ((!\Rt[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[0]~input_o\,
	datab => R0(3),
	datac => R1(3),
	datad => \Rt[1]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X91_Y69_N12
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Rt[1]~input_o\ & ((\Mux12~0_combout\ & (R3(3))) # (!\Mux12~0_combout\ & ((R2(3)))))) # (!\Rt[1]~input_o\ & (((\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R3(3),
	datab => \Rt[1]~input_o\,
	datac => R2(3),
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: FF_X90_Y69_N13
\Rt_sel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux12~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Rt_sel(3));

-- Location: LCCOMB_X90_Y68_N8
\Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = (\Rt[1]~input_o\ & (Rs_sel(3))) # (!\Rt[1]~input_o\ & ((\Rt[0]~input_o\ & (Rs_sel(3))) # (!\Rt[0]~input_o\ & ((Rt_sel(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(3),
	datab => \Rt[1]~input_o\,
	datac => Rt_sel(3),
	datad => \Rt[0]~input_o\,
	combout => \Mux60~0_combout\);

-- Location: FF_X90_Y68_N9
\R0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux60~0_combout\,
	ena => \R0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R0(3));

-- Location: LCCOMB_X91_Y68_N22
\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Rs[1]~input_o\ & (((\Rs[0]~input_o\)))) # (!\Rs[1]~input_o\ & ((\Rs[0]~input_o\ & ((R1(3)))) # (!\Rs[0]~input_o\ & (R0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R0(3),
	datab => \Rs[1]~input_o\,
	datac => \Rs[0]~input_o\,
	datad => R1(3),
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X92_Y69_N10
\Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\Mux20~1_combout\ & ((R3(3)) # ((!\Rs[1]~input_o\)))) # (!\Mux20~1_combout\ & (((R2(3) & \Rs[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => R3(3),
	datac => R2(3),
	datad => \Rs[1]~input_o\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X89_Y69_N30
\Rs_sel~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rs_sel~5_combout\ = (Rt_sel(3) & Rs_sel(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Rt_sel(3),
	datad => Rs_sel(3),
	combout => \Rs_sel~5_combout\);

-- Location: IOIBUF_X60_Y73_N22
\Data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(3),
	o => \Data[3]~input_o\);

-- Location: LCCOMB_X85_Y69_N18
\Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\Rs_sel[3]~3_combout\ & (((Rt_sel(3)) # (!\Rs_sel[3]~2_combout\)))) # (!\Rs_sel[3]~3_combout\ & (\Data[3]~input_o\ & (\Rs_sel[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[3]~input_o\,
	datab => \Rs_sel[3]~3_combout\,
	datac => \Rs_sel[3]~2_combout\,
	datad => Rt_sel(3),
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X89_Y69_N10
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = Rt_sel(3) $ (((\op[3]~input_o\) # (\op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[3]~input_o\,
	datac => Rt_sel(3),
	datad => \op[1]~input_o\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X90_Y69_N4
\Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~0_combout\ = (\Rt[1]~input_o\ & (Rs_sel(2))) # (!\Rt[1]~input_o\ & ((\Rt[0]~input_o\ & ((Rt_sel(2)))) # (!\Rt[0]~input_o\ & (Rs_sel(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(2),
	datab => Rt_sel(2),
	datac => \Rt[1]~input_o\,
	datad => \Rt[0]~input_o\,
	combout => \Mux69~0_combout\);

-- Location: FF_X90_Y69_N5
\R1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux69~0_combout\,
	ena => \R1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1(2));

-- Location: LCCOMB_X92_Y69_N24
\Mux77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux77~0_combout\ = (\Rt[1]~input_o\ & ((\Rt[0]~input_o\ & ((Rs_sel(2)))) # (!\Rt[0]~input_o\ & (Rt_sel(2))))) # (!\Rt[1]~input_o\ & (((Rs_sel(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[1]~input_o\,
	datab => \Rt[0]~input_o\,
	datac => Rt_sel(2),
	datad => Rs_sel(2),
	combout => \Mux77~0_combout\);

-- Location: FF_X92_Y69_N25
\R2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux77~0_combout\,
	ena => \R2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R2(2));

-- Location: LCCOMB_X94_Y69_N10
\Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (\Rt[1]~input_o\ & (Rs_sel(2))) # (!\Rt[1]~input_o\ & ((\Rt[0]~input_o\ & (Rs_sel(2))) # (!\Rt[0]~input_o\ & ((Rt_sel(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(2),
	datab => \Rt[1]~input_o\,
	datac => Rt_sel(2),
	datad => \Rt[0]~input_o\,
	combout => \Mux61~0_combout\);

-- Location: FF_X94_Y69_N11
\R0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux61~0_combout\,
	ena => \R0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R0(2));

-- Location: LCCOMB_X94_Y69_N22
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Rt[0]~input_o\ & (\Rt[1]~input_o\)) # (!\Rt[0]~input_o\ & ((\Rt[1]~input_o\ & (R2(2))) # (!\Rt[1]~input_o\ & ((R0(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[0]~input_o\,
	datab => \Rt[1]~input_o\,
	datac => R2(2),
	datad => R0(2),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X90_Y69_N2
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Rt[0]~input_o\ & ((\Mux13~0_combout\ & (R3(2))) # (!\Mux13~0_combout\ & ((R1(2)))))) # (!\Rt[0]~input_o\ & (((\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[0]~input_o\,
	datab => R3(2),
	datac => R1(2),
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: FF_X90_Y69_N3
\Rt_sel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Rt_sel(2));

-- Location: LCCOMB_X94_Y69_N26
\Mux85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux85~0_combout\ = (\Rt[1]~input_o\ & ((\Rt[0]~input_o\ & ((Rt_sel(2)))) # (!\Rt[0]~input_o\ & (Rs_sel(2))))) # (!\Rt[1]~input_o\ & (Rs_sel(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(2),
	datab => \Rt[1]~input_o\,
	datac => Rt_sel(2),
	datad => \Rt[0]~input_o\,
	combout => \Mux85~0_combout\);

-- Location: FF_X94_Y69_N27
\R3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux85~0_combout\,
	ena => \R3[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R3(2));

-- Location: LCCOMB_X94_Y69_N20
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Rs[1]~input_o\ & (((R2(2)) # (\Rs[0]~input_o\)))) # (!\Rs[1]~input_o\ & (R0(2) & ((!\Rs[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R0(2),
	datab => \Rs[1]~input_o\,
	datac => R2(2),
	datad => \Rs[0]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X94_Y69_N16
\Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Rs[0]~input_o\ & ((\Mux21~0_combout\ & (R3(2))) # (!\Mux21~0_combout\ & ((R1(2)))))) # (!\Rs[0]~input_o\ & (((\Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R3(2),
	datab => \Rs[0]~input_o\,
	datac => R1(2),
	datad => \Mux21~0_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X88_Y69_N0
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = Rt_sel(2) $ (((\op[3]~input_o\) # (\op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datac => Rt_sel(2),
	datad => \op[1]~input_o\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X92_Y68_N22
\Mux86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux86~0_combout\ = (\Rt[1]~input_o\ & ((\Rt[0]~input_o\ & ((Rt_sel(1)))) # (!\Rt[0]~input_o\ & (Rs_sel(1))))) # (!\Rt[1]~input_o\ & (Rs_sel(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(1),
	datab => \Rt[1]~input_o\,
	datac => Rt_sel(1),
	datad => \Rt[0]~input_o\,
	combout => \Mux86~0_combout\);

-- Location: FF_X92_Y68_N23
\R3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux86~0_combout\,
	ena => \R3[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R3(1));

-- Location: LCCOMB_X90_Y68_N26
\Mux78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux78~0_combout\ = (\Rt[0]~input_o\ & (((Rs_sel(1))))) # (!\Rt[0]~input_o\ & ((\Rt[1]~input_o\ & (Rt_sel(1))) # (!\Rt[1]~input_o\ & ((Rs_sel(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[0]~input_o\,
	datab => \Rt[1]~input_o\,
	datac => Rt_sel(1),
	datad => Rs_sel(1),
	combout => \Mux78~0_combout\);

-- Location: FF_X91_Y68_N15
\R2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux78~0_combout\,
	sload => VCC,
	ena => \R2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R2(1));

-- Location: LCCOMB_X92_Y68_N24
\Mux70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux70~0_combout\ = (\Rt[1]~input_o\ & (Rs_sel(1))) # (!\Rt[1]~input_o\ & ((\Rt[0]~input_o\ & ((Rt_sel(1)))) # (!\Rt[0]~input_o\ & (Rs_sel(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(1),
	datab => \Rt[1]~input_o\,
	datac => Rt_sel(1),
	datad => \Rt[0]~input_o\,
	combout => \Mux70~0_combout\);

-- Location: FF_X92_Y68_N25
\R1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux70~0_combout\,
	ena => \R1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1(1));

-- Location: LCCOMB_X91_Y68_N20
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Rt[1]~input_o\ & (\Rt[0]~input_o\)) # (!\Rt[1]~input_o\ & ((\Rt[0]~input_o\ & ((R1(1)))) # (!\Rt[0]~input_o\ & (R0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[1]~input_o\,
	datab => \Rt[0]~input_o\,
	datac => R0(1),
	datad => R1(1),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X91_Y68_N10
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Rt[1]~input_o\ & ((\Mux14~0_combout\ & (R3(1))) # (!\Mux14~0_combout\ & ((R2(1)))))) # (!\Rt[1]~input_o\ & (((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[1]~input_o\,
	datab => R3(1),
	datac => R2(1),
	datad => \Mux14~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: FF_X89_Y69_N15
\Rt_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux14~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Rt_sel(1));

-- Location: LCCOMB_X90_Y68_N0
\Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (\Rt[0]~input_o\ & (((Rs_sel(1))))) # (!\Rt[0]~input_o\ & ((\Rt[1]~input_o\ & ((Rs_sel(1)))) # (!\Rt[1]~input_o\ & (Rt_sel(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[0]~input_o\,
	datab => \Rt[1]~input_o\,
	datac => Rt_sel(1),
	datad => Rs_sel(1),
	combout => \Mux62~0_combout\);

-- Location: FF_X90_Y68_N1
\R0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux62~0_combout\,
	ena => \R0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R0(1));

-- Location: LCCOMB_X91_Y68_N12
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Rs[0]~input_o\ & ((\Rs[1]~input_o\) # ((R1(1))))) # (!\Rs[0]~input_o\ & (!\Rs[1]~input_o\ & (R0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rs[0]~input_o\,
	datab => \Rs[1]~input_o\,
	datac => R0(1),
	datad => R1(1),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X91_Y68_N14
\Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux22~0_combout\ & (((R3(1))) # (!\Rs[1]~input_o\))) # (!\Mux22~0_combout\ & (\Rs[1]~input_o\ & (R2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~0_combout\,
	datab => \Rs[1]~input_o\,
	datac => R2(1),
	datad => R3(1),
	combout => \Mux22~1_combout\);

-- Location: IOIBUF_X67_Y73_N1
\Data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(1),
	o => \Data[1]~input_o\);

-- Location: LCCOMB_X85_Y69_N20
\Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\Rs_sel[3]~2_combout\ & ((\Rs_sel[3]~3_combout\ & (Rt_sel(1))) # (!\Rs_sel[3]~3_combout\ & ((\Data[1]~input_o\))))) # (!\Rs_sel[3]~2_combout\ & (((\Rs_sel[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(1),
	datab => \Data[1]~input_o\,
	datac => \Rs_sel[3]~2_combout\,
	datad => \Rs_sel[3]~3_combout\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X89_Y69_N14
\Rs_sel~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rs_sel~1_combout\ = (Rs_sel(1) & Rt_sel(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Rs_sel(1),
	datac => Rt_sel(1),
	combout => \Rs_sel~1_combout\);

-- Location: LCCOMB_X88_Y69_N28
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = Rt_sel(1) $ (((\op[1]~input_o\) # (\op[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datac => Rt_sel(1),
	datad => \op[3]~input_o\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X88_Y69_N8
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = ((\Add0~9_combout\ $ (\Add0~10_combout\ $ (\Add0~5\)))) # (GND)
-- \Add0~12\ = CARRY((\Add0~9_combout\ & ((!\Add0~5\) # (!\Add0~10_combout\))) # (!\Add0~9_combout\ & (!\Add0~10_combout\ & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~9_combout\,
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

-- Location: LCCOMB_X89_Y69_N24
\Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\Mux22~2_combout\ & ((\Rs_sel[3]~2_combout\) # ((\Add0~11_combout\)))) # (!\Mux22~2_combout\ & (!\Rs_sel[3]~2_combout\ & (\Rs_sel~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~2_combout\,
	datab => \Rs_sel[3]~2_combout\,
	datac => \Rs_sel~1_combout\,
	datad => \Add0~11_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X89_Y69_N4
\Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\Rs_sel[3]~0_combout\ & ((\Mux22~1_combout\) # ((!\Mux20~0_combout\ & \Mux22~3_combout\)))) # (!\Rs_sel[3]~0_combout\ & (!\Mux20~0_combout\ & ((\Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rs_sel[3]~0_combout\,
	datab => \Mux20~0_combout\,
	datac => \Mux22~1_combout\,
	datad => \Mux22~3_combout\,
	combout => \Mux22~4_combout\);

-- Location: FF_X89_Y69_N5
\Rs_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux22~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Rs_sel(1));

-- Location: LCCOMB_X89_Y69_N6
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = \op[3]~input_o\ $ (Rs_sel(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[3]~input_o\,
	datac => Rs_sel(1),
	combout => \Add0~9_combout\);

-- Location: LCCOMB_X88_Y69_N10
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\Add0~13_combout\ & ((\Add0~14_combout\ & (!\Add0~12\)) # (!\Add0~14_combout\ & (\Add0~12\ & VCC)))) # (!\Add0~13_combout\ & ((\Add0~14_combout\ & ((\Add0~12\) # (GND))) # (!\Add0~14_combout\ & (!\Add0~12\))))
-- \Add0~16\ = CARRY((\Add0~13_combout\ & (\Add0~14_combout\ & !\Add0~12\)) # (!\Add0~13_combout\ & ((\Add0~14_combout\) # (!\Add0~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~13_combout\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Add0~12\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: IOIBUF_X69_Y73_N1
\Data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(2),
	o => \Data[2]~input_o\);

-- Location: LCCOMB_X87_Y69_N2
\Rs_sel~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rs_sel~4_combout\ = (Rs_sel(2) & Rt_sel(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Rs_sel(2),
	datac => Rt_sel(2),
	combout => \Rs_sel~4_combout\);

-- Location: LCCOMB_X87_Y69_N20
\Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\Rs_sel[3]~3_combout\ & (((!\Rs_sel[3]~2_combout\)))) # (!\Rs_sel[3]~3_combout\ & ((\Rs_sel[3]~2_combout\ & (\Data[2]~input_o\)) # (!\Rs_sel[3]~2_combout\ & ((\Rs_sel~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rs_sel[3]~3_combout\,
	datab => \Data[2]~input_o\,
	datac => \Rs_sel[3]~2_combout\,
	datad => \Rs_sel~4_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X87_Y69_N10
\Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Rs_sel[3]~3_combout\ & ((\Mux21~2_combout\ & ((\Add0~15_combout\))) # (!\Mux21~2_combout\ & (Rt_sel(2))))) # (!\Rs_sel[3]~3_combout\ & (((\Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rs_sel[3]~3_combout\,
	datab => Rt_sel(2),
	datac => \Add0~15_combout\,
	datad => \Mux21~2_combout\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X87_Y69_N24
\Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\Mux20~0_combout\ & (\Rs_sel[3]~0_combout\ & (\Mux21~1_combout\))) # (!\Mux20~0_combout\ & ((\Mux21~3_combout\) # ((\Rs_sel[3]~0_combout\ & \Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~0_combout\,
	datab => \Rs_sel[3]~0_combout\,
	datac => \Mux21~1_combout\,
	datad => \Mux21~3_combout\,
	combout => \Mux21~4_combout\);

-- Location: FF_X87_Y69_N25
\Rs_sel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux21~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Rs_sel(2));

-- Location: LCCOMB_X88_Y69_N30
\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = \op[3]~input_o\ $ (Rs_sel(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datad => Rs_sel(2),
	combout => \Add0~13_combout\);

-- Location: LCCOMB_X88_Y69_N12
\Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = ((\Add0~17_combout\ $ (\Add0~18_combout\ $ (\Add0~16\)))) # (GND)
-- \Add0~20\ = CARRY((\Add0~17_combout\ & ((!\Add0~16\) # (!\Add0~18_combout\))) # (!\Add0~17_combout\ & (!\Add0~18_combout\ & !\Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~17_combout\,
	datab => \Add0~18_combout\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~19_combout\,
	cout => \Add0~20\);

-- Location: LCCOMB_X89_Y69_N28
\Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\Rs_sel[3]~2_combout\ & (((\Mux20~3_combout\)))) # (!\Rs_sel[3]~2_combout\ & ((\Mux20~3_combout\ & ((\Add0~19_combout\))) # (!\Mux20~3_combout\ & (\Rs_sel~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rs_sel~5_combout\,
	datab => \Rs_sel[3]~2_combout\,
	datac => \Mux20~3_combout\,
	datad => \Add0~19_combout\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X89_Y69_N18
\Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (\Rs_sel[3]~0_combout\ & ((\Mux20~2_combout\) # ((!\Mux20~0_combout\ & \Mux20~4_combout\)))) # (!\Rs_sel[3]~0_combout\ & (!\Mux20~0_combout\ & ((\Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rs_sel[3]~0_combout\,
	datab => \Mux20~0_combout\,
	datac => \Mux20~2_combout\,
	datad => \Mux20~4_combout\,
	combout => \Mux20~5_combout\);

-- Location: FF_X89_Y69_N19
\Rs_sel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux20~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Rs_sel(3));

-- Location: LCCOMB_X89_Y69_N20
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = \op[3]~input_o\ $ (Rs_sel(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op[3]~input_o\,
	datad => Rs_sel(3),
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X88_Y69_N14
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\Add0~22_combout\ & ((\Add0~21_combout\ & (!\Add0~20\)) # (!\Add0~21_combout\ & ((\Add0~20\) # (GND))))) # (!\Add0~22_combout\ & ((\Add0~21_combout\ & (\Add0~20\ & VCC)) # (!\Add0~21_combout\ & (!\Add0~20\))))
-- \Add0~24\ = CARRY((\Add0~22_combout\ & ((!\Add0~20\) # (!\Add0~21_combout\))) # (!\Add0~22_combout\ & (!\Add0~21_combout\ & !\Add0~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \Add0~21_combout\,
	datad => VCC,
	cin => \Add0~20\,
	combout => \Add0~23_combout\,
	cout => \Add0~24\);

-- Location: LCCOMB_X89_Y69_N12
\Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\Mux19~2_combout\ & (((\Rs_sel[3]~2_combout\) # (\Add0~23_combout\)))) # (!\Mux19~2_combout\ & (\Rs_sel~6_combout\ & (!\Rs_sel[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rs_sel~6_combout\,
	datab => \Mux19~2_combout\,
	datac => \Rs_sel[3]~2_combout\,
	datad => \Add0~23_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X89_Y69_N16
\Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\Rs_sel[3]~0_combout\ & ((\Mux19~1_combout\) # ((!\Mux20~0_combout\ & \Mux19~3_combout\)))) # (!\Rs_sel[3]~0_combout\ & (!\Mux20~0_combout\ & ((\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rs_sel[3]~0_combout\,
	datab => \Mux20~0_combout\,
	datac => \Mux19~1_combout\,
	datad => \Mux19~3_combout\,
	combout => \Mux19~4_combout\);

-- Location: FF_X89_Y69_N17
\Rs_sel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux19~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Rs_sel(4));

-- Location: LCCOMB_X90_Y68_N10
\Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux67~0_combout\ = (\Rt[1]~input_o\ & (((Rs_sel(4))))) # (!\Rt[1]~input_o\ & ((\Rt[0]~input_o\ & (Rt_sel(4))) # (!\Rt[0]~input_o\ & ((Rs_sel(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(4),
	datab => \Rt[1]~input_o\,
	datac => Rs_sel(4),
	datad => \Rt[0]~input_o\,
	combout => \Mux67~0_combout\);

-- Location: FF_X90_Y68_N11
\R1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux67~0_combout\,
	ena => \R1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1(4));

-- Location: LCCOMB_X91_Y68_N4
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Rt[1]~input_o\ & (((R2(4)) # (\Rt[0]~input_o\)))) # (!\Rt[1]~input_o\ & (R0(4) & ((!\Rt[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[1]~input_o\,
	datab => R0(4),
	datac => R2(4),
	datad => \Rt[0]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X90_Y69_N0
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Rt[0]~input_o\ & ((\Mux11~0_combout\ & ((R3(4)))) # (!\Mux11~0_combout\ & (R1(4))))) # (!\Rt[0]~input_o\ & (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[0]~input_o\,
	datab => R1(4),
	datac => R3(4),
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: FF_X90_Y69_N1
\Rt_sel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Rt_sel(4));

-- Location: LCCOMB_X89_Y69_N2
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = Rt_sel(4) $ (((\op[3]~input_o\) # (\op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[3]~input_o\,
	datac => Rt_sel(4),
	datad => \op[1]~input_o\,
	combout => \Add0~22_combout\);

-- Location: LCCOMB_X88_Y69_N16
\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = ((\Add0~26_combout\ $ (\Add0~25_combout\ $ (\Add0~24\)))) # (GND)
-- \Add0~28\ = CARRY((\Add0~26_combout\ & (\Add0~25_combout\ & !\Add0~24\)) # (!\Add0~26_combout\ & ((\Add0~25_combout\) # (!\Add0~24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Add0~25_combout\,
	datad => VCC,
	cin => \Add0~24\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

-- Location: LCCOMB_X87_Y69_N12
\Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\Rs_sel[3]~3_combout\ & ((\Mux18~2_combout\ & ((\Add0~27_combout\))) # (!\Mux18~2_combout\ & (Rt_sel(5))))) # (!\Rs_sel[3]~3_combout\ & (((\Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rs_sel[3]~3_combout\,
	datab => Rt_sel(5),
	datac => \Mux18~2_combout\,
	datad => \Add0~27_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X87_Y69_N30
\Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\Mux20~0_combout\ & (\Rs_sel[3]~0_combout\ & (\Mux18~1_combout\))) # (!\Mux20~0_combout\ & ((\Mux18~3_combout\) # ((\Rs_sel[3]~0_combout\ & \Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~0_combout\,
	datab => \Rs_sel[3]~0_combout\,
	datac => \Mux18~1_combout\,
	datad => \Mux18~3_combout\,
	combout => \Mux18~4_combout\);

-- Location: FF_X87_Y69_N31
\Rs_sel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux18~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Rs_sel(5));

-- Location: LCCOMB_X92_Y69_N20
\Mux82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux82~0_combout\ = (\Rt[1]~input_o\ & ((\Rt[0]~input_o\ & (Rt_sel(5))) # (!\Rt[0]~input_o\ & ((Rs_sel(5)))))) # (!\Rt[1]~input_o\ & (((Rs_sel(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[1]~input_o\,
	datab => Rt_sel(5),
	datac => \Rt[0]~input_o\,
	datad => Rs_sel(5),
	combout => \Mux82~0_combout\);

-- Location: FF_X92_Y69_N21
\R3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux82~0_combout\,
	ena => \R3[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R3(5));

-- Location: LCCOMB_X92_Y69_N28
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Rt[0]~input_o\ & (((R1(5)) # (\Rt[1]~input_o\)))) # (!\Rt[0]~input_o\ & (R0(5) & ((!\Rt[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R0(5),
	datab => \Rt[0]~input_o\,
	datac => R1(5),
	datad => \Rt[1]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X91_Y69_N30
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Rt[1]~input_o\ & ((\Mux10~0_combout\ & (R3(5))) # (!\Mux10~0_combout\ & ((R2(5)))))) # (!\Rt[1]~input_o\ & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R3(5),
	datab => R2(5),
	datac => \Rt[1]~input_o\,
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: FF_X91_Y69_N31
\Rt_sel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Rt_sel(5));

-- Location: LCCOMB_X88_Y69_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = Rt_sel(5) $ (((\op[3]~input_o\) # (\op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datac => \op[1]~input_o\,
	datad => Rt_sel(5),
	combout => \Add0~26_combout\);

-- Location: LCCOMB_X88_Y69_N18
\Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\Add0~29_combout\ & ((\Add0~30_combout\ & (!\Add0~28\)) # (!\Add0~30_combout\ & (\Add0~28\ & VCC)))) # (!\Add0~29_combout\ & ((\Add0~30_combout\ & ((\Add0~28\) # (GND))) # (!\Add0~30_combout\ & (!\Add0~28\))))
-- \Add0~32\ = CARRY((\Add0~29_combout\ & (\Add0~30_combout\ & !\Add0~28\)) # (!\Add0~29_combout\ & ((\Add0~30_combout\) # (!\Add0~28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~29_combout\,
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~31_combout\,
	cout => \Add0~32\);

-- Location: LCCOMB_X87_Y69_N28
\Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\Rs_sel[3]~2_combout\ & (\Mux17~2_combout\)) # (!\Rs_sel[3]~2_combout\ & ((\Mux17~2_combout\ & ((\Add0~31_combout\))) # (!\Mux17~2_combout\ & (\Rs_sel~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rs_sel[3]~2_combout\,
	datab => \Mux17~2_combout\,
	datac => \Rs_sel~8_combout\,
	datad => \Add0~31_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X87_Y69_N4
\Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\Mux20~0_combout\ & (\Rs_sel[3]~0_combout\ & (\Mux17~1_combout\))) # (!\Mux20~0_combout\ & ((\Mux17~3_combout\) # ((\Rs_sel[3]~0_combout\ & \Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~0_combout\,
	datab => \Rs_sel[3]~0_combout\,
	datac => \Mux17~1_combout\,
	datad => \Mux17~3_combout\,
	combout => \Mux17~4_combout\);

-- Location: FF_X87_Y69_N5
\Rs_sel[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Rs_sel(6));

-- Location: LCCOMB_X87_Y69_N16
\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = Rs_sel(6) $ (\op[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Rs_sel(6),
	datad => \op[3]~input_o\,
	combout => \Add0~29_combout\);

-- Location: LCCOMB_X88_Y69_N20
\Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = \Add0~34_combout\ $ (\Add0~32\ $ (\Add0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~34_combout\,
	datad => \Add0~33_combout\,
	cin => \Add0~32\,
	combout => \Add0~35_combout\);

-- Location: LCCOMB_X88_Y69_N24
\Mux16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~6_combout\ = (\Mux16~3_combout\) # ((\Mux16~5_combout\ & ((\Mux16~0_combout\) # (\Add0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datab => \Mux16~3_combout\,
	datac => \Mux16~5_combout\,
	datad => \Add0~35_combout\,
	combout => \Mux16~6_combout\);

-- Location: FF_X88_Y69_N25
\Rs_sel[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Rs_sel(7));

-- Location: LCCOMB_X92_Y69_N0
\Mux72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux72~0_combout\ = (\Rt[1]~input_o\ & ((\Rt[0]~input_o\ & ((Rs_sel(7)))) # (!\Rt[0]~input_o\ & (Rt_sel(7))))) # (!\Rt[1]~input_o\ & (((Rs_sel(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[1]~input_o\,
	datab => Rt_sel(7),
	datac => \Rt[0]~input_o\,
	datad => Rs_sel(7),
	combout => \Mux72~0_combout\);

-- Location: FF_X92_Y69_N1
\R2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux72~0_combout\,
	ena => \R2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R2(7));

-- Location: LCCOMB_X90_Y68_N28
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Rt[0]~input_o\ & ((\Rt[1]~input_o\) # ((R1(7))))) # (!\Rt[0]~input_o\ & (!\Rt[1]~input_o\ & (R0(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[0]~input_o\,
	datab => \Rt[1]~input_o\,
	datac => R0(7),
	datad => R1(7),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X91_Y69_N28
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Rt[1]~input_o\ & ((\Mux8~0_combout\ & ((R3(7)))) # (!\Mux8~0_combout\ & (R2(7))))) # (!\Rt[1]~input_o\ & (((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rt[1]~input_o\,
	datab => R2(7),
	datac => \Mux8~0_combout\,
	datad => R3(7),
	combout => \Mux8~1_combout\);

-- Location: FF_X91_Y69_N29
\Rt_sel[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Rt_sel(7));

-- Location: LCCOMB_X90_Y69_N12
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!Rs_sel(0) & Rt_sel(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(0),
	datab => Rt_sel(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X90_Y69_N14
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((Rt_sel(1) & (Rs_sel(1) & !\LessThan0~1_cout\)) # (!Rt_sel(1) & ((Rs_sel(1)) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(1),
	datab => Rs_sel(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X90_Y69_N16
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((Rs_sel(2) & (Rt_sel(2) & !\LessThan0~3_cout\)) # (!Rs_sel(2) & ((Rt_sel(2)) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(2),
	datab => Rt_sel(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X90_Y69_N18
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((Rt_sel(3) & (Rs_sel(3) & !\LessThan0~5_cout\)) # (!Rt_sel(3) & ((Rs_sel(3)) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(3),
	datab => Rs_sel(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X90_Y69_N20
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((Rs_sel(4) & (Rt_sel(4) & !\LessThan0~7_cout\)) # (!Rs_sel(4) & ((Rt_sel(4)) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(4),
	datab => Rt_sel(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X90_Y69_N22
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((Rt_sel(5) & (Rs_sel(5) & !\LessThan0~9_cout\)) # (!Rt_sel(5) & ((Rs_sel(5)) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(5),
	datab => Rs_sel(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X90_Y69_N24
\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((Rt_sel(6) & ((!\LessThan0~11_cout\) # (!Rs_sel(6)))) # (!Rt_sel(6) & (!Rs_sel(6) & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(6),
	datab => Rs_sel(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X90_Y69_N26
\LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (Rt_sel(7) & ((\LessThan0~13_cout\) # (!Rs_sel(7)))) # (!Rt_sel(7) & (\LessThan0~13_cout\ & !Rs_sel(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Rt_sel(7),
	datad => Rs_sel(7),
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X91_Y69_N0
\Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\op[1]~input_o\) # ((\op[2]~input_o\ & ((\LessThan0~14_combout\))) # (!\op[2]~input_o\ & (\Data[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Data[0]~input_o\,
	datac => \LessThan0~14_combout\,
	datad => \op[2]~input_o\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X91_Y69_N18
\Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\Mux23~3_combout\ & ((\op[1]~input_o\ & ((\op[0]~input_o\) # (\Add0~6_combout\))) # (!\op[1]~input_o\ & (!\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \Add0~6_combout\,
	datad => \Mux23~3_combout\,
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X91_Y69_N24
\Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\op[0]~input_o\ & ((\Mux23~4_combout\ & ((\Add0~8_combout\))) # (!\Mux23~4_combout\ & (\Add0~7_combout\)))) # (!\op[0]~input_o\ & (((\Mux23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \Add0~7_combout\,
	datac => \Add0~8_combout\,
	datad => \Mux23~4_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X91_Y69_N20
\Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\op[3]~input_o\ & (\Mux23~0_combout\)) # (!\op[3]~input_o\ & ((\Mux23~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[3]~input_o\,
	datac => \Mux23~0_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux23~2_combout\);

-- Location: FF_X91_Y69_N21
\Rs_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Rs_sel(0));

-- Location: LCCOMB_X94_Y69_N0
\f1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Mux6~0_combout\ = (Rs_sel(3)) # ((Rs_sel(1) & ((!Rs_sel(2)) # (!Rs_sel(0)))) # (!Rs_sel(1) & ((Rs_sel(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(0),
	datab => Rs_sel(1),
	datac => Rs_sel(2),
	datad => Rs_sel(3),
	combout => \f1|Mux6~0_combout\);

-- Location: LCCOMB_X94_Y69_N2
\f1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Mux5~0_combout\ = (Rs_sel(1) & (!Rs_sel(3) & ((Rs_sel(0)) # (!Rs_sel(2))))) # (!Rs_sel(1) & ((Rs_sel(2) & ((Rs_sel(3)))) # (!Rs_sel(2) & (Rs_sel(0) & !Rs_sel(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(0),
	datab => Rs_sel(1),
	datac => Rs_sel(2),
	datad => Rs_sel(3),
	combout => \f1|Mux5~0_combout\);

-- Location: LCCOMB_X94_Y69_N24
\f1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Mux4~0_combout\ = (Rs_sel(1) & (Rs_sel(0) & ((!Rs_sel(3))))) # (!Rs_sel(1) & ((Rs_sel(2) & ((!Rs_sel(3)))) # (!Rs_sel(2) & (Rs_sel(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(0),
	datab => Rs_sel(1),
	datac => Rs_sel(2),
	datad => Rs_sel(3),
	combout => \f1|Mux4~0_combout\);

-- Location: LCCOMB_X94_Y69_N30
\f1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Mux3~0_combout\ = (Rs_sel(0) & (Rs_sel(1) $ ((!Rs_sel(2))))) # (!Rs_sel(0) & ((Rs_sel(1) & (!Rs_sel(2) & Rs_sel(3))) # (!Rs_sel(1) & (Rs_sel(2) & !Rs_sel(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(0),
	datab => Rs_sel(1),
	datac => Rs_sel(2),
	datad => Rs_sel(3),
	combout => \f1|Mux3~0_combout\);

-- Location: LCCOMB_X94_Y69_N28
\f1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Mux2~0_combout\ = (Rs_sel(2) & (Rs_sel(3) & ((Rs_sel(1)) # (!Rs_sel(0))))) # (!Rs_sel(2) & (!Rs_sel(0) & (Rs_sel(1) & !Rs_sel(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(0),
	datab => Rs_sel(1),
	datac => Rs_sel(2),
	datad => Rs_sel(3),
	combout => \f1|Mux2~0_combout\);

-- Location: LCCOMB_X94_Y69_N14
\f1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Mux1~0_combout\ = (Rs_sel(1) & ((Rs_sel(0) & ((Rs_sel(3)))) # (!Rs_sel(0) & (Rs_sel(2))))) # (!Rs_sel(1) & (Rs_sel(2) & (Rs_sel(0) $ (Rs_sel(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(0),
	datab => Rs_sel(1),
	datac => Rs_sel(2),
	datad => Rs_sel(3),
	combout => \f1|Mux1~0_combout\);

-- Location: LCCOMB_X94_Y69_N8
\f1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Mux0~0_combout\ = (Rs_sel(1) & (Rs_sel(0) & (!Rs_sel(2) & Rs_sel(3)))) # (!Rs_sel(1) & (Rs_sel(2) $ (((Rs_sel(0) & !Rs_sel(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(0),
	datab => Rs_sel(1),
	datac => Rs_sel(2),
	datad => Rs_sel(3),
	combout => \f1|Mux0~0_combout\);

-- Location: LCCOMB_X92_Y68_N0
\f2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|Mux6~0_combout\ = (Rs_sel(7)) # ((Rs_sel(6) & ((!Rs_sel(5)) # (!Rs_sel(4)))) # (!Rs_sel(6) & ((Rs_sel(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(4),
	datab => Rs_sel(6),
	datac => Rs_sel(5),
	datad => Rs_sel(7),
	combout => \f2|Mux6~0_combout\);

-- Location: LCCOMB_X92_Y68_N18
\f2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|Mux5~0_combout\ = (Rs_sel(6) & ((Rs_sel(5) & (Rs_sel(4) & !Rs_sel(7))) # (!Rs_sel(5) & ((Rs_sel(7)))))) # (!Rs_sel(6) & (!Rs_sel(7) & ((Rs_sel(4)) # (Rs_sel(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(4),
	datab => Rs_sel(6),
	datac => Rs_sel(5),
	datad => Rs_sel(7),
	combout => \f2|Mux5~0_combout\);

-- Location: LCCOMB_X92_Y69_N16
\f2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|Mux4~0_combout\ = (Rs_sel(5) & (((Rs_sel(4) & !Rs_sel(7))))) # (!Rs_sel(5) & ((Rs_sel(6) & ((!Rs_sel(7)))) # (!Rs_sel(6) & (Rs_sel(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(6),
	datab => Rs_sel(5),
	datac => Rs_sel(4),
	datad => Rs_sel(7),
	combout => \f2|Mux4~0_combout\);

-- Location: LCCOMB_X92_Y68_N20
\f2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|Mux3~0_combout\ = (Rs_sel(4) & (Rs_sel(6) $ ((!Rs_sel(5))))) # (!Rs_sel(4) & ((Rs_sel(6) & (!Rs_sel(5) & !Rs_sel(7))) # (!Rs_sel(6) & (Rs_sel(5) & Rs_sel(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(4),
	datab => Rs_sel(6),
	datac => Rs_sel(5),
	datad => Rs_sel(7),
	combout => \f2|Mux3~0_combout\);

-- Location: LCCOMB_X92_Y68_N10
\f2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|Mux2~0_combout\ = (Rs_sel(6) & (Rs_sel(7) & ((Rs_sel(5)) # (!Rs_sel(4))))) # (!Rs_sel(6) & (!Rs_sel(4) & (Rs_sel(5) & !Rs_sel(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(4),
	datab => Rs_sel(6),
	datac => Rs_sel(5),
	datad => Rs_sel(7),
	combout => \f2|Mux2~0_combout\);

-- Location: LCCOMB_X92_Y68_N12
\f2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|Mux1~0_combout\ = (Rs_sel(5) & ((Rs_sel(4) & ((Rs_sel(7)))) # (!Rs_sel(4) & (Rs_sel(6))))) # (!Rs_sel(5) & (Rs_sel(6) & (Rs_sel(4) $ (Rs_sel(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(4),
	datab => Rs_sel(6),
	datac => Rs_sel(5),
	datad => Rs_sel(7),
	combout => \f2|Mux1~0_combout\);

-- Location: LCCOMB_X92_Y68_N26
\f2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|Mux0~0_combout\ = (Rs_sel(6) & (!Rs_sel(5) & ((Rs_sel(7)) # (!Rs_sel(4))))) # (!Rs_sel(6) & (Rs_sel(4) & (Rs_sel(5) $ (!Rs_sel(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rs_sel(4),
	datab => Rs_sel(6),
	datac => Rs_sel(5),
	datad => Rs_sel(7),
	combout => \f2|Mux0~0_combout\);

-- Location: LCCOMB_X85_Y69_N12
\f3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|Mux6~0_combout\ = (Rt_sel(3)) # ((Rt_sel(1) & ((!Rt_sel(0)) # (!Rt_sel(2)))) # (!Rt_sel(1) & (Rt_sel(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(1),
	datab => Rt_sel(2),
	datac => Rt_sel(0),
	datad => Rt_sel(3),
	combout => \f3|Mux6~0_combout\);

-- Location: LCCOMB_X85_Y69_N10
\f3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|Mux5~0_combout\ = (Rt_sel(1) & (!Rt_sel(3) & ((Rt_sel(0)) # (!Rt_sel(2))))) # (!Rt_sel(1) & ((Rt_sel(2) & ((Rt_sel(3)))) # (!Rt_sel(2) & (Rt_sel(0) & !Rt_sel(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(1),
	datab => Rt_sel(2),
	datac => Rt_sel(0),
	datad => Rt_sel(3),
	combout => \f3|Mux5~0_combout\);

-- Location: LCCOMB_X85_Y69_N16
\f3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|Mux4~0_combout\ = (Rt_sel(1) & (((Rt_sel(0) & !Rt_sel(3))))) # (!Rt_sel(1) & ((Rt_sel(2) & ((!Rt_sel(3)))) # (!Rt_sel(2) & (Rt_sel(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(1),
	datab => Rt_sel(2),
	datac => Rt_sel(0),
	datad => Rt_sel(3),
	combout => \f3|Mux4~0_combout\);

-- Location: LCCOMB_X85_Y69_N2
\f3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|Mux3~0_combout\ = (Rt_sel(0) & (Rt_sel(1) $ ((!Rt_sel(2))))) # (!Rt_sel(0) & ((Rt_sel(1) & (!Rt_sel(2) & Rt_sel(3))) # (!Rt_sel(1) & (Rt_sel(2) & !Rt_sel(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(1),
	datab => Rt_sel(2),
	datac => Rt_sel(0),
	datad => Rt_sel(3),
	combout => \f3|Mux3~0_combout\);

-- Location: LCCOMB_X85_Y69_N8
\f3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|Mux2~0_combout\ = (Rt_sel(2) & (Rt_sel(3) & ((Rt_sel(1)) # (!Rt_sel(0))))) # (!Rt_sel(2) & (Rt_sel(1) & (!Rt_sel(0) & !Rt_sel(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(1),
	datab => Rt_sel(2),
	datac => Rt_sel(0),
	datad => Rt_sel(3),
	combout => \f3|Mux2~0_combout\);

-- Location: LCCOMB_X85_Y69_N6
\f3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|Mux1~0_combout\ = (Rt_sel(1) & ((Rt_sel(0) & ((Rt_sel(3)))) # (!Rt_sel(0) & (Rt_sel(2))))) # (!Rt_sel(1) & (Rt_sel(2) & (Rt_sel(0) $ (Rt_sel(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(1),
	datab => Rt_sel(2),
	datac => Rt_sel(0),
	datad => Rt_sel(3),
	combout => \f3|Mux1~0_combout\);

-- Location: LCCOMB_X85_Y69_N0
\f3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|Mux0~0_combout\ = (Rt_sel(1) & (!Rt_sel(2) & (Rt_sel(0) & Rt_sel(3)))) # (!Rt_sel(1) & (Rt_sel(2) $ (((Rt_sel(0) & !Rt_sel(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(1),
	datab => Rt_sel(2),
	datac => Rt_sel(0),
	datad => Rt_sel(3),
	combout => \f3|Mux0~0_combout\);

-- Location: LCCOMB_X86_Y69_N16
\f4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f4|Mux6~0_combout\ = (Rt_sel(7)) # ((Rt_sel(5) & ((!Rt_sel(4)) # (!Rt_sel(6)))) # (!Rt_sel(5) & (Rt_sel(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(5),
	datab => Rt_sel(6),
	datac => Rt_sel(4),
	datad => Rt_sel(7),
	combout => \f4|Mux6~0_combout\);

-- Location: LCCOMB_X89_Y69_N0
\f4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f4|Mux5~0_combout\ = (Rt_sel(6) & ((Rt_sel(7) & ((!Rt_sel(5)))) # (!Rt_sel(7) & (Rt_sel(4) & Rt_sel(5))))) # (!Rt_sel(6) & (!Rt_sel(7) & ((Rt_sel(4)) # (Rt_sel(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(6),
	datab => Rt_sel(4),
	datac => Rt_sel(7),
	datad => Rt_sel(5),
	combout => \f4|Mux5~0_combout\);

-- Location: LCCOMB_X90_Y69_N8
\f4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f4|Mux4~0_combout\ = (Rt_sel(5) & (Rt_sel(4) & (!Rt_sel(7)))) # (!Rt_sel(5) & ((Rt_sel(6) & ((!Rt_sel(7)))) # (!Rt_sel(6) & (Rt_sel(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(4),
	datab => Rt_sel(7),
	datac => Rt_sel(6),
	datad => Rt_sel(5),
	combout => \f4|Mux4~0_combout\);

-- Location: LCCOMB_X86_Y69_N2
\f4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f4|Mux3~0_combout\ = (Rt_sel(4) & (Rt_sel(5) $ ((!Rt_sel(6))))) # (!Rt_sel(4) & ((Rt_sel(5) & (!Rt_sel(6) & Rt_sel(7))) # (!Rt_sel(5) & (Rt_sel(6) & !Rt_sel(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(5),
	datab => Rt_sel(6),
	datac => Rt_sel(4),
	datad => Rt_sel(7),
	combout => \f4|Mux3~0_combout\);

-- Location: LCCOMB_X86_Y69_N8
\f4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f4|Mux2~0_combout\ = (Rt_sel(6) & (Rt_sel(7) & ((Rt_sel(5)) # (!Rt_sel(4))))) # (!Rt_sel(6) & (Rt_sel(5) & (!Rt_sel(4) & !Rt_sel(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(5),
	datab => Rt_sel(6),
	datac => Rt_sel(4),
	datad => Rt_sel(7),
	combout => \f4|Mux2~0_combout\);

-- Location: LCCOMB_X86_Y69_N22
\f4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f4|Mux1~0_combout\ = (Rt_sel(5) & ((Rt_sel(4) & ((Rt_sel(7)))) # (!Rt_sel(4) & (Rt_sel(6))))) # (!Rt_sel(5) & (Rt_sel(6) & (Rt_sel(4) $ (Rt_sel(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(5),
	datab => Rt_sel(6),
	datac => Rt_sel(4),
	datad => Rt_sel(7),
	combout => \f4|Mux1~0_combout\);

-- Location: LCCOMB_X86_Y69_N12
\f4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f4|Mux0~0_combout\ = (Rt_sel(5) & (!Rt_sel(6) & (Rt_sel(4) & Rt_sel(7)))) # (!Rt_sel(5) & (Rt_sel(6) $ (((Rt_sel(4) & !Rt_sel(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Rt_sel(5),
	datab => Rt_sel(6),
	datac => Rt_sel(4),
	datad => Rt_sel(7),
	combout => \f4|Mux0~0_combout\);

-- Location: LCCOMB_X66_Y72_N10
\Data_sel[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_sel[3]~feeder_combout\ = \Data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data[3]~input_o\,
	combout => \Data_sel[3]~feeder_combout\);

-- Location: FF_X66_Y72_N11
\Data_sel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_sel[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Data_sel(3));

-- Location: LCCOMB_X66_Y72_N20
\Data_sel[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_sel[0]~feeder_combout\ = \Data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data[0]~input_o\,
	combout => \Data_sel[0]~feeder_combout\);

-- Location: FF_X66_Y72_N21
\Data_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_sel[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Data_sel(0));

-- Location: LCCOMB_X66_Y72_N22
\Data_sel[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_sel[1]~feeder_combout\ = \Data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data[1]~input_o\,
	combout => \Data_sel[1]~feeder_combout\);

-- Location: FF_X66_Y72_N23
\Data_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_sel[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Data_sel(1));

-- Location: LCCOMB_X66_Y72_N24
\Data_sel[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_sel[2]~feeder_combout\ = \Data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data[2]~input_o\,
	combout => \Data_sel[2]~feeder_combout\);

-- Location: FF_X66_Y72_N25
\Data_sel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_sel[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Data_sel(2));

-- Location: LCCOMB_X66_Y72_N28
\f5|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f5|Mux6~0_combout\ = (Data_sel(3)) # ((Data_sel(1) & ((!Data_sel(2)) # (!Data_sel(0)))) # (!Data_sel(1) & ((Data_sel(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Data_sel(3),
	datab => Data_sel(0),
	datac => Data_sel(1),
	datad => Data_sel(2),
	combout => \f5|Mux6~0_combout\);

-- Location: LCCOMB_X66_Y72_N2
\f5|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f5|Mux5~0_combout\ = (Data_sel(3) & (((!Data_sel(1) & Data_sel(2))))) # (!Data_sel(3) & ((Data_sel(0) & ((Data_sel(1)) # (!Data_sel(2)))) # (!Data_sel(0) & (Data_sel(1) & !Data_sel(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Data_sel(3),
	datab => Data_sel(0),
	datac => Data_sel(1),
	datad => Data_sel(2),
	combout => \f5|Mux5~0_combout\);

-- Location: LCCOMB_X66_Y72_N8
\f5|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f5|Mux4~0_combout\ = (Data_sel(1) & (!Data_sel(3) & (Data_sel(0)))) # (!Data_sel(1) & ((Data_sel(2) & (!Data_sel(3))) # (!Data_sel(2) & ((Data_sel(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Data_sel(3),
	datab => Data_sel(0),
	datac => Data_sel(1),
	datad => Data_sel(2),
	combout => \f5|Mux4~0_combout\);

-- Location: LCCOMB_X66_Y72_N18
\f5|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f5|Mux3~0_combout\ = (Data_sel(0) & ((Data_sel(1) $ (!Data_sel(2))))) # (!Data_sel(0) & ((Data_sel(3) & (Data_sel(1) & !Data_sel(2))) # (!Data_sel(3) & (!Data_sel(1) & Data_sel(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Data_sel(3),
	datab => Data_sel(0),
	datac => Data_sel(1),
	datad => Data_sel(2),
	combout => \f5|Mux3~0_combout\);

-- Location: LCCOMB_X66_Y72_N0
\f5|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f5|Mux2~0_combout\ = (Data_sel(3) & (Data_sel(2) & ((Data_sel(1)) # (!Data_sel(0))))) # (!Data_sel(3) & (!Data_sel(0) & (Data_sel(1) & !Data_sel(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Data_sel(3),
	datab => Data_sel(0),
	datac => Data_sel(1),
	datad => Data_sel(2),
	combout => \f5|Mux2~0_combout\);

-- Location: LCCOMB_X66_Y72_N26
\f5|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f5|Mux1~0_combout\ = (Data_sel(3) & ((Data_sel(0) & (Data_sel(1))) # (!Data_sel(0) & ((Data_sel(2)))))) # (!Data_sel(3) & (Data_sel(2) & (Data_sel(0) $ (Data_sel(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Data_sel(3),
	datab => Data_sel(0),
	datac => Data_sel(1),
	datad => Data_sel(2),
	combout => \f5|Mux1~0_combout\);

-- Location: LCCOMB_X66_Y72_N12
\f5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f5|Mux0~0_combout\ = (Data_sel(1) & (Data_sel(3) & (Data_sel(0) & !Data_sel(2)))) # (!Data_sel(1) & (Data_sel(2) $ (((!Data_sel(3) & Data_sel(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Data_sel(3),
	datab => Data_sel(0),
	datac => Data_sel(1),
	datad => Data_sel(2),
	combout => \f5|Mux0~0_combout\);

-- Location: FF_X86_Y69_N31
\Data_sel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Data[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Data_sel(4));

-- Location: FF_X86_Y69_N29
\Data_sel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Data[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Data_sel(5));

-- Location: FF_X86_Y69_N15
\Data_sel[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Data[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Data_sel(6));

-- Location: LCCOMB_X86_Y69_N24
\Data_sel[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_sel[7]~feeder_combout\ = \Data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data[7]~input_o\,
	combout => \Data_sel[7]~feeder_combout\);

-- Location: FF_X86_Y69_N25
\Data_sel[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_sel[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Data_sel(7));

-- Location: LCCOMB_X85_Y69_N14
\f6|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f6|Mux6~0_combout\ = (Data_sel(7)) # ((Data_sel(5) & ((!Data_sel(6)) # (!Data_sel(4)))) # (!Data_sel(5) & ((Data_sel(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Data_sel(4),
	datab => Data_sel(5),
	datac => Data_sel(6),
	datad => Data_sel(7),
	combout => \f6|Mux6~0_combout\);

-- Location: LCCOMB_X85_Y69_N4
\f6|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f6|Mux5~0_combout\ = (Data_sel(5) & (!Data_sel(7) & ((Data_sel(4)) # (!Data_sel(6))))) # (!Data_sel(5) & ((Data_sel(6) & ((Data_sel(7)))) # (!Data_sel(6) & (Data_sel(4) & !Data_sel(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Data_sel(4),
	datab => Data_sel(5),
	datac => Data_sel(6),
	datad => Data_sel(7),
	combout => \f6|Mux5~0_combout\);

-- Location: LCCOMB_X85_Y69_N22
\f6|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f6|Mux4~0_combout\ = (Data_sel(5) & (Data_sel(4) & ((!Data_sel(7))))) # (!Data_sel(5) & ((Data_sel(6) & ((!Data_sel(7)))) # (!Data_sel(6) & (Data_sel(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Data_sel(4),
	datab => Data_sel(5),
	datac => Data_sel(6),
	datad => Data_sel(7),
	combout => \f6|Mux4~0_combout\);

-- Location: LCCOMB_X85_Y69_N24
\f6|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f6|Mux3~0_combout\ = (Data_sel(4) & (Data_sel(5) $ ((!Data_sel(6))))) # (!Data_sel(4) & ((Data_sel(5) & (!Data_sel(6) & Data_sel(7))) # (!Data_sel(5) & (Data_sel(6) & !Data_sel(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Data_sel(4),
	datab => Data_sel(5),
	datac => Data_sel(6),
	datad => Data_sel(7),
	combout => \f6|Mux3~0_combout\);

-- Location: LCCOMB_X85_Y69_N26
\f6|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f6|Mux2~0_combout\ = (Data_sel(6) & (Data_sel(7) & ((Data_sel(5)) # (!Data_sel(4))))) # (!Data_sel(6) & (!Data_sel(4) & (Data_sel(5) & !Data_sel(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Data_sel(4),
	datab => Data_sel(5),
	datac => Data_sel(6),
	datad => Data_sel(7),
	combout => \f6|Mux2~0_combout\);

-- Location: LCCOMB_X85_Y69_N28
\f6|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f6|Mux1~0_combout\ = (Data_sel(5) & ((Data_sel(4) & ((Data_sel(7)))) # (!Data_sel(4) & (Data_sel(6))))) # (!Data_sel(5) & (Data_sel(6) & (Data_sel(4) $ (Data_sel(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Data_sel(4),
	datab => Data_sel(5),
	datac => Data_sel(6),
	datad => Data_sel(7),
	combout => \f6|Mux1~0_combout\);

-- Location: LCCOMB_X85_Y69_N30
\f6|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f6|Mux0~0_combout\ = (Data_sel(5) & (Data_sel(4) & (!Data_sel(6) & Data_sel(7)))) # (!Data_sel(5) & (Data_sel(6) $ (((Data_sel(4) & !Data_sel(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Data_sel(4),
	datab => Data_sel(5),
	datac => Data_sel(6),
	datad => Data_sel(7),
	combout => \f6|Mux0~0_combout\);

ww_Rs_seg0(0) <= \Rs_seg0[0]~output_o\;

ww_Rs_seg0(1) <= \Rs_seg0[1]~output_o\;

ww_Rs_seg0(2) <= \Rs_seg0[2]~output_o\;

ww_Rs_seg0(3) <= \Rs_seg0[3]~output_o\;

ww_Rs_seg0(4) <= \Rs_seg0[4]~output_o\;

ww_Rs_seg0(5) <= \Rs_seg0[5]~output_o\;

ww_Rs_seg0(6) <= \Rs_seg0[6]~output_o\;

ww_Rs_seg1(0) <= \Rs_seg1[0]~output_o\;

ww_Rs_seg1(1) <= \Rs_seg1[1]~output_o\;

ww_Rs_seg1(2) <= \Rs_seg1[2]~output_o\;

ww_Rs_seg1(3) <= \Rs_seg1[3]~output_o\;

ww_Rs_seg1(4) <= \Rs_seg1[4]~output_o\;

ww_Rs_seg1(5) <= \Rs_seg1[5]~output_o\;

ww_Rs_seg1(6) <= \Rs_seg1[6]~output_o\;

ww_Rt_seg0(0) <= \Rt_seg0[0]~output_o\;

ww_Rt_seg0(1) <= \Rt_seg0[1]~output_o\;

ww_Rt_seg0(2) <= \Rt_seg0[2]~output_o\;

ww_Rt_seg0(3) <= \Rt_seg0[3]~output_o\;

ww_Rt_seg0(4) <= \Rt_seg0[4]~output_o\;

ww_Rt_seg0(5) <= \Rt_seg0[5]~output_o\;

ww_Rt_seg0(6) <= \Rt_seg0[6]~output_o\;

ww_Rt_seg1(0) <= \Rt_seg1[0]~output_o\;

ww_Rt_seg1(1) <= \Rt_seg1[1]~output_o\;

ww_Rt_seg1(2) <= \Rt_seg1[2]~output_o\;

ww_Rt_seg1(3) <= \Rt_seg1[3]~output_o\;

ww_Rt_seg1(4) <= \Rt_seg1[4]~output_o\;

ww_Rt_seg1(5) <= \Rt_seg1[5]~output_o\;

ww_Rt_seg1(6) <= \Rt_seg1[6]~output_o\;

ww_Data_seg0(0) <= \Data_seg0[0]~output_o\;

ww_Data_seg0(1) <= \Data_seg0[1]~output_o\;

ww_Data_seg0(2) <= \Data_seg0[2]~output_o\;

ww_Data_seg0(3) <= \Data_seg0[3]~output_o\;

ww_Data_seg0(4) <= \Data_seg0[4]~output_o\;

ww_Data_seg0(5) <= \Data_seg0[5]~output_o\;

ww_Data_seg0(6) <= \Data_seg0[6]~output_o\;

ww_Data_seg1(0) <= \Data_seg1[0]~output_o\;

ww_Data_seg1(1) <= \Data_seg1[1]~output_o\;

ww_Data_seg1(2) <= \Data_seg1[2]~output_o\;

ww_Data_seg1(3) <= \Data_seg1[3]~output_o\;

ww_Data_seg1(4) <= \Data_seg1[4]~output_o\;

ww_Data_seg1(5) <= \Data_seg1[5]~output_o\;

ww_Data_seg1(6) <= \Data_seg1[6]~output_o\;
END structure;


