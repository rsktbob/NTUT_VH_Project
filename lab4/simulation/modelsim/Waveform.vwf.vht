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
-- Generated on "10/18/2022 16:59:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab4_01
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab4_01_vhd_vec_tst IS
END lab4_01_vhd_vec_tst;
ARCHITECTURE lab4_01_arch OF lab4_01_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL Cin : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL Ctrol : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL less : STD_LOGIC;
SIGNAL Result : STD_LOGIC;
COMPONENT lab4_01
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	Cin : IN STD_LOGIC;
	Cout : OUT STD_LOGIC;
	Ctrol : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	less : IN STD_LOGIC;
	Result : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab4_01
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	Cin => Cin,
	Cout => Cout,
	Ctrol => Ctrol,
	less => less,
	Result => Result
	);

-- a
t_prcs_a: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		a <= '0';
		WAIT FOR 40000 ps;
		a <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	a <= '0';
WAIT;
END PROCESS t_prcs_a;

-- b
t_prcs_b: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		b <= '0';
		WAIT FOR 80000 ps;
		b <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	b <= '0';
WAIT;
END PROCESS t_prcs_b;

-- Cin
t_prcs_Cin: PROCESS
BEGIN
	Cin <= '0';
WAIT;
END PROCESS t_prcs_Cin;
-- Ctrol[3]
t_prcs_Ctrol_3: PROCESS
BEGIN
	Ctrol(3) <= '0';
WAIT;
END PROCESS t_prcs_Ctrol_3;
-- Ctrol[2]
t_prcs_Ctrol_2: PROCESS
BEGIN
	Ctrol(2) <= '0';
	WAIT FOR 640000 ps;
	Ctrol(2) <= '1';
WAIT;
END PROCESS t_prcs_Ctrol_2;
-- Ctrol[1]
t_prcs_Ctrol_1: PROCESS
BEGIN
	Ctrol(1) <= '0';
	WAIT FOR 320000 ps;
	Ctrol(1) <= '1';
	WAIT FOR 320000 ps;
	Ctrol(1) <= '0';
	WAIT FOR 320000 ps;
	Ctrol(1) <= '1';
WAIT;
END PROCESS t_prcs_Ctrol_1;
-- Ctrol[0]
t_prcs_Ctrol_0: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		Ctrol(0) <= '0';
		WAIT FOR 160000 ps;
		Ctrol(0) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	Ctrol(0) <= '0';
WAIT;
END PROCESS t_prcs_Ctrol_0;

-- less
t_prcs_less: PROCESS
BEGIN
	less <= '0';
WAIT;
END PROCESS t_prcs_less;
END lab4_01_arch;
