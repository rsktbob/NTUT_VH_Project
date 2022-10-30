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
-- Generated on "10/20/2022 22:03:19"
                                                             
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
SIGNAL A : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Ctrol : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Result : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seg : STD_LOGIC_VECTOR(13 DOWNTO 0);
COMPONENT lab4_01
	PORT (
	A : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	Ctrol : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Result : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	seg : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : lab4_01
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Ctrol => Ctrol,
	Result => Result,
	seg => seg
	);
-- A[6]
t_prcs_A_6: PROCESS
BEGIN
	A(6) <= '0';
WAIT;
END PROCESS t_prcs_A_6;
-- A[5]
t_prcs_A_5: PROCESS
BEGIN
	A(5) <= '0';
WAIT;
END PROCESS t_prcs_A_5;
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
	A(4) <= '0';
WAIT;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '0';
	WAIT FOR 160000 ps;
	A(3) <= '1';
	WAIT FOR 80000 ps;
	A(3) <= '0';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '1';
	WAIT FOR 80000 ps;
	A(2) <= '0';
	WAIT FOR 80000 ps;
	A(2) <= '1';
	WAIT FOR 80000 ps;
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '1';
	WAIT FOR 80000 ps;
	A(1) <= '0';
	WAIT FOR 80000 ps;
	A(1) <= '1';
	WAIT FOR 80000 ps;
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '1';
	WAIT FOR 80000 ps;
	A(0) <= '0';
	WAIT FOR 80000 ps;
	A(0) <= '1';
	WAIT FOR 80000 ps;
	A(0) <= '0';
WAIT;
END PROCESS t_prcs_A_0;
-- B[6]
t_prcs_B_6: PROCESS
BEGIN
	B(6) <= '0';
WAIT;
END PROCESS t_prcs_B_6;
-- B[5]
t_prcs_B_5: PROCESS
BEGIN
	B(5) <= '0';
WAIT;
END PROCESS t_prcs_B_5;
-- B[4]
t_prcs_B_4: PROCESS
BEGIN
	B(4) <= '0';
WAIT;
END PROCESS t_prcs_B_4;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '0';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= '0';
	WAIT FOR 160000 ps;
	B(2) <= '1';
	WAIT FOR 80000 ps;
	B(2) <= '0';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	B(1) <= '0';
	WAIT FOR 160000 ps;
	B(1) <= '1';
	WAIT FOR 80000 ps;
	B(1) <= '0';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= '1';
	WAIT FOR 80000 ps;
	B(0) <= '0';
	WAIT FOR 80000 ps;
	B(0) <= '1';
	WAIT FOR 80000 ps;
	B(0) <= '0';
	WAIT FOR 240000 ps;
	B(0) <= '1';
	WAIT FOR 80000 ps;
	B(0) <= '0';
WAIT;
END PROCESS t_prcs_B_0;
-- Ctrol[3]
t_prcs_Ctrol_3: PROCESS
BEGIN
	Ctrol(3) <= '0';
	WAIT FOR 640000 ps;
	Ctrol(3) <= '1';
WAIT;
END PROCESS t_prcs_Ctrol_3;
-- Ctrol[2]
t_prcs_Ctrol_2: PROCESS
BEGIN
	Ctrol(2) <= '0';
	WAIT FOR 320000 ps;
	Ctrol(2) <= '1';
	WAIT FOR 320000 ps;
	Ctrol(2) <= '0';
	WAIT FOR 320000 ps;
	Ctrol(2) <= '1';
WAIT;
END PROCESS t_prcs_Ctrol_2;
-- Ctrol[1]
t_prcs_Ctrol_1: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		Ctrol(1) <= '0';
		WAIT FOR 160000 ps;
		Ctrol(1) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	Ctrol(1) <= '0';
WAIT;
END PROCESS t_prcs_Ctrol_1;
-- Ctrol[0]
t_prcs_Ctrol_0: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		Ctrol(0) <= '0';
		WAIT FOR 80000 ps;
		Ctrol(0) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	Ctrol(0) <= '0';
WAIT;
END PROCESS t_prcs_Ctrol_0;
END lab4_01_arch;
