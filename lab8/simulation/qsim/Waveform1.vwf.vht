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
-- Generated on "12/18/2022 15:48:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab8_01
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab8_01_vhd_vec_tst IS
END lab8_01_vhd_vec_tst;
ARCHITECTURE lab8_01_arch OF lab8_01_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL Data : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Data_seg0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Data_seg1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL op : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Rs : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Rs_seg0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Rs_seg1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Rt : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Rt_seg0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Rt_seg1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT lab8_01
	PORT (
	clk : IN STD_LOGIC;
	Data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Data_seg0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	Data_seg1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	op : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Rs : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Rs_seg0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	Rs_seg1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	Rt : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Rt_seg0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	Rt_seg1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : lab8_01
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	Data => Data,
	Data_seg0 => Data_seg0,
	Data_seg1 => Data_seg1,
	op => op,
	Rs => Rs,
	Rs_seg0 => Rs_seg0,
	Rs_seg1 => Rs_seg1,
	Rt => Rt,
	Rt_seg0 => Rt_seg0,
	Rt_seg1 => Rt_seg1
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
-- op[3]
t_prcs_op_3: PROCESS
BEGIN
	op(3) <= '0';
WAIT;
END PROCESS t_prcs_op_3;
-- op[2]
t_prcs_op_2: PROCESS
BEGIN
	op(2) <= '0';
WAIT;
END PROCESS t_prcs_op_2;
-- op[1]
t_prcs_op_1: PROCESS
BEGIN
	op(1) <= '1';
WAIT;
END PROCESS t_prcs_op_1;
-- op[0]
t_prcs_op_0: PROCESS
BEGIN
	op(0) <= '0';
WAIT;
END PROCESS t_prcs_op_0;
-- Rs[1]
t_prcs_Rs_1: PROCESS
BEGIN
	Rs(1) <= '1';
	WAIT FOR 90000 ps;
	Rs(1) <= '0';
WAIT;
END PROCESS t_prcs_Rs_1;
-- Rs[0]
t_prcs_Rs_0: PROCESS
BEGIN
	Rs(0) <= '0';
WAIT;
END PROCESS t_prcs_Rs_0;
-- Rt[1]
t_prcs_Rt_1: PROCESS
BEGIN
	Rt(1) <= '0';
	WAIT FOR 40000 ps;
	Rt(1) <= '1';
	WAIT FOR 50000 ps;
	Rt(1) <= '0';
WAIT;
END PROCESS t_prcs_Rt_1;
-- Rt[0]
t_prcs_Rt_0: PROCESS
BEGIN
	Rt(0) <= '0';
	WAIT FOR 40000 ps;
	Rt(0) <= '1';
	WAIT FOR 50000 ps;
	Rt(0) <= '0';
WAIT;
END PROCESS t_prcs_Rt_0;
-- Data[7]
t_prcs_Data_7: PROCESS
BEGIN
	Data(7) <= '0';
WAIT;
END PROCESS t_prcs_Data_7;
-- Data[6]
t_prcs_Data_6: PROCESS
BEGIN
	Data(6) <= '1';
WAIT;
END PROCESS t_prcs_Data_6;
-- Data[5]
t_prcs_Data_5: PROCESS
BEGIN
	Data(5) <= '0';
WAIT;
END PROCESS t_prcs_Data_5;
-- Data[4]
t_prcs_Data_4: PROCESS
BEGIN
	Data(4) <= '0';
WAIT;
END PROCESS t_prcs_Data_4;
-- Data[3]
t_prcs_Data_3: PROCESS
BEGIN
	Data(3) <= '1';
WAIT;
END PROCESS t_prcs_Data_3;
-- Data[2]
t_prcs_Data_2: PROCESS
BEGIN
	Data(2) <= '1';
WAIT;
END PROCESS t_prcs_Data_2;
-- Data[1]
t_prcs_Data_1: PROCESS
BEGIN
	Data(1) <= '0';
WAIT;
END PROCESS t_prcs_Data_1;
-- Data[0]
t_prcs_Data_0: PROCESS
BEGIN
	Data(0) <= '1';
WAIT;
END PROCESS t_prcs_Data_0;
END lab8_01_arch;
