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
-- Generated on "11/03/2022 17:59:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab5_01
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab5_01_vhd_vec_tst IS
END lab5_01_vhd_vec_tst;
ARCHITECTURE lab5_01_arch OF lab5_01_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clear : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL di : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL load : STD_LOGIC;
SIGNAL lr_sel : STD_LOGIC;
SIGNAL qo : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL sdi : STD_LOGIC;
COMPONENT lab5_01
	PORT (
	clear : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	di : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	load : IN STD_LOGIC;
	lr_sel : IN STD_LOGIC;
	qo : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	sdi : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab5_01
	PORT MAP (
-- list connections between master ports and signals
	clear => clear,
	clk => clk,
	di => di,
	load => load,
	lr_sel => lr_sel,
	qo => qo,
	sdi => sdi
	);

-- clear
t_prcs_clear: PROCESS
BEGIN
	clear <= '0';
	WAIT FOR 50000 ps;
	clear <= '1';
	WAIT FOR 30000 ps;
	clear <= '0';
WAIT;
END PROCESS t_prcs_clear;

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
-- di[7]
t_prcs_di_7: PROCESS
BEGIN
	di(7) <= '0';
	WAIT FOR 20000 ps;
	di(7) <= '1';
	WAIT FOR 60000 ps;
	di(7) <= '0';
WAIT;
END PROCESS t_prcs_di_7;
-- di[6]
t_prcs_di_6: PROCESS
BEGIN
	di(6) <= '0';
	WAIT FOR 20000 ps;
	di(6) <= '1';
	WAIT FOR 60000 ps;
	di(6) <= '0';
WAIT;
END PROCESS t_prcs_di_6;
-- di[5]
t_prcs_di_5: PROCESS
BEGIN
	di(5) <= '0';
	WAIT FOR 20000 ps;
	di(5) <= '1';
	WAIT FOR 60000 ps;
	di(5) <= '0';
WAIT;
END PROCESS t_prcs_di_5;
-- di[4]
t_prcs_di_4: PROCESS
BEGIN
	di(4) <= '1';
	WAIT FOR 30000 ps;
	di(4) <= '0';
	WAIT FOR 40000 ps;
	di(4) <= '1';
	WAIT FOR 60000 ps;
	di(4) <= '0';
WAIT;
END PROCESS t_prcs_di_4;
-- di[3]
t_prcs_di_3: PROCESS
BEGIN
	di(3) <= '1';
	WAIT FOR 30000 ps;
	di(3) <= '0';
	WAIT FOR 40000 ps;
	di(3) <= '1';
	WAIT FOR 60000 ps;
	di(3) <= '0';
WAIT;
END PROCESS t_prcs_di_3;
-- di[2]
t_prcs_di_2: PROCESS
BEGIN
	di(2) <= '1';
	WAIT FOR 30000 ps;
	di(2) <= '0';
	WAIT FOR 40000 ps;
	di(2) <= '1';
	WAIT FOR 60000 ps;
	di(2) <= '0';
WAIT;
END PROCESS t_prcs_di_2;
-- di[1]
t_prcs_di_1: PROCESS
BEGIN
	di(1) <= '1';
	WAIT FOR 30000 ps;
	di(1) <= '0';
	WAIT FOR 40000 ps;
	di(1) <= '1';
	WAIT FOR 60000 ps;
	di(1) <= '0';
WAIT;
END PROCESS t_prcs_di_1;
-- di[0]
t_prcs_di_0: PROCESS
BEGIN
	di(0) <= '1';
	WAIT FOR 30000 ps;
	di(0) <= '0';
	WAIT FOR 40000 ps;
	di(0) <= '1';
	WAIT FOR 60000 ps;
	di(0) <= '0';
WAIT;
END PROCESS t_prcs_di_0;

-- load
t_prcs_load: PROCESS
BEGIN
	load <= '1';
	WAIT FOR 130000 ps;
	load <= '0';
WAIT;
END PROCESS t_prcs_load;

-- lr_sel
t_prcs_lr_sel: PROCESS
BEGIN
	lr_sel <= '1';
	WAIT FOR 640000 ps;
	lr_sel <= '0';
	WAIT FOR 160000 ps;
	lr_sel <= '1';
	WAIT FOR 160000 ps;
	lr_sel <= '0';
WAIT;
END PROCESS t_prcs_lr_sel;

-- sdi
t_prcs_sdi: PROCESS
BEGIN
	sdi <= '1';
	WAIT FOR 350000 ps;
	sdi <= '0';
WAIT;
END PROCESS t_prcs_sdi;
END lab5_01_arch;
