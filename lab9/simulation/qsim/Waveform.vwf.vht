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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/13/2023 08:56:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab9_01
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab9_01_vhd_vec_tst IS
END lab9_01_vhd_vec_tst;
ARCHITECTURE lab9_01_arch OF lab9_01_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_50Mhz : STD_LOGIC;
SIGNAL ouput : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL sw : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT lab9_01
	PORT (
	clk_50Mhz : IN STD_LOGIC;
	ouput : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC;
	sw : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : lab9_01
	PORT MAP (
-- list connections between master ports and signals
	clk_50Mhz => clk_50Mhz,
	ouput => ouput,
	reset => reset,
	sw => sw
	);

-- clk_50Mhz
t_prcs_clk_50Mhz: PROCESS
BEGIN
LOOP
	clk_50Mhz <= '0';
	WAIT FOR 10000 ps;
	clk_50Mhz <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_50Mhz;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
-- sw[2]
t_prcs_sw_2: PROCESS
BEGIN
	sw(2) <= '0';
WAIT;
END PROCESS t_prcs_sw_2;
-- sw[1]
t_prcs_sw_1: PROCESS
BEGIN
	sw(1) <= '0';
WAIT;
END PROCESS t_prcs_sw_1;
-- sw[0]
t_prcs_sw_0: PROCESS
BEGIN
	sw(0) <= '0';
WAIT;
END PROCESS t_prcs_sw_0;
END lab9_01_arch;
