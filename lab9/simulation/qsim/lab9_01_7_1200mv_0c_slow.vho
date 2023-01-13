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

-- DATE "01/13/2023 13:17:03"

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

ENTITY 	lab9_01 IS
    PORT (
	clk_50Mhz : IN std_logic;
	reset : IN std_logic;
	sw : IN std_logic_vector(2 DOWNTO 0);
	ouput : OUT std_logic_vector(7 DOWNTO 0)
	);
END lab9_01;

-- Design Ports Information
-- ouput[0]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ouput[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ouput[2]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ouput[3]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ouput[4]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ouput[5]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ouput[6]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ouput[7]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50Mhz	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab9_01 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50Mhz : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_sw : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ouput : std_logic_vector(7 DOWNTO 0);
SIGNAL \k2|Mux0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \k1|Mux0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \g2|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \g1|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_ris~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ouput[0]~output_o\ : std_logic;
SIGNAL \ouput[1]~output_o\ : std_logic;
SIGNAL \ouput[2]~output_o\ : std_logic;
SIGNAL \ouput[3]~output_o\ : std_logic;
SIGNAL \ouput[4]~output_o\ : std_logic;
SIGNAL \ouput[5]~output_o\ : std_logic;
SIGNAL \ouput[6]~output_o\ : std_logic;
SIGNAL \ouput[7]~output_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \p1|Decoder0~0_combout\ : std_logic;
SIGNAL \clk_50Mhz~input_o\ : std_logic;
SIGNAL \e3|enable~buf0_combout\ : std_logic;
SIGNAL \e2|enable~buf0_combout\ : std_logic;
SIGNAL \e1|enable~buf0_combout\ : std_logic;
SIGNAL \k2|Mux0~0_combout\ : std_logic;
SIGNAL \k2|Mux0~1_combout\ : std_logic;
SIGNAL \k2|Mux0~combout\ : std_logic;
SIGNAL \k2|Mux0~clkctrl_outclk\ : std_logic;
SIGNAL \g2|Add0~0_combout\ : std_logic;
SIGNAL \g2|count~11_combout\ : std_logic;
SIGNAL \g2|Add0~1\ : std_logic;
SIGNAL \g2|Add0~2_combout\ : std_logic;
SIGNAL \g2|Add0~3\ : std_logic;
SIGNAL \g2|Add0~4_combout\ : std_logic;
SIGNAL \g2|Add0~5\ : std_logic;
SIGNAL \g2|Add0~6_combout\ : std_logic;
SIGNAL \g2|Equal0~1_combout\ : std_logic;
SIGNAL \g2|Add0~7\ : std_logic;
SIGNAL \g2|Add0~8_combout\ : std_logic;
SIGNAL \g2|Add0~9\ : std_logic;
SIGNAL \g2|Add0~10_combout\ : std_logic;
SIGNAL \g2|Add0~11\ : std_logic;
SIGNAL \g2|Add0~12_combout\ : std_logic;
SIGNAL \g2|Add0~13\ : std_logic;
SIGNAL \g2|Add0~14_combout\ : std_logic;
SIGNAL \g2|count~10_combout\ : std_logic;
SIGNAL \g2|Add0~15\ : std_logic;
SIGNAL \g2|Add0~16_combout\ : std_logic;
SIGNAL \g2|Add0~17\ : std_logic;
SIGNAL \g2|Add0~18_combout\ : std_logic;
SIGNAL \g2|Add0~19\ : std_logic;
SIGNAL \g2|Add0~20_combout\ : std_logic;
SIGNAL \g2|Add0~21\ : std_logic;
SIGNAL \g2|Add0~22_combout\ : std_logic;
SIGNAL \g2|Add0~23\ : std_logic;
SIGNAL \g2|Add0~24_combout\ : std_logic;
SIGNAL \g2|count~12_combout\ : std_logic;
SIGNAL \g2|Add0~25\ : std_logic;
SIGNAL \g2|Add0~26_combout\ : std_logic;
SIGNAL \g2|count~13_combout\ : std_logic;
SIGNAL \g2|Add0~27\ : std_logic;
SIGNAL \g2|Add0~28_combout\ : std_logic;
SIGNAL \g2|count~14_combout\ : std_logic;
SIGNAL \g2|Add0~29\ : std_logic;
SIGNAL \g2|Add0~30_combout\ : std_logic;
SIGNAL \g2|count~15_combout\ : std_logic;
SIGNAL \g2|Equal0~3_combout\ : std_logic;
SIGNAL \g2|Equal0~2_combout\ : std_logic;
SIGNAL \g2|Equal0~0_combout\ : std_logic;
SIGNAL \g2|Equal0~4_combout\ : std_logic;
SIGNAL \g2|Add0~31\ : std_logic;
SIGNAL \g2|Add0~32_combout\ : std_logic;
SIGNAL \g2|Add0~33\ : std_logic;
SIGNAL \g2|Add0~34_combout\ : std_logic;
SIGNAL \g2|count~16_combout\ : std_logic;
SIGNAL \g2|Add0~35\ : std_logic;
SIGNAL \g2|Add0~36_combout\ : std_logic;
SIGNAL \g2|Add0~37\ : std_logic;
SIGNAL \g2|Add0~38_combout\ : std_logic;
SIGNAL \g2|count~17_combout\ : std_logic;
SIGNAL \g2|Add0~39\ : std_logic;
SIGNAL \g2|Add0~40_combout\ : std_logic;
SIGNAL \g2|count~18_combout\ : std_logic;
SIGNAL \g2|Add0~41\ : std_logic;
SIGNAL \g2|Add0~42_combout\ : std_logic;
SIGNAL \g2|count~19_combout\ : std_logic;
SIGNAL \g2|Add0~43\ : std_logic;
SIGNAL \g2|Add0~44_combout\ : std_logic;
SIGNAL \g2|count~20_combout\ : std_logic;
SIGNAL \g2|Add0~45\ : std_logic;
SIGNAL \g2|Add0~46_combout\ : std_logic;
SIGNAL \g2|count~21_combout\ : std_logic;
SIGNAL \g2|Add0~47\ : std_logic;
SIGNAL \g2|Add0~48_combout\ : std_logic;
SIGNAL \g2|Add0~49\ : std_logic;
SIGNAL \g2|Add0~50_combout\ : std_logic;
SIGNAL \g2|count~22_combout\ : std_logic;
SIGNAL \g2|Equal0~6_combout\ : std_logic;
SIGNAL \g2|Equal0~5_combout\ : std_logic;
SIGNAL \g2|Equal0~7_combout\ : std_logic;
SIGNAL \g2|clk_out~0_combout\ : std_logic;
SIGNAL \g2|clk_out~feeder_combout\ : std_logic;
SIGNAL \g2|clk_out~q\ : std_logic;
SIGNAL \g2|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \s2|counter[0]~75_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~buf0_combout\ : std_logic;
SIGNAL \resetn~combout\ : std_logic;
SIGNAL \reset_ris~combout\ : std_logic;
SIGNAL \reset_ris~clkctrl_outclk\ : std_logic;
SIGNAL \s2|counter[1]~25_combout\ : std_logic;
SIGNAL \s2|counter[1]~26\ : std_logic;
SIGNAL \s2|counter[2]~27_combout\ : std_logic;
SIGNAL \s2|counter[2]~28\ : std_logic;
SIGNAL \s2|counter[3]~29_combout\ : std_logic;
SIGNAL \s2|counter[3]~30\ : std_logic;
SIGNAL \s2|counter[4]~31_combout\ : std_logic;
SIGNAL \s2|counter[4]~32\ : std_logic;
SIGNAL \s2|counter[5]~33_combout\ : std_logic;
SIGNAL \s2|counter[5]~34\ : std_logic;
SIGNAL \s2|counter[6]~35_combout\ : std_logic;
SIGNAL \s2|counter[6]~36\ : std_logic;
SIGNAL \s2|counter[7]~37_combout\ : std_logic;
SIGNAL \s2|counter[7]~38\ : std_logic;
SIGNAL \s2|counter[8]~39_combout\ : std_logic;
SIGNAL \s2|counter[8]~40\ : std_logic;
SIGNAL \s2|counter[9]~41_combout\ : std_logic;
SIGNAL \s2|counter[9]~42\ : std_logic;
SIGNAL \s2|counter[10]~43_combout\ : std_logic;
SIGNAL \s2|counter[10]~44\ : std_logic;
SIGNAL \s2|counter[11]~45_combout\ : std_logic;
SIGNAL \s2|counter[11]~46\ : std_logic;
SIGNAL \s2|counter[12]~47_combout\ : std_logic;
SIGNAL \s2|counter[12]~48\ : std_logic;
SIGNAL \s2|counter[13]~49_combout\ : std_logic;
SIGNAL \s2|counter[13]~50\ : std_logic;
SIGNAL \s2|counter[14]~51_combout\ : std_logic;
SIGNAL \s2|counter[14]~52\ : std_logic;
SIGNAL \s2|counter[15]~53_combout\ : std_logic;
SIGNAL \s2|counter[15]~54\ : std_logic;
SIGNAL \s2|counter[16]~55_combout\ : std_logic;
SIGNAL \s2|counter[16]~56\ : std_logic;
SIGNAL \s2|counter[17]~57_combout\ : std_logic;
SIGNAL \s2|counter[17]~58\ : std_logic;
SIGNAL \s2|counter[18]~59_combout\ : std_logic;
SIGNAL \s2|counter[18]~60\ : std_logic;
SIGNAL \s2|counter[19]~61_combout\ : std_logic;
SIGNAL \s2|counter[19]~62\ : std_logic;
SIGNAL \s2|counter[20]~63_combout\ : std_logic;
SIGNAL \s2|counter[20]~64\ : std_logic;
SIGNAL \s2|counter[21]~65_combout\ : std_logic;
SIGNAL \s2|counter[21]~66\ : std_logic;
SIGNAL \s2|counter[22]~67_combout\ : std_logic;
SIGNAL \s2|counter[22]~68\ : std_logic;
SIGNAL \s2|counter[23]~69_combout\ : std_logic;
SIGNAL \s2|counter[23]~70\ : std_logic;
SIGNAL \s2|counter[24]~71_combout\ : std_logic;
SIGNAL \s2|counter[24]~72\ : std_logic;
SIGNAL \s2|counter[25]~73_combout\ : std_logic;
SIGNAL \f3|enable~buf0_combout\ : std_logic;
SIGNAL \f1|enable~buf0_combout\ : std_logic;
SIGNAL \f2|enable~buf0_combout\ : std_logic;
SIGNAL \k1|Mux0~0_combout\ : std_logic;
SIGNAL \k1|Mux0~1_combout\ : std_logic;
SIGNAL \k1|Mux0~combout\ : std_logic;
SIGNAL \k1|Mux0~clkctrl_outclk\ : std_logic;
SIGNAL \g1|Add0~0_combout\ : std_logic;
SIGNAL \g1|count~11_combout\ : std_logic;
SIGNAL \g1|Add0~1\ : std_logic;
SIGNAL \g1|Add0~2_combout\ : std_logic;
SIGNAL \g1|Add0~3\ : std_logic;
SIGNAL \g1|Add0~4_combout\ : std_logic;
SIGNAL \g1|Add0~5\ : std_logic;
SIGNAL \g1|Add0~6_combout\ : std_logic;
SIGNAL \g1|Add0~7\ : std_logic;
SIGNAL \g1|Add0~8_combout\ : std_logic;
SIGNAL \g1|Add0~9\ : std_logic;
SIGNAL \g1|Add0~10_combout\ : std_logic;
SIGNAL \g1|Add0~11\ : std_logic;
SIGNAL \g1|Add0~12_combout\ : std_logic;
SIGNAL \g1|Add0~13\ : std_logic;
SIGNAL \g1|Add0~14_combout\ : std_logic;
SIGNAL \g1|count~10_combout\ : std_logic;
SIGNAL \g1|Add0~15\ : std_logic;
SIGNAL \g1|Add0~16_combout\ : std_logic;
SIGNAL \g1|Add0~17\ : std_logic;
SIGNAL \g1|Add0~18_combout\ : std_logic;
SIGNAL \g1|Add0~19\ : std_logic;
SIGNAL \g1|Add0~20_combout\ : std_logic;
SIGNAL \g1|Add0~21\ : std_logic;
SIGNAL \g1|Add0~22_combout\ : std_logic;
SIGNAL \g1|Add0~23\ : std_logic;
SIGNAL \g1|Add0~24_combout\ : std_logic;
SIGNAL \g1|count~12_combout\ : std_logic;
SIGNAL \g1|Add0~25\ : std_logic;
SIGNAL \g1|Add0~26_combout\ : std_logic;
SIGNAL \g1|count~13_combout\ : std_logic;
SIGNAL \g1|Add0~27\ : std_logic;
SIGNAL \g1|Add0~28_combout\ : std_logic;
SIGNAL \g1|count~14_combout\ : std_logic;
SIGNAL \g1|Add0~29\ : std_logic;
SIGNAL \g1|Add0~30_combout\ : std_logic;
SIGNAL \g1|count~15_combout\ : std_logic;
SIGNAL \g1|Equal0~3_combout\ : std_logic;
SIGNAL \g1|Equal0~2_combout\ : std_logic;
SIGNAL \g1|Equal0~1_combout\ : std_logic;
SIGNAL \g1|Equal0~0_combout\ : std_logic;
SIGNAL \g1|Equal0~4_combout\ : std_logic;
SIGNAL \g1|Add0~31\ : std_logic;
SIGNAL \g1|Add0~32_combout\ : std_logic;
SIGNAL \g1|Add0~33\ : std_logic;
SIGNAL \g1|Add0~34_combout\ : std_logic;
SIGNAL \g1|count~16_combout\ : std_logic;
SIGNAL \g1|Add0~35\ : std_logic;
SIGNAL \g1|Add0~36_combout\ : std_logic;
SIGNAL \g1|Add0~37\ : std_logic;
SIGNAL \g1|Add0~38_combout\ : std_logic;
SIGNAL \g1|count~17_combout\ : std_logic;
SIGNAL \g1|Add0~39\ : std_logic;
SIGNAL \g1|Add0~40_combout\ : std_logic;
SIGNAL \g1|count~18_combout\ : std_logic;
SIGNAL \g1|Add0~41\ : std_logic;
SIGNAL \g1|Add0~42_combout\ : std_logic;
SIGNAL \g1|count~19_combout\ : std_logic;
SIGNAL \g1|Add0~43\ : std_logic;
SIGNAL \g1|Add0~44_combout\ : std_logic;
SIGNAL \g1|count~20_combout\ : std_logic;
SIGNAL \g1|Add0~45\ : std_logic;
SIGNAL \g1|Add0~46_combout\ : std_logic;
SIGNAL \g1|count~21_combout\ : std_logic;
SIGNAL \g1|Add0~47\ : std_logic;
SIGNAL \g1|Add0~48_combout\ : std_logic;
SIGNAL \g1|Add0~49\ : std_logic;
SIGNAL \g1|Add0~50_combout\ : std_logic;
SIGNAL \g1|count~22_combout\ : std_logic;
SIGNAL \g1|Equal0~5_combout\ : std_logic;
SIGNAL \g1|Equal0~6_combout\ : std_logic;
SIGNAL \g1|Equal0~7_combout\ : std_logic;
SIGNAL \g1|clk_out~0_combout\ : std_logic;
SIGNAL \g1|clk_out~feeder_combout\ : std_logic;
SIGNAL \g1|clk_out~q\ : std_logic;
SIGNAL \g1|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \s1|counter[0]~75_combout\ : std_logic;
SIGNAL \s1|counter[1]~25_combout\ : std_logic;
SIGNAL \s1|counter[1]~26\ : std_logic;
SIGNAL \s1|counter[2]~27_combout\ : std_logic;
SIGNAL \s1|counter[2]~28\ : std_logic;
SIGNAL \s1|counter[3]~29_combout\ : std_logic;
SIGNAL \s1|counter[3]~30\ : std_logic;
SIGNAL \s1|counter[4]~31_combout\ : std_logic;
SIGNAL \s1|counter[4]~32\ : std_logic;
SIGNAL \s1|counter[5]~33_combout\ : std_logic;
SIGNAL \s1|counter[5]~34\ : std_logic;
SIGNAL \s1|counter[6]~35_combout\ : std_logic;
SIGNAL \s1|counter[6]~36\ : std_logic;
SIGNAL \s1|counter[7]~37_combout\ : std_logic;
SIGNAL \s1|counter[7]~38\ : std_logic;
SIGNAL \s1|counter[8]~39_combout\ : std_logic;
SIGNAL \s1|counter[8]~40\ : std_logic;
SIGNAL \s1|counter[9]~41_combout\ : std_logic;
SIGNAL \s1|counter[9]~42\ : std_logic;
SIGNAL \s1|counter[10]~43_combout\ : std_logic;
SIGNAL \s1|counter[10]~44\ : std_logic;
SIGNAL \s1|counter[11]~45_combout\ : std_logic;
SIGNAL \s1|counter[11]~46\ : std_logic;
SIGNAL \s1|counter[12]~47_combout\ : std_logic;
SIGNAL \s1|counter[12]~48\ : std_logic;
SIGNAL \s1|counter[13]~49_combout\ : std_logic;
SIGNAL \s1|counter[13]~50\ : std_logic;
SIGNAL \s1|counter[14]~51_combout\ : std_logic;
SIGNAL \s1|counter[14]~52\ : std_logic;
SIGNAL \s1|counter[15]~53_combout\ : std_logic;
SIGNAL \s1|counter[15]~54\ : std_logic;
SIGNAL \s1|counter[16]~55_combout\ : std_logic;
SIGNAL \s1|counter[16]~56\ : std_logic;
SIGNAL \s1|counter[17]~57_combout\ : std_logic;
SIGNAL \s1|counter[17]~58\ : std_logic;
SIGNAL \s1|counter[18]~59_combout\ : std_logic;
SIGNAL \s1|counter[18]~60\ : std_logic;
SIGNAL \s1|counter[19]~61_combout\ : std_logic;
SIGNAL \s1|counter[19]~62\ : std_logic;
SIGNAL \s1|counter[20]~63_combout\ : std_logic;
SIGNAL \s1|counter[20]~64\ : std_logic;
SIGNAL \s1|counter[21]~65_combout\ : std_logic;
SIGNAL \s1|counter[21]~66\ : std_logic;
SIGNAL \s1|counter[22]~67_combout\ : std_logic;
SIGNAL \s1|counter[22]~68\ : std_logic;
SIGNAL \s1|counter[23]~69_combout\ : std_logic;
SIGNAL \s1|counter[23]~70\ : std_logic;
SIGNAL \s1|counter[24]~71_combout\ : std_logic;
SIGNAL \s1|counter[24]~72\ : std_logic;
SIGNAL \s1|counter[25]~73_combout\ : std_logic;
SIGNAL \p1|LessThan0~1_cout\ : std_logic;
SIGNAL \p1|LessThan0~3_cout\ : std_logic;
SIGNAL \p1|LessThan0~5_cout\ : std_logic;
SIGNAL \p1|LessThan0~7_cout\ : std_logic;
SIGNAL \p1|LessThan0~9_cout\ : std_logic;
SIGNAL \p1|LessThan0~11_cout\ : std_logic;
SIGNAL \p1|LessThan0~13_cout\ : std_logic;
SIGNAL \p1|LessThan0~15_cout\ : std_logic;
SIGNAL \p1|LessThan0~17_cout\ : std_logic;
SIGNAL \p1|LessThan0~19_cout\ : std_logic;
SIGNAL \p1|LessThan0~21_cout\ : std_logic;
SIGNAL \p1|LessThan0~23_cout\ : std_logic;
SIGNAL \p1|LessThan0~25_cout\ : std_logic;
SIGNAL \p1|LessThan0~27_cout\ : std_logic;
SIGNAL \p1|LessThan0~29_cout\ : std_logic;
SIGNAL \p1|LessThan0~31_cout\ : std_logic;
SIGNAL \p1|LessThan0~33_cout\ : std_logic;
SIGNAL \p1|LessThan0~35_cout\ : std_logic;
SIGNAL \p1|LessThan0~37_cout\ : std_logic;
SIGNAL \p1|LessThan0~39_cout\ : std_logic;
SIGNAL \p1|LessThan0~41_cout\ : std_logic;
SIGNAL \p1|LessThan0~43_cout\ : std_logic;
SIGNAL \p1|LessThan0~45_cout\ : std_logic;
SIGNAL \p1|LessThan0~47_cout\ : std_logic;
SIGNAL \p1|LessThan0~49_cout\ : std_logic;
SIGNAL \p1|LessThan0~50_combout\ : std_logic;
SIGNAL \p1|Decoder0~1_combout\ : std_logic;
SIGNAL \p1|Decoder0~2_combout\ : std_logic;
SIGNAL \p1|Decoder0~3_combout\ : std_logic;
SIGNAL \p1|Decoder0~4_combout\ : std_logic;
SIGNAL \p1|Decoder0~5_combout\ : std_logic;
SIGNAL \p1|Decoder0~6_combout\ : std_logic;
SIGNAL \p1|Decoder0~7_combout\ : std_logic;
SIGNAL \e2|chain\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \f3|chain\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \s2|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \s1|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \f2|chain\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \g2|count\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \e1|chain\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \g1|count\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \f1|chain\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \e3|chain\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \p1|ouput\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset_ris~clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50Mhz <= clk_50Mhz;
ww_reset <= reset;
ww_sw <= sw;
ouput <= ww_ouput;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\k2|Mux0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \k2|Mux0~combout\);

