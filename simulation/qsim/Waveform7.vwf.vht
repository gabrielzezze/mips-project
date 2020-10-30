-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/30/2020 17:26:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mips_project
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mips_project_vhd_vec_tst IS
END mips_project_vhd_vec_tst;
ARCHITECTURE mips_project_arch OF mips_project_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL FPGA_RESET_N : STD_LOGIC;
SIGNAL funct_out : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL op_code_out : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL saida_pc : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saida_regA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saida_regB : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saida_rom : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saida_ula : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT mips_project
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	FPGA_RESET_N : IN STD_LOGIC;
	funct_out : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	op_code_out : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	saida_pc : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saida_regA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saida_regB : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saida_rom : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saida_ula : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mips_project
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	FPGA_RESET_N => FPGA_RESET_N,
	funct_out => funct_out,
	KEY => KEY,
	op_code_out => op_code_out,
	saida_pc => saida_pc,
	saida_regA => saida_regA,
	saida_regB => saida_regB,
	saida_rom => saida_rom,
	saida_ula => saida_ula,
	SW => SW
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;
END mips_project_arch;
