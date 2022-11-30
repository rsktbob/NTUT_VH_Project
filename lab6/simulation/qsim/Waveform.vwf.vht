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
-- Generated on "11/30/2022 16:07:43"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FSM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FSM_vhd_vec_tst IS
END FSM_vhd_vec_tst;
ARCHITECTURE FSM_arch OF FSM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL output : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL w : STD_LOGIC;
COMPONENT FSM
	PORT (
	clk : IN STD_LOGIC;
	output : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	reset : IN STD_LOGIC;
	w : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FSM
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	output => output,
	reset => reset,
	w => w
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 30000 ps;
	reset <= '0';
	WAIT FOR 320000 ps;
	reset <= '1';
	WAIT FOR 40000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- w
t_prcs_w: PROCESS
BEGIN
	w <= '1';
	WAIT FOR 200000 ps;
	w <= '0';
	WAIT FOR 260000 ps;
	w <= '1';
	WAIT FOR 60000 ps;
	w <= '0';
	WAIT FOR 20000 ps;
	w <= '1';
WAIT;
END PROCESS t_prcs_w;
END FSM_arch;