\k1|Mux0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \k1|Mux0~combout\);

\g2|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \g2|clk_out~q\);

\g1|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \g1|clk_out~q\);

\reset_ris~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_ris~combout\);
\ALT_INV_reset_ris~clkctrl_outclk\ <= NOT \reset_ris~clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X54_Y0_N16
\ouput[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ouput\(0),
	devoe => ww_devoe,
	o => \ouput[0]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\ouput[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ouput\(1),
	devoe => ww_devoe,
	o => \ouput[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\ouput[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ouput\(2),
	devoe => ww_devoe,
	o => \ouput[2]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\ouput[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ouput\(3),
	devoe => ww_devoe,
	o => \ouput[3]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\ouput[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ouput\(4),
	devoe => ww_devoe,
	o => \ouput[4]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\ouput[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ouput\(5),
	devoe => ww_devoe,
	o => \ouput[5]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\ouput[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ouput\(6),
	devoe => ww_devoe,
	o => \ouput[6]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\ouput[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ouput\(7),
	devoe => ww_devoe,
	o => \ouput[7]~output_o\);

-- Location: IOIBUF_X56_Y0_N22
\sw[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\sw[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\sw[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: LCCOMB_X56_Y4_N28
\p1|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|Decoder0~0_combout\ = (!\sw[0]~input_o\ & (!\sw[2]~input_o\ & !\sw[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \p1|Decoder0~0_combout\);

-- Location: IOIBUF_X56_Y0_N1
\clk_50Mhz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50Mhz,
	o => \clk_50Mhz~input_o\);

-- Location: LCCOMB_X57_Y1_N18
\e3|enable~buf0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|enable~buf0_combout\ = LCELL(\clk_50Mhz~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk_50Mhz~input_o\,
	combout => \e3|enable~buf0_combout\);

-- Location: LCCOMB_X57_Y1_N14
\e3|chain[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|chain\(0) = LCELL((!\e3|chain\(16) & \e3|enable~buf0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \e3|chain\(16),
	datad => \e3|enable~buf0_combout\,
	combout => \e3|chain\(0));

-- Location: LCCOMB_X57_Y4_N10
\e3|chain[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|chain\(1) = LCELL(!\e3|chain\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e3|chain\(0),
	combout => \e3|chain\(1));

-- Location: LCCOMB_X57_Y4_N20
\e3|chain[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|chain\(2) = LCELL(!\e3|chain\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e3|chain\(1),
	combout => \e3|chain\(2));

-- Location: LCCOMB_X57_Y4_N6
\e3|chain[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|chain\(3) = LCELL(!\e3|chain\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e3|chain\(2),
	combout => \e3|chain\(3));

-- Location: LCCOMB_X57_Y4_N28
\e3|chain[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|chain\(4) = LCELL(!\e3|chain\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e3|chain\(3),
	combout => \e3|chain\(4));

-- Location: LCCOMB_X57_Y4_N2
\e3|chain[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|chain\(5) = LCELL(!\e3|chain\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e3|chain\(4),
	combout => \e3|chain\(5));

-- Location: LCCOMB_X57_Y4_N4
\e3|chain[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|chain\(6) = LCELL(!\e3|chain\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e3|chain\(5),
	combout => \e3|chain\(6));

-- Location: LCCOMB_X56_Y4_N20
\e3|chain[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|chain\(7) = LCELL(!\e3|chain\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e3|chain\(6),
	combout => \e3|chain\(7));

-- Location: LCCOMB_X56_Y4_N18
\e3|chain[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|chain\(8) = LCELL(!\e3|chain\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e3|chain\(7),
	combout => \e3|chain\(8));

-- Location: LCCOMB_X56_Y4_N12
\e3|chain[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|chain\(9) = LCELL(!\e3|chain\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e3|chain\(8),
	combout => \e3|chain\(9));

-- Location: LCCOMB_X57_Y4_N22
\e3|chain[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|chain\(10) = LCELL(!\e3|chain\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e3|chain\(9),
	combout => \e3|chain\(10));

-- Location: LCCOMB_X57_Y4_N0
\e3|chain[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|chain\(11) = LCELL(!\e3|chain\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \e3|chain\(10),
	combout => \e3|chain\(11));

-- Location: LCCOMB_X57_Y4_N26
\e3|chain[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|chain\(12) = LCELL(!\e3|chain\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e3|chain\(11),
	combout => \e3|chain\(12));

-- Location: LCCOMB_X57_Y4_N16
\e3|chain[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|chain\(13) = LCELL(!\e3|chain\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \e3|chain\(12),
	combout => \e3|chain\(13));

-- Location: LCCOMB_X57_Y4_N18
\e3|chain[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|chain\(14) = LCELL(!\e3|chain\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e3|chain\(13),
	combout => \e3|chain\(14));

-- Location: LCCOMB_X57_Y4_N12
\e3|chain[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|chain\(15) = LCELL(!\e3|chain\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e3|chain\(14),
	combout => \e3|chain\(15));

-- Location: LCCOMB_X57_Y3_N12
\e3|chain[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3|chain\(16) = LCELL(!\e3|chain\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e3|chain\(15),
	combout => \e3|chain\(16));

-- Location: LCCOMB_X56_Y3_N28
\e2|enable~buf0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|enable~buf0_combout\ = LCELL(\clk_50Mhz~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_50Mhz~input_o\,
	combout => \e2|enable~buf0_combout\);

-- Location: LCCOMB_X56_Y3_N12
\e2|chain[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|chain\(0) = LCELL((\e2|enable~buf0_combout\ & !\e2|chain\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \e2|enable~buf0_combout\,
	datad => \e2|chain\(8),
	combout => \e2|chain\(0));

-- Location: LCCOMB_X56_Y3_N10
\e2|chain[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|chain\(1) = LCELL(!\e2|chain\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e2|chain\(0),
	combout => \e2|chain\(1));

-- Location: LCCOMB_X56_Y3_N26
\e2|chain[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|chain\(2) = LCELL(!\e2|chain\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e2|chain\(1),
	combout => \e2|chain\(2));

-- Location: LCCOMB_X56_Y3_N0
\e2|chain[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|chain\(3) = LCELL(!\e2|chain\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \e2|chain\(2),
	combout => \e2|chain\(3));

-- Location: LCCOMB_X56_Y3_N6
\e2|chain[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|chain\(4) = LCELL(!\e2|chain\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e2|chain\(3),
	combout => \e2|chain\(4));

-- Location: LCCOMB_X56_Y3_N20
\e2|chain[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|chain\(5) = LCELL(!\e2|chain\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e2|chain\(4),
	combout => \e2|chain\(5));

-- Location: LCCOMB_X56_Y3_N4
\e2|chain[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|chain\(6) = LCELL(!\e2|chain\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e2|chain\(5),
	combout => \e2|chain\(6));

-- Location: LCCOMB_X56_Y3_N14
\e2|chain[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|chain\(7) = LCELL(!\e2|chain\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \e2|chain\(6),
	combout => \e2|chain\(7));

-- Location: LCCOMB_X57_Y3_N2
\e2|chain[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2|chain\(8) = LCELL(!\e2|chain\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e2|chain\(7),
	combout => \e2|chain\(8));

-- Location: LCCOMB_X57_Y3_N20
\e1|enable~buf0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|enable~buf0_combout\ = LCELL(\clk_50Mhz~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_50Mhz~input_o\,
	combout => \e1|enable~buf0_combout\);

-- Location: LCCOMB_X57_Y3_N18
\e1|chain[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|chain\(0) = LCELL((\e1|enable~buf0_combout\ & !\e1|chain\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \e1|enable~buf0_combout\,
	datad => \e1|chain\(8),
	combout => \e1|chain\(0));

-- Location: LCCOMB_X56_Y3_N18
\e1|chain[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|chain\(1) = LCELL(!\e1|chain\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e1|chain\(0),
	combout => \e1|chain\(1));

-- Location: LCCOMB_X56_Y3_N2
\e1|chain[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|chain\(2) = LCELL(!\e1|chain\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e1|chain\(1),
	combout => \e1|chain\(2));

-- Location: LCCOMB_X56_Y3_N22
\e1|chain[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|chain\(3) = LCELL(!\e1|chain\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e1|chain\(2),
	combout => \e1|chain\(3));

-- Location: LCCOMB_X56_Y3_N16
\e1|chain[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|chain\(4) = LCELL(!\e1|chain\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \e1|chain\(3),
	combout => \e1|chain\(4));

-- Location: LCCOMB_X56_Y3_N24
\e1|chain[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|chain\(5) = LCELL(!\e1|chain\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e1|chain\(4),
	combout => \e1|chain\(5));

-- Location: LCCOMB_X56_Y3_N8
\e1|chain[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|chain\(6) = LCELL(!\e1|chain\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e1|chain\(5),
	combout => \e1|chain\(6));

-- Location: LCCOMB_X56_Y3_N30
\e1|chain[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|chain\(7) = LCELL(!\e1|chain\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \e1|chain\(6),
	combout => \e1|chain\(7));

-- Location: LCCOMB_X57_Y3_N10
\e1|chain[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1|chain\(8) = LCELL(!\e1|chain\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e1|chain\(7),
	combout => \e1|chain\(8));

-- Location: LCCOMB_X57_Y3_N4
\k2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \k2|Mux0~0_combout\ = (\sw[0]~input_o\ & (!\e2|chain\(8))) # (!\sw[0]~input_o\ & ((!\e1|chain\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e2|chain\(8),
	datac => \e1|chain\(8),
	datad => \sw[0]~input_o\,
	combout => \k2|Mux0~0_combout\);

-- Location: LCCOMB_X57_Y3_N16
\k2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \k2|Mux0~1_combout\ = (\sw[1]~input_o\ & ((!\e3|chain\(16)))) # (!\sw[1]~input_o\ & (\k2|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \k2|Mux0~0_combout\,
	datad => \e3|chain\(16),
	combout => \k2|Mux0~1_combout\);

-- Location: LCCOMB_X57_Y3_N6
\k2|Mux0\ : cycloneive_lcell_comb
-- Equation(s):
-- \k2|Mux0~combout\ = LCELL((\sw[2]~input_o\ & (\e3|chain\(16))) # (!\sw[2]~input_o\ & ((!\k2|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datac => \e3|chain\(16),
	datad => \k2|Mux0~1_combout\,
	combout => \k2|Mux0~combout\);

-- Location: CLKCTRL_G19
\k2|Mux0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \k2|Mux0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \k2|Mux0~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y36_N6
\g2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~0_combout\ = \g2|count\(0) $ (VCC)
-- \g2|Add0~1\ = CARRY(\g2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g2|count\(0),
	datad => VCC,
	combout => \g2|Add0~0_combout\,
	cout => \g2|Add0~1\);

-- Location: LCCOMB_X1_Y35_N18
\g2|count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|count~11_combout\ = (\g2|Add0~0_combout\ & ((!\g2|Equal0~4_combout\) # (!\g2|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g2|Equal0~7_combout\,
	datac => \g2|Add0~0_combout\,
	datad => \g2|Equal0~4_combout\,
	combout => \g2|count~11_combout\);

-- Location: FF_X2_Y36_N31
\g2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	asdata => \g2|count~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(0));

-- Location: LCCOMB_X2_Y36_N8
\g2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~2_combout\ = (\g2|count\(1) & (!\g2|Add0~1\)) # (!\g2|count\(1) & ((\g2|Add0~1\) # (GND)))
-- \g2|Add0~3\ = CARRY((!\g2|Add0~1\) # (!\g2|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g2|count\(1),
	datad => VCC,
	cin => \g2|Add0~1\,
	combout => \g2|Add0~2_combout\,
	cout => \g2|Add0~3\);

-- Location: FF_X2_Y36_N9
\g2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(1));

-- Location: LCCOMB_X2_Y36_N10
\g2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~4_combout\ = (\g2|count\(2) & (\g2|Add0~3\ $ (GND))) # (!\g2|count\(2) & (!\g2|Add0~3\ & VCC))
-- \g2|Add0~5\ = CARRY((\g2|count\(2) & !\g2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g2|count\(2),
	datad => VCC,
	cin => \g2|Add0~3\,
	combout => \g2|Add0~4_combout\,
	cout => \g2|Add0~5\);

-- Location: FF_X2_Y36_N11
\g2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(2));

-- Location: LCCOMB_X2_Y36_N12
\g2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~6_combout\ = (\g2|count\(3) & (!\g2|Add0~5\)) # (!\g2|count\(3) & ((\g2|Add0~5\) # (GND)))
-- \g2|Add0~7\ = CARRY((!\g2|Add0~5\) # (!\g2|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g2|count\(3),
	datad => VCC,
	cin => \g2|Add0~5\,
	combout => \g2|Add0~6_combout\,
	cout => \g2|Add0~7\);

-- Location: FF_X2_Y36_N13
\g2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(3));

-- Location: LCCOMB_X1_Y35_N8
\g2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Equal0~1_combout\ = (!\g2|count\(0) & (!\g2|count\(1) & (!\g2|count\(3) & !\g2|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g2|count\(0),
	datab => \g2|count\(1),
	datac => \g2|count\(3),
	datad => \g2|count\(2),
	combout => \g2|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y36_N14
\g2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~8_combout\ = (\g2|count\(4) & (\g2|Add0~7\ $ (GND))) # (!\g2|count\(4) & (!\g2|Add0~7\ & VCC))
-- \g2|Add0~9\ = CARRY((\g2|count\(4) & !\g2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g2|count\(4),
	datad => VCC,
	cin => \g2|Add0~7\,
	combout => \g2|Add0~8_combout\,
	cout => \g2|Add0~9\);

-- Location: FF_X2_Y36_N15
\g2|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(4));

-- Location: LCCOMB_X2_Y36_N16
\g2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~10_combout\ = (\g2|count\(5) & (!\g2|Add0~9\)) # (!\g2|count\(5) & ((\g2|Add0~9\) # (GND)))
-- \g2|Add0~11\ = CARRY((!\g2|Add0~9\) # (!\g2|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g2|count\(5),
	datad => VCC,
	cin => \g2|Add0~9\,
	combout => \g2|Add0~10_combout\,
	cout => \g2|Add0~11\);

-- Location: FF_X2_Y36_N17
\g2|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(5));

-- Location: LCCOMB_X2_Y36_N18
\g2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~12_combout\ = (\g2|count\(6) & (\g2|Add0~11\ $ (GND))) # (!\g2|count\(6) & (!\g2|Add0~11\ & VCC))
-- \g2|Add0~13\ = CARRY((\g2|count\(6) & !\g2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g2|count\(6),
	datad => VCC,
	cin => \g2|Add0~11\,
	combout => \g2|Add0~12_combout\,
	cout => \g2|Add0~13\);

-- Location: FF_X2_Y36_N19
\g2|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(6));

-- Location: LCCOMB_X2_Y36_N20
\g2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~14_combout\ = (\g2|count\(7) & (!\g2|Add0~13\)) # (!\g2|count\(7) & ((\g2|Add0~13\) # (GND)))
-- \g2|Add0~15\ = CARRY((!\g2|Add0~13\) # (!\g2|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g2|count\(7),
	datad => VCC,
	cin => \g2|Add0~13\,
	combout => \g2|Add0~14_combout\,
	cout => \g2|Add0~15\);

-- Location: LCCOMB_X2_Y36_N0
\g2|count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|count~10_combout\ = (\g2|Add0~14_combout\ & ((!\g2|Equal0~7_combout\) # (!\g2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g2|Equal0~4_combout\,
	datac => \g2|Equal0~7_combout\,
	datad => \g2|Add0~14_combout\,
	combout => \g2|count~10_combout\);

-- Location: FF_X2_Y36_N1
\g2|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(7));

-- Location: LCCOMB_X2_Y36_N22
\g2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~16_combout\ = (\g2|count\(8) & (\g2|Add0~15\ $ (GND))) # (!\g2|count\(8) & (!\g2|Add0~15\ & VCC))
-- \g2|Add0~17\ = CARRY((\g2|count\(8) & !\g2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g2|count\(8),
	datad => VCC,
	cin => \g2|Add0~15\,
	combout => \g2|Add0~16_combout\,
	cout => \g2|Add0~17\);

-- Location: FF_X2_Y36_N23
\g2|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(8));

-- Location: LCCOMB_X2_Y36_N24
\g2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~18_combout\ = (\g2|count\(9) & (!\g2|Add0~17\)) # (!\g2|count\(9) & ((\g2|Add0~17\) # (GND)))
-- \g2|Add0~19\ = CARRY((!\g2|Add0~17\) # (!\g2|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g2|count\(9),
	datad => VCC,
	cin => \g2|Add0~17\,
	combout => \g2|Add0~18_combout\,
	cout => \g2|Add0~19\);

-- Location: FF_X2_Y36_N25
\g2|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(9));

-- Location: LCCOMB_X2_Y36_N26
\g2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~20_combout\ = (\g2|count\(10) & (\g2|Add0~19\ $ (GND))) # (!\g2|count\(10) & (!\g2|Add0~19\ & VCC))
-- \g2|Add0~21\ = CARRY((\g2|count\(10) & !\g2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g2|count\(10),
	datad => VCC,
	cin => \g2|Add0~19\,
	combout => \g2|Add0~20_combout\,
	cout => \g2|Add0~21\);

-- Location: FF_X2_Y36_N27
\g2|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(10));

-- Location: LCCOMB_X2_Y36_N28
\g2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~22_combout\ = (\g2|count\(11) & (!\g2|Add0~21\)) # (!\g2|count\(11) & ((\g2|Add0~21\) # (GND)))
-- \g2|Add0~23\ = CARRY((!\g2|Add0~21\) # (!\g2|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g2|count\(11),
	datad => VCC,
	cin => \g2|Add0~21\,
	combout => \g2|Add0~22_combout\,
	cout => \g2|Add0~23\);

-- Location: FF_X2_Y36_N29
\g2|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(11));

-- Location: LCCOMB_X2_Y36_N30
\g2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~24_combout\ = (\g2|count\(12) & (\g2|Add0~23\ $ (GND))) # (!\g2|count\(12) & (!\g2|Add0~23\ & VCC))
-- \g2|Add0~25\ = CARRY((\g2|count\(12) & !\g2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g2|count\(12),
	datad => VCC,
	cin => \g2|Add0~23\,
	combout => \g2|Add0~24_combout\,
	cout => \g2|Add0~25\);

-- Location: LCCOMB_X2_Y36_N4
\g2|count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|count~12_combout\ = (\g2|Add0~24_combout\ & ((!\g2|Equal0~7_combout\) # (!\g2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g2|Equal0~4_combout\,
	datab => \g2|Equal0~7_combout\,
	datac => \g2|Add0~24_combout\,
	combout => \g2|count~12_combout\);

-- Location: FF_X2_Y36_N5
\g2|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|count~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(12));

-- Location: LCCOMB_X2_Y35_N0
\g2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~26_combout\ = (\g2|count\(13) & (!\g2|Add0~25\)) # (!\g2|count\(13) & ((\g2|Add0~25\) # (GND)))
-- \g2|Add0~27\ = CARRY((!\g2|Add0~25\) # (!\g2|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g2|count\(13),
	datad => VCC,
	cin => \g2|Add0~25\,
	combout => \g2|Add0~26_combout\,
	cout => \g2|Add0~27\);

-- Location: LCCOMB_X2_Y35_N26
\g2|count~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|count~13_combout\ = (\g2|Add0~26_combout\ & ((!\g2|Equal0~4_combout\) # (!\g2|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g2|Equal0~7_combout\,
	datac => \g2|Equal0~4_combout\,
	datad => \g2|Add0~26_combout\,
	combout => \g2|count~13_combout\);

-- Location: FF_X2_Y35_N27
\g2|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|count~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(13));

-- Location: LCCOMB_X2_Y35_N2
\g2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~28_combout\ = (\g2|count\(14) & (\g2|Add0~27\ $ (GND))) # (!\g2|count\(14) & (!\g2|Add0~27\ & VCC))
-- \g2|Add0~29\ = CARRY((\g2|count\(14) & !\g2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g2|count\(14),
	datad => VCC,
	cin => \g2|Add0~27\,
	combout => \g2|Add0~28_combout\,
	cout => \g2|Add0~29\);

-- Location: LCCOMB_X1_Y35_N22
\g2|count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|count~14_combout\ = (\g2|Add0~28_combout\ & ((!\g2|Equal0~7_combout\) # (!\g2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g2|Equal0~4_combout\,
	datac => \g2|Equal0~7_combout\,
	datad => \g2|Add0~28_combout\,
	combout => \g2|count~14_combout\);

-- Location: FF_X1_Y35_N23
\g2|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|count~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(14));

-- Location: LCCOMB_X2_Y35_N4
\g2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~30_combout\ = (\g2|count\(15) & (!\g2|Add0~29\)) # (!\g2|count\(15) & ((\g2|Add0~29\) # (GND)))
-- \g2|Add0~31\ = CARRY((!\g2|Add0~29\) # (!\g2|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g2|count\(15),
	datad => VCC,
	cin => \g2|Add0~29\,
	combout => \g2|Add0~30_combout\,
	cout => \g2|Add0~31\);

-- Location: LCCOMB_X2_Y35_N28
\g2|count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|count~15_combout\ = (\g2|Add0~30_combout\ & ((!\g2|Equal0~7_combout\) # (!\g2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g2|Equal0~4_combout\,
	datac => \g2|Add0~30_combout\,
	datad => \g2|Equal0~7_combout\,
	combout => \g2|count~15_combout\);

-- Location: FF_X2_Y35_N29
\g2|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|count~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(15));

-- Location: LCCOMB_X1_Y35_N2
\g2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Equal0~3_combout\ = (\g2|count\(14) & (\g2|count\(12) & (\g2|count\(13) & \g2|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g2|count\(14),
	datab => \g2|count\(12),
	datac => \g2|count\(13),
	datad => \g2|count\(15),
	combout => \g2|Equal0~3_combout\);

-- Location: LCCOMB_X1_Y36_N28
\g2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Equal0~2_combout\ = (!\g2|count\(9) & (!\g2|count\(10) & (!\g2|count\(11) & !\g2|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g2|count\(9),
	datab => \g2|count\(10),
	datac => \g2|count\(11),
	datad => \g2|count\(8),
	combout => \g2|Equal0~2_combout\);

-- Location: LCCOMB_X2_Y36_N2
\g2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Equal0~0_combout\ = (!\g2|count\(4) & (\g2|count\(7) & (!\g2|count\(6) & !\g2|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g2|count\(4),
	datab => \g2|count\(7),
	datac => \g2|count\(6),
	datad => \g2|count\(5),
	combout => \g2|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y35_N10
\g2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Equal0~4_combout\ = (\g2|Equal0~1_combout\ & (\g2|Equal0~3_combout\ & (\g2|Equal0~2_combout\ & \g2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g2|Equal0~1_combout\,
	datab => \g2|Equal0~3_combout\,
	datac => \g2|Equal0~2_combout\,
	datad => \g2|Equal0~0_combout\,
	combout => \g2|Equal0~4_combout\);

-- Location: LCCOMB_X2_Y35_N6
\g2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~32_combout\ = (\g2|count\(16) & (\g2|Add0~31\ $ (GND))) # (!\g2|count\(16) & (!\g2|Add0~31\ & VCC))
-- \g2|Add0~33\ = CARRY((\g2|count\(16) & !\g2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g2|count\(16),
	datad => VCC,
	cin => \g2|Add0~31\,
	combout => \g2|Add0~32_combout\,
	cout => \g2|Add0~33\);

-- Location: FF_X2_Y35_N7
\g2|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(16));

-- Location: LCCOMB_X2_Y35_N8
\g2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~34_combout\ = (\g2|count\(17) & (!\g2|Add0~33\)) # (!\g2|count\(17) & ((\g2|Add0~33\) # (GND)))
-- \g2|Add0~35\ = CARRY((!\g2|Add0~33\) # (!\g2|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g2|count\(17),
	datad => VCC,
	cin => \g2|Add0~33\,
	combout => \g2|Add0~34_combout\,
	cout => \g2|Add0~35\);

-- Location: LCCOMB_X2_Y35_N30
\g2|count~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|count~16_combout\ = (\g2|Add0~34_combout\ & ((!\g2|Equal0~7_combout\) # (!\g2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g2|Equal0~4_combout\,
	datac => \g2|Add0~34_combout\,
	datad => \g2|Equal0~7_combout\,
	combout => \g2|count~16_combout\);

-- Location: FF_X2_Y35_N31
\g2|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|count~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(17));

-- Location: LCCOMB_X2_Y35_N10
\g2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~36_combout\ = (\g2|count\(18) & (\g2|Add0~35\ $ (GND))) # (!\g2|count\(18) & (!\g2|Add0~35\ & VCC))
-- \g2|Add0~37\ = CARRY((\g2|count\(18) & !\g2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g2|count\(18),
	datad => VCC,
	cin => \g2|Add0~35\,
	combout => \g2|Add0~36_combout\,
	cout => \g2|Add0~37\);

-- Location: FF_X2_Y35_N11
\g2|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(18));

-- Location: LCCOMB_X2_Y35_N12
\g2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~38_combout\ = (\g2|count\(19) & (!\g2|Add0~37\)) # (!\g2|count\(19) & ((\g2|Add0~37\) # (GND)))
-- \g2|Add0~39\ = CARRY((!\g2|Add0~37\) # (!\g2|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g2|count\(19),
	datad => VCC,
	cin => \g2|Add0~37\,
	combout => \g2|Add0~38_combout\,
	cout => \g2|Add0~39\);

-- Location: LCCOMB_X1_Y35_N14
\g2|count~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|count~17_combout\ = (\g2|Add0~38_combout\ & ((!\g2|Equal0~7_combout\) # (!\g2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g2|Equal0~4_combout\,
	datac => \g2|Add0~38_combout\,
	datad => \g2|Equal0~7_combout\,
	combout => \g2|count~17_combout\);

-- Location: FF_X1_Y35_N15
\g2|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|count~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(19));

-- Location: LCCOMB_X2_Y35_N14
\g2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~40_combout\ = (\g2|count\(20) & (\g2|Add0~39\ $ (GND))) # (!\g2|count\(20) & (!\g2|Add0~39\ & VCC))
-- \g2|Add0~41\ = CARRY((\g2|count\(20) & !\g2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g2|count\(20),
	datad => VCC,
	cin => \g2|Add0~39\,
	combout => \g2|Add0~40_combout\,
	cout => \g2|Add0~41\);

-- Location: LCCOMB_X1_Y35_N6
\g2|count~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|count~18_combout\ = (\g2|Add0~40_combout\ & ((!\g2|Equal0~7_combout\) # (!\g2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g2|Equal0~4_combout\,
	datac => \g2|Add0~40_combout\,
	datad => \g2|Equal0~7_combout\,
	combout => \g2|count~18_combout\);

-- Location: FF_X1_Y35_N7
\g2|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|count~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(20));

-- Location: LCCOMB_X2_Y35_N16
\g2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~42_combout\ = (\g2|count\(21) & (!\g2|Add0~41\)) # (!\g2|count\(21) & ((\g2|Add0~41\) # (GND)))
-- \g2|Add0~43\ = CARRY((!\g2|Add0~41\) # (!\g2|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g2|count\(21),
	datad => VCC,
	cin => \g2|Add0~41\,
	combout => \g2|Add0~42_combout\,
	cout => \g2|Add0~43\);

-- Location: LCCOMB_X1_Y35_N20
\g2|count~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|count~19_combout\ = (\g2|Add0~42_combout\ & ((!\g2|Equal0~7_combout\) # (!\g2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g2|Equal0~4_combout\,
	datac => \g2|Equal0~7_combout\,
	datad => \g2|Add0~42_combout\,
	combout => \g2|count~19_combout\);

-- Location: FF_X1_Y35_N21
\g2|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|count~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(21));

-- Location: LCCOMB_X2_Y35_N18
\g2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~44_combout\ = (\g2|count\(22) & (\g2|Add0~43\ $ (GND))) # (!\g2|count\(22) & (!\g2|Add0~43\ & VCC))
-- \g2|Add0~45\ = CARRY((\g2|count\(22) & !\g2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g2|count\(22),
	datad => VCC,
	cin => \g2|Add0~43\,
	combout => \g2|Add0~44_combout\,
	cout => \g2|Add0~45\);

-- Location: LCCOMB_X1_Y35_N0
\g2|count~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|count~20_combout\ = (\g2|Add0~44_combout\ & ((!\g2|Equal0~7_combout\) # (!\g2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g2|Equal0~4_combout\,
	datac => \g2|Equal0~7_combout\,
	datad => \g2|Add0~44_combout\,
	combout => \g2|count~20_combout\);

-- Location: FF_X1_Y35_N1
\g2|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|count~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(22));

-- Location: LCCOMB_X2_Y35_N20
\g2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~46_combout\ = (\g2|count\(23) & (!\g2|Add0~45\)) # (!\g2|count\(23) & ((\g2|Add0~45\) # (GND)))
-- \g2|Add0~47\ = CARRY((!\g2|Add0~45\) # (!\g2|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g2|count\(23),
	datad => VCC,
	cin => \g2|Add0~45\,
	combout => \g2|Add0~46_combout\,
	cout => \g2|Add0~47\);

-- Location: LCCOMB_X1_Y35_N24
\g2|count~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|count~21_combout\ = (\g2|Add0~46_combout\ & ((!\g2|Equal0~7_combout\) # (!\g2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g2|Equal0~4_combout\,
	datac => \g2|Add0~46_combout\,
	datad => \g2|Equal0~7_combout\,
	combout => \g2|count~21_combout\);

-- Location: FF_X1_Y35_N25
\g2|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|count~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(23));

-- Location: LCCOMB_X2_Y35_N22
\g2|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~48_combout\ = (\g2|count\(24) & (\g2|Add0~47\ $ (GND))) # (!\g2|count\(24) & (!\g2|Add0~47\ & VCC))
-- \g2|Add0~49\ = CARRY((\g2|count\(24) & !\g2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g2|count\(24),
	datad => VCC,
	cin => \g2|Add0~47\,
	combout => \g2|Add0~48_combout\,
	cout => \g2|Add0~49\);

-- Location: FF_X2_Y35_N23
\g2|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(24));

-- Location: LCCOMB_X2_Y35_N24
\g2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Add0~50_combout\ = \g2|count\(25) $ (\g2|Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g2|count\(25),
	cin => \g2|Add0~49\,
	combout => \g2|Add0~50_combout\);

-- Location: LCCOMB_X1_Y35_N12
\g2|count~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|count~22_combout\ = (\g2|Add0~50_combout\ & ((!\g2|Equal0~7_combout\) # (!\g2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g2|Equal0~4_combout\,
	datac => \g2|Equal0~7_combout\,
	datad => \g2|Add0~50_combout\,
	combout => \g2|count~22_combout\);

-- Location: FF_X1_Y35_N13
\g2|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|count~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|count\(25));

-- Location: LCCOMB_X1_Y35_N16
\g2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Equal0~6_combout\ = (\g2|count\(21) & (\g2|count\(22) & (\g2|count\(20) & \g2|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g2|count\(21),
	datab => \g2|count\(22),
	datac => \g2|count\(20),
	datad => \g2|count\(23),
	combout => \g2|Equal0~6_combout\);

-- Location: LCCOMB_X1_Y35_N26
\g2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Equal0~5_combout\ = (\g2|count\(17) & (!\g2|count\(18) & (\g2|count\(19) & !\g2|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g2|count\(17),
	datab => \g2|count\(18),
	datac => \g2|count\(19),
	datad => \g2|count\(16),
	combout => \g2|Equal0~5_combout\);

-- Location: LCCOMB_X1_Y35_N30
\g2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|Equal0~7_combout\ = (!\g2|count\(24) & (\g2|count\(25) & (\g2|Equal0~6_combout\ & \g2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g2|count\(24),
	datab => \g2|count\(25),
	datac => \g2|Equal0~6_combout\,
	datad => \g2|Equal0~5_combout\,
	combout => \g2|Equal0~7_combout\);

-- Location: LCCOMB_X1_Y35_N28
\g2|clk_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|clk_out~0_combout\ = \g2|clk_out~q\ $ (((\g2|Equal0~7_combout\ & \g2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g2|clk_out~q\,
	datac => \g2|Equal0~7_combout\,
	datad => \g2|Equal0~4_combout\,
	combout => \g2|clk_out~0_combout\);

-- Location: LCCOMB_X1_Y35_N4
\g2|clk_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \g2|clk_out~feeder_combout\ = \g2|clk_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g2|clk_out~0_combout\,
	combout => \g2|clk_out~feeder_combout\);

-- Location: FF_X1_Y35_N5
\g2|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k2|Mux0~clkctrl_outclk\,
	d => \g2|clk_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g2|clk_out~q\);

-- Location: CLKCTRL_G1
\g2|clk_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \g2|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \g2|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X59_Y5_N0
\s2|counter[0]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[0]~75_combout\ = !\s2|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s2|counter\(0),
	combout => \s2|counter[0]~75_combout\);

-- Location: IOIBUF_X54_Y73_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X54_Y72_N24
\reset~buf0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset~buf0_combout\ = LCELL(\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset~input_o\,
	combout => \reset~buf0_combout\);

-- Location: LCCOMB_X55_Y72_N18
resetn : cycloneive_lcell_comb
-- Equation(s):
-- \resetn~combout\ = LCELL(!\reset~buf0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset~buf0_combout\,
	combout => \resetn~combout\);

-- Location: LCCOMB_X55_Y72_N0
reset_ris : cycloneive_lcell_comb
-- Equation(s):
-- \reset_ris~combout\ = LCELL((\reset~buf0_combout\ & \resetn~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~buf0_combout\,
	datad => \resetn~combout\,
	combout => \reset_ris~combout\);

-- Location: CLKCTRL_G14
\reset_ris~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_ris~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_ris~clkctrl_outclk\);

-- Location: FF_X59_Y5_N1
\s2|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[0]~75_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(0));

-- Location: LCCOMB_X59_Y5_N8
\s2|counter[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[1]~25_combout\ = (\s2|counter\(1) & (\s2|counter\(0) $ (VCC))) # (!\s2|counter\(1) & (\s2|counter\(0) & VCC))
-- \s2|counter[1]~26\ = CARRY((\s2|counter\(1) & \s2|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s2|counter\(1),
	datab => \s2|counter\(0),
	datad => VCC,
	combout => \s2|counter[1]~25_combout\,
	cout => \s2|counter[1]~26\);

-- Location: FF_X59_Y5_N9
\s2|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[1]~25_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(1));

-- Location: LCCOMB_X59_Y5_N10
\s2|counter[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[2]~27_combout\ = (\s2|counter\(2) & (!\s2|counter[1]~26\)) # (!\s2|counter\(2) & ((\s2|counter[1]~26\) # (GND)))
-- \s2|counter[2]~28\ = CARRY((!\s2|counter[1]~26\) # (!\s2|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s2|counter\(2),
	datad => VCC,
	cin => \s2|counter[1]~26\,
	combout => \s2|counter[2]~27_combout\,
	cout => \s2|counter[2]~28\);

-- Location: FF_X59_Y5_N11
\s2|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[2]~27_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(2));

-- Location: LCCOMB_X59_Y5_N12
\s2|counter[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[3]~29_combout\ = (\s2|counter\(3) & (\s2|counter[2]~28\ $ (GND))) # (!\s2|counter\(3) & (!\s2|counter[2]~28\ & VCC))
-- \s2|counter[3]~30\ = CARRY((\s2|counter\(3) & !\s2|counter[2]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s2|counter\(3),
	datad => VCC,
	cin => \s2|counter[2]~28\,
	combout => \s2|counter[3]~29_combout\,
	cout => \s2|counter[3]~30\);

-- Location: FF_X59_Y5_N13
\s2|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[3]~29_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(3));

-- Location: LCCOMB_X59_Y5_N14
\s2|counter[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[4]~31_combout\ = (\s2|counter\(4) & (!\s2|counter[3]~30\)) # (!\s2|counter\(4) & ((\s2|counter[3]~30\) # (GND)))
-- \s2|counter[4]~32\ = CARRY((!\s2|counter[3]~30\) # (!\s2|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s2|counter\(4),
	datad => VCC,
	cin => \s2|counter[3]~30\,
	combout => \s2|counter[4]~31_combout\,
	cout => \s2|counter[4]~32\);

-- Location: FF_X59_Y5_N15
\s2|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[4]~31_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(4));

-- Location: LCCOMB_X59_Y5_N16
\s2|counter[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[5]~33_combout\ = (\s2|counter\(5) & (\s2|counter[4]~32\ $ (GND))) # (!\s2|counter\(5) & (!\s2|counter[4]~32\ & VCC))
-- \s2|counter[5]~34\ = CARRY((\s2|counter\(5) & !\s2|counter[4]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s2|counter\(5),
	datad => VCC,
	cin => \s2|counter[4]~32\,
	combout => \s2|counter[5]~33_combout\,
	cout => \s2|counter[5]~34\);

-- Location: FF_X59_Y5_N17
\s2|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[5]~33_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(5));

-- Location: LCCOMB_X59_Y5_N18
\s2|counter[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[6]~35_combout\ = (\s2|counter\(6) & (!\s2|counter[5]~34\)) # (!\s2|counter\(6) & ((\s2|counter[5]~34\) # (GND)))
-- \s2|counter[6]~36\ = CARRY((!\s2|counter[5]~34\) # (!\s2|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s2|counter\(6),
	datad => VCC,
	cin => \s2|counter[5]~34\,
	combout => \s2|counter[6]~35_combout\,
	cout => \s2|counter[6]~36\);

-- Location: FF_X59_Y5_N19
\s2|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[6]~35_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(6));

-- Location: LCCOMB_X59_Y5_N20
\s2|counter[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[7]~37_combout\ = (\s2|counter\(7) & (\s2|counter[6]~36\ $ (GND))) # (!\s2|counter\(7) & (!\s2|counter[6]~36\ & VCC))
-- \s2|counter[7]~38\ = CARRY((\s2|counter\(7) & !\s2|counter[6]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s2|counter\(7),
	datad => VCC,
	cin => \s2|counter[6]~36\,
	combout => \s2|counter[7]~37_combout\,
	cout => \s2|counter[7]~38\);

-- Location: FF_X59_Y5_N21
\s2|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[7]~37_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(7));

-- Location: LCCOMB_X59_Y5_N22
\s2|counter[8]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[8]~39_combout\ = (\s2|counter\(8) & (!\s2|counter[7]~38\)) # (!\s2|counter\(8) & ((\s2|counter[7]~38\) # (GND)))
-- \s2|counter[8]~40\ = CARRY((!\s2|counter[7]~38\) # (!\s2|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s2|counter\(8),
	datad => VCC,
	cin => \s2|counter[7]~38\,
	combout => \s2|counter[8]~39_combout\,
	cout => \s2|counter[8]~40\);

-- Location: FF_X59_Y5_N23
\s2|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[8]~39_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(8));

-- Location: LCCOMB_X59_Y5_N24
\s2|counter[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[9]~41_combout\ = (\s2|counter\(9) & (\s2|counter[8]~40\ $ (GND))) # (!\s2|counter\(9) & (!\s2|counter[8]~40\ & VCC))
-- \s2|counter[9]~42\ = CARRY((\s2|counter\(9) & !\s2|counter[8]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s2|counter\(9),
	datad => VCC,
	cin => \s2|counter[8]~40\,
	combout => \s2|counter[9]~41_combout\,
	cout => \s2|counter[9]~42\);

-- Location: FF_X59_Y5_N25
\s2|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[9]~41_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(9));

-- Location: LCCOMB_X59_Y5_N26
\s2|counter[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[10]~43_combout\ = (\s2|counter\(10) & (!\s2|counter[9]~42\)) # (!\s2|counter\(10) & ((\s2|counter[9]~42\) # (GND)))
-- \s2|counter[10]~44\ = CARRY((!\s2|counter[9]~42\) # (!\s2|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s2|counter\(10),
	datad => VCC,
	cin => \s2|counter[9]~42\,
	combout => \s2|counter[10]~43_combout\,
	cout => \s2|counter[10]~44\);

-- Location: FF_X59_Y5_N27
\s2|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[10]~43_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(10));

-- Location: LCCOMB_X59_Y5_N28
\s2|counter[11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[11]~45_combout\ = (\s2|counter\(11) & (\s2|counter[10]~44\ $ (GND))) # (!\s2|counter\(11) & (!\s2|counter[10]~44\ & VCC))
-- \s2|counter[11]~46\ = CARRY((\s2|counter\(11) & !\s2|counter[10]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s2|counter\(11),
	datad => VCC,
	cin => \s2|counter[10]~44\,
	combout => \s2|counter[11]~45_combout\,
	cout => \s2|counter[11]~46\);

-- Location: FF_X59_Y5_N29
\s2|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[11]~45_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(11));

-- Location: LCCOMB_X59_Y5_N30
\s2|counter[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[12]~47_combout\ = (\s2|counter\(12) & (!\s2|counter[11]~46\)) # (!\s2|counter\(12) & ((\s2|counter[11]~46\) # (GND)))
-- \s2|counter[12]~48\ = CARRY((!\s2|counter[11]~46\) # (!\s2|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s2|counter\(12),
	datad => VCC,
	cin => \s2|counter[11]~46\,
	combout => \s2|counter[12]~47_combout\,
	cout => \s2|counter[12]~48\);

-- Location: FF_X59_Y5_N31
\s2|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[12]~47_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(12));

-- Location: LCCOMB_X59_Y4_N0
\s2|counter[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[13]~49_combout\ = (\s2|counter\(13) & (\s2|counter[12]~48\ $ (GND))) # (!\s2|counter\(13) & (!\s2|counter[12]~48\ & VCC))
-- \s2|counter[13]~50\ = CARRY((\s2|counter\(13) & !\s2|counter[12]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s2|counter\(13),
	datad => VCC,
	cin => \s2|counter[12]~48\,
	combout => \s2|counter[13]~49_combout\,
	cout => \s2|counter[13]~50\);

-- Location: FF_X59_Y4_N1
\s2|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[13]~49_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(13));

-- Location: LCCOMB_X59_Y4_N2
\s2|counter[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[14]~51_combout\ = (\s2|counter\(14) & (!\s2|counter[13]~50\)) # (!\s2|counter\(14) & ((\s2|counter[13]~50\) # (GND)))
-- \s2|counter[14]~52\ = CARRY((!\s2|counter[13]~50\) # (!\s2|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s2|counter\(14),
	datad => VCC,
	cin => \s2|counter[13]~50\,
	combout => \s2|counter[14]~51_combout\,
	cout => \s2|counter[14]~52\);

-- Location: FF_X59_Y4_N3
\s2|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[14]~51_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(14));

-- Location: LCCOMB_X59_Y4_N4
\s2|counter[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[15]~53_combout\ = (\s2|counter\(15) & (\s2|counter[14]~52\ $ (GND))) # (!\s2|counter\(15) & (!\s2|counter[14]~52\ & VCC))
-- \s2|counter[15]~54\ = CARRY((\s2|counter\(15) & !\s2|counter[14]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s2|counter\(15),
	datad => VCC,
	cin => \s2|counter[14]~52\,
	combout => \s2|counter[15]~53_combout\,
	cout => \s2|counter[15]~54\);

-- Location: FF_X59_Y4_N5
\s2|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[15]~53_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(15));

-- Location: LCCOMB_X59_Y4_N6
\s2|counter[16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[16]~55_combout\ = (\s2|counter\(16) & (!\s2|counter[15]~54\)) # (!\s2|counter\(16) & ((\s2|counter[15]~54\) # (GND)))
-- \s2|counter[16]~56\ = CARRY((!\s2|counter[15]~54\) # (!\s2|counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s2|counter\(16),
	datad => VCC,
	cin => \s2|counter[15]~54\,
	combout => \s2|counter[16]~55_combout\,
	cout => \s2|counter[16]~56\);

-- Location: FF_X59_Y4_N7
\s2|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[16]~55_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(16));

-- Location: LCCOMB_X59_Y4_N8
\s2|counter[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[17]~57_combout\ = (\s2|counter\(17) & (\s2|counter[16]~56\ $ (GND))) # (!\s2|counter\(17) & (!\s2|counter[16]~56\ & VCC))
-- \s2|counter[17]~58\ = CARRY((\s2|counter\(17) & !\s2|counter[16]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s2|counter\(17),
	datad => VCC,
	cin => \s2|counter[16]~56\,
	combout => \s2|counter[17]~57_combout\,
	cout => \s2|counter[17]~58\);

-- Location: FF_X59_Y4_N9
\s2|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[17]~57_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(17));

-- Location: LCCOMB_X59_Y4_N10
\s2|counter[18]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[18]~59_combout\ = (\s2|counter\(18) & (!\s2|counter[17]~58\)) # (!\s2|counter\(18) & ((\s2|counter[17]~58\) # (GND)))
-- \s2|counter[18]~60\ = CARRY((!\s2|counter[17]~58\) # (!\s2|counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s2|counter\(18),
	datad => VCC,
	cin => \s2|counter[17]~58\,
	combout => \s2|counter[18]~59_combout\,
	cout => \s2|counter[18]~60\);

-- Location: FF_X59_Y4_N11
\s2|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[18]~59_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(18));

-- Location: LCCOMB_X59_Y4_N12
\s2|counter[19]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[19]~61_combout\ = (\s2|counter\(19) & (\s2|counter[18]~60\ $ (GND))) # (!\s2|counter\(19) & (!\s2|counter[18]~60\ & VCC))
-- \s2|counter[19]~62\ = CARRY((\s2|counter\(19) & !\s2|counter[18]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s2|counter\(19),
	datad => VCC,
	cin => \s2|counter[18]~60\,
	combout => \s2|counter[19]~61_combout\,
	cout => \s2|counter[19]~62\);

-- Location: FF_X59_Y4_N13
\s2|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[19]~61_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(19));

-- Location: LCCOMB_X59_Y4_N14
\s2|counter[20]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[20]~63_combout\ = (\s2|counter\(20) & (!\s2|counter[19]~62\)) # (!\s2|counter\(20) & ((\s2|counter[19]~62\) # (GND)))
-- \s2|counter[20]~64\ = CARRY((!\s2|counter[19]~62\) # (!\s2|counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s2|counter\(20),
	datad => VCC,
	cin => \s2|counter[19]~62\,
	combout => \s2|counter[20]~63_combout\,
	cout => \s2|counter[20]~64\);

-- Location: FF_X59_Y4_N15
\s2|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[20]~63_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(20));

-- Location: LCCOMB_X59_Y4_N16
\s2|counter[21]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[21]~65_combout\ = (\s2|counter\(21) & (\s2|counter[20]~64\ $ (GND))) # (!\s2|counter\(21) & (!\s2|counter[20]~64\ & VCC))
-- \s2|counter[21]~66\ = CARRY((\s2|counter\(21) & !\s2|counter[20]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s2|counter\(21),
	datad => VCC,
	cin => \s2|counter[20]~64\,
	combout => \s2|counter[21]~65_combout\,
	cout => \s2|counter[21]~66\);

-- Location: FF_X59_Y4_N17
\s2|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[21]~65_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(21));

-- Location: LCCOMB_X59_Y4_N18
\s2|counter[22]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[22]~67_combout\ = (\s2|counter\(22) & (!\s2|counter[21]~66\)) # (!\s2|counter\(22) & ((\s2|counter[21]~66\) # (GND)))
-- \s2|counter[22]~68\ = CARRY((!\s2|counter[21]~66\) # (!\s2|counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s2|counter\(22),
	datad => VCC,
	cin => \s2|counter[21]~66\,
	combout => \s2|counter[22]~67_combout\,
	cout => \s2|counter[22]~68\);

-- Location: FF_X59_Y4_N19
\s2|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[22]~67_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(22));

-- Location: LCCOMB_X59_Y4_N20
\s2|counter[23]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[23]~69_combout\ = (\s2|counter\(23) & (\s2|counter[22]~68\ $ (GND))) # (!\s2|counter\(23) & (!\s2|counter[22]~68\ & VCC))
-- \s2|counter[23]~70\ = CARRY((\s2|counter\(23) & !\s2|counter[22]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s2|counter\(23),
	datad => VCC,
	cin => \s2|counter[22]~68\,
	combout => \s2|counter[23]~69_combout\,
	cout => \s2|counter[23]~70\);

-- Location: FF_X59_Y4_N21
\s2|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[23]~69_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(23));

-- Location: LCCOMB_X59_Y4_N22
\s2|counter[24]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[24]~71_combout\ = (\s2|counter\(24) & (!\s2|counter[23]~70\)) # (!\s2|counter\(24) & ((\s2|counter[23]~70\) # (GND)))
-- \s2|counter[24]~72\ = CARRY((!\s2|counter[23]~70\) # (!\s2|counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s2|counter\(24),
	datad => VCC,
	cin => \s2|counter[23]~70\,
	combout => \s2|counter[24]~71_combout\,
	cout => \s2|counter[24]~72\);

-- Location: FF_X59_Y4_N23
\s2|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[24]~71_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(24));

-- Location: LCCOMB_X59_Y4_N24
\s2|counter[25]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|counter[25]~73_combout\ = \s2|counter[24]~72\ $ (!\s2|counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \s2|counter\(25),
	cin => \s2|counter[24]~72\,
	combout => \s2|counter[25]~73_combout\);

-- Location: FF_X59_Y4_N25
\s2|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g2|clk_out~clkctrl_outclk\,
	d => \s2|counter[25]~73_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2|counter\(25));

-- Location: LCCOMB_X57_Y2_N22
\f3|enable~buf0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|enable~buf0_combout\ = LCELL(\clk_50Mhz~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_50Mhz~input_o\,
	combout => \f3|enable~buf0_combout\);

-- Location: LCCOMB_X57_Y2_N10
\f3|chain[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|chain\(0) = LCELL((\f3|enable~buf0_combout\ & !\f3|chain\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f3|enable~buf0_combout\,
	datac => \f3|chain\(6),
	combout => \f3|chain\(0));

-- Location: LCCOMB_X58_Y2_N12
\f3|chain[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|chain\(1) = LCELL(!\f3|chain\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f3|chain\(0),
	combout => \f3|chain\(1));

-- Location: LCCOMB_X58_Y2_N10
\f3|chain[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|chain\(2) = LCELL(!\f3|chain\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f3|chain\(1),
	combout => \f3|chain\(2));

-- Location: LCCOMB_X58_Y2_N28
\f3|chain[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|chain\(3) = LCELL(!\f3|chain\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f3|chain\(2),
	combout => \f3|chain\(3));

-- Location: LCCOMB_X58_Y2_N18
\f3|chain[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|chain\(4) = LCELL(!\f3|chain\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f3|chain\(3),
	combout => \f3|chain\(4));

-- Location: LCCOMB_X58_Y2_N16
\f3|chain[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|chain\(5) = LCELL(!\f3|chain\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f3|chain\(4),
	combout => \f3|chain\(5));

-- Location: LCCOMB_X57_Y2_N30
\f3|chain[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|chain\(6) = LCELL(!\f3|chain\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f3|chain\(5),
	combout => \f3|chain\(6));

-- Location: LCCOMB_X57_Y2_N26
\f1|enable~buf0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|enable~buf0_combout\ = LCELL(\clk_50Mhz~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_50Mhz~input_o\,
	combout => \f1|enable~buf0_combout\);

-- Location: LCCOMB_X57_Y2_N14
\f1|chain[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|chain\(0) = LCELL((!\f1|chain\(12) & \f1|enable~buf0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|chain\(12),
	datad => \f1|enable~buf0_combout\,
	combout => \f1|chain\(0));

-- Location: LCCOMB_X54_Y2_N20
\f1|chain[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|chain\(1) = LCELL(!\f1|chain\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f1|chain\(0),
	combout => \f1|chain\(1));

-- Location: LCCOMB_X54_Y2_N18
\f1|chain[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|chain\(2) = LCELL(!\f1|chain\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f1|chain\(1),
	combout => \f1|chain\(2));

-- Location: LCCOMB_X54_Y2_N24
\f1|chain[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|chain\(3) = LCELL(!\f1|chain\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f1|chain\(2),
	combout => \f1|chain\(3));

-- Location: LCCOMB_X54_Y2_N10
\f1|chain[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|chain\(4) = LCELL(!\f1|chain\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f1|chain\(3),
	combout => \f1|chain\(4));

-- Location: LCCOMB_X54_Y2_N28
\f1|chain[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|chain\(5) = LCELL(!\f1|chain\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f1|chain\(4),
	combout => \f1|chain\(5));

-- Location: LCCOMB_X54_Y2_N22
\f1|chain[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|chain\(6) = LCELL(!\f1|chain\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f1|chain\(5),
	combout => \f1|chain\(6));

-- Location: LCCOMB_X54_Y2_N12
\f1|chain[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|chain\(7) = LCELL(!\f1|chain\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|chain\(6),
	combout => \f1|chain\(7));

-- Location: LCCOMB_X54_Y2_N2
\f1|chain[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|chain\(8) = LCELL(!\f1|chain\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f1|chain\(7),
	combout => \f1|chain\(8));

-- Location: LCCOMB_X54_Y2_N16
\f1|chain[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|chain\(9) = LCELL(!\f1|chain\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f1|chain\(8),
	combout => \f1|chain\(9));

-- Location: LCCOMB_X54_Y2_N6
\f1|chain[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|chain\(10) = LCELL(!\f1|chain\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f1|chain\(9),
	combout => \f1|chain\(10));

-- Location: LCCOMB_X54_Y2_N8
\f1|chain[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|chain\(11) = LCELL(!\f1|chain\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f1|chain\(10),
	combout => \f1|chain\(11));

-- Location: LCCOMB_X57_Y2_N12
\f1|chain[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|chain\(12) = LCELL(!\f1|chain\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f1|chain\(11),
	combout => \f1|chain\(12));

-- Location: LCCOMB_X57_Y2_N8
\f2|enable~buf0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|enable~buf0_combout\ = LCELL(\clk_50Mhz~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_50Mhz~input_o\,
	combout => \f2|enable~buf0_combout\);

-- Location: LCCOMB_X57_Y2_N18
\f2|chain[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|chain\(0) = LCELL((!\f2|chain\(6) & \f2|enable~buf0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f2|chain\(6),
	datad => \f2|enable~buf0_combout\,
	combout => \f2|chain\(0));

-- Location: LCCOMB_X56_Y2_N28
\f2|chain[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|chain\(1) = LCELL(!\f2|chain\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f2|chain\(0),
	combout => \f2|chain\(1));

-- Location: LCCOMB_X56_Y2_N10
\f2|chain[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|chain\(2) = LCELL(!\f2|chain\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f2|chain\(1),
	combout => \f2|chain\(2));

-- Location: LCCOMB_X56_Y2_N12
\f2|chain[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|chain\(3) = LCELL(!\f2|chain\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f2|chain\(2),
	combout => \f2|chain\(3));

-- Location: LCCOMB_X56_Y2_N18
\f2|chain[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|chain\(4) = LCELL(!\f2|chain\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f2|chain\(3),
	combout => \f2|chain\(4));

-- Location: LCCOMB_X56_Y2_N24
\f2|chain[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|chain\(5) = LCELL(!\f2|chain\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f2|chain\(4),
	combout => \f2|chain\(5));

-- Location: LCCOMB_X57_Y2_N4
\f2|chain[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|chain\(6) = LCELL(!\f2|chain\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f2|chain\(5),
	combout => \f2|chain\(6));

-- Location: LCCOMB_X57_Y2_N24
\k1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \k1|Mux0~0_combout\ = (\sw[0]~input_o\ & ((!\f2|chain\(6)))) # (!\sw[0]~input_o\ & (!\f1|chain\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|chain\(12),
	datac => \sw[0]~input_o\,
	datad => \f2|chain\(6),
	combout => \k1|Mux0~0_combout\);

-- Location: LCCOMB_X57_Y2_N20
\k1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \k1|Mux0~1_combout\ = (\sw[1]~input_o\ & (!\f3|chain\(6))) # (!\sw[1]~input_o\ & ((\k1|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f3|chain\(6),
	datac => \sw[1]~input_o\,
	datad => \k1|Mux0~0_combout\,
	combout => \k1|Mux0~1_combout\);

-- Location: LCCOMB_X57_Y2_N28
\k1|Mux0\ : cycloneive_lcell_comb
-- Equation(s):
-- \k1|Mux0~combout\ = LCELL((\sw[2]~input_o\ & (\f3|chain\(6))) # (!\sw[2]~input_o\ & ((!\k1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f3|chain\(6),
	datac => \sw[2]~input_o\,
	datad => \k1|Mux0~1_combout\,
	combout => \k1|Mux0~combout\);

-- Location: CLKCTRL_G17
\k1|Mux0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \k1|Mux0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \k1|Mux0~clkctrl_outclk\);

-- Location: LCCOMB_X66_Y66_N6
\g1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~0_combout\ = \g1|count\(0) $ (VCC)
-- \g1|Add0~1\ = CARRY(\g1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g1|count\(0),
	datad => VCC,
	combout => \g1|Add0~0_combout\,
	cout => \g1|Add0~1\);

-- Location: LCCOMB_X66_Y66_N2
\g1|count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|count~11_combout\ = (\g1|Add0~0_combout\ & ((!\g1|Equal0~4_combout\) # (!\g1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1|Equal0~7_combout\,
	datab => \g1|Equal0~4_combout\,
	datad => \g1|Add0~0_combout\,
	combout => \g1|count~11_combout\);

-- Location: FF_X66_Y66_N3
\g1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(0));

-- Location: LCCOMB_X66_Y66_N8
\g1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~2_combout\ = (\g1|count\(1) & (!\g1|Add0~1\)) # (!\g1|count\(1) & ((\g1|Add0~1\) # (GND)))
-- \g1|Add0~3\ = CARRY((!\g1|Add0~1\) # (!\g1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g1|count\(1),
	datad => VCC,
	cin => \g1|Add0~1\,
	combout => \g1|Add0~2_combout\,
	cout => \g1|Add0~3\);

-- Location: FF_X66_Y66_N9
\g1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(1));

-- Location: LCCOMB_X66_Y66_N10
\g1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~4_combout\ = (\g1|count\(2) & (\g1|Add0~3\ $ (GND))) # (!\g1|count\(2) & (!\g1|Add0~3\ & VCC))
-- \g1|Add0~5\ = CARRY((\g1|count\(2) & !\g1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g1|count\(2),
	datad => VCC,
	cin => \g1|Add0~3\,
	combout => \g1|Add0~4_combout\,
	cout => \g1|Add0~5\);

-- Location: FF_X66_Y66_N11
\g1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(2));

-- Location: LCCOMB_X66_Y66_N12
\g1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~6_combout\ = (\g1|count\(3) & (!\g1|Add0~5\)) # (!\g1|count\(3) & ((\g1|Add0~5\) # (GND)))
-- \g1|Add0~7\ = CARRY((!\g1|Add0~5\) # (!\g1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g1|count\(3),
	datad => VCC,
	cin => \g1|Add0~5\,
	combout => \g1|Add0~6_combout\,
	cout => \g1|Add0~7\);

-- Location: FF_X66_Y66_N13
\g1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(3));

-- Location: LCCOMB_X66_Y66_N14
\g1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~8_combout\ = (\g1|count\(4) & (\g1|Add0~7\ $ (GND))) # (!\g1|count\(4) & (!\g1|Add0~7\ & VCC))
-- \g1|Add0~9\ = CARRY((\g1|count\(4) & !\g1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g1|count\(4),
	datad => VCC,
	cin => \g1|Add0~7\,
	combout => \g1|Add0~8_combout\,
	cout => \g1|Add0~9\);

-- Location: FF_X66_Y66_N15
\g1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(4));

-- Location: LCCOMB_X66_Y66_N16
\g1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~10_combout\ = (\g1|count\(5) & (!\g1|Add0~9\)) # (!\g1|count\(5) & ((\g1|Add0~9\) # (GND)))
-- \g1|Add0~11\ = CARRY((!\g1|Add0~9\) # (!\g1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g1|count\(5),
	datad => VCC,
	cin => \g1|Add0~9\,
	combout => \g1|Add0~10_combout\,
	cout => \g1|Add0~11\);

-- Location: FF_X66_Y66_N17
\g1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(5));

-- Location: LCCOMB_X66_Y66_N18
\g1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~12_combout\ = (\g1|count\(6) & (\g1|Add0~11\ $ (GND))) # (!\g1|count\(6) & (!\g1|Add0~11\ & VCC))
-- \g1|Add0~13\ = CARRY((\g1|count\(6) & !\g1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g1|count\(6),
	datad => VCC,
	cin => \g1|Add0~11\,
	combout => \g1|Add0~12_combout\,
	cout => \g1|Add0~13\);

-- Location: FF_X66_Y66_N19
\g1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(6));

-- Location: LCCOMB_X66_Y66_N20
\g1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~14_combout\ = (\g1|count\(7) & (!\g1|Add0~13\)) # (!\g1|count\(7) & ((\g1|Add0~13\) # (GND)))
-- \g1|Add0~15\ = CARRY((!\g1|Add0~13\) # (!\g1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g1|count\(7),
	datad => VCC,
	cin => \g1|Add0~13\,
	combout => \g1|Add0~14_combout\,
	cout => \g1|Add0~15\);

-- Location: LCCOMB_X66_Y66_N0
\g1|count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|count~10_combout\ = (\g1|Add0~14_combout\ & ((!\g1|Equal0~4_combout\) # (!\g1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1|Equal0~7_combout\,
	datab => \g1|Equal0~4_combout\,
	datad => \g1|Add0~14_combout\,
	combout => \g1|count~10_combout\);

-- Location: FF_X66_Y66_N1
\g1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(7));

-- Location: LCCOMB_X66_Y66_N22
\g1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~16_combout\ = (\g1|count\(8) & (\g1|Add0~15\ $ (GND))) # (!\g1|count\(8) & (!\g1|Add0~15\ & VCC))
-- \g1|Add0~17\ = CARRY((\g1|count\(8) & !\g1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g1|count\(8),
	datad => VCC,
	cin => \g1|Add0~15\,
	combout => \g1|Add0~16_combout\,
	cout => \g1|Add0~17\);

-- Location: FF_X66_Y66_N23
\g1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(8));

-- Location: LCCOMB_X66_Y66_N24
\g1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~18_combout\ = (\g1|count\(9) & (!\g1|Add0~17\)) # (!\g1|count\(9) & ((\g1|Add0~17\) # (GND)))
-- \g1|Add0~19\ = CARRY((!\g1|Add0~17\) # (!\g1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g1|count\(9),
	datad => VCC,
	cin => \g1|Add0~17\,
	combout => \g1|Add0~18_combout\,
	cout => \g1|Add0~19\);

-- Location: FF_X66_Y66_N25
\g1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(9));

-- Location: LCCOMB_X66_Y66_N26
\g1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~20_combout\ = (\g1|count\(10) & (\g1|Add0~19\ $ (GND))) # (!\g1|count\(10) & (!\g1|Add0~19\ & VCC))
-- \g1|Add0~21\ = CARRY((\g1|count\(10) & !\g1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g1|count\(10),
	datad => VCC,
	cin => \g1|Add0~19\,
	combout => \g1|Add0~20_combout\,
	cout => \g1|Add0~21\);

-- Location: FF_X66_Y66_N27
\g1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(10));

-- Location: LCCOMB_X66_Y66_N28
\g1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~22_combout\ = (\g1|count\(11) & (!\g1|Add0~21\)) # (!\g1|count\(11) & ((\g1|Add0~21\) # (GND)))
-- \g1|Add0~23\ = CARRY((!\g1|Add0~21\) # (!\g1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g1|count\(11),
	datad => VCC,
	cin => \g1|Add0~21\,
	combout => \g1|Add0~22_combout\,
	cout => \g1|Add0~23\);

-- Location: FF_X66_Y66_N29
\g1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(11));

-- Location: LCCOMB_X66_Y66_N30
\g1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~24_combout\ = (\g1|count\(12) & (\g1|Add0~23\ $ (GND))) # (!\g1|count\(12) & (!\g1|Add0~23\ & VCC))
-- \g1|Add0~25\ = CARRY((\g1|count\(12) & !\g1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g1|count\(12),
	datad => VCC,
	cin => \g1|Add0~23\,
	combout => \g1|Add0~24_combout\,
	cout => \g1|Add0~25\);

-- Location: LCCOMB_X66_Y66_N4
\g1|count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|count~12_combout\ = (\g1|Add0~24_combout\ & ((!\g1|Equal0~4_combout\) # (!\g1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1|Equal0~7_combout\,
	datab => \g1|Equal0~4_combout\,
	datac => \g1|Add0~24_combout\,
	combout => \g1|count~12_combout\);

-- Location: FF_X66_Y66_N5
\g1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|count~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(12));

-- Location: LCCOMB_X66_Y65_N0
\g1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~26_combout\ = (\g1|count\(13) & (!\g1|Add0~25\)) # (!\g1|count\(13) & ((\g1|Add0~25\) # (GND)))
-- \g1|Add0~27\ = CARRY((!\g1|Add0~25\) # (!\g1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g1|count\(13),
	datad => VCC,
	cin => \g1|Add0~25\,
	combout => \g1|Add0~26_combout\,
	cout => \g1|Add0~27\);

-- Location: LCCOMB_X66_Y65_N26
\g1|count~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|count~13_combout\ = (\g1|Add0~26_combout\ & ((!\g1|Equal0~4_combout\) # (!\g1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1|Equal0~7_combout\,
	datab => \g1|Equal0~4_combout\,
	datad => \g1|Add0~26_combout\,
	combout => \g1|count~13_combout\);

-- Location: FF_X66_Y65_N27
\g1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|count~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(13));

-- Location: LCCOMB_X66_Y65_N2
\g1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~28_combout\ = (\g1|count\(14) & (\g1|Add0~27\ $ (GND))) # (!\g1|count\(14) & (!\g1|Add0~27\ & VCC))
-- \g1|Add0~29\ = CARRY((\g1|count\(14) & !\g1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g1|count\(14),
	datad => VCC,
	cin => \g1|Add0~27\,
	combout => \g1|Add0~28_combout\,
	cout => \g1|Add0~29\);

-- Location: LCCOMB_X65_Y65_N0
\g1|count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|count~14_combout\ = (\g1|Add0~28_combout\ & ((!\g1|Equal0~4_combout\) # (!\g1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1|Add0~28_combout\,
	datab => \g1|Equal0~7_combout\,
	datac => \g1|Equal0~4_combout\,
	combout => \g1|count~14_combout\);

-- Location: FF_X65_Y65_N1
\g1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|count~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(14));

-- Location: LCCOMB_X66_Y65_N4
\g1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~30_combout\ = (\g1|count\(15) & (!\g1|Add0~29\)) # (!\g1|count\(15) & ((\g1|Add0~29\) # (GND)))
-- \g1|Add0~31\ = CARRY((!\g1|Add0~29\) # (!\g1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g1|count\(15),
	datad => VCC,
	cin => \g1|Add0~29\,
	combout => \g1|Add0~30_combout\,
	cout => \g1|Add0~31\);

-- Location: LCCOMB_X66_Y65_N28
\g1|count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|count~15_combout\ = (\g1|Add0~30_combout\ & ((!\g1|Equal0~4_combout\) # (!\g1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1|Equal0~7_combout\,
	datab => \g1|Equal0~4_combout\,
	datac => \g1|Add0~30_combout\,
	combout => \g1|count~15_combout\);

-- Location: FF_X66_Y65_N29
\g1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|count~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(15));

-- Location: LCCOMB_X65_Y65_N8
\g1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Equal0~3_combout\ = (\g1|count\(12) & (\g1|count\(13) & (\g1|count\(14) & \g1|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1|count\(12),
	datab => \g1|count\(13),
	datac => \g1|count\(14),
	datad => \g1|count\(15),
	combout => \g1|Equal0~3_combout\);

-- Location: LCCOMB_X65_Y66_N20
\g1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Equal0~2_combout\ = (!\g1|count\(8) & (!\g1|count\(10) & (!\g1|count\(9) & !\g1|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1|count\(8),
	datab => \g1|count\(10),
	datac => \g1|count\(9),
	datad => \g1|count\(11),
	combout => \g1|Equal0~2_combout\);

-- Location: LCCOMB_X65_Y66_N30
\g1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Equal0~1_combout\ = (!\g1|count\(2) & (!\g1|count\(1) & (!\g1|count\(0) & !\g1|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1|count\(2),
	datab => \g1|count\(1),
	datac => \g1|count\(0),
	datad => \g1|count\(3),
	combout => \g1|Equal0~1_combout\);

-- Location: LCCOMB_X65_Y66_N28
\g1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Equal0~0_combout\ = (\g1|count\(7) & (!\g1|count\(6) & (!\g1|count\(4) & !\g1|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1|count\(7),
	datab => \g1|count\(6),
	datac => \g1|count\(4),
	datad => \g1|count\(5),
	combout => \g1|Equal0~0_combout\);

-- Location: LCCOMB_X65_Y65_N12
\g1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Equal0~4_combout\ = (\g1|Equal0~3_combout\ & (\g1|Equal0~2_combout\ & (\g1|Equal0~1_combout\ & \g1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1|Equal0~3_combout\,
	datab => \g1|Equal0~2_combout\,
	datac => \g1|Equal0~1_combout\,
	datad => \g1|Equal0~0_combout\,
	combout => \g1|Equal0~4_combout\);

-- Location: LCCOMB_X66_Y65_N6
\g1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~32_combout\ = (\g1|count\(16) & (\g1|Add0~31\ $ (GND))) # (!\g1|count\(16) & (!\g1|Add0~31\ & VCC))
-- \g1|Add0~33\ = CARRY((\g1|count\(16) & !\g1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g1|count\(16),
	datad => VCC,
	cin => \g1|Add0~31\,
	combout => \g1|Add0~32_combout\,
	cout => \g1|Add0~33\);

-- Location: FF_X66_Y65_N7
\g1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(16));

-- Location: LCCOMB_X66_Y65_N8
\g1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~34_combout\ = (\g1|count\(17) & (!\g1|Add0~33\)) # (!\g1|count\(17) & ((\g1|Add0~33\) # (GND)))
-- \g1|Add0~35\ = CARRY((!\g1|Add0~33\) # (!\g1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g1|count\(17),
	datad => VCC,
	cin => \g1|Add0~33\,
	combout => \g1|Add0~34_combout\,
	cout => \g1|Add0~35\);

-- Location: LCCOMB_X65_Y65_N26
\g1|count~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|count~16_combout\ = (\g1|Add0~34_combout\ & ((!\g1|Equal0~4_combout\) # (!\g1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g1|Equal0~7_combout\,
	datac => \g1|Add0~34_combout\,
	datad => \g1|Equal0~4_combout\,
	combout => \g1|count~16_combout\);

-- Location: FF_X65_Y65_N27
\g1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|count~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(17));

-- Location: LCCOMB_X66_Y65_N10
\g1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~36_combout\ = (\g1|count\(18) & (\g1|Add0~35\ $ (GND))) # (!\g1|count\(18) & (!\g1|Add0~35\ & VCC))
-- \g1|Add0~37\ = CARRY((\g1|count\(18) & !\g1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g1|count\(18),
	datad => VCC,
	cin => \g1|Add0~35\,
	combout => \g1|Add0~36_combout\,
	cout => \g1|Add0~37\);

-- Location: FF_X66_Y65_N11
\g1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(18));

-- Location: LCCOMB_X66_Y65_N12
\g1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~38_combout\ = (\g1|count\(19) & (!\g1|Add0~37\)) # (!\g1|count\(19) & ((\g1|Add0~37\) # (GND)))
-- \g1|Add0~39\ = CARRY((!\g1|Add0~37\) # (!\g1|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g1|count\(19),
	datad => VCC,
	cin => \g1|Add0~37\,
	combout => \g1|Add0~38_combout\,
	cout => \g1|Add0~39\);

-- Location: LCCOMB_X66_Y65_N30
\g1|count~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|count~17_combout\ = (\g1|Add0~38_combout\ & ((!\g1|Equal0~4_combout\) # (!\g1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1|Equal0~7_combout\,
	datab => \g1|Equal0~4_combout\,
	datad => \g1|Add0~38_combout\,
	combout => \g1|count~17_combout\);

-- Location: FF_X66_Y65_N31
\g1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|count~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(19));

-- Location: LCCOMB_X66_Y65_N14
\g1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~40_combout\ = (\g1|count\(20) & (\g1|Add0~39\ $ (GND))) # (!\g1|count\(20) & (!\g1|Add0~39\ & VCC))
-- \g1|Add0~41\ = CARRY((\g1|count\(20) & !\g1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g1|count\(20),
	datad => VCC,
	cin => \g1|Add0~39\,
	combout => \g1|Add0~40_combout\,
	cout => \g1|Add0~41\);

-- Location: LCCOMB_X65_Y65_N30
\g1|count~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|count~18_combout\ = (\g1|Add0~40_combout\ & ((!\g1|Equal0~4_combout\) # (!\g1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g1|Equal0~7_combout\,
	datac => \g1|Add0~40_combout\,
	datad => \g1|Equal0~4_combout\,
	combout => \g1|count~18_combout\);

-- Location: FF_X65_Y65_N31
\g1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|count~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(20));

-- Location: LCCOMB_X66_Y65_N16
\g1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~42_combout\ = (\g1|count\(21) & (!\g1|Add0~41\)) # (!\g1|count\(21) & ((\g1|Add0~41\) # (GND)))
-- \g1|Add0~43\ = CARRY((!\g1|Add0~41\) # (!\g1|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g1|count\(21),
	datad => VCC,
	cin => \g1|Add0~41\,
	combout => \g1|Add0~42_combout\,
	cout => \g1|Add0~43\);

-- Location: LCCOMB_X65_Y65_N24
\g1|count~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|count~19_combout\ = (\g1|Add0~42_combout\ & ((!\g1|Equal0~4_combout\) # (!\g1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g1|Equal0~7_combout\,
	datac => \g1|Equal0~4_combout\,
	datad => \g1|Add0~42_combout\,
	combout => \g1|count~19_combout\);

-- Location: FF_X65_Y65_N25
\g1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|count~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(21));

-- Location: LCCOMB_X66_Y65_N18
\g1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~44_combout\ = (\g1|count\(22) & (\g1|Add0~43\ $ (GND))) # (!\g1|count\(22) & (!\g1|Add0~43\ & VCC))
-- \g1|Add0~45\ = CARRY((\g1|count\(22) & !\g1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g1|count\(22),
	datad => VCC,
	cin => \g1|Add0~43\,
	combout => \g1|Add0~44_combout\,
	cout => \g1|Add0~45\);

-- Location: LCCOMB_X65_Y65_N18
\g1|count~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|count~20_combout\ = (\g1|Add0~44_combout\ & ((!\g1|Equal0~4_combout\) # (!\g1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g1|Equal0~7_combout\,
	datac => \g1|Equal0~4_combout\,
	datad => \g1|Add0~44_combout\,
	combout => \g1|count~20_combout\);

-- Location: FF_X65_Y65_N19
\g1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|count~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(22));

-- Location: LCCOMB_X66_Y65_N20
\g1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~46_combout\ = (\g1|count\(23) & (!\g1|Add0~45\)) # (!\g1|count\(23) & ((\g1|Add0~45\) # (GND)))
-- \g1|Add0~47\ = CARRY((!\g1|Add0~45\) # (!\g1|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g1|count\(23),
	datad => VCC,
	cin => \g1|Add0~45\,
	combout => \g1|Add0~46_combout\,
	cout => \g1|Add0~47\);

-- Location: LCCOMB_X65_Y65_N20
\g1|count~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|count~21_combout\ = (\g1|Add0~46_combout\ & ((!\g1|Equal0~4_combout\) # (!\g1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g1|Equal0~7_combout\,
	datac => \g1|Add0~46_combout\,
	datad => \g1|Equal0~4_combout\,
	combout => \g1|count~21_combout\);

-- Location: FF_X65_Y65_N21
\g1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|count~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(23));

-- Location: LCCOMB_X66_Y65_N22
\g1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~48_combout\ = (\g1|count\(24) & (\g1|Add0~47\ $ (GND))) # (!\g1|count\(24) & (!\g1|Add0~47\ & VCC))
-- \g1|Add0~49\ = CARRY((\g1|count\(24) & !\g1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g1|count\(24),
	datad => VCC,
	cin => \g1|Add0~47\,
	combout => \g1|Add0~48_combout\,
	cout => \g1|Add0~49\);

-- Location: FF_X66_Y65_N23
\g1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(24));

-- Location: LCCOMB_X66_Y65_N24
\g1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Add0~50_combout\ = \g1|count\(25) $ (\g1|Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g1|count\(25),
	cin => \g1|Add0~49\,
	combout => \g1|Add0~50_combout\);

-- Location: LCCOMB_X65_Y65_N22
\g1|count~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|count~22_combout\ = (\g1|Add0~50_combout\ & ((!\g1|Equal0~4_combout\) # (!\g1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g1|Equal0~7_combout\,
	datac => \g1|Add0~50_combout\,
	datad => \g1|Equal0~4_combout\,
	combout => \g1|count~22_combout\);

-- Location: FF_X65_Y65_N23
\g1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|count~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|count\(25));

-- Location: LCCOMB_X65_Y65_N10
\g1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Equal0~5_combout\ = (!\g1|count\(16) & (!\g1|count\(18) & (\g1|count\(17) & \g1|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1|count\(16),
	datab => \g1|count\(18),
	datac => \g1|count\(17),
	datad => \g1|count\(19),
	combout => \g1|Equal0~5_combout\);

-- Location: LCCOMB_X65_Y65_N4
\g1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Equal0~6_combout\ = (\g1|count\(23) & (\g1|count\(22) & (\g1|count\(21) & \g1|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1|count\(23),
	datab => \g1|count\(22),
	datac => \g1|count\(21),
	datad => \g1|count\(20),
	combout => \g1|Equal0~6_combout\);

-- Location: LCCOMB_X65_Y65_N16
\g1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|Equal0~7_combout\ = (!\g1|count\(24) & (\g1|count\(25) & (\g1|Equal0~5_combout\ & \g1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1|count\(24),
	datab => \g1|count\(25),
	datac => \g1|Equal0~5_combout\,
	datad => \g1|Equal0~6_combout\,
	combout => \g1|Equal0~7_combout\);

-- Location: LCCOMB_X65_Y65_N28
\g1|clk_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|clk_out~0_combout\ = \g1|clk_out~q\ $ (((\g1|Equal0~7_combout\ & \g1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g1|Equal0~7_combout\,
	datac => \g1|clk_out~q\,
	datad => \g1|Equal0~4_combout\,
	combout => \g1|clk_out~0_combout\);

-- Location: LCCOMB_X65_Y65_N6
\g1|clk_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|clk_out~feeder_combout\ = \g1|clk_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \g1|clk_out~0_combout\,
	combout => \g1|clk_out~feeder_combout\);

-- Location: FF_X65_Y65_N7
\g1|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \k1|Mux0~clkctrl_outclk\,
	d => \g1|clk_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1|clk_out~q\);

-- Location: CLKCTRL_G13
\g1|clk_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \g1|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \g1|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X55_Y5_N4
\s1|counter[0]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[0]~75_combout\ = !\s1|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1|counter\(0),
	combout => \s1|counter[0]~75_combout\);

-- Location: FF_X55_Y5_N5
\s1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[0]~75_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(0));

-- Location: LCCOMB_X54_Y5_N8
\s1|counter[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[1]~25_combout\ = (\s1|counter\(0) & (\s1|counter\(1) $ (VCC))) # (!\s1|counter\(0) & (\s1|counter\(1) & VCC))
-- \s1|counter[1]~26\ = CARRY((\s1|counter\(0) & \s1|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1|counter\(0),
	datab => \s1|counter\(1),
	datad => VCC,
	combout => \s1|counter[1]~25_combout\,
	cout => \s1|counter[1]~26\);

-- Location: FF_X54_Y5_N9
\s1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[1]~25_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(1));

-- Location: LCCOMB_X54_Y5_N10
\s1|counter[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[2]~27_combout\ = (\s1|counter\(2) & (!\s1|counter[1]~26\)) # (!\s1|counter\(2) & ((\s1|counter[1]~26\) # (GND)))
-- \s1|counter[2]~28\ = CARRY((!\s1|counter[1]~26\) # (!\s1|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|counter\(2),
	datad => VCC,
	cin => \s1|counter[1]~26\,
	combout => \s1|counter[2]~27_combout\,
	cout => \s1|counter[2]~28\);

-- Location: FF_X54_Y5_N11
\s1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[2]~27_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(2));

-- Location: LCCOMB_X54_Y5_N12
\s1|counter[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[3]~29_combout\ = (\s1|counter\(3) & (\s1|counter[2]~28\ $ (GND))) # (!\s1|counter\(3) & (!\s1|counter[2]~28\ & VCC))
-- \s1|counter[3]~30\ = CARRY((\s1|counter\(3) & !\s1|counter[2]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|counter\(3),
	datad => VCC,
	cin => \s1|counter[2]~28\,
	combout => \s1|counter[3]~29_combout\,
	cout => \s1|counter[3]~30\);

-- Location: FF_X54_Y5_N13
\s1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[3]~29_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(3));

-- Location: LCCOMB_X54_Y5_N14
\s1|counter[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[4]~31_combout\ = (\s1|counter\(4) & (!\s1|counter[3]~30\)) # (!\s1|counter\(4) & ((\s1|counter[3]~30\) # (GND)))
-- \s1|counter[4]~32\ = CARRY((!\s1|counter[3]~30\) # (!\s1|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|counter\(4),
	datad => VCC,
	cin => \s1|counter[3]~30\,
	combout => \s1|counter[4]~31_combout\,
	cout => \s1|counter[4]~32\);

-- Location: FF_X54_Y5_N15
\s1|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[4]~31_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(4));

-- Location: LCCOMB_X54_Y5_N16
\s1|counter[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[5]~33_combout\ = (\s1|counter\(5) & (\s1|counter[4]~32\ $ (GND))) # (!\s1|counter\(5) & (!\s1|counter[4]~32\ & VCC))
-- \s1|counter[5]~34\ = CARRY((\s1|counter\(5) & !\s1|counter[4]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|counter\(5),
	datad => VCC,
	cin => \s1|counter[4]~32\,
	combout => \s1|counter[5]~33_combout\,
	cout => \s1|counter[5]~34\);

-- Location: FF_X54_Y5_N17
\s1|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[5]~33_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(5));

-- Location: LCCOMB_X54_Y5_N18
\s1|counter[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[6]~35_combout\ = (\s1|counter\(6) & (!\s1|counter[5]~34\)) # (!\s1|counter\(6) & ((\s1|counter[5]~34\) # (GND)))
-- \s1|counter[6]~36\ = CARRY((!\s1|counter[5]~34\) # (!\s1|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|counter\(6),
	datad => VCC,
	cin => \s1|counter[5]~34\,
	combout => \s1|counter[6]~35_combout\,
	cout => \s1|counter[6]~36\);

-- Location: FF_X54_Y5_N19
\s1|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[6]~35_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(6));

-- Location: LCCOMB_X54_Y5_N20
\s1|counter[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[7]~37_combout\ = (\s1|counter\(7) & (\s1|counter[6]~36\ $ (GND))) # (!\s1|counter\(7) & (!\s1|counter[6]~36\ & VCC))
-- \s1|counter[7]~38\ = CARRY((\s1|counter\(7) & !\s1|counter[6]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|counter\(7),
	datad => VCC,
	cin => \s1|counter[6]~36\,
	combout => \s1|counter[7]~37_combout\,
	cout => \s1|counter[7]~38\);

-- Location: FF_X54_Y5_N21
\s1|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[7]~37_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(7));

-- Location: LCCOMB_X54_Y5_N22
\s1|counter[8]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[8]~39_combout\ = (\s1|counter\(8) & (!\s1|counter[7]~38\)) # (!\s1|counter\(8) & ((\s1|counter[7]~38\) # (GND)))
-- \s1|counter[8]~40\ = CARRY((!\s1|counter[7]~38\) # (!\s1|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|counter\(8),
	datad => VCC,
	cin => \s1|counter[7]~38\,
	combout => \s1|counter[8]~39_combout\,
	cout => \s1|counter[8]~40\);

-- Location: FF_X54_Y5_N23
\s1|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[8]~39_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(8));

-- Location: LCCOMB_X54_Y5_N24
\s1|counter[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[9]~41_combout\ = (\s1|counter\(9) & (\s1|counter[8]~40\ $ (GND))) # (!\s1|counter\(9) & (!\s1|counter[8]~40\ & VCC))
-- \s1|counter[9]~42\ = CARRY((\s1|counter\(9) & !\s1|counter[8]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|counter\(9),
	datad => VCC,
	cin => \s1|counter[8]~40\,
	combout => \s1|counter[9]~41_combout\,
	cout => \s1|counter[9]~42\);

-- Location: FF_X54_Y5_N25
\s1|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[9]~41_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(9));

-- Location: LCCOMB_X54_Y5_N26
\s1|counter[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[10]~43_combout\ = (\s1|counter\(10) & (!\s1|counter[9]~42\)) # (!\s1|counter\(10) & ((\s1|counter[9]~42\) # (GND)))
-- \s1|counter[10]~44\ = CARRY((!\s1|counter[9]~42\) # (!\s1|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|counter\(10),
	datad => VCC,
	cin => \s1|counter[9]~42\,
	combout => \s1|counter[10]~43_combout\,
	cout => \s1|counter[10]~44\);

-- Location: FF_X54_Y5_N27
\s1|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[10]~43_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(10));

-- Location: LCCOMB_X54_Y5_N28
\s1|counter[11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[11]~45_combout\ = (\s1|counter\(11) & (\s1|counter[10]~44\ $ (GND))) # (!\s1|counter\(11) & (!\s1|counter[10]~44\ & VCC))
-- \s1|counter[11]~46\ = CARRY((\s1|counter\(11) & !\s1|counter[10]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|counter\(11),
	datad => VCC,
	cin => \s1|counter[10]~44\,
	combout => \s1|counter[11]~45_combout\,
	cout => \s1|counter[11]~46\);

-- Location: FF_X54_Y5_N29
\s1|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[11]~45_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(11));

-- Location: LCCOMB_X54_Y5_N30
\s1|counter[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[12]~47_combout\ = (\s1|counter\(12) & (!\s1|counter[11]~46\)) # (!\s1|counter\(12) & ((\s1|counter[11]~46\) # (GND)))
-- \s1|counter[12]~48\ = CARRY((!\s1|counter[11]~46\) # (!\s1|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|counter\(12),
	datad => VCC,
	cin => \s1|counter[11]~46\,
	combout => \s1|counter[12]~47_combout\,
	cout => \s1|counter[12]~48\);

-- Location: FF_X54_Y5_N31
\s1|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[12]~47_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(12));

-- Location: LCCOMB_X54_Y4_N0
\s1|counter[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[13]~49_combout\ = (\s1|counter\(13) & (\s1|counter[12]~48\ $ (GND))) # (!\s1|counter\(13) & (!\s1|counter[12]~48\ & VCC))
-- \s1|counter[13]~50\ = CARRY((\s1|counter\(13) & !\s1|counter[12]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|counter\(13),
	datad => VCC,
	cin => \s1|counter[12]~48\,
	combout => \s1|counter[13]~49_combout\,
	cout => \s1|counter[13]~50\);

-- Location: FF_X54_Y4_N1
\s1|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[13]~49_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(13));

-- Location: LCCOMB_X54_Y4_N2
\s1|counter[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[14]~51_combout\ = (\s1|counter\(14) & (!\s1|counter[13]~50\)) # (!\s1|counter\(14) & ((\s1|counter[13]~50\) # (GND)))
-- \s1|counter[14]~52\ = CARRY((!\s1|counter[13]~50\) # (!\s1|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|counter\(14),
	datad => VCC,
	cin => \s1|counter[13]~50\,
	combout => \s1|counter[14]~51_combout\,
	cout => \s1|counter[14]~52\);

-- Location: FF_X54_Y4_N3
\s1|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[14]~51_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(14));

-- Location: LCCOMB_X54_Y4_N4
\s1|counter[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[15]~53_combout\ = (\s1|counter\(15) & (\s1|counter[14]~52\ $ (GND))) # (!\s1|counter\(15) & (!\s1|counter[14]~52\ & VCC))
-- \s1|counter[15]~54\ = CARRY((\s1|counter\(15) & !\s1|counter[14]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|counter\(15),
	datad => VCC,
	cin => \s1|counter[14]~52\,
	combout => \s1|counter[15]~53_combout\,
	cout => \s1|counter[15]~54\);

-- Location: FF_X54_Y4_N5
\s1|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[15]~53_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(15));

-- Location: LCCOMB_X54_Y4_N6
\s1|counter[16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[16]~55_combout\ = (\s1|counter\(16) & (!\s1|counter[15]~54\)) # (!\s1|counter\(16) & ((\s1|counter[15]~54\) # (GND)))
-- \s1|counter[16]~56\ = CARRY((!\s1|counter[15]~54\) # (!\s1|counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|counter\(16),
	datad => VCC,
	cin => \s1|counter[15]~54\,
	combout => \s1|counter[16]~55_combout\,
	cout => \s1|counter[16]~56\);

-- Location: FF_X54_Y4_N7
\s1|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[16]~55_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(16));

-- Location: LCCOMB_X54_Y4_N8
\s1|counter[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[17]~57_combout\ = (\s1|counter\(17) & (\s1|counter[16]~56\ $ (GND))) # (!\s1|counter\(17) & (!\s1|counter[16]~56\ & VCC))
-- \s1|counter[17]~58\ = CARRY((\s1|counter\(17) & !\s1|counter[16]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|counter\(17),
	datad => VCC,
	cin => \s1|counter[16]~56\,
	combout => \s1|counter[17]~57_combout\,
	cout => \s1|counter[17]~58\);

-- Location: FF_X54_Y4_N9
\s1|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[17]~57_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(17));

-- Location: LCCOMB_X54_Y4_N10
\s1|counter[18]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[18]~59_combout\ = (\s1|counter\(18) & (!\s1|counter[17]~58\)) # (!\s1|counter\(18) & ((\s1|counter[17]~58\) # (GND)))
-- \s1|counter[18]~60\ = CARRY((!\s1|counter[17]~58\) # (!\s1|counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|counter\(18),
	datad => VCC,
	cin => \s1|counter[17]~58\,
	combout => \s1|counter[18]~59_combout\,
	cout => \s1|counter[18]~60\);

-- Location: FF_X54_Y4_N11
\s1|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[18]~59_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(18));

-- Location: LCCOMB_X54_Y4_N12
\s1|counter[19]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[19]~61_combout\ = (\s1|counter\(19) & (\s1|counter[18]~60\ $ (GND))) # (!\s1|counter\(19) & (!\s1|counter[18]~60\ & VCC))
-- \s1|counter[19]~62\ = CARRY((\s1|counter\(19) & !\s1|counter[18]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|counter\(19),
	datad => VCC,
	cin => \s1|counter[18]~60\,
	combout => \s1|counter[19]~61_combout\,
	cout => \s1|counter[19]~62\);

-- Location: FF_X54_Y4_N13
\s1|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[19]~61_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(19));

-- Location: LCCOMB_X54_Y4_N14
\s1|counter[20]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[20]~63_combout\ = (\s1|counter\(20) & (!\s1|counter[19]~62\)) # (!\s1|counter\(20) & ((\s1|counter[19]~62\) # (GND)))
-- \s1|counter[20]~64\ = CARRY((!\s1|counter[19]~62\) # (!\s1|counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|counter\(20),
	datad => VCC,
	cin => \s1|counter[19]~62\,
	combout => \s1|counter[20]~63_combout\,
	cout => \s1|counter[20]~64\);

-- Location: FF_X54_Y4_N15
\s1|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[20]~63_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(20));

-- Location: LCCOMB_X54_Y4_N16
\s1|counter[21]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[21]~65_combout\ = (\s1|counter\(21) & (\s1|counter[20]~64\ $ (GND))) # (!\s1|counter\(21) & (!\s1|counter[20]~64\ & VCC))
-- \s1|counter[21]~66\ = CARRY((\s1|counter\(21) & !\s1|counter[20]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|counter\(21),
	datad => VCC,
	cin => \s1|counter[20]~64\,
	combout => \s1|counter[21]~65_combout\,
	cout => \s1|counter[21]~66\);

-- Location: FF_X54_Y4_N17
\s1|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[21]~65_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(21));

-- Location: LCCOMB_X54_Y4_N18
\s1|counter[22]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[22]~67_combout\ = (\s1|counter\(22) & (!\s1|counter[21]~66\)) # (!\s1|counter\(22) & ((\s1|counter[21]~66\) # (GND)))
-- \s1|counter[22]~68\ = CARRY((!\s1|counter[21]~66\) # (!\s1|counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|counter\(22),
	datad => VCC,
	cin => \s1|counter[21]~66\,
	combout => \s1|counter[22]~67_combout\,
	cout => \s1|counter[22]~68\);

-- Location: FF_X54_Y4_N19
\s1|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[22]~67_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(22));

-- Location: LCCOMB_X54_Y4_N20
\s1|counter[23]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[23]~69_combout\ = (\s1|counter\(23) & (\s1|counter[22]~68\ $ (GND))) # (!\s1|counter\(23) & (!\s1|counter[22]~68\ & VCC))
-- \s1|counter[23]~70\ = CARRY((\s1|counter\(23) & !\s1|counter[22]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s1|counter\(23),
	datad => VCC,
	cin => \s1|counter[22]~68\,
	combout => \s1|counter[23]~69_combout\,
	cout => \s1|counter[23]~70\);

-- Location: FF_X54_Y4_N21
\s1|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[23]~69_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(23));

-- Location: LCCOMB_X54_Y4_N22
\s1|counter[24]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[24]~71_combout\ = (\s1|counter\(24) & (!\s1|counter[23]~70\)) # (!\s1|counter\(24) & ((\s1|counter[23]~70\) # (GND)))
-- \s1|counter[24]~72\ = CARRY((!\s1|counter[23]~70\) # (!\s1|counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|counter\(24),
	datad => VCC,
	cin => \s1|counter[23]~70\,
	combout => \s1|counter[24]~71_combout\,
	cout => \s1|counter[24]~72\);

-- Location: FF_X54_Y4_N23
\s1|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[24]~71_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(24));

-- Location: LCCOMB_X54_Y4_N24
\s1|counter[25]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|counter[25]~73_combout\ = \s1|counter[24]~72\ $ (!\s1|counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \s1|counter\(25),
	cin => \s1|counter[24]~72\,
	combout => \s1|counter[25]~73_combout\);

-- Location: FF_X54_Y4_N25
\s1|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g1|clk_out~clkctrl_outclk\,
	d => \s1|counter[25]~73_combout\,
	clrn => \ALT_INV_reset_ris~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1|counter\(25));

-- Location: LCCOMB_X55_Y5_N6
\p1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~1_cout\ = CARRY((!\s2|counter\(0) & \s1|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s2|counter\(0),
	datab => \s1|counter\(0),
	datad => VCC,
	cout => \p1|LessThan0~1_cout\);

-- Location: LCCOMB_X55_Y5_N8
\p1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~3_cout\ = CARRY((\s1|counter\(1) & (\s2|counter\(1) & !\p1|LessThan0~1_cout\)) # (!\s1|counter\(1) & ((\s2|counter\(1)) # (!\p1|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|counter\(1),
	datab => \s2|counter\(1),
	datad => VCC,
	cin => \p1|LessThan0~1_cout\,
	cout => \p1|LessThan0~3_cout\);

-- Location: LCCOMB_X55_Y5_N10
\p1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~5_cout\ = CARRY((\s1|counter\(2) & ((!\p1|LessThan0~3_cout\) # (!\s2|counter\(2)))) # (!\s1|counter\(2) & (!\s2|counter\(2) & !\p1|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|counter\(2),
	datab => \s2|counter\(2),
	datad => VCC,
	cin => \p1|LessThan0~3_cout\,
	cout => \p1|LessThan0~5_cout\);

-- Location: LCCOMB_X55_Y5_N12
\p1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~7_cout\ = CARRY((\s1|counter\(3) & (\s2|counter\(3) & !\p1|LessThan0~5_cout\)) # (!\s1|counter\(3) & ((\s2|counter\(3)) # (!\p1|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|counter\(3),
	datab => \s2|counter\(3),
	datad => VCC,
	cin => \p1|LessThan0~5_cout\,
	cout => \p1|LessThan0~7_cout\);

-- Location: LCCOMB_X55_Y5_N14
\p1|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~9_cout\ = CARRY((\s1|counter\(4) & ((!\p1|LessThan0~7_cout\) # (!\s2|counter\(4)))) # (!\s1|counter\(4) & (!\s2|counter\(4) & !\p1|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|counter\(4),
	datab => \s2|counter\(4),
	datad => VCC,
	cin => \p1|LessThan0~7_cout\,
	cout => \p1|LessThan0~9_cout\);

-- Location: LCCOMB_X55_Y5_N16
\p1|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~11_cout\ = CARRY((\s1|counter\(5) & (\s2|counter\(5) & !\p1|LessThan0~9_cout\)) # (!\s1|counter\(5) & ((\s2|counter\(5)) # (!\p1|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|counter\(5),
	datab => \s2|counter\(5),
	datad => VCC,
	cin => \p1|LessThan0~9_cout\,
	cout => \p1|LessThan0~11_cout\);

-- Location: LCCOMB_X55_Y5_N18
\p1|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~13_cout\ = CARRY((\s2|counter\(6) & (\s1|counter\(6) & !\p1|LessThan0~11_cout\)) # (!\s2|counter\(6) & ((\s1|counter\(6)) # (!\p1|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s2|counter\(6),
	datab => \s1|counter\(6),
	datad => VCC,
	cin => \p1|LessThan0~11_cout\,
	cout => \p1|LessThan0~13_cout\);

-- Location: LCCOMB_X55_Y5_N20
\p1|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~15_cout\ = CARRY((\s2|counter\(7) & ((!\p1|LessThan0~13_cout\) # (!\s1|counter\(7)))) # (!\s2|counter\(7) & (!\s1|counter\(7) & !\p1|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s2|counter\(7),
	datab => \s1|counter\(7),
	datad => VCC,
	cin => \p1|LessThan0~13_cout\,
	cout => \p1|LessThan0~15_cout\);

-- Location: LCCOMB_X55_Y5_N22
\p1|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~17_cout\ = CARRY((\s1|counter\(8) & ((!\p1|LessThan0~15_cout\) # (!\s2|counter\(8)))) # (!\s1|counter\(8) & (!\s2|counter\(8) & !\p1|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|counter\(8),
	datab => \s2|counter\(8),
	datad => VCC,
	cin => \p1|LessThan0~15_cout\,
	cout => \p1|LessThan0~17_cout\);

-- Location: LCCOMB_X55_Y5_N24
\p1|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~19_cout\ = CARRY((\s2|counter\(9) & ((!\p1|LessThan0~17_cout\) # (!\s1|counter\(9)))) # (!\s2|counter\(9) & (!\s1|counter\(9) & !\p1|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s2|counter\(9),
	datab => \s1|counter\(9),
	datad => VCC,
	cin => \p1|LessThan0~17_cout\,
	cout => \p1|LessThan0~19_cout\);

-- Location: LCCOMB_X55_Y5_N26
\p1|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~21_cout\ = CARRY((\s2|counter\(10) & (\s1|counter\(10) & !\p1|LessThan0~19_cout\)) # (!\s2|counter\(10) & ((\s1|counter\(10)) # (!\p1|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s2|counter\(10),
	datab => \s1|counter\(10),
	datad => VCC,
	cin => \p1|LessThan0~19_cout\,
	cout => \p1|LessThan0~21_cout\);

-- Location: LCCOMB_X55_Y5_N28
\p1|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~23_cout\ = CARRY((\s2|counter\(11) & ((!\p1|LessThan0~21_cout\) # (!\s1|counter\(11)))) # (!\s2|counter\(11) & (!\s1|counter\(11) & !\p1|LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s2|counter\(11),
	datab => \s1|counter\(11),
	datad => VCC,
	cin => \p1|LessThan0~21_cout\,
	cout => \p1|LessThan0~23_cout\);

-- Location: LCCOMB_X55_Y5_N30
\p1|LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~25_cout\ = CARRY((\s2|counter\(12) & (\s1|counter\(12) & !\p1|LessThan0~23_cout\)) # (!\s2|counter\(12) & ((\s1|counter\(12)) # (!\p1|LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s2|counter\(12),
	datab => \s1|counter\(12),
	datad => VCC,
	cin => \p1|LessThan0~23_cout\,
	cout => \p1|LessThan0~25_cout\);

-- Location: LCCOMB_X55_Y4_N0
\p1|LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~27_cout\ = CARRY((\s2|counter\(13) & ((!\p1|LessThan0~25_cout\) # (!\s1|counter\(13)))) # (!\s2|counter\(13) & (!\s1|counter\(13) & !\p1|LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s2|counter\(13),
	datab => \s1|counter\(13),
	datad => VCC,
	cin => \p1|LessThan0~25_cout\,
	cout => \p1|LessThan0~27_cout\);

-- Location: LCCOMB_X55_Y4_N2
\p1|LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~29_cout\ = CARRY((\s1|counter\(14) & ((!\p1|LessThan0~27_cout\) # (!\s2|counter\(14)))) # (!\s1|counter\(14) & (!\s2|counter\(14) & !\p1|LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|counter\(14),
	datab => \s2|counter\(14),
	datad => VCC,
	cin => \p1|LessThan0~27_cout\,
	cout => \p1|LessThan0~29_cout\);

-- Location: LCCOMB_X55_Y4_N4
\p1|LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~31_cout\ = CARRY((\s2|counter\(15) & ((!\p1|LessThan0~29_cout\) # (!\s1|counter\(15)))) # (!\s2|counter\(15) & (!\s1|counter\(15) & !\p1|LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s2|counter\(15),
	datab => \s1|counter\(15),
	datad => VCC,
	cin => \p1|LessThan0~29_cout\,
	cout => \p1|LessThan0~31_cout\);

-- Location: LCCOMB_X55_Y4_N6
\p1|LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~33_cout\ = CARRY((\s2|counter\(16) & (\s1|counter\(16) & !\p1|LessThan0~31_cout\)) # (!\s2|counter\(16) & ((\s1|counter\(16)) # (!\p1|LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s2|counter\(16),
	datab => \s1|counter\(16),
	datad => VCC,
	cin => \p1|LessThan0~31_cout\,
	cout => \p1|LessThan0~33_cout\);

-- Location: LCCOMB_X55_Y4_N8
\p1|LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~35_cout\ = CARRY((\s1|counter\(17) & (\s2|counter\(17) & !\p1|LessThan0~33_cout\)) # (!\s1|counter\(17) & ((\s2|counter\(17)) # (!\p1|LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|counter\(17),
	datab => \s2|counter\(17),
	datad => VCC,
	cin => \p1|LessThan0~33_cout\,
	cout => \p1|LessThan0~35_cout\);

-- Location: LCCOMB_X55_Y4_N10
\p1|LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~37_cout\ = CARRY((\s1|counter\(18) & ((!\p1|LessThan0~35_cout\) # (!\s2|counter\(18)))) # (!\s1|counter\(18) & (!\s2|counter\(18) & !\p1|LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|counter\(18),
	datab => \s2|counter\(18),
	datad => VCC,
	cin => \p1|LessThan0~35_cout\,
	cout => \p1|LessThan0~37_cout\);

-- Location: LCCOMB_X55_Y4_N12
\p1|LessThan0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~39_cout\ = CARRY((\s1|counter\(19) & (\s2|counter\(19) & !\p1|LessThan0~37_cout\)) # (!\s1|counter\(19) & ((\s2|counter\(19)) # (!\p1|LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|counter\(19),
	datab => \s2|counter\(19),
	datad => VCC,
	cin => \p1|LessThan0~37_cout\,
	cout => \p1|LessThan0~39_cout\);

-- Location: LCCOMB_X55_Y4_N14
\p1|LessThan0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~41_cout\ = CARRY((\s1|counter\(20) & ((!\p1|LessThan0~39_cout\) # (!\s2|counter\(20)))) # (!\s1|counter\(20) & (!\s2|counter\(20) & !\p1|LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|counter\(20),
	datab => \s2|counter\(20),
	datad => VCC,
	cin => \p1|LessThan0~39_cout\,
	cout => \p1|LessThan0~41_cout\);

-- Location: LCCOMB_X55_Y4_N16
\p1|LessThan0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~43_cout\ = CARRY((\s1|counter\(21) & (\s2|counter\(21) & !\p1|LessThan0~41_cout\)) # (!\s1|counter\(21) & ((\s2|counter\(21)) # (!\p1|LessThan0~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1|counter\(21),
	datab => \s2|counter\(21),
	datad => VCC,
	cin => \p1|LessThan0~41_cout\,
	cout => \p1|LessThan0~43_cout\);

-- Location: LCCOMB_X55_Y4_N18
\p1|LessThan0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~45_cout\ = CARRY((\s2|counter\(22) & (\s1|counter\(22) & !\p1|LessThan0~43_cout\)) # (!\s2|counter\(22) & ((\s1|counter\(22)) # (!\p1|LessThan0~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s2|counter\(22),
	datab => \s1|counter\(22),
	datad => VCC,
	cin => \p1|LessThan0~43_cout\,
	cout => \p1|LessThan0~45_cout\);

-- Location: LCCOMB_X55_Y4_N20
\p1|LessThan0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~47_cout\ = CARRY((\s2|counter\(23) & ((!\p1|LessThan0~45_cout\) # (!\s1|counter\(23)))) # (!\s2|counter\(23) & (!\s1|counter\(23) & !\p1|LessThan0~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s2|counter\(23),
	datab => \s1|counter\(23),
	datad => VCC,
	cin => \p1|LessThan0~45_cout\,
	cout => \p1|LessThan0~47_cout\);

-- Location: LCCOMB_X55_Y4_N22
\p1|LessThan0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~49_cout\ = CARRY((\s2|counter\(24) & (\s1|counter\(24) & !\p1|LessThan0~47_cout\)) # (!\s2|counter\(24) & ((\s1|counter\(24)) # (!\p1|LessThan0~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s2|counter\(24),
	datab => \s1|counter\(24),
	datad => VCC,
	cin => \p1|LessThan0~47_cout\,
	cout => \p1|LessThan0~49_cout\);

-- Location: LCCOMB_X55_Y4_N24
\p1|LessThan0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|LessThan0~50_combout\ = (\s2|counter\(25) & (\s1|counter\(25) & \p1|LessThan0~49_cout\)) # (!\s2|counter\(25) & ((\s1|counter\(25)) # (\p1|LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s2|counter\(25),
	datab => \s1|counter\(25),
	cin => \p1|LessThan0~49_cout\,
	combout => \p1|LessThan0~50_combout\);

-- Location: LCCOMB_X55_Y4_N26
\p1|ouput[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|ouput\(0) = (\p1|Decoder0~0_combout\ & ((\p1|LessThan0~50_combout\))) # (!\p1|Decoder0~0_combout\ & (\p1|ouput\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p1|Decoder0~0_combout\,
	datac => \p1|ouput\(0),
	datad => \p1|LessThan0~50_combout\,
	combout => \p1|ouput\(0));

-- Location: LCCOMB_X56_Y4_N14
\p1|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|Decoder0~1_combout\ = (\sw[0]~input_o\ & (!\sw[2]~input_o\ & !\sw[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \p1|Decoder0~1_combout\);

-- Location: LCCOMB_X56_Y4_N6
\p1|ouput[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|ouput\(1) = (\p1|Decoder0~1_combout\ & ((\p1|LessThan0~50_combout\))) # (!\p1|Decoder0~1_combout\ & (\p1|ouput\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ouput\(1),
	datac => \p1|Decoder0~1_combout\,
	datad => \p1|LessThan0~50_combout\,
	combout => \p1|ouput\(1));

-- Location: LCCOMB_X56_Y4_N16
\p1|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|Decoder0~2_combout\ = (!\sw[0]~input_o\ & (!\sw[2]~input_o\ & \sw[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \p1|Decoder0~2_combout\);

-- Location: LCCOMB_X56_Y4_N22
\p1|ouput[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|ouput\(2) = (\p1|Decoder0~2_combout\ & ((\p1|LessThan0~50_combout\))) # (!\p1|Decoder0~2_combout\ & (\p1|ouput\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p1|Decoder0~2_combout\,
	datac => \p1|ouput\(2),
	datad => \p1|LessThan0~50_combout\,
	combout => \p1|ouput\(2));

-- Location: LCCOMB_X56_Y4_N30
\p1|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|Decoder0~3_combout\ = (\sw[0]~input_o\ & (!\sw[2]~input_o\ & \sw[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \p1|Decoder0~3_combout\);

-- Location: LCCOMB_X56_Y4_N26
\p1|ouput[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|ouput\(3) = (\p1|Decoder0~3_combout\ & ((\p1|LessThan0~50_combout\))) # (!\p1|Decoder0~3_combout\ & (\p1|ouput\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p1|Decoder0~3_combout\,
	datac => \p1|ouput\(3),
	datad => \p1|LessThan0~50_combout\,
	combout => \p1|ouput\(3));

-- Location: LCCOMB_X56_Y4_N10
\p1|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|Decoder0~4_combout\ = (!\sw[0]~input_o\ & (\sw[2]~input_o\ & !\sw[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \p1|Decoder0~4_combout\);

-- Location: LCCOMB_X55_Y4_N28
\p1|ouput[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|ouput\(4) = (\p1|Decoder0~4_combout\ & ((\p1|LessThan0~50_combout\))) # (!\p1|Decoder0~4_combout\ & (\p1|ouput\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p1|ouput\(4),
	datac => \p1|Decoder0~4_combout\,
	datad => \p1|LessThan0~50_combout\,
	combout => \p1|ouput\(4));

-- Location: LCCOMB_X56_Y4_N0
\p1|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|Decoder0~5_combout\ = (\sw[0]~input_o\ & (\sw[2]~input_o\ & !\sw[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \p1|Decoder0~5_combout\);

-- Location: LCCOMB_X56_Y4_N8
\p1|ouput[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|ouput\(5) = (\p1|Decoder0~5_combout\ & ((\p1|LessThan0~50_combout\))) # (!\p1|Decoder0~5_combout\ & (\p1|ouput\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p1|ouput\(5),
	datac => \p1|Decoder0~5_combout\,
	datad => \p1|LessThan0~50_combout\,
	combout => \p1|ouput\(5));

-- Location: LCCOMB_X56_Y4_N2
\p1|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|Decoder0~6_combout\ = (!\sw[0]~input_o\ & (\sw[2]~input_o\ & \sw[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \p1|Decoder0~6_combout\);

-- Location: LCCOMB_X56_Y4_N4
\p1|ouput[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|ouput\(6) = (\p1|Decoder0~6_combout\ & ((\p1|LessThan0~50_combout\))) # (!\p1|Decoder0~6_combout\ & (\p1|ouput\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p1|Decoder0~6_combout\,
	datac => \p1|ouput\(6),
	datad => \p1|LessThan0~50_combout\,
	combout => \p1|ouput\(6));

-- Location: LCCOMB_X56_Y4_N24
\p1|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|Decoder0~7_combout\ = (\sw[2]~input_o\ & (\sw[0]~input_o\ & \sw[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[2]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \p1|Decoder0~7_combout\);

-- Location: LCCOMB_X55_Y4_N30
\p1|ouput[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|ouput\(7) = (\p1|Decoder0~7_combout\ & ((\p1|LessThan0~50_combout\))) # (!\p1|Decoder0~7_combout\ & (\p1|ouput\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ouput\(7),
	datac => \p1|Decoder0~7_combout\,
	datad => \p1|LessThan0~50_combout\,
	combout => \p1|ouput\(7));

ww_ouput(0) <= \ouput[0]~output_o\;

ww_ouput(1) <= \ouput[1]~output_o\;

ww_ouput(2) <= \ouput[2]~output_o\;

ww_ouput(3) <= \ouput[3]~output_o\;

ww_ouput(4) <= \ouput[4]~output_o\;

ww_ouput(5) <= \ouput[5]~output_o\;

ww_ouput(6) <= \ouput[6]~output_o\;

ww_ouput(7) <= \ouput[7]~output_o\;
END structure;


