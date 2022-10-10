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
-- Generated on "10/04/2022 17:30:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab3_01
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab3_01_vhd_vec_tst IS
END lab3_01_vhd_vec_tst;
ARCHITECTURE lab3_01_arch OF lab3_01_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL seg : STD_LOGIC_VECTOR(13 DOWNTO 0);
COMPONENT lab3_01
	PORT (
	A0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	B0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	seg : BUFFER STD_LOGIC_VECTOR(13 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : lab3_01
	PORT MAP (
-- list connections between master ports and signals
	A0 => A0,
	B0 => B0,
	seg => seg
	);
-- A0[3]
t_prcs_A0_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		A0(3) <= '0';
		WAIT FOR 80000 ps;
		A0(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	A0(3) <= '0';
WAIT;
END PROCESS t_prcs_A0_3;
-- A0[2]
t_prcs_A0_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		A0(2) <= '0';
		WAIT FOR 40000 ps;
		A0(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	A0(2) <= '0';
WAIT;
END PROCESS t_prcs_A0_2;
-- A0[1]
t_prcs_A0_1: PROCESS
BEGIN
LOOP
	A0(1) <= '0';
	WAIT FOR 20000 ps;
	A0(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A0_1;
-- A0[0]
t_prcs_A0_0: PROCESS
BEGIN
LOOP
	A0(0) <= '0';
	WAIT FOR 10000 ps;
	A0(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A0_0;
-- B0[3]
t_prcs_B0_3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		B0(3) <= '0';
		WAIT FOR 160000 ps;
		B0(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	B0(3) <= '0';
WAIT;
END PROCESS t_prcs_B0_3;
-- B0[2]
t_prcs_B0_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		B0(2) <= '0';
		WAIT FOR 80000 ps;
		B0(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	B0(2) <= '0';
WAIT;
END PROCESS t_prcs_B0_2;
-- B0[1]
t_prcs_B0_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		B0(1) <= '0';
		WAIT FOR 40000 ps;
		B0(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	B0(1) <= '0';
WAIT;
END PROCESS t_prcs_B0_1;
-- B0[0]
t_prcs_B0_0: PROCESS
BEGIN
LOOP
	B0(0) <= '0';
	WAIT FOR 20000 ps;
	B0(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B0_0;
END lab3_01_arch;
