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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/30/2020 17:50:09"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mips_project IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	FPGA_RESET_N : IN std_logic;
	saida_ula : BUFFER std_logic_vector(31 DOWNTO 0);
	saida_regA : BUFFER std_logic_vector(31 DOWNTO 0);
	saida_regB : BUFFER std_logic_vector(31 DOWNTO 0);
	funct_out : BUFFER std_logic_vector(5 DOWNTO 0);
	op_code_out : BUFFER std_logic_vector(5 DOWNTO 0);
	saida_rom : BUFFER std_logic_vector(31 DOWNTO 0);
	saida_pc : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END mips_project;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[0]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[1]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[4]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[5]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[6]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[7]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[8]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[9]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[10]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[11]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[12]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[13]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[14]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[15]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[16]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[17]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[18]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[19]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[20]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[21]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[22]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[23]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[24]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[25]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[26]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[27]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[28]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[29]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[30]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ula[31]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[0]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[1]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[3]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[4]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[5]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[6]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[7]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[8]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[9]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[10]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[11]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[12]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[13]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[14]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[15]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[16]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[17]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[18]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[19]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[20]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[21]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[22]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[23]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[24]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[25]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[26]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[27]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[28]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[29]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[30]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regA[31]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[0]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[1]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[5]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[7]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[8]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[9]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[10]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[11]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[12]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[13]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[14]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[15]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[16]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[17]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[18]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[19]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[20]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[21]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[22]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[23]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[24]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[25]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[26]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[27]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[28]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[29]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[30]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_regB[31]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct_out[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct_out[1]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct_out[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct_out[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct_out[4]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct_out[5]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_code_out[0]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_code_out[1]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_code_out[2]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_code_out[3]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_code_out[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_code_out[5]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[0]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[1]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[4]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[5]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[7]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[8]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[9]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[10]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[11]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[12]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[13]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[14]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[15]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[16]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[17]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[18]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[19]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[20]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[21]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[22]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[23]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[24]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[25]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[26]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[27]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[28]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[29]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[30]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_rom[31]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[0]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[1]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[4]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[5]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[6]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[7]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[8]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[9]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[10]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[11]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[12]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[13]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[14]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[15]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[16]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[17]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[18]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[19]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[20]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[21]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[22]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[23]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[24]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[25]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[26]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[27]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[28]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[29]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[30]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_pc[31]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF mips_project IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_saida_ula : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saida_regA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saida_regB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_funct_out : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_op_code_out : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_saida_rom : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saida_pc : std_logic_vector(31 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \FD|PC|DOUT[2]~0_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~1_sumout\ : std_logic;
SIGNAL \FD|somaUm|Add0~2\ : std_logic;
SIGNAL \FD|somaUm|Add0~5_sumout\ : std_logic;
SIGNAL \FD|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~6\ : std_logic;
SIGNAL \FD|somaUm|Add0~9_sumout\ : std_logic;
SIGNAL \FD|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~10\ : std_logic;
SIGNAL \FD|somaUm|Add0~17_sumout\ : std_logic;
SIGNAL \FD|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~18\ : std_logic;
SIGNAL \FD|somaUm|Add0~13_sumout\ : std_logic;
SIGNAL \FD|ROM|memROM~2_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~1_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~0_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1127_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~294_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~38DUPLICATE_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1126_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~326_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1062_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~38_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1094_combout\ : std_logic;
SIGNAL \FD|ula|Add0~130_cout\ : std_logic;
SIGNAL \FD|ula|Add0~1_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1128_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~327_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~39_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~295_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1095_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1063_combout\ : std_logic;
SIGNAL \FD|ula|Add0~2\ : std_logic;
SIGNAL \FD|ula|Add0~5_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~328_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~40_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~296_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1064_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1096_combout\ : std_logic;
SIGNAL \FD|ula|Add0~6\ : std_logic;
SIGNAL \FD|ula|Add0~9_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~329_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~41_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~297_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1065_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1097_combout\ : std_logic;
SIGNAL \FD|ula|Add0~10\ : std_logic;
SIGNAL \FD|ula|Add0~13_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~298_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~42_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~330_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1066_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1098_combout\ : std_logic;
SIGNAL \FD|ula|Add0~14\ : std_logic;
SIGNAL \FD|ula|Add0~17_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~43_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~299_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~331_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1067_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1099_combout\ : std_logic;
SIGNAL \FD|ula|Add0~18\ : std_logic;
SIGNAL \FD|ula|Add0~21_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~300_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~44_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~332_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1100_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1068_combout\ : std_logic;
SIGNAL \FD|ula|Add0~22\ : std_logic;
SIGNAL \FD|ula|Add0~25_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~301_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~45_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~333_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1069_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1101_combout\ : std_logic;
SIGNAL \FD|ula|Add0~26\ : std_logic;
SIGNAL \FD|ula|Add0~29_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~46_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~302_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~334_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1070_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1102_combout\ : std_logic;
SIGNAL \FD|ula|Add0~30\ : std_logic;
SIGNAL \FD|ula|Add0~33_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~335_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~47_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~303_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1071_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1103_combout\ : std_logic;
SIGNAL \FD|ula|Add0~34\ : std_logic;
SIGNAL \FD|ula|Add0~37_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~304_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~336_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~48_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1104_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1072_combout\ : std_logic;
SIGNAL \FD|ula|Add0~38\ : std_logic;
SIGNAL \FD|ula|Add0~41_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~49_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~337_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~305_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1105_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1073_combout\ : std_logic;
SIGNAL \FD|ula|Add0~42\ : std_logic;
SIGNAL \FD|ula|Add0~45_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~306_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~50_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~338_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1106_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1074_combout\ : std_logic;
SIGNAL \FD|ula|Add0~46\ : std_logic;
SIGNAL \FD|ula|Add0~49_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~307_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~339_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~51_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1075_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1107_combout\ : std_logic;
SIGNAL \FD|ula|Add0~50\ : std_logic;
SIGNAL \FD|ula|Add0~53_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~308_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~52_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~340_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1108_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1076_combout\ : std_logic;
SIGNAL \FD|ula|Add0~54\ : std_logic;
SIGNAL \FD|ula|Add0~57_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~53_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~309_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~341_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1109_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1077_combout\ : std_logic;
SIGNAL \FD|ula|Add0~58\ : std_logic;
SIGNAL \FD|ula|Add0~61_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~342_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~54_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~310_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1110_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1078_combout\ : std_logic;
SIGNAL \FD|ula|Add0~62\ : std_logic;
SIGNAL \FD|ula|Add0~65_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~343_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~55_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~311_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1111_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1079_combout\ : std_logic;
SIGNAL \FD|ula|Add0~66\ : std_logic;
SIGNAL \FD|ula|Add0~69_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~312_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~56_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~344_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1112_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1080_combout\ : std_logic;
SIGNAL \FD|ula|Add0~70\ : std_logic;
SIGNAL \FD|ula|Add0~73_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~345_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~313_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~57_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1081_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1113_combout\ : std_logic;
SIGNAL \FD|ula|Add0~74\ : std_logic;
SIGNAL \FD|ula|Add0~77_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~58_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~314_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~346_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1082_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1114_combout\ : std_logic;
SIGNAL \FD|ula|Add0~78\ : std_logic;
SIGNAL \FD|ula|Add0~81_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~59_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~347_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~315_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1115_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~59DUPLICATE_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1083_combout\ : std_logic;
SIGNAL \FD|ula|Add0~82\ : std_logic;
SIGNAL \FD|ula|Add0~85_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~316_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~348_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~60_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1084_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1116_combout\ : std_logic;
SIGNAL \FD|ula|Add0~86\ : std_logic;
SIGNAL \FD|ula|Add0~89_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~349_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~61_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~317_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1085_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1117_combout\ : std_logic;
SIGNAL \FD|ula|Add0~90\ : std_logic;
SIGNAL \FD|ula|Add0~93_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~318_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~350_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~62_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1086_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1118_combout\ : std_logic;
SIGNAL \FD|ula|Add0~94\ : std_logic;
SIGNAL \FD|ula|Add0~97_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~319_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~351_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~63_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1119_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1087_combout\ : std_logic;
SIGNAL \FD|ula|Add0~98\ : std_logic;
SIGNAL \FD|ula|Add0~101_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~352_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~64_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~320_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1088_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1120_combout\ : std_logic;
SIGNAL \FD|ula|Add0~102\ : std_logic;
SIGNAL \FD|ula|Add0~105_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~321_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~65_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~353_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1089_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1121_combout\ : std_logic;
SIGNAL \FD|ula|Add0~106\ : std_logic;
SIGNAL \FD|ula|Add0~109_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~322_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~66_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~354_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1122_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1090_combout\ : std_logic;
SIGNAL \FD|ula|Add0~110\ : std_logic;
SIGNAL \FD|ula|Add0~113_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~355_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~67_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~323_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1091_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1123_combout\ : std_logic;
SIGNAL \FD|ula|Add0~114\ : std_logic;
SIGNAL \FD|ula|Add0~117_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~356_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~68_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~324_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1124_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1092_combout\ : std_logic;
SIGNAL \FD|ula|Add0~118\ : std_logic;
SIGNAL \FD|ula|Add0~121_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~325_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~69_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~357_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1093_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1125_combout\ : std_logic;
SIGNAL \FD|ula|Add0~122\ : std_logic;
SIGNAL \FD|ula|Add0~125_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[0]~0_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[1]~1_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[2]~2_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[3]~3_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[4]~4_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[5]~5_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[6]~6_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[7]~7_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[8]~8_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[9]~9_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[10]~10_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[11]~11_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[12]~12_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[13]~13_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[14]~14_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[15]~15_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[16]~16_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[17]~17_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[18]~18_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[19]~19_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[20]~20_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[21]~21_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[22]~22_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[23]~23_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[24]~24_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[25]~25_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[26]~26_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[27]~27_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[28]~28_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[29]~29_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[30]~30_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaA[31]~31_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[0]~0_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[1]~1_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[2]~2_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[3]~3_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[4]~4_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[5]~5_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[6]~6_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[7]~7_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[8]~8_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[9]~9_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[10]~10_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[11]~11_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[12]~12_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[13]~13_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[14]~14_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[15]~15_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[16]~16_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[17]~17_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[18]~18_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[19]~19_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[20]~20_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[21]~21_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[22]~22_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[23]~23_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[24]~24_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[25]~25_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[26]~26_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[27]~27_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[28]~28_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[29]~29_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[30]~30_combout\ : std_logic;
SIGNAL \FD|banco_registradores|saidaB[31]~31_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~14\ : std_logic;
SIGNAL \FD|somaUm|Add0~21_sumout\ : std_logic;
SIGNAL \FD|somaUm|Add0~22\ : std_logic;
SIGNAL \FD|somaUm|Add0~25_sumout\ : std_logic;
SIGNAL \FD|PC|DOUT[10]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~26\ : std_logic;
SIGNAL \FD|somaUm|Add0~29_sumout\ : std_logic;
SIGNAL \FD|PC|DOUT[11]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~30\ : std_logic;
SIGNAL \FD|somaUm|Add0~33_sumout\ : std_logic;
SIGNAL \FD|PC|DOUT[12]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~34\ : std_logic;
SIGNAL \FD|somaUm|Add0~37_sumout\ : std_logic;
SIGNAL \FD|PC|DOUT[13]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~38\ : std_logic;
SIGNAL \FD|somaUm|Add0~41_sumout\ : std_logic;
SIGNAL \FD|somaUm|Add0~42\ : std_logic;
SIGNAL \FD|somaUm|Add0~45_sumout\ : std_logic;
SIGNAL \FD|somaUm|Add0~46\ : std_logic;
SIGNAL \FD|somaUm|Add0~49_sumout\ : std_logic;
SIGNAL \FD|somaUm|Add0~50\ : std_logic;
SIGNAL \FD|somaUm|Add0~53_sumout\ : std_logic;
SIGNAL \FD|somaUm|Add0~54\ : std_logic;
SIGNAL \FD|somaUm|Add0~57_sumout\ : std_logic;
SIGNAL \FD|PC|DOUT[18]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~58\ : std_logic;
SIGNAL \FD|somaUm|Add0~61_sumout\ : std_logic;
SIGNAL \FD|somaUm|Add0~62\ : std_logic;
SIGNAL \FD|somaUm|Add0~65_sumout\ : std_logic;
SIGNAL \FD|PC|DOUT[20]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~66\ : std_logic;
SIGNAL \FD|somaUm|Add0~69_sumout\ : std_logic;
SIGNAL \FD|PC|DOUT[21]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~70\ : std_logic;
SIGNAL \FD|somaUm|Add0~73_sumout\ : std_logic;
SIGNAL \FD|somaUm|Add0~74\ : std_logic;
SIGNAL \FD|somaUm|Add0~77_sumout\ : std_logic;
SIGNAL \FD|somaUm|Add0~78\ : std_logic;
SIGNAL \FD|somaUm|Add0~81_sumout\ : std_logic;
SIGNAL \FD|PC|DOUT[24]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~82\ : std_logic;
SIGNAL \FD|somaUm|Add0~85_sumout\ : std_logic;
SIGNAL \FD|PC|DOUT[25]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~86\ : std_logic;
SIGNAL \FD|somaUm|Add0~89_sumout\ : std_logic;
SIGNAL \FD|PC|DOUT[26]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~90\ : std_logic;
SIGNAL \FD|somaUm|Add0~93_sumout\ : std_logic;
SIGNAL \FD|PC|DOUT[27]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~94\ : std_logic;
SIGNAL \FD|somaUm|Add0~97_sumout\ : std_logic;
SIGNAL \FD|PC|DOUT[28]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~98\ : std_logic;
SIGNAL \FD|somaUm|Add0~101_sumout\ : std_logic;
SIGNAL \FD|PC|DOUT[29]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~102\ : std_logic;
SIGNAL \FD|somaUm|Add0~105_sumout\ : std_logic;
SIGNAL \FD|somaUm|Add0~106\ : std_logic;
SIGNAL \FD|somaUm|Add0~109_sumout\ : std_logic;
SIGNAL \FD|PC|DOUT[31]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~110\ : std_logic;
SIGNAL \FD|somaUm|Add0~113_sumout\ : std_logic;
SIGNAL \FD|PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|PC|ALT_INV_DOUT[31]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[29]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[28]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[27]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[26]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[25]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[24]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[21]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[20]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[18]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[13]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[12]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[11]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[10]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~59DUPLICATE_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~38DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT\ : std_logic_vector(30 DOWNTO 2);
SIGNAL \FD|ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1125_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1124_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1123_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1122_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1121_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1120_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1119_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1118_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1117_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1116_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1115_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1114_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1113_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1112_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1111_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1110_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1109_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1108_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1107_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1106_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1105_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1104_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1103_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1102_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1101_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1100_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1099_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1098_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1097_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1096_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1095_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1094_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1093_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~325_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~357_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1092_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~324_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~356_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1091_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~323_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~355_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1090_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~322_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~354_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1089_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~321_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~353_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1088_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~320_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~352_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1087_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~319_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~351_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1086_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~318_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~350_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1085_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~317_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~349_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1084_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~316_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~348_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1083_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~315_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~347_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1082_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~314_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~346_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1081_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~313_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~345_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1080_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~312_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~344_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1079_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~311_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~343_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1078_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~310_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~342_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1077_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~309_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~341_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1076_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~308_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~340_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1075_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~307_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~339_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1074_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~306_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~338_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1073_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~305_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~337_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1072_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~304_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~336_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1071_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~303_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~335_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1070_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~302_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~334_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1069_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~301_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~333_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1068_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~300_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~332_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1067_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~299_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~331_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1066_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~298_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~330_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1065_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~297_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~329_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1064_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~296_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~328_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1063_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~295_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~327_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~294_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~326_q\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
ww_FPGA_RESET_N <= FPGA_RESET_N;
saida_ula <= ww_saida_ula;
saida_regA <= ww_saida_regA;
saida_regB <= ww_saida_regB;
funct_out <= ww_funct_out;
op_code_out <= ww_op_code_out;
saida_rom <= ww_saida_rom;
saida_pc <= ww_saida_pc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\FD|PC|ALT_INV_DOUT[31]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[31]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[29]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[29]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[28]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[28]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[27]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[27]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[26]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[26]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[25]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[25]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[24]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[24]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[21]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[21]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[20]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[20]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[18]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[18]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[13]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[13]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[12]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[12]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[11]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[11]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[10]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[10]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[8]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[6]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[5]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[4]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[3]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[2]~DUPLICATE_q\;
\FD|banco_registradores|ALT_INV_registrador~59DUPLICATE_q\ <= NOT \FD|banco_registradores|registrador~59DUPLICATE_q\;
\FD|banco_registradores|ALT_INV_registrador~38DUPLICATE_q\ <= NOT \FD|banco_registradores|registrador~38DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT\(30) <= NOT \FD|PC|DOUT\(30);
\FD|PC|ALT_INV_DOUT\(23) <= NOT \FD|PC|DOUT\(23);
\FD|PC|ALT_INV_DOUT\(22) <= NOT \FD|PC|DOUT\(22);
\FD|PC|ALT_INV_DOUT\(19) <= NOT \FD|PC|DOUT\(19);
\FD|PC|ALT_INV_DOUT\(17) <= NOT \FD|PC|DOUT\(17);
\FD|PC|ALT_INV_DOUT\(16) <= NOT \FD|PC|DOUT\(16);
\FD|PC|ALT_INV_DOUT\(15) <= NOT \FD|PC|DOUT\(15);
\FD|PC|ALT_INV_DOUT\(14) <= NOT \FD|PC|DOUT\(14);
\FD|PC|ALT_INV_DOUT\(9) <= NOT \FD|PC|DOUT\(9);
\FD|ROM|ALT_INV_memROM~2_combout\ <= NOT \FD|ROM|memROM~2_combout\;
\FD|ROM|ALT_INV_memROM~1_combout\ <= NOT \FD|ROM|memROM~1_combout\;
\FD|banco_registradores|ALT_INV_registrador~1125_combout\ <= NOT \FD|banco_registradores|registrador~1125_combout\;
\FD|banco_registradores|ALT_INV_registrador~1124_combout\ <= NOT \FD|banco_registradores|registrador~1124_combout\;
\FD|banco_registradores|ALT_INV_registrador~1123_combout\ <= NOT \FD|banco_registradores|registrador~1123_combout\;
\FD|banco_registradores|ALT_INV_registrador~1122_combout\ <= NOT \FD|banco_registradores|registrador~1122_combout\;
\FD|banco_registradores|ALT_INV_registrador~1121_combout\ <= NOT \FD|banco_registradores|registrador~1121_combout\;
\FD|banco_registradores|ALT_INV_registrador~1120_combout\ <= NOT \FD|banco_registradores|registrador~1120_combout\;
\FD|banco_registradores|ALT_INV_registrador~1119_combout\ <= NOT \FD|banco_registradores|registrador~1119_combout\;
\FD|banco_registradores|ALT_INV_registrador~1118_combout\ <= NOT \FD|banco_registradores|registrador~1118_combout\;
\FD|banco_registradores|ALT_INV_registrador~1117_combout\ <= NOT \FD|banco_registradores|registrador~1117_combout\;
\FD|banco_registradores|ALT_INV_registrador~1116_combout\ <= NOT \FD|banco_registradores|registrador~1116_combout\;
\FD|banco_registradores|ALT_INV_registrador~1115_combout\ <= NOT \FD|banco_registradores|registrador~1115_combout\;
\FD|banco_registradores|ALT_INV_registrador~1114_combout\ <= NOT \FD|banco_registradores|registrador~1114_combout\;
\FD|banco_registradores|ALT_INV_registrador~1113_combout\ <= NOT \FD|banco_registradores|registrador~1113_combout\;
\FD|banco_registradores|ALT_INV_registrador~1112_combout\ <= NOT \FD|banco_registradores|registrador~1112_combout\;
\FD|banco_registradores|ALT_INV_registrador~1111_combout\ <= NOT \FD|banco_registradores|registrador~1111_combout\;
\FD|banco_registradores|ALT_INV_registrador~1110_combout\ <= NOT \FD|banco_registradores|registrador~1110_combout\;
\FD|banco_registradores|ALT_INV_registrador~1109_combout\ <= NOT \FD|banco_registradores|registrador~1109_combout\;
\FD|banco_registradores|ALT_INV_registrador~1108_combout\ <= NOT \FD|banco_registradores|registrador~1108_combout\;
\FD|banco_registradores|ALT_INV_registrador~1107_combout\ <= NOT \FD|banco_registradores|registrador~1107_combout\;
\FD|banco_registradores|ALT_INV_registrador~1106_combout\ <= NOT \FD|banco_registradores|registrador~1106_combout\;
\FD|banco_registradores|ALT_INV_registrador~1105_combout\ <= NOT \FD|banco_registradores|registrador~1105_combout\;
\FD|banco_registradores|ALT_INV_registrador~1104_combout\ <= NOT \FD|banco_registradores|registrador~1104_combout\;
\FD|banco_registradores|ALT_INV_registrador~1103_combout\ <= NOT \FD|banco_registradores|registrador~1103_combout\;
\FD|banco_registradores|ALT_INV_registrador~1102_combout\ <= NOT \FD|banco_registradores|registrador~1102_combout\;
\FD|banco_registradores|ALT_INV_registrador~1101_combout\ <= NOT \FD|banco_registradores|registrador~1101_combout\;
\FD|banco_registradores|ALT_INV_registrador~1100_combout\ <= NOT \FD|banco_registradores|registrador~1100_combout\;
\FD|banco_registradores|ALT_INV_registrador~1099_combout\ <= NOT \FD|banco_registradores|registrador~1099_combout\;
\FD|banco_registradores|ALT_INV_registrador~1098_combout\ <= NOT \FD|banco_registradores|registrador~1098_combout\;
\FD|banco_registradores|ALT_INV_registrador~1097_combout\ <= NOT \FD|banco_registradores|registrador~1097_combout\;
\FD|banco_registradores|ALT_INV_registrador~1096_combout\ <= NOT \FD|banco_registradores|registrador~1096_combout\;
\FD|banco_registradores|ALT_INV_registrador~1095_combout\ <= NOT \FD|banco_registradores|registrador~1095_combout\;
\FD|banco_registradores|ALT_INV_registrador~1094_combout\ <= NOT \FD|banco_registradores|registrador~1094_combout\;
\FD|banco_registradores|ALT_INV_registrador~1093_combout\ <= NOT \FD|banco_registradores|registrador~1093_combout\;
\FD|banco_registradores|ALT_INV_registrador~325_q\ <= NOT \FD|banco_registradores|registrador~325_q\;
\FD|banco_registradores|ALT_INV_registrador~357_q\ <= NOT \FD|banco_registradores|registrador~357_q\;
\FD|banco_registradores|ALT_INV_registrador~1092_combout\ <= NOT \FD|banco_registradores|registrador~1092_combout\;
\FD|banco_registradores|ALT_INV_registrador~324_q\ <= NOT \FD|banco_registradores|registrador~324_q\;
\FD|banco_registradores|ALT_INV_registrador~356_q\ <= NOT \FD|banco_registradores|registrador~356_q\;
\FD|banco_registradores|ALT_INV_registrador~1091_combout\ <= NOT \FD|banco_registradores|registrador~1091_combout\;
\FD|banco_registradores|ALT_INV_registrador~323_q\ <= NOT \FD|banco_registradores|registrador~323_q\;
\FD|banco_registradores|ALT_INV_registrador~355_q\ <= NOT \FD|banco_registradores|registrador~355_q\;
\FD|banco_registradores|ALT_INV_registrador~1090_combout\ <= NOT \FD|banco_registradores|registrador~1090_combout\;
\FD|banco_registradores|ALT_INV_registrador~322_q\ <= NOT \FD|banco_registradores|registrador~322_q\;
\FD|banco_registradores|ALT_INV_registrador~354_q\ <= NOT \FD|banco_registradores|registrador~354_q\;
\FD|banco_registradores|ALT_INV_registrador~1089_combout\ <= NOT \FD|banco_registradores|registrador~1089_combout\;
\FD|banco_registradores|ALT_INV_registrador~321_q\ <= NOT \FD|banco_registradores|registrador~321_q\;
\FD|banco_registradores|ALT_INV_registrador~353_q\ <= NOT \FD|banco_registradores|registrador~353_q\;
\FD|banco_registradores|ALT_INV_registrador~1088_combout\ <= NOT \FD|banco_registradores|registrador~1088_combout\;
\FD|banco_registradores|ALT_INV_registrador~320_q\ <= NOT \FD|banco_registradores|registrador~320_q\;
\FD|banco_registradores|ALT_INV_registrador~352_q\ <= NOT \FD|banco_registradores|registrador~352_q\;
\FD|banco_registradores|ALT_INV_registrador~1087_combout\ <= NOT \FD|banco_registradores|registrador~1087_combout\;
\FD|banco_registradores|ALT_INV_registrador~319_q\ <= NOT \FD|banco_registradores|registrador~319_q\;
\FD|banco_registradores|ALT_INV_registrador~351_q\ <= NOT \FD|banco_registradores|registrador~351_q\;
\FD|banco_registradores|ALT_INV_registrador~1086_combout\ <= NOT \FD|banco_registradores|registrador~1086_combout\;
\FD|banco_registradores|ALT_INV_registrador~318_q\ <= NOT \FD|banco_registradores|registrador~318_q\;
\FD|banco_registradores|ALT_INV_registrador~350_q\ <= NOT \FD|banco_registradores|registrador~350_q\;
\FD|banco_registradores|ALT_INV_registrador~1085_combout\ <= NOT \FD|banco_registradores|registrador~1085_combout\;
\FD|banco_registradores|ALT_INV_registrador~317_q\ <= NOT \FD|banco_registradores|registrador~317_q\;
\FD|banco_registradores|ALT_INV_registrador~349_q\ <= NOT \FD|banco_registradores|registrador~349_q\;
\FD|banco_registradores|ALT_INV_registrador~1084_combout\ <= NOT \FD|banco_registradores|registrador~1084_combout\;
\FD|banco_registradores|ALT_INV_registrador~316_q\ <= NOT \FD|banco_registradores|registrador~316_q\;
\FD|banco_registradores|ALT_INV_registrador~348_q\ <= NOT \FD|banco_registradores|registrador~348_q\;
\FD|banco_registradores|ALT_INV_registrador~1083_combout\ <= NOT \FD|banco_registradores|registrador~1083_combout\;
\FD|banco_registradores|ALT_INV_registrador~315_q\ <= NOT \FD|banco_registradores|registrador~315_q\;
\FD|banco_registradores|ALT_INV_registrador~347_q\ <= NOT \FD|banco_registradores|registrador~347_q\;
\FD|banco_registradores|ALT_INV_registrador~1082_combout\ <= NOT \FD|banco_registradores|registrador~1082_combout\;
\FD|banco_registradores|ALT_INV_registrador~314_q\ <= NOT \FD|banco_registradores|registrador~314_q\;
\FD|banco_registradores|ALT_INV_registrador~346_q\ <= NOT \FD|banco_registradores|registrador~346_q\;
\FD|banco_registradores|ALT_INV_registrador~1081_combout\ <= NOT \FD|banco_registradores|registrador~1081_combout\;
\FD|banco_registradores|ALT_INV_registrador~313_q\ <= NOT \FD|banco_registradores|registrador~313_q\;
\FD|banco_registradores|ALT_INV_registrador~345_q\ <= NOT \FD|banco_registradores|registrador~345_q\;
\FD|banco_registradores|ALT_INV_registrador~1080_combout\ <= NOT \FD|banco_registradores|registrador~1080_combout\;
\FD|banco_registradores|ALT_INV_registrador~312_q\ <= NOT \FD|banco_registradores|registrador~312_q\;
\FD|banco_registradores|ALT_INV_registrador~344_q\ <= NOT \FD|banco_registradores|registrador~344_q\;
\FD|banco_registradores|ALT_INV_registrador~1079_combout\ <= NOT \FD|banco_registradores|registrador~1079_combout\;
\FD|banco_registradores|ALT_INV_registrador~311_q\ <= NOT \FD|banco_registradores|registrador~311_q\;
\FD|banco_registradores|ALT_INV_registrador~343_q\ <= NOT \FD|banco_registradores|registrador~343_q\;
\FD|banco_registradores|ALT_INV_registrador~1078_combout\ <= NOT \FD|banco_registradores|registrador~1078_combout\;
\FD|banco_registradores|ALT_INV_registrador~310_q\ <= NOT \FD|banco_registradores|registrador~310_q\;
\FD|banco_registradores|ALT_INV_registrador~342_q\ <= NOT \FD|banco_registradores|registrador~342_q\;
\FD|banco_registradores|ALT_INV_registrador~1077_combout\ <= NOT \FD|banco_registradores|registrador~1077_combout\;
\FD|banco_registradores|ALT_INV_registrador~309_q\ <= NOT \FD|banco_registradores|registrador~309_q\;
\FD|banco_registradores|ALT_INV_registrador~341_q\ <= NOT \FD|banco_registradores|registrador~341_q\;
\FD|banco_registradores|ALT_INV_registrador~1076_combout\ <= NOT \FD|banco_registradores|registrador~1076_combout\;
\FD|banco_registradores|ALT_INV_registrador~308_q\ <= NOT \FD|banco_registradores|registrador~308_q\;
\FD|banco_registradores|ALT_INV_registrador~340_q\ <= NOT \FD|banco_registradores|registrador~340_q\;
\FD|banco_registradores|ALT_INV_registrador~1075_combout\ <= NOT \FD|banco_registradores|registrador~1075_combout\;
\FD|banco_registradores|ALT_INV_registrador~307_q\ <= NOT \FD|banco_registradores|registrador~307_q\;
\FD|banco_registradores|ALT_INV_registrador~339_q\ <= NOT \FD|banco_registradores|registrador~339_q\;
\FD|banco_registradores|ALT_INV_registrador~1074_combout\ <= NOT \FD|banco_registradores|registrador~1074_combout\;
\FD|banco_registradores|ALT_INV_registrador~306_q\ <= NOT \FD|banco_registradores|registrador~306_q\;
\FD|banco_registradores|ALT_INV_registrador~338_q\ <= NOT \FD|banco_registradores|registrador~338_q\;
\FD|banco_registradores|ALT_INV_registrador~1073_combout\ <= NOT \FD|banco_registradores|registrador~1073_combout\;
\FD|banco_registradores|ALT_INV_registrador~305_q\ <= NOT \FD|banco_registradores|registrador~305_q\;
\FD|banco_registradores|ALT_INV_registrador~337_q\ <= NOT \FD|banco_registradores|registrador~337_q\;
\FD|banco_registradores|ALT_INV_registrador~1072_combout\ <= NOT \FD|banco_registradores|registrador~1072_combout\;
\FD|banco_registradores|ALT_INV_registrador~304_q\ <= NOT \FD|banco_registradores|registrador~304_q\;
\FD|banco_registradores|ALT_INV_registrador~336_q\ <= NOT \FD|banco_registradores|registrador~336_q\;
\FD|banco_registradores|ALT_INV_registrador~1071_combout\ <= NOT \FD|banco_registradores|registrador~1071_combout\;
\FD|banco_registradores|ALT_INV_registrador~303_q\ <= NOT \FD|banco_registradores|registrador~303_q\;
\FD|banco_registradores|ALT_INV_registrador~335_q\ <= NOT \FD|banco_registradores|registrador~335_q\;
\FD|banco_registradores|ALT_INV_registrador~1070_combout\ <= NOT \FD|banco_registradores|registrador~1070_combout\;
\FD|banco_registradores|ALT_INV_registrador~302_q\ <= NOT \FD|banco_registradores|registrador~302_q\;
\FD|banco_registradores|ALT_INV_registrador~334_q\ <= NOT \FD|banco_registradores|registrador~334_q\;
\FD|banco_registradores|ALT_INV_registrador~1069_combout\ <= NOT \FD|banco_registradores|registrador~1069_combout\;
\FD|banco_registradores|ALT_INV_registrador~301_q\ <= NOT \FD|banco_registradores|registrador~301_q\;
\FD|banco_registradores|ALT_INV_registrador~333_q\ <= NOT \FD|banco_registradores|registrador~333_q\;
\FD|banco_registradores|ALT_INV_registrador~1068_combout\ <= NOT \FD|banco_registradores|registrador~1068_combout\;
\FD|banco_registradores|ALT_INV_registrador~300_q\ <= NOT \FD|banco_registradores|registrador~300_q\;
\FD|banco_registradores|ALT_INV_registrador~332_q\ <= NOT \FD|banco_registradores|registrador~332_q\;
\FD|banco_registradores|ALT_INV_registrador~1067_combout\ <= NOT \FD|banco_registradores|registrador~1067_combout\;
\FD|banco_registradores|ALT_INV_registrador~299_q\ <= NOT \FD|banco_registradores|registrador~299_q\;
\FD|banco_registradores|ALT_INV_registrador~331_q\ <= NOT \FD|banco_registradores|registrador~331_q\;
\FD|banco_registradores|ALT_INV_registrador~1066_combout\ <= NOT \FD|banco_registradores|registrador~1066_combout\;
\FD|banco_registradores|ALT_INV_registrador~298_q\ <= NOT \FD|banco_registradores|registrador~298_q\;
\FD|banco_registradores|ALT_INV_registrador~330_q\ <= NOT \FD|banco_registradores|registrador~330_q\;
\FD|banco_registradores|ALT_INV_registrador~1065_combout\ <= NOT \FD|banco_registradores|registrador~1065_combout\;
\FD|banco_registradores|ALT_INV_registrador~297_q\ <= NOT \FD|banco_registradores|registrador~297_q\;
\FD|banco_registradores|ALT_INV_registrador~329_q\ <= NOT \FD|banco_registradores|registrador~329_q\;
\FD|banco_registradores|ALT_INV_registrador~1064_combout\ <= NOT \FD|banco_registradores|registrador~1064_combout\;
\FD|banco_registradores|ALT_INV_registrador~296_q\ <= NOT \FD|banco_registradores|registrador~296_q\;
\FD|banco_registradores|ALT_INV_registrador~328_q\ <= NOT \FD|banco_registradores|registrador~328_q\;
\FD|banco_registradores|ALT_INV_registrador~1063_combout\ <= NOT \FD|banco_registradores|registrador~1063_combout\;
\FD|banco_registradores|ALT_INV_registrador~295_q\ <= NOT \FD|banco_registradores|registrador~295_q\;
\FD|banco_registradores|ALT_INV_registrador~327_q\ <= NOT \FD|banco_registradores|registrador~327_q\;
\FD|banco_registradores|ALT_INV_registrador~1062_combout\ <= NOT \FD|banco_registradores|registrador~1062_combout\;
\FD|banco_registradores|ALT_INV_registrador~294_q\ <= NOT \FD|banco_registradores|registrador~294_q\;
\FD|banco_registradores|ALT_INV_registrador~326_q\ <= NOT \FD|banco_registradores|registrador~326_q\;
\FD|ROM|ALT_INV_memROM~0_combout\ <= NOT \FD|ROM|memROM~0_combout\;
\FD|PC|ALT_INV_DOUT\(6) <= NOT \FD|PC|DOUT\(6);
\FD|PC|ALT_INV_DOUT\(7) <= NOT \FD|PC|DOUT\(7);
\FD|PC|ALT_INV_DOUT\(5) <= NOT \FD|PC|DOUT\(5);
\FD|PC|ALT_INV_DOUT\(4) <= NOT \FD|PC|DOUT\(4);
\FD|PC|ALT_INV_DOUT\(3) <= NOT \FD|PC|DOUT\(3);
\FD|PC|ALT_INV_DOUT\(2) <= NOT \FD|PC|DOUT\(2);
\FD|banco_registradores|ALT_INV_registrador~69_q\ <= NOT \FD|banco_registradores|registrador~69_q\;
\FD|banco_registradores|ALT_INV_registrador~68_q\ <= NOT \FD|banco_registradores|registrador~68_q\;
\FD|banco_registradores|ALT_INV_registrador~67_q\ <= NOT \FD|banco_registradores|registrador~67_q\;
\FD|banco_registradores|ALT_INV_registrador~66_q\ <= NOT \FD|banco_registradores|registrador~66_q\;
\FD|banco_registradores|ALT_INV_registrador~65_q\ <= NOT \FD|banco_registradores|registrador~65_q\;
\FD|banco_registradores|ALT_INV_registrador~64_q\ <= NOT \FD|banco_registradores|registrador~64_q\;
\FD|banco_registradores|ALT_INV_registrador~63_q\ <= NOT \FD|banco_registradores|registrador~63_q\;
\FD|banco_registradores|ALT_INV_registrador~62_q\ <= NOT \FD|banco_registradores|registrador~62_q\;
\FD|banco_registradores|ALT_INV_registrador~61_q\ <= NOT \FD|banco_registradores|registrador~61_q\;
\FD|banco_registradores|ALT_INV_registrador~60_q\ <= NOT \FD|banco_registradores|registrador~60_q\;
\FD|banco_registradores|ALT_INV_registrador~59_q\ <= NOT \FD|banco_registradores|registrador~59_q\;
\FD|banco_registradores|ALT_INV_registrador~58_q\ <= NOT \FD|banco_registradores|registrador~58_q\;
\FD|banco_registradores|ALT_INV_registrador~57_q\ <= NOT \FD|banco_registradores|registrador~57_q\;
\FD|banco_registradores|ALT_INV_registrador~56_q\ <= NOT \FD|banco_registradores|registrador~56_q\;
\FD|banco_registradores|ALT_INV_registrador~55_q\ <= NOT \FD|banco_registradores|registrador~55_q\;
\FD|banco_registradores|ALT_INV_registrador~54_q\ <= NOT \FD|banco_registradores|registrador~54_q\;
\FD|banco_registradores|ALT_INV_registrador~53_q\ <= NOT \FD|banco_registradores|registrador~53_q\;
\FD|banco_registradores|ALT_INV_registrador~52_q\ <= NOT \FD|banco_registradores|registrador~52_q\;
\FD|banco_registradores|ALT_INV_registrador~51_q\ <= NOT \FD|banco_registradores|registrador~51_q\;
\FD|banco_registradores|ALT_INV_registrador~50_q\ <= NOT \FD|banco_registradores|registrador~50_q\;
\FD|banco_registradores|ALT_INV_registrador~49_q\ <= NOT \FD|banco_registradores|registrador~49_q\;
\FD|banco_registradores|ALT_INV_registrador~48_q\ <= NOT \FD|banco_registradores|registrador~48_q\;
\FD|banco_registradores|ALT_INV_registrador~47_q\ <= NOT \FD|banco_registradores|registrador~47_q\;
\FD|banco_registradores|ALT_INV_registrador~46_q\ <= NOT \FD|banco_registradores|registrador~46_q\;
\FD|banco_registradores|ALT_INV_registrador~45_q\ <= NOT \FD|banco_registradores|registrador~45_q\;
\FD|banco_registradores|ALT_INV_registrador~44_q\ <= NOT \FD|banco_registradores|registrador~44_q\;
\FD|banco_registradores|ALT_INV_registrador~43_q\ <= NOT \FD|banco_registradores|registrador~43_q\;
\FD|banco_registradores|ALT_INV_registrador~42_q\ <= NOT \FD|banco_registradores|registrador~42_q\;
\FD|banco_registradores|ALT_INV_registrador~41_q\ <= NOT \FD|banco_registradores|registrador~41_q\;
\FD|banco_registradores|ALT_INV_registrador~40_q\ <= NOT \FD|banco_registradores|registrador~40_q\;
\FD|banco_registradores|ALT_INV_registrador~39_q\ <= NOT \FD|banco_registradores|registrador~39_q\;
\FD|banco_registradores|ALT_INV_registrador~38_q\ <= NOT \FD|banco_registradores|registrador~38_q\;
\FD|ula|ALT_INV_Add0~5_sumout\ <= NOT \FD|ula|Add0~5_sumout\;
\FD|ula|ALT_INV_Add0~1_sumout\ <= NOT \FD|ula|Add0~1_sumout\;

-- Location: IOOBUF_X89_Y6_N22
\saida_ula[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(0));

-- Location: IOOBUF_X56_Y0_N19
\saida_ula[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(1));

-- Location: IOOBUF_X56_Y0_N36
\saida_ula[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(2));

-- Location: IOOBUF_X72_Y0_N19
\saida_ula[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(3));

-- Location: IOOBUF_X8_Y0_N2
\saida_ula[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(4));

-- Location: IOOBUF_X89_Y6_N39
\saida_ula[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(5));

-- Location: IOOBUF_X30_Y0_N19
\saida_ula[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(6));

-- Location: IOOBUF_X26_Y0_N42
\saida_ula[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(7));

-- Location: IOOBUF_X6_Y0_N36
\saida_ula[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~33_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(8));

-- Location: IOOBUF_X50_Y0_N42
\saida_ula[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~37_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(9));

-- Location: IOOBUF_X89_Y6_N5
\saida_ula[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~41_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(10));

-- Location: IOOBUF_X50_Y0_N76
\saida_ula[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~45_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(11));

-- Location: IOOBUF_X52_Y0_N2
\saida_ula[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~49_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(12));

-- Location: IOOBUF_X52_Y0_N36
\saida_ula[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~53_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(13));

-- Location: IOOBUF_X50_Y81_N76
\saida_ula[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~57_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(14));

-- Location: IOOBUF_X28_Y0_N19
\saida_ula[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~61_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(15));

-- Location: IOOBUF_X36_Y0_N19
\saida_ula[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~65_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(16));

-- Location: IOOBUF_X34_Y0_N93
\saida_ula[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~69_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(17));

-- Location: IOOBUF_X36_Y0_N2
\saida_ula[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~73_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(18));

-- Location: IOOBUF_X56_Y0_N53
\saida_ula[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~77_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(19));

-- Location: IOOBUF_X50_Y0_N59
\saida_ula[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~81_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(20));

-- Location: IOOBUF_X28_Y0_N36
\saida_ula[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~85_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(21));

-- Location: IOOBUF_X50_Y0_N93
\saida_ula[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~89_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(22));

-- Location: IOOBUF_X89_Y4_N96
\saida_ula[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~93_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(23));

-- Location: IOOBUF_X52_Y0_N19
\saida_ula[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~97_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(24));

-- Location: IOOBUF_X54_Y0_N2
\saida_ula[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~101_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(25));

-- Location: IOOBUF_X52_Y0_N53
\saida_ula[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~105_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(26));

-- Location: IOOBUF_X54_Y0_N53
\saida_ula[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~109_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(27));

-- Location: IOOBUF_X40_Y0_N19
\saida_ula[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~113_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(28));

-- Location: IOOBUF_X89_Y4_N79
\saida_ula[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~117_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(29));

-- Location: IOOBUF_X36_Y0_N53
\saida_ula[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~121_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(30));

-- Location: IOOBUF_X26_Y0_N59
\saida_ula[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Add0~125_sumout\,
	devoe => ww_devoe,
	o => ww_saida_ula(31));

-- Location: IOOBUF_X89_Y4_N62
\saida_regA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(0));

-- Location: IOOBUF_X58_Y81_N76
\saida_regA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(1));

-- Location: IOOBUF_X56_Y81_N53
\saida_regA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(2));

-- Location: IOOBUF_X68_Y0_N53
\saida_regA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(3));

-- Location: IOOBUF_X58_Y0_N76
\saida_regA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(4));

-- Location: IOOBUF_X89_Y35_N62
\saida_regA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(5));

-- Location: IOOBUF_X89_Y35_N45
\saida_regA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(6));

-- Location: IOOBUF_X58_Y81_N42
\saida_regA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(7));

-- Location: IOOBUF_X89_Y9_N22
\saida_regA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(8));

-- Location: IOOBUF_X89_Y4_N45
\saida_regA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(9));

-- Location: IOOBUF_X66_Y0_N59
\saida_regA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(10));

-- Location: IOOBUF_X40_Y81_N2
\saida_regA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(11));

-- Location: IOOBUF_X68_Y0_N19
\saida_regA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(12));

-- Location: IOOBUF_X30_Y0_N2
\saida_regA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(13));

-- Location: IOOBUF_X50_Y81_N59
\saida_regA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[14]~14_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(14));

-- Location: IOOBUF_X50_Y81_N42
\saida_regA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[15]~15_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(15));

-- Location: IOOBUF_X66_Y81_N59
\saida_regA[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[16]~16_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(16));

-- Location: IOOBUF_X89_Y9_N56
\saida_regA[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[17]~17_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(17));

-- Location: IOOBUF_X52_Y81_N36
\saida_regA[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[18]~18_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(18));

-- Location: IOOBUF_X26_Y0_N93
\saida_regA[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[19]~19_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(19));

-- Location: IOOBUF_X38_Y0_N53
\saida_regA[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[20]~20_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(20));

-- Location: IOOBUF_X38_Y0_N19
\saida_regA[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[21]~21_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(21));

-- Location: IOOBUF_X30_Y0_N36
\saida_regA[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[22]~22_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(22));

-- Location: IOOBUF_X28_Y0_N2
\saida_regA[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[23]~23_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(23));

-- Location: IOOBUF_X38_Y0_N36
\saida_regA[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[24]~24_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(24));

-- Location: IOOBUF_X40_Y0_N53
\saida_regA[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[25]~25_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(25));

-- Location: IOOBUF_X36_Y0_N36
\saida_regA[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[26]~26_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(26));

-- Location: IOOBUF_X8_Y0_N53
\saida_regA[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[27]~27_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(27));

-- Location: IOOBUF_X8_Y0_N36
\saida_regA[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[28]~28_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(28));

-- Location: IOOBUF_X70_Y0_N19
\saida_regA[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[29]~29_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(29));

-- Location: IOOBUF_X34_Y0_N76
\saida_regA[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[30]~30_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(30));

-- Location: IOOBUF_X28_Y0_N53
\saida_regA[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[31]~31_combout\,
	devoe => ww_devoe,
	o => ww_saida_regA(31));

-- Location: IOOBUF_X64_Y81_N36
\saida_regB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(0));

-- Location: IOOBUF_X58_Y81_N93
\saida_regB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(1));

-- Location: IOOBUF_X60_Y81_N36
\saida_regB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(2));

-- Location: IOOBUF_X60_Y81_N2
\saida_regB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(3));

-- Location: IOOBUF_X56_Y81_N36
\saida_regB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(4));

-- Location: IOOBUF_X54_Y0_N19
\saida_regB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(5));

-- Location: IOOBUF_X62_Y81_N53
\saida_regB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(6));

-- Location: IOOBUF_X8_Y0_N19
\saida_regB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(7));

-- Location: IOOBUF_X89_Y9_N5
\saida_regB[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(8));

-- Location: IOOBUF_X66_Y81_N42
\saida_regB[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(9));

-- Location: IOOBUF_X62_Y81_N36
\saida_regB[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(10));

-- Location: IOOBUF_X52_Y81_N53
\saida_regB[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(11));

-- Location: IOOBUF_X89_Y38_N5
\saida_regB[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(12));

-- Location: IOOBUF_X56_Y81_N19
\saida_regB[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(13));

-- Location: IOOBUF_X54_Y81_N2
\saida_regB[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[14]~14_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(14));

-- Location: IOOBUF_X40_Y81_N53
\saida_regB[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[15]~15_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(15));

-- Location: IOOBUF_X52_Y81_N19
\saida_regB[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[16]~16_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(16));

-- Location: IOOBUF_X68_Y0_N36
\saida_regB[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[17]~17_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(17));

-- Location: IOOBUF_X50_Y81_N93
\saida_regB[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[18]~18_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(18));

-- Location: IOOBUF_X64_Y0_N19
\saida_regB[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[19]~19_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(19));

-- Location: IOOBUF_X32_Y0_N53
\saida_regB[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[20]~20_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(20));

-- Location: IOOBUF_X38_Y0_N2
\saida_regB[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[21]~21_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(21));

-- Location: IOOBUF_X6_Y0_N2
\saida_regB[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[22]~22_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(22));

-- Location: IOOBUF_X40_Y0_N2
\saida_regB[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[23]~23_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(23));

-- Location: IOOBUF_X30_Y0_N53
\saida_regB[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[24]~24_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(24));

-- Location: IOOBUF_X64_Y0_N36
\saida_regB[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[25]~25_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(25));

-- Location: IOOBUF_X54_Y0_N36
\saida_regB[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[26]~26_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(26));

-- Location: IOOBUF_X58_Y0_N42
\saida_regB[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[27]~27_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(27));

-- Location: IOOBUF_X40_Y0_N36
\saida_regB[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[28]~28_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(28));

-- Location: IOOBUF_X26_Y0_N76
\saida_regB[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[29]~29_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(29));

-- Location: IOOBUF_X34_Y0_N59
\saida_regB[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[30]~30_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(30));

-- Location: IOOBUF_X40_Y81_N19
\saida_regB[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaB[31]~31_combout\,
	devoe => ww_devoe,
	o => ww_saida_regB(31));

-- Location: IOOBUF_X4_Y0_N2
\funct_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_funct_out(0));

-- Location: IOOBUF_X30_Y81_N53
\funct_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_funct_out(1));

-- Location: IOOBUF_X89_Y37_N56
\funct_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_funct_out(2));

-- Location: IOOBUF_X68_Y81_N2
\funct_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_funct_out(3));

-- Location: IOOBUF_X80_Y81_N53
\funct_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_funct_out(4));

-- Location: IOOBUF_X38_Y81_N53
\funct_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_funct_out(5));

-- Location: IOOBUF_X89_Y37_N22
\op_code_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_op_code_out(0));

-- Location: IOOBUF_X28_Y81_N36
\op_code_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_op_code_out(1));

-- Location: IOOBUF_X64_Y81_N53
\op_code_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_op_code_out(2));

-- Location: IOOBUF_X72_Y81_N2
\op_code_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_op_code_out(3));

-- Location: IOOBUF_X34_Y81_N76
\op_code_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_op_code_out(4));

-- Location: IOOBUF_X89_Y38_N22
\op_code_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_op_code_out(5));

-- Location: IOOBUF_X4_Y0_N36
\saida_rom[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_saida_rom(0));

-- Location: IOOBUF_X72_Y81_N19
\saida_rom[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(1));

-- Location: IOOBUF_X34_Y81_N42
\saida_rom[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(2));

-- Location: IOOBUF_X62_Y81_N2
\saida_rom[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(3));

-- Location: IOOBUF_X52_Y81_N2
\saida_rom[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(4));

-- Location: IOOBUF_X68_Y81_N53
\saida_rom[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(5));

-- Location: IOOBUF_X6_Y0_N19
\saida_rom[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(6));

-- Location: IOOBUF_X70_Y81_N19
\saida_rom[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(7));

-- Location: IOOBUF_X82_Y81_N93
\saida_rom[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(8));

-- Location: IOOBUF_X26_Y81_N93
\saida_rom[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(9));

-- Location: IOOBUF_X40_Y81_N36
\saida_rom[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(10));

-- Location: IOOBUF_X72_Y0_N36
\saida_rom[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_saida_rom(11));

-- Location: IOOBUF_X78_Y81_N53
\saida_rom[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(12));

-- Location: IOOBUF_X89_Y36_N5
\saida_rom[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(13));

-- Location: IOOBUF_X32_Y0_N36
\saida_rom[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_saida_rom(14));

-- Location: IOOBUF_X84_Y81_N53
\saida_rom[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(15));

-- Location: IOOBUF_X72_Y0_N2
\saida_rom[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_saida_rom(16));

-- Location: IOOBUF_X78_Y81_N36
\saida_rom[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(17));

-- Location: IOOBUF_X89_Y36_N22
\saida_rom[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(18));

-- Location: IOOBUF_X34_Y0_N42
\saida_rom[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_saida_rom(19));

-- Location: IOOBUF_X88_Y81_N3
\saida_rom[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(20));

-- Location: IOOBUF_X4_Y0_N19
\saida_rom[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_saida_rom(21));

-- Location: IOOBUF_X66_Y81_N76
\saida_rom[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(22));

-- Location: IOOBUF_X76_Y81_N2
\saida_rom[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(23));

-- Location: IOOBUF_X32_Y0_N19
\saida_rom[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_saida_rom(24));

-- Location: IOOBUF_X89_Y36_N39
\saida_rom[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(25));

-- Location: IOOBUF_X89_Y35_N79
\saida_rom[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(26));

-- Location: IOOBUF_X28_Y81_N53
\saida_rom[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(27));

-- Location: IOOBUF_X30_Y81_N2
\saida_rom[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(28));

-- Location: IOOBUF_X84_Y81_N36
\saida_rom[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(29));

-- Location: IOOBUF_X36_Y81_N19
\saida_rom[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(30));

-- Location: IOOBUF_X32_Y81_N36
\saida_rom[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_rom(31));

-- Location: IOOBUF_X86_Y81_N36
\saida_pc[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_pc(0));

-- Location: IOOBUF_X38_Y81_N36
\saida_pc[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_pc(1));

-- Location: IOOBUF_X56_Y0_N2
\saida_pc[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_saida_pc(2));

-- Location: IOOBUF_X60_Y81_N53
\saida_pc[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_saida_pc(3));

-- Location: IOOBUF_X89_Y9_N39
\saida_pc[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_saida_pc(4));

-- Location: IOOBUF_X62_Y81_N19
\saida_pc[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_saida_pc(5));

-- Location: IOOBUF_X70_Y0_N2
\saida_pc[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_saida_pc(6));

-- Location: IOOBUF_X89_Y8_N5
\saida_pc[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_saida_pc(7));

-- Location: IOOBUF_X68_Y0_N2
\saida_pc[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_saida_pc(8));

-- Location: IOOBUF_X66_Y81_N93
\saida_pc[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(9),
	devoe => ww_devoe,
	o => ww_saida_pc(9));

-- Location: IOOBUF_X72_Y0_N53
\saida_pc[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(10),
	devoe => ww_devoe,
	o => ww_saida_pc(10));

-- Location: IOOBUF_X89_Y8_N39
\saida_pc[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(11),
	devoe => ww_devoe,
	o => ww_saida_pc(11));

-- Location: IOOBUF_X89_Y8_N56
\saida_pc[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(12),
	devoe => ww_devoe,
	o => ww_saida_pc(12));

-- Location: IOOBUF_X66_Y0_N93
\saida_pc[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(13),
	devoe => ww_devoe,
	o => ww_saida_pc(13));

-- Location: IOOBUF_X60_Y0_N53
\saida_pc[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(14),
	devoe => ww_devoe,
	o => ww_saida_pc(14));

-- Location: IOOBUF_X58_Y0_N93
\saida_pc[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(15),
	devoe => ww_devoe,
	o => ww_saida_pc(15));

-- Location: IOOBUF_X60_Y0_N36
\saida_pc[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(16),
	devoe => ww_devoe,
	o => ww_saida_pc(16));

-- Location: IOOBUF_X64_Y0_N53
\saida_pc[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(17),
	devoe => ww_devoe,
	o => ww_saida_pc(17));

-- Location: IOOBUF_X60_Y0_N19
\saida_pc[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(18),
	devoe => ww_devoe,
	o => ww_saida_pc(18));

-- Location: IOOBUF_X62_Y0_N36
\saida_pc[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(19),
	devoe => ww_devoe,
	o => ww_saida_pc(19));

-- Location: IOOBUF_X89_Y8_N22
\saida_pc[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(20),
	devoe => ww_devoe,
	o => ww_saida_pc(20));

-- Location: IOOBUF_X66_Y0_N76
\saida_pc[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(21),
	devoe => ww_devoe,
	o => ww_saida_pc(21));

-- Location: IOOBUF_X62_Y0_N53
\saida_pc[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(22),
	devoe => ww_devoe,
	o => ww_saida_pc(22));

-- Location: IOOBUF_X70_Y0_N36
\saida_pc[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(23),
	devoe => ww_devoe,
	o => ww_saida_pc(23));

-- Location: IOOBUF_X58_Y0_N59
\saida_pc[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(24),
	devoe => ww_devoe,
	o => ww_saida_pc(24));

-- Location: IOOBUF_X64_Y0_N2
\saida_pc[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(25),
	devoe => ww_devoe,
	o => ww_saida_pc(25));

-- Location: IOOBUF_X62_Y0_N2
\saida_pc[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(26),
	devoe => ww_devoe,
	o => ww_saida_pc(26));

-- Location: IOOBUF_X60_Y0_N2
\saida_pc[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(27),
	devoe => ww_devoe,
	o => ww_saida_pc(27));

-- Location: IOOBUF_X70_Y0_N53
\saida_pc[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(28),
	devoe => ww_devoe,
	o => ww_saida_pc(28));

-- Location: IOOBUF_X89_Y6_N56
\saida_pc[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(29),
	devoe => ww_devoe,
	o => ww_saida_pc(29));

-- Location: IOOBUF_X66_Y0_N42
\saida_pc[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(30),
	devoe => ww_devoe,
	o => ww_saida_pc(30));

-- Location: IOOBUF_X62_Y0_N19
\saida_pc[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(31),
	devoe => ww_devoe,
	o => ww_saida_pc(31));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: FF_X56_Y5_N16
\FD|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|PC|DOUT[2]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(2));

-- Location: LABCELL_X57_Y5_N39
\FD|PC|DOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[2]~0_combout\ = !\FD|PC|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT\(2),
	combout => \FD|PC|DOUT[2]~0_combout\);

-- Location: FF_X56_Y5_N17
\FD|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|PC|DOUT[2]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X56_Y5_N32
\FD|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y5_N30
\FD|somaUm|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~1_sumout\ = SUM(( \FD|PC|DOUT[2]~DUPLICATE_q\ ) + ( \FD|PC|DOUT[3]~DUPLICATE_q\ ) + ( !VCC ))
-- \FD|somaUm|Add0~2\ = CARRY(( \FD|PC|DOUT[2]~DUPLICATE_q\ ) + ( \FD|PC|DOUT[3]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => GND,
	sumout => \FD|somaUm|Add0~1_sumout\,
	cout => \FD|somaUm|Add0~2\);

-- Location: FF_X56_Y5_N31
\FD|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(3));

-- Location: LABCELL_X56_Y5_N33
\FD|somaUm|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~5_sumout\ = SUM(( \FD|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~2\ ))
-- \FD|somaUm|Add0~6\ = CARRY(( \FD|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~2\,
	sumout => \FD|somaUm|Add0~5_sumout\,
	cout => \FD|somaUm|Add0~6\);

-- Location: FF_X56_Y5_N34
\FD|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y5_N36
\FD|somaUm|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~9_sumout\ = SUM(( \FD|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~6\ ))
-- \FD|somaUm|Add0~10\ = CARRY(( \FD|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~6\,
	sumout => \FD|somaUm|Add0~9_sumout\,
	cout => \FD|somaUm|Add0~10\);

-- Location: FF_X56_Y5_N37
\FD|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y5_N39
\FD|somaUm|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~17_sumout\ = SUM(( \FD|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~10\ ))
-- \FD|somaUm|Add0~18\ = CARRY(( \FD|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~10\,
	sumout => \FD|somaUm|Add0~17_sumout\,
	cout => \FD|somaUm|Add0~18\);

-- Location: FF_X56_Y5_N41
\FD|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y5_N42
\FD|somaUm|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~13_sumout\ = SUM(( \FD|PC|DOUT\(7) ) + ( GND ) + ( \FD|somaUm|Add0~18\ ))
-- \FD|somaUm|Add0~14\ = CARRY(( \FD|PC|DOUT\(7) ) + ( GND ) + ( \FD|somaUm|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|ALT_INV_DOUT\(7),
	cin => \FD|somaUm|Add0~18\,
	sumout => \FD|somaUm|Add0~13_sumout\,
	cout => \FD|somaUm|Add0~14\);

-- Location: FF_X56_Y5_N44
\FD|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(7));

-- Location: FF_X56_Y5_N35
\FD|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(4));

-- Location: FF_X56_Y5_N38
\FD|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(5));

-- Location: LABCELL_X56_Y5_N3
\FD|ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~2_combout\ = ( !\FD|PC|DOUT\(5) & ( !\FD|PC|DOUT[6]~DUPLICATE_q\ & ( (!\FD|PC|DOUT\(3) & (!\FD|PC|DOUT[2]~DUPLICATE_q\ & (!\FD|PC|DOUT\(7) & !\FD|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT\(3),
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|PC|ALT_INV_DOUT\(7),
	datad => \FD|PC|ALT_INV_DOUT\(4),
	datae => \FD|PC|ALT_INV_DOUT\(5),
	dataf => \FD|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \FD|ROM|memROM~2_combout\);

-- Location: LABCELL_X56_Y5_N12
\FD|ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~1_combout\ = ( !\FD|PC|DOUT\(5) & ( !\FD|PC|DOUT[6]~DUPLICATE_q\ & ( (!\FD|PC|DOUT\(4) & (\FD|PC|DOUT[2]~DUPLICATE_q\ & (!\FD|PC|DOUT\(3) & !\FD|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT\(4),
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|PC|ALT_INV_DOUT\(3),
	datad => \FD|PC|ALT_INV_DOUT\(7),
	datae => \FD|PC|ALT_INV_DOUT\(5),
	dataf => \FD|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \FD|ROM|memROM~1_combout\);

-- Location: FF_X56_Y5_N40
\FD|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(6));

-- Location: LABCELL_X56_Y5_N18
\FD|ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~0_combout\ = ( !\FD|PC|DOUT[3]~DUPLICATE_q\ & ( (!\FD|PC|DOUT\(5) & (!\FD|PC|DOUT\(7) & (!\FD|PC|DOUT\(4) & !\FD|PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT\(5),
	datab => \FD|PC|ALT_INV_DOUT\(7),
	datac => \FD|PC|ALT_INV_DOUT\(4),
	datad => \FD|PC|ALT_INV_DOUT\(6),
	dataf => \FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \FD|ROM|memROM~0_combout\);

-- Location: LABCELL_X57_Y5_N42
\FD|banco_registradores|registrador~1127\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1127_combout\ = ( !\FD|ula|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|ula|ALT_INV_Add0~1_sumout\,
	combout => \FD|banco_registradores|registrador~1127_combout\);

-- Location: FF_X57_Y5_N44
\FD|banco_registradores|registrador~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|banco_registradores|registrador~1127_combout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~294_q\);

-- Location: FF_X56_Y5_N1
\FD|banco_registradores|registrador~38DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~1_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~38DUPLICATE_q\);

-- Location: LABCELL_X57_Y5_N3
\FD|banco_registradores|registrador~1126\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1126_combout\ = ( !\FD|ula|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|ula|ALT_INV_Add0~1_sumout\,
	combout => \FD|banco_registradores|registrador~1126_combout\);

-- Location: FF_X57_Y5_N5
\FD|banco_registradores|registrador~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|banco_registradores|registrador~1126_combout\,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~326_q\);

-- Location: LABCELL_X57_Y5_N24
\FD|banco_registradores|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1062_combout\ = ( \FD|ROM|memROM~0_combout\ & ( (!\FD|PC|DOUT\(2) & (!\FD|banco_registradores|registrador~294_q\)) # (\FD|PC|DOUT\(2) & ((!\FD|banco_registradores|registrador~326_q\))) ) ) # ( !\FD|ROM|memROM~0_combout\ 
-- & ( \FD|banco_registradores|registrador~38DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001110101111101000001010111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|banco_registradores|ALT_INV_registrador~294_q\,
	datab => \FD|banco_registradores|ALT_INV_registrador~38DUPLICATE_q\,
	datac => \FD|PC|ALT_INV_DOUT\(2),
	datad => \FD|banco_registradores|ALT_INV_registrador~326_q\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|registrador~1062_combout\);

-- Location: FF_X56_Y5_N2
\FD|banco_registradores|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~1_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~38_q\);

-- Location: LABCELL_X56_Y5_N6
\FD|banco_registradores|registrador~1094\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1094_combout\ = ( \FD|ROM|memROM~0_combout\ & ( (!\FD|PC|DOUT[2]~DUPLICATE_q\ & ((!\FD|banco_registradores|registrador~326_q\))) # (\FD|PC|DOUT[2]~DUPLICATE_q\ & (!\FD|banco_registradores|registrador~294_q\)) ) ) # ( 
-- !\FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~38_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111100010111000101110001011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|banco_registradores|ALT_INV_registrador~294_q\,
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~326_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~38_q\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|registrador~1094_combout\);

-- Location: MLABCELL_X52_Y5_N0
\FD|ula|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~130_cout\ = CARRY(( \FD|ROM|memROM~1_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|ROM|ALT_INV_memROM~1_combout\,
	cin => GND,
	cout => \FD|ula|Add0~130_cout\);

-- Location: MLABCELL_X52_Y5_N3
\FD|ula|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~1_sumout\ = SUM(( (\FD|banco_registradores|registrador~1062_combout\ & ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1094_combout\) # 
-- ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( \FD|ula|Add0~130_cout\ ))
-- \FD|ula|Add0~2\ = CARRY(( (\FD|banco_registradores|registrador~1062_combout\ & ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1094_combout\) # 
-- ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( \FD|ula|Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001001001100000000000000000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~2_combout\,
	datab => \FD|ROM|ALT_INV_memROM~1_combout\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1062_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1094_combout\,
	cin => \FD|ula|Add0~130_cout\,
	sumout => \FD|ula|Add0~1_sumout\,
	cout => \FD|ula|Add0~2\);

-- Location: LABCELL_X56_Y5_N9
\FD|banco_registradores|registrador~1128\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1128_combout\ = !\FD|ula|Add0~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|ula|ALT_INV_Add0~5_sumout\,
	combout => \FD|banco_registradores|registrador~1128_combout\);

-- Location: FF_X56_Y5_N11
\FD|banco_registradores|registrador~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|banco_registradores|registrador~1128_combout\,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~327_q\);

-- Location: FF_X56_Y5_N5
\FD|banco_registradores|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~5_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~39_q\);

-- Location: FF_X52_Y5_N8
\FD|banco_registradores|registrador~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~5_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~295_q\);

-- Location: LABCELL_X56_Y5_N27
\FD|banco_registradores|registrador~1095\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1095_combout\ = ( \FD|banco_registradores|registrador~295_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~39_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (((!\FD|banco_registradores|registrador~327_q\)) # (\FD|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\FD|banco_registradores|registrador~295_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~39_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (!\FD|PC|DOUT[2]~DUPLICATE_q\ & (!\FD|banco_registradores|registrador~327_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011101010010000001110101001010001111110110101000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~327_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~39_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~295_q\,
	combout => \FD|banco_registradores|registrador~1095_combout\);

-- Location: LABCELL_X55_Y5_N51
\FD|banco_registradores|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1063_combout\ = ( \FD|ROM|memROM~0_combout\ & ( (!\FD|PC|DOUT[2]~DUPLICATE_q\ & (\FD|banco_registradores|registrador~295_q\)) # (\FD|PC|DOUT[2]~DUPLICATE_q\ & ((!\FD|banco_registradores|registrador~327_q\))) ) ) # ( 
-- !\FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~39_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100111111000011000011111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|banco_registradores|ALT_INV_registrador~39_q\,
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~295_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~327_q\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|registrador~1063_combout\);

-- Location: MLABCELL_X52_Y5_N6
\FD|ula|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~5_sumout\ = SUM(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1095_combout\) # ((!\FD|ROM|memROM~0_combout\ & !\FD|ROM|memROM~2_combout\)))) ) + ( (\FD|banco_registradores|registrador~1063_combout\ & 
-- ((\FD|ROM|memROM~1_combout\) # (\FD|ROM|memROM~0_combout\))) ) + ( \FD|ula|Add0~2\ ))
-- \FD|ula|Add0~6\ = CARRY(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1095_combout\) # ((!\FD|ROM|memROM~0_combout\ & !\FD|ROM|memROM~2_combout\)))) ) + ( (\FD|banco_registradores|registrador~1063_combout\ & 
-- ((\FD|ROM|memROM~1_combout\) # (\FD|ROM|memROM~0_combout\))) ) + ( \FD|ula|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000100000000000000000000011001101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|ROM|ALT_INV_memROM~1_combout\,
	datac => \FD|ROM|ALT_INV_memROM~2_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1095_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1063_combout\,
	cin => \FD|ula|Add0~2\,
	sumout => \FD|ula|Add0~5_sumout\,
	cout => \FD|ula|Add0~6\);

-- Location: FF_X55_Y5_N47
\FD|banco_registradores|registrador~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~9_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~328_q\);

-- Location: FF_X55_Y5_N5
\FD|banco_registradores|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~9_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~40_q\);

-- Location: FF_X52_Y5_N11
\FD|banco_registradores|registrador~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~9_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~296_q\);

-- Location: LABCELL_X53_Y5_N57
\FD|banco_registradores|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1064_combout\ = ( \FD|ROM|memROM~0_combout\ & ( (!\FD|PC|DOUT[2]~DUPLICATE_q\ & ((\FD|banco_registradores|registrador~296_q\))) # (\FD|PC|DOUT[2]~DUPLICATE_q\ & (\FD|banco_registradores|registrador~328_q\)) ) ) # ( 
-- !\FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~40_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|banco_registradores|ALT_INV_registrador~328_q\,
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~40_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~296_q\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|registrador~1064_combout\);

-- Location: LABCELL_X55_Y5_N57
\FD|banco_registradores|registrador~1096\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1096_combout\ = ( \FD|ROM|memROM~0_combout\ & ( (!\FD|PC|DOUT[2]~DUPLICATE_q\ & (\FD|banco_registradores|registrador~328_q\)) # (\FD|PC|DOUT[2]~DUPLICATE_q\ & ((\FD|banco_registradores|registrador~296_q\))) ) ) # ( 
-- !\FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~40_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|banco_registradores|ALT_INV_registrador~40_q\,
	datab => \FD|banco_registradores|ALT_INV_registrador~328_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~296_q\,
	datad => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|registrador~1096_combout\);

-- Location: MLABCELL_X52_Y5_N9
\FD|ula|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~9_sumout\ = SUM(( (\FD|banco_registradores|registrador~1064_combout\ & ((\FD|ROM|memROM~1_combout\) # (\FD|ROM|memROM~0_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1096_combout\) # 
-- ((!\FD|ROM|memROM~0_combout\ & !\FD|ROM|memROM~2_combout\)))) ) + ( \FD|ula|Add0~6\ ))
-- \FD|ula|Add0~10\ = CARRY(( (\FD|banco_registradores|registrador~1064_combout\ & ((\FD|ROM|memROM~1_combout\) # (\FD|ROM|memROM~0_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1096_combout\) # 
-- ((!\FD|ROM|memROM~0_combout\ & !\FD|ROM|memROM~2_combout\)))) ) + ( \FD|ula|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001001001100000000000000000000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|ROM|ALT_INV_memROM~1_combout\,
	datac => \FD|ROM|ALT_INV_memROM~2_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1064_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1096_combout\,
	cin => \FD|ula|Add0~6\,
	sumout => \FD|ula|Add0~9_sumout\,
	cout => \FD|ula|Add0~10\);

-- Location: FF_X56_Y5_N8
\FD|banco_registradores|registrador~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~13_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~329_q\);

-- Location: FF_X56_Y5_N23
\FD|banco_registradores|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~13_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~41_q\);

-- Location: FF_X52_Y5_N14
\FD|banco_registradores|registrador~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~13_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~297_q\);

-- Location: LABCELL_X53_Y5_N3
\FD|banco_registradores|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1065_combout\ = ( \FD|banco_registradores|registrador~297_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~41_q\)))) # (\FD|ROM|memROM~0_combout\ & ((!\FD|PC|DOUT[2]~DUPLICATE_q\) # 
-- ((\FD|banco_registradores|registrador~329_q\)))) ) ) # ( !\FD|banco_registradores|registrador~297_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~41_q\)))) # (\FD|ROM|memROM~0_combout\ & (\FD|PC|DOUT[2]~DUPLICATE_q\ & 
-- (\FD|banco_registradores|registrador~329_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~329_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~41_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~297_q\,
	combout => \FD|banco_registradores|registrador~1065_combout\);

-- Location: LABCELL_X56_Y5_N24
\FD|banco_registradores|registrador~1097\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1097_combout\ = ( \FD|banco_registradores|registrador~297_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~41_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (((\FD|banco_registradores|registrador~329_q\)) # (\FD|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\FD|banco_registradores|registrador~297_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~41_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (!\FD|PC|DOUT[2]~DUPLICATE_q\ & (\FD|banco_registradores|registrador~329_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~329_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~41_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~297_q\,
	combout => \FD|banco_registradores|registrador~1097_combout\);

-- Location: MLABCELL_X52_Y5_N12
\FD|ula|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~13_sumout\ = SUM(( (\FD|banco_registradores|registrador~1065_combout\ & ((\FD|ROM|memROM~1_combout\) # (\FD|ROM|memROM~0_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1097_combout\) # 
-- ((!\FD|ROM|memROM~0_combout\ & !\FD|ROM|memROM~2_combout\)))) ) + ( \FD|ula|Add0~10\ ))
-- \FD|ula|Add0~14\ = CARRY(( (\FD|banco_registradores|registrador~1065_combout\ & ((\FD|ROM|memROM~1_combout\) # (\FD|ROM|memROM~0_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1097_combout\) # 
-- ((!\FD|ROM|memROM~0_combout\ & !\FD|ROM|memROM~2_combout\)))) ) + ( \FD|ula|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001001001100000000000000000000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|ROM|ALT_INV_memROM~1_combout\,
	datac => \FD|ROM|ALT_INV_memROM~2_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1065_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1097_combout\,
	cin => \FD|ula|Add0~10\,
	sumout => \FD|ula|Add0~13_sumout\,
	cout => \FD|ula|Add0~14\);

-- Location: FF_X52_Y5_N17
\FD|banco_registradores|registrador~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~17_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~298_q\);

-- Location: FF_X53_Y5_N2
\FD|banco_registradores|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~17_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~42_q\);

-- Location: FF_X53_Y5_N14
\FD|banco_registradores|registrador~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~17_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~330_q\);

-- Location: LABCELL_X53_Y5_N0
\FD|banco_registradores|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1066_combout\ = ( \FD|banco_registradores|registrador~330_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~42_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (((\FD|banco_registradores|registrador~298_q\)) # (\FD|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\FD|banco_registradores|registrador~330_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~42_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (!\FD|PC|DOUT[2]~DUPLICATE_q\ & (\FD|banco_registradores|registrador~298_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~298_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~42_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~330_q\,
	combout => \FD|banco_registradores|registrador~1066_combout\);

-- Location: LABCELL_X53_Y5_N15
\FD|banco_registradores|registrador~1098\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1098_combout\ = ( \FD|ROM|memROM~0_combout\ & ( (!\FD|PC|DOUT[2]~DUPLICATE_q\ & ((\FD|banco_registradores|registrador~330_q\))) # (\FD|PC|DOUT[2]~DUPLICATE_q\ & (\FD|banco_registradores|registrador~298_q\)) ) ) # ( 
-- !\FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~42_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|banco_registradores|ALT_INV_registrador~42_q\,
	datab => \FD|banco_registradores|ALT_INV_registrador~298_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~330_q\,
	datad => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|registrador~1098_combout\);

-- Location: MLABCELL_X52_Y5_N15
\FD|ula|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~17_sumout\ = SUM(( (\FD|banco_registradores|registrador~1066_combout\ & ((\FD|ROM|memROM~1_combout\) # (\FD|ROM|memROM~0_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1098_combout\) # 
-- ((!\FD|ROM|memROM~0_combout\ & !\FD|ROM|memROM~2_combout\)))) ) + ( \FD|ula|Add0~14\ ))
-- \FD|ula|Add0~18\ = CARRY(( (\FD|banco_registradores|registrador~1066_combout\ & ((\FD|ROM|memROM~1_combout\) # (\FD|ROM|memROM~0_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1098_combout\) # 
-- ((!\FD|ROM|memROM~0_combout\ & !\FD|ROM|memROM~2_combout\)))) ) + ( \FD|ula|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001001001100000000000000000000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|ROM|ALT_INV_memROM~1_combout\,
	datac => \FD|ROM|ALT_INV_memROM~2_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1066_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1098_combout\,
	cin => \FD|ula|Add0~14\,
	sumout => \FD|ula|Add0~17_sumout\,
	cout => \FD|ula|Add0~18\);

-- Location: FF_X55_Y5_N14
\FD|banco_registradores|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~21_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~43_q\);

-- Location: FF_X52_Y5_N20
\FD|banco_registradores|registrador~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~21_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~299_q\);

-- Location: FF_X55_Y5_N26
\FD|banco_registradores|registrador~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~21_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~331_q\);

-- Location: LABCELL_X53_Y5_N45
\FD|banco_registradores|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1067_combout\ = ( \FD|banco_registradores|registrador~331_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~43_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (((\FD|banco_registradores|registrador~299_q\)) # (\FD|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\FD|banco_registradores|registrador~331_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~43_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (!\FD|PC|DOUT[2]~DUPLICATE_q\ & ((\FD|banco_registradores|registrador~299_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~43_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~299_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~331_q\,
	combout => \FD|banco_registradores|registrador~1067_combout\);

-- Location: LABCELL_X55_Y5_N6
\FD|banco_registradores|registrador~1099\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1099_combout\ = ( \FD|ROM|memROM~0_combout\ & ( (!\FD|PC|DOUT[2]~DUPLICATE_q\ & (\FD|banco_registradores|registrador~331_q\)) # (\FD|PC|DOUT[2]~DUPLICATE_q\ & ((\FD|banco_registradores|registrador~299_q\))) ) ) # ( 
-- !\FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~43_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \FD|banco_registradores|ALT_INV_registrador~43_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~331_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~299_q\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|registrador~1099_combout\);

-- Location: MLABCELL_X52_Y5_N18
\FD|ula|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~21_sumout\ = SUM(( (\FD|banco_registradores|registrador~1067_combout\ & ((\FD|ROM|memROM~1_combout\) # (\FD|ROM|memROM~0_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1099_combout\) # 
-- ((!\FD|ROM|memROM~0_combout\ & !\FD|ROM|memROM~2_combout\)))) ) + ( \FD|ula|Add0~18\ ))
-- \FD|ula|Add0~22\ = CARRY(( (\FD|banco_registradores|registrador~1067_combout\ & ((\FD|ROM|memROM~1_combout\) # (\FD|ROM|memROM~0_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1099_combout\) # 
-- ((!\FD|ROM|memROM~0_combout\ & !\FD|ROM|memROM~2_combout\)))) ) + ( \FD|ula|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001001001100000000000000000000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|ROM|ALT_INV_memROM~1_combout\,
	datac => \FD|ROM|ALT_INV_memROM~2_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1067_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1099_combout\,
	cin => \FD|ula|Add0~18\,
	sumout => \FD|ula|Add0~21_sumout\,
	cout => \FD|ula|Add0~22\);

-- Location: FF_X52_Y5_N23
\FD|banco_registradores|registrador~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~25_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~300_q\);

-- Location: FF_X51_Y5_N8
\FD|banco_registradores|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~25_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~44_q\);

-- Location: FF_X51_Y5_N56
\FD|banco_registradores|registrador~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~25_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~332_q\);

-- Location: LABCELL_X51_Y5_N27
\FD|banco_registradores|registrador~1100\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1100_combout\ = ( \FD|banco_registradores|registrador~332_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~44_q\)))) # (\FD|ROM|memROM~0_combout\ & (((!\FD|PC|DOUT[2]~DUPLICATE_q\)) # 
-- (\FD|banco_registradores|registrador~300_q\))) ) ) # ( !\FD|banco_registradores|registrador~332_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~44_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (\FD|banco_registradores|registrador~300_q\ & ((\FD|PC|DOUT[2]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110101001100000011010100111111001101010011111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|banco_registradores|ALT_INV_registrador~300_q\,
	datab => \FD|banco_registradores|ALT_INV_registrador~44_q\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~332_q\,
	combout => \FD|banco_registradores|registrador~1100_combout\);

-- Location: LABCELL_X51_Y5_N9
\FD|banco_registradores|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1068_combout\ = ( \FD|ROM|memROM~0_combout\ & ( (!\FD|PC|DOUT[2]~DUPLICATE_q\ & ((\FD|banco_registradores|registrador~300_q\))) # (\FD|PC|DOUT[2]~DUPLICATE_q\ & (\FD|banco_registradores|registrador~332_q\)) ) ) # ( 
-- !\FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~44_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|banco_registradores|ALT_INV_registrador~332_q\,
	datab => \FD|banco_registradores|ALT_INV_registrador~44_q\,
	datac => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~300_q\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|registrador~1068_combout\);

-- Location: MLABCELL_X52_Y5_N21
\FD|ula|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~25_sumout\ = SUM(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1100_combout\) # ((!\FD|ROM|memROM~0_combout\ & !\FD|ROM|memROM~2_combout\)))) ) + ( (\FD|banco_registradores|registrador~1068_combout\ & 
-- ((\FD|ROM|memROM~1_combout\) # (\FD|ROM|memROM~0_combout\))) ) + ( \FD|ula|Add0~22\ ))
-- \FD|ula|Add0~26\ = CARRY(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1100_combout\) # ((!\FD|ROM|memROM~0_combout\ & !\FD|ROM|memROM~2_combout\)))) ) + ( (\FD|banco_registradores|registrador~1068_combout\ & 
-- ((\FD|ROM|memROM~1_combout\) # (\FD|ROM|memROM~0_combout\))) ) + ( \FD|ula|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000100000000000000000000011001101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|ROM|ALT_INV_memROM~1_combout\,
	datac => \FD|ROM|ALT_INV_memROM~2_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1100_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1068_combout\,
	cin => \FD|ula|Add0~22\,
	sumout => \FD|ula|Add0~25_sumout\,
	cout => \FD|ula|Add0~26\);

-- Location: FF_X52_Y5_N26
\FD|banco_registradores|registrador~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~29_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~301_q\);

-- Location: FF_X53_Y5_N44
\FD|banco_registradores|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~29_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~45_q\);

-- Location: FF_X53_Y5_N8
\FD|banco_registradores|registrador~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~29_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~333_q\);

-- Location: LABCELL_X53_Y5_N42
\FD|banco_registradores|registrador~1069\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1069_combout\ = ( \FD|banco_registradores|registrador~333_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~45_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (((\FD|banco_registradores|registrador~301_q\)) # (\FD|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\FD|banco_registradores|registrador~333_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~45_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (!\FD|PC|DOUT[2]~DUPLICATE_q\ & (\FD|banco_registradores|registrador~301_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~301_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~45_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~333_q\,
	combout => \FD|banco_registradores|registrador~1069_combout\);

-- Location: LABCELL_X53_Y5_N6
\FD|banco_registradores|registrador~1101\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1101_combout\ = ( \FD|banco_registradores|registrador~45_q\ & ( (!\FD|ROM|memROM~0_combout\) # ((!\FD|PC|DOUT[2]~DUPLICATE_q\ & ((\FD|banco_registradores|registrador~333_q\))) # (\FD|PC|DOUT[2]~DUPLICATE_q\ & 
-- (\FD|banco_registradores|registrador~301_q\))) ) ) # ( !\FD|banco_registradores|registrador~45_q\ & ( (\FD|ROM|memROM~0_combout\ & ((!\FD|PC|DOUT[2]~DUPLICATE_q\ & ((\FD|banco_registradores|registrador~333_q\))) # (\FD|PC|DOUT[2]~DUPLICATE_q\ & 
-- (\FD|banco_registradores|registrador~301_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~301_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~333_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~45_q\,
	combout => \FD|banco_registradores|registrador~1101_combout\);

-- Location: MLABCELL_X52_Y5_N24
\FD|ula|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~29_sumout\ = SUM(( (\FD|banco_registradores|registrador~1069_combout\ & ((\FD|ROM|memROM~1_combout\) # (\FD|ROM|memROM~0_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1101_combout\) # 
-- ((!\FD|ROM|memROM~0_combout\ & !\FD|ROM|memROM~2_combout\)))) ) + ( \FD|ula|Add0~26\ ))
-- \FD|ula|Add0~30\ = CARRY(( (\FD|banco_registradores|registrador~1069_combout\ & ((\FD|ROM|memROM~1_combout\) # (\FD|ROM|memROM~0_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1101_combout\) # 
-- ((!\FD|ROM|memROM~0_combout\ & !\FD|ROM|memROM~2_combout\)))) ) + ( \FD|ula|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001001001100000000000000000000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|ROM|ALT_INV_memROM~1_combout\,
	datac => \FD|ROM|ALT_INV_memROM~2_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1069_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1101_combout\,
	cin => \FD|ula|Add0~26\,
	sumout => \FD|ula|Add0~29_sumout\,
	cout => \FD|ula|Add0~30\);

-- Location: FF_X51_Y5_N26
\FD|banco_registradores|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~33_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~46_q\);

-- Location: FF_X52_Y5_N29
\FD|banco_registradores|registrador~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~33_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~302_q\);

-- Location: FF_X51_Y5_N14
\FD|banco_registradores|registrador~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~33_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~334_q\);

-- Location: LABCELL_X51_Y5_N21
\FD|banco_registradores|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1070_combout\ = ( \FD|banco_registradores|registrador~334_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~46_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (((\FD|banco_registradores|registrador~302_q\)) # (\FD|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\FD|banco_registradores|registrador~334_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~46_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (!\FD|PC|DOUT[2]~DUPLICATE_q\ & ((\FD|banco_registradores|registrador~302_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000010111000011101001111110001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~46_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~302_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~334_q\,
	combout => \FD|banco_registradores|registrador~1070_combout\);

-- Location: LABCELL_X51_Y5_N15
\FD|banco_registradores|registrador~1102\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1102_combout\ = ( \FD|ROM|memROM~0_combout\ & ( (!\FD|PC|DOUT[2]~DUPLICATE_q\ & (\FD|banco_registradores|registrador~334_q\)) # (\FD|PC|DOUT[2]~DUPLICATE_q\ & ((\FD|banco_registradores|registrador~302_q\))) ) ) # ( 
-- !\FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~46_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|banco_registradores|ALT_INV_registrador~46_q\,
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~334_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~302_q\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|registrador~1102_combout\);

-- Location: MLABCELL_X52_Y5_N27
\FD|ula|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~33_sumout\ = SUM(( (\FD|banco_registradores|registrador~1070_combout\ & ((\FD|ROM|memROM~1_combout\) # (\FD|ROM|memROM~0_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1102_combout\) # 
-- ((!\FD|ROM|memROM~0_combout\ & !\FD|ROM|memROM~2_combout\)))) ) + ( \FD|ula|Add0~30\ ))
-- \FD|ula|Add0~34\ = CARRY(( (\FD|banco_registradores|registrador~1070_combout\ & ((\FD|ROM|memROM~1_combout\) # (\FD|ROM|memROM~0_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1102_combout\) # 
-- ((!\FD|ROM|memROM~0_combout\ & !\FD|ROM|memROM~2_combout\)))) ) + ( \FD|ula|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001001001100000000000000000000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|ROM|ALT_INV_memROM~1_combout\,
	datac => \FD|ROM|ALT_INV_memROM~2_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1070_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1102_combout\,
	cin => \FD|ula|Add0~30\,
	sumout => \FD|ula|Add0~33_sumout\,
	cout => \FD|ula|Add0~34\);

-- Location: FF_X51_Y5_N47
\FD|banco_registradores|registrador~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~37_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~335_q\);

-- Location: FF_X53_Y5_N53
\FD|banco_registradores|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~37_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~47_q\);

-- Location: FF_X52_Y5_N32
\FD|banco_registradores|registrador~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~37_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~303_q\);

-- Location: LABCELL_X53_Y5_N51
\FD|banco_registradores|registrador~1071\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1071_combout\ = ( \FD|banco_registradores|registrador~303_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~47_q\)))) # (\FD|ROM|memROM~0_combout\ & ((!\FD|PC|DOUT[2]~DUPLICATE_q\) # 
-- ((\FD|banco_registradores|registrador~335_q\)))) ) ) # ( !\FD|banco_registradores|registrador~303_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~47_q\)))) # (\FD|ROM|memROM~0_combout\ & (\FD|PC|DOUT[2]~DUPLICATE_q\ & 
-- (\FD|banco_registradores|registrador~335_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~335_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~47_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~303_q\,
	combout => \FD|banco_registradores|registrador~1071_combout\);

-- Location: LABCELL_X53_Y5_N30
\FD|banco_registradores|registrador~1103\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1103_combout\ = ( \FD|banco_registradores|registrador~303_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~47_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (((\FD|banco_registradores|registrador~335_q\)) # (\FD|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\FD|banco_registradores|registrador~303_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~47_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (!\FD|PC|DOUT[2]~DUPLICATE_q\ & ((\FD|banco_registradores|registrador~335_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~47_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~335_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~303_q\,
	combout => \FD|banco_registradores|registrador~1103_combout\);

-- Location: MLABCELL_X52_Y5_N30
\FD|ula|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~37_sumout\ = SUM(( (\FD|banco_registradores|registrador~1071_combout\ & ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1103_combout\) # 
-- ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( \FD|ula|Add0~34\ ))
-- \FD|ula|Add0~38\ = CARRY(( (\FD|banco_registradores|registrador~1071_combout\ & ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1103_combout\) # 
-- ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( \FD|ula|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001001001100000000000000000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~2_combout\,
	datab => \FD|ROM|ALT_INV_memROM~1_combout\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1071_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1103_combout\,
	cin => \FD|ula|Add0~34\,
	sumout => \FD|ula|Add0~37_sumout\,
	cout => \FD|ula|Add0~38\);

-- Location: FF_X52_Y5_N35
\FD|banco_registradores|registrador~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~41_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~304_q\);

-- Location: FF_X53_Y5_N11
\FD|banco_registradores|registrador~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~41_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~336_q\);

-- Location: FF_X53_Y5_N20
\FD|banco_registradores|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~41_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~48_q\);

-- Location: LABCELL_X53_Y5_N9
\FD|banco_registradores|registrador~1104\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1104_combout\ = ( \FD|banco_registradores|registrador~48_q\ & ( (!\FD|ROM|memROM~0_combout\) # ((!\FD|PC|DOUT[2]~DUPLICATE_q\ & ((\FD|banco_registradores|registrador~336_q\))) # (\FD|PC|DOUT[2]~DUPLICATE_q\ & 
-- (\FD|banco_registradores|registrador~304_q\))) ) ) # ( !\FD|banco_registradores|registrador~48_q\ & ( (\FD|ROM|memROM~0_combout\ & ((!\FD|PC|DOUT[2]~DUPLICATE_q\ & ((\FD|banco_registradores|registrador~336_q\))) # (\FD|PC|DOUT[2]~DUPLICATE_q\ & 
-- (\FD|banco_registradores|registrador~304_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~304_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~336_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~48_q\,
	combout => \FD|banco_registradores|registrador~1104_combout\);

-- Location: LABCELL_X53_Y5_N18
\FD|banco_registradores|registrador~1072\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1072_combout\ = ( \FD|banco_registradores|registrador~336_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~48_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (((\FD|banco_registradores|registrador~304_q\)) # (\FD|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\FD|banco_registradores|registrador~336_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~48_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (!\FD|PC|DOUT[2]~DUPLICATE_q\ & (\FD|banco_registradores|registrador~304_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~304_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~48_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~336_q\,
	combout => \FD|banco_registradores|registrador~1072_combout\);

-- Location: MLABCELL_X52_Y5_N33
\FD|ula|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~41_sumout\ = SUM(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1104_combout\) # ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( (\FD|banco_registradores|registrador~1072_combout\ & 
-- ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( \FD|ula|Add0~38\ ))
-- \FD|ula|Add0~42\ = CARRY(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1104_combout\) # ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( (\FD|banco_registradores|registrador~1072_combout\ & 
-- ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( \FD|ula|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111100000000000000000000000011001101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~2_combout\,
	datab => \FD|ROM|ALT_INV_memROM~1_combout\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1104_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1072_combout\,
	cin => \FD|ula|Add0~38\,
	sumout => \FD|ula|Add0~41_sumout\,
	cout => \FD|ula|Add0~42\);

-- Location: FF_X53_Y5_N35
\FD|banco_registradores|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~45_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~49_q\);

-- Location: FF_X53_Y5_N37
\FD|banco_registradores|registrador~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~45_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~337_q\);

-- Location: FF_X52_Y5_N38
\FD|banco_registradores|registrador~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~45_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~305_q\);

-- Location: LABCELL_X53_Y5_N36
\FD|banco_registradores|registrador~1105\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1105_combout\ = ( \FD|banco_registradores|registrador~305_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~49_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (((\FD|banco_registradores|registrador~337_q\)) # (\FD|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\FD|banco_registradores|registrador~305_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~49_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (!\FD|PC|DOUT[2]~DUPLICATE_q\ & ((\FD|banco_registradores|registrador~337_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~49_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~337_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~305_q\,
	combout => \FD|banco_registradores|registrador~1105_combout\);

-- Location: LABCELL_X53_Y5_N33
\FD|banco_registradores|registrador~1073\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1073_combout\ = ( \FD|banco_registradores|registrador~305_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~49_q\)))) # (\FD|ROM|memROM~0_combout\ & ((!\FD|PC|DOUT[2]~DUPLICATE_q\) # 
-- ((\FD|banco_registradores|registrador~337_q\)))) ) ) # ( !\FD|banco_registradores|registrador~305_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~49_q\)))) # (\FD|ROM|memROM~0_combout\ & (\FD|PC|DOUT[2]~DUPLICATE_q\ & 
-- (\FD|banco_registradores|registrador~337_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~337_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~49_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~305_q\,
	combout => \FD|banco_registradores|registrador~1073_combout\);

-- Location: MLABCELL_X52_Y5_N36
\FD|ula|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~45_sumout\ = SUM(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1105_combout\) # ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( (\FD|banco_registradores|registrador~1073_combout\ & 
-- ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( \FD|ula|Add0~42\ ))
-- \FD|ula|Add0~46\ = CARRY(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1105_combout\) # ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( (\FD|banco_registradores|registrador~1073_combout\ & 
-- ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( \FD|ula|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111100000000000000000000000011001101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~2_combout\,
	datab => \FD|ROM|ALT_INV_memROM~1_combout\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1105_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1073_combout\,
	cin => \FD|ula|Add0~42\,
	sumout => \FD|ula|Add0~45_sumout\,
	cout => \FD|ula|Add0~46\);

-- Location: FF_X52_Y5_N41
\FD|banco_registradores|registrador~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~49_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~306_q\);

-- Location: FF_X53_Y5_N50
\FD|banco_registradores|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~49_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~50_q\);

-- Location: FF_X53_Y5_N25
\FD|banco_registradores|registrador~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~49_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~338_q\);

-- Location: LABCELL_X53_Y5_N48
\FD|banco_registradores|registrador~1106\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1106_combout\ = ( \FD|banco_registradores|registrador~338_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~50_q\)))) # (\FD|ROM|memROM~0_combout\ & ((!\FD|PC|DOUT[2]~DUPLICATE_q\) # 
-- ((\FD|banco_registradores|registrador~306_q\)))) ) ) # ( !\FD|banco_registradores|registrador~338_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~50_q\)))) # (\FD|ROM|memROM~0_combout\ & (\FD|PC|DOUT[2]~DUPLICATE_q\ & 
-- (\FD|banco_registradores|registrador~306_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~306_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~50_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~338_q\,
	combout => \FD|banco_registradores|registrador~1106_combout\);

-- Location: LABCELL_X53_Y5_N24
\FD|banco_registradores|registrador~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1074_combout\ = ( \FD|banco_registradores|registrador~50_q\ & ( (!\FD|ROM|memROM~0_combout\) # ((!\FD|PC|DOUT[2]~DUPLICATE_q\ & (\FD|banco_registradores|registrador~306_q\)) # (\FD|PC|DOUT[2]~DUPLICATE_q\ & 
-- ((\FD|banco_registradores|registrador~338_q\)))) ) ) # ( !\FD|banco_registradores|registrador~50_q\ & ( (\FD|ROM|memROM~0_combout\ & ((!\FD|PC|DOUT[2]~DUPLICATE_q\ & (\FD|banco_registradores|registrador~306_q\)) # (\FD|PC|DOUT[2]~DUPLICATE_q\ & 
-- ((\FD|banco_registradores|registrador~338_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~306_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~338_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~50_q\,
	combout => \FD|banco_registradores|registrador~1074_combout\);

-- Location: MLABCELL_X52_Y5_N39
\FD|ula|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~49_sumout\ = SUM(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1106_combout\) # ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( (\FD|banco_registradores|registrador~1074_combout\ & 
-- ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( \FD|ula|Add0~46\ ))
-- \FD|ula|Add0~50\ = CARRY(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1106_combout\) # ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( (\FD|banco_registradores|registrador~1074_combout\ & 
-- ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( \FD|ula|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111100000000000000000000000011001101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~2_combout\,
	datab => \FD|ROM|ALT_INV_memROM~1_combout\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1106_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1074_combout\,
	cin => \FD|ula|Add0~46\,
	sumout => \FD|ula|Add0~49_sumout\,
	cout => \FD|ula|Add0~50\);

-- Location: FF_X52_Y5_N44
\FD|banco_registradores|registrador~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~53_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~307_q\);

-- Location: FF_X53_Y5_N28
\FD|banco_registradores|registrador~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~53_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~339_q\);

-- Location: FF_X53_Y5_N56
\FD|banco_registradores|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~53_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~51_q\);

-- Location: LABCELL_X55_Y5_N39
\FD|banco_registradores|registrador~1075\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1075_combout\ = ( \FD|banco_registradores|registrador~51_q\ & ( (!\FD|ROM|memROM~0_combout\) # ((!\FD|PC|DOUT[2]~DUPLICATE_q\ & (\FD|banco_registradores|registrador~307_q\)) # (\FD|PC|DOUT[2]~DUPLICATE_q\ & 
-- ((\FD|banco_registradores|registrador~339_q\)))) ) ) # ( !\FD|banco_registradores|registrador~51_q\ & ( (\FD|ROM|memROM~0_combout\ & ((!\FD|PC|DOUT[2]~DUPLICATE_q\ & (\FD|banco_registradores|registrador~307_q\)) # (\FD|PC|DOUT[2]~DUPLICATE_q\ & 
-- ((\FD|banco_registradores|registrador~339_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100010000001111011101110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|banco_registradores|ALT_INV_registrador~307_q\,
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~339_q\,
	datad => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~51_q\,
	combout => \FD|banco_registradores|registrador~1075_combout\);

-- Location: LABCELL_X53_Y5_N27
\FD|banco_registradores|registrador~1107\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1107_combout\ = ( \FD|banco_registradores|registrador~51_q\ & ( (!\FD|ROM|memROM~0_combout\) # ((!\FD|PC|DOUT[2]~DUPLICATE_q\ & ((\FD|banco_registradores|registrador~339_q\))) # (\FD|PC|DOUT[2]~DUPLICATE_q\ & 
-- (\FD|banco_registradores|registrador~307_q\))) ) ) # ( !\FD|banco_registradores|registrador~51_q\ & ( (\FD|ROM|memROM~0_combout\ & ((!\FD|PC|DOUT[2]~DUPLICATE_q\ & ((\FD|banco_registradores|registrador~339_q\))) # (\FD|PC|DOUT[2]~DUPLICATE_q\ & 
-- (\FD|banco_registradores|registrador~307_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~307_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~339_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~51_q\,
	combout => \FD|banco_registradores|registrador~1107_combout\);

-- Location: MLABCELL_X52_Y5_N42
\FD|ula|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~53_sumout\ = SUM(( (\FD|banco_registradores|registrador~1075_combout\ & ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1107_combout\) # 
-- ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( \FD|ula|Add0~50\ ))
-- \FD|ula|Add0~54\ = CARRY(( (\FD|banco_registradores|registrador~1075_combout\ & ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1107_combout\) # 
-- ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( \FD|ula|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001001001100000000000000000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~2_combout\,
	datab => \FD|ROM|ALT_INV_memROM~1_combout\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1075_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1107_combout\,
	cin => \FD|ula|Add0~50\,
	sumout => \FD|ula|Add0~53_sumout\,
	cout => \FD|ula|Add0~54\);

-- Location: FF_X52_Y5_N47
\FD|banco_registradores|registrador~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~57_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~308_q\);

-- Location: FF_X51_Y5_N2
\FD|banco_registradores|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~57_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~52_q\);

-- Location: FF_X51_Y5_N38
\FD|banco_registradores|registrador~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~57_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~340_q\);

-- Location: LABCELL_X51_Y5_N3
\FD|banco_registradores|registrador~1108\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1108_combout\ = ( \FD|banco_registradores|registrador~340_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~52_q\)))) # (\FD|ROM|memROM~0_combout\ & (((!\FD|PC|DOUT[2]~DUPLICATE_q\)) # 
-- (\FD|banco_registradores|registrador~308_q\))) ) ) # ( !\FD|banco_registradores|registrador~340_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~52_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (\FD|banco_registradores|registrador~308_q\ & (\FD|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100110001111111010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|banco_registradores|ALT_INV_registrador~308_q\,
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~52_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~340_q\,
	combout => \FD|banco_registradores|registrador~1108_combout\);

-- Location: LABCELL_X51_Y5_N42
\FD|banco_registradores|registrador~1076\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1076_combout\ = ( \FD|banco_registradores|registrador~308_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~52_q\)))) # (\FD|ROM|memROM~0_combout\ & ((!\FD|PC|DOUT[2]~DUPLICATE_q\) # 
-- ((\FD|banco_registradores|registrador~340_q\)))) ) ) # ( !\FD|banco_registradores|registrador~308_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~52_q\)))) # (\FD|ROM|memROM~0_combout\ & (\FD|PC|DOUT[2]~DUPLICATE_q\ & 
-- (\FD|banco_registradores|registrador~340_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100100011111011110010001111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~340_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~52_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~308_q\,
	combout => \FD|banco_registradores|registrador~1076_combout\);

-- Location: MLABCELL_X52_Y5_N45
\FD|ula|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~57_sumout\ = SUM(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1108_combout\) # ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( (\FD|banco_registradores|registrador~1076_combout\ & 
-- ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( \FD|ula|Add0~54\ ))
-- \FD|ula|Add0~58\ = CARRY(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1108_combout\) # ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( (\FD|banco_registradores|registrador~1076_combout\ & 
-- ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( \FD|ula|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111100000000000000000000000011001101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~2_combout\,
	datab => \FD|ROM|ALT_INV_memROM~1_combout\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1108_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1076_combout\,
	cin => \FD|ula|Add0~54\,
	sumout => \FD|ula|Add0~57_sumout\,
	cout => \FD|ula|Add0~58\);

-- Location: FF_X51_Y5_N53
\FD|banco_registradores|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~61_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~53_q\);

-- Location: FF_X52_Y5_N50
\FD|banco_registradores|registrador~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~61_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~309_q\);

-- Location: FF_X51_Y5_N44
\FD|banco_registradores|registrador~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~61_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~341_q\);

-- Location: LABCELL_X51_Y5_N48
\FD|banco_registradores|registrador~1109\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1109_combout\ = ( \FD|banco_registradores|registrador~341_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~53_q\)))) # (\FD|ROM|memROM~0_combout\ & ((!\FD|PC|DOUT[2]~DUPLICATE_q\) # 
-- ((\FD|banco_registradores|registrador~309_q\)))) ) ) # ( !\FD|banco_registradores|registrador~341_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~53_q\)))) # (\FD|ROM|memROM~0_combout\ & (\FD|PC|DOUT[2]~DUPLICATE_q\ & 
-- ((\FD|banco_registradores|registrador~309_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~53_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~309_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~341_q\,
	combout => \FD|banco_registradores|registrador~1109_combout\);

-- Location: LABCELL_X51_Y5_N30
\FD|banco_registradores|registrador~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1077_combout\ = ( \FD|banco_registradores|registrador~341_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~53_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (((\FD|banco_registradores|registrador~309_q\)) # (\FD|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\FD|banco_registradores|registrador~341_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~53_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (!\FD|PC|DOUT[2]~DUPLICATE_q\ & ((\FD|banco_registradores|registrador~309_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000010111000011101001111110001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~53_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~309_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~341_q\,
	combout => \FD|banco_registradores|registrador~1077_combout\);

-- Location: MLABCELL_X52_Y5_N48
\FD|ula|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~61_sumout\ = SUM(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1109_combout\) # ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( (\FD|banco_registradores|registrador~1077_combout\ & 
-- ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( \FD|ula|Add0~58\ ))
-- \FD|ula|Add0~62\ = CARRY(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1109_combout\) # ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( (\FD|banco_registradores|registrador~1077_combout\ & 
-- ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( \FD|ula|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010000000000000000000000101010101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ROM|ALT_INV_memROM~2_combout\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1109_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1077_combout\,
	cin => \FD|ula|Add0~58\,
	sumout => \FD|ula|Add0~61_sumout\,
	cout => \FD|ula|Add0~62\);

-- Location: FF_X51_Y5_N41
\FD|banco_registradores|registrador~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~65_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~342_q\);

-- Location: FF_X51_Y5_N35
\FD|banco_registradores|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~65_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~54_q\);

-- Location: FF_X52_Y5_N53
\FD|banco_registradores|registrador~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~65_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~310_q\);

-- Location: LABCELL_X51_Y5_N33
\FD|banco_registradores|registrador~1110\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1110_combout\ = ( \FD|banco_registradores|registrador~310_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~54_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (((\FD|banco_registradores|registrador~342_q\)) # (\FD|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\FD|banco_registradores|registrador~310_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~54_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (!\FD|PC|DOUT[2]~DUPLICATE_q\ & (\FD|banco_registradores|registrador~342_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~342_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~54_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~310_q\,
	combout => \FD|banco_registradores|registrador~1110_combout\);

-- Location: LABCELL_X51_Y5_N39
\FD|banco_registradores|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1078_combout\ = ( \FD|PC|DOUT[2]~DUPLICATE_q\ & ( (!\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~54_q\)) # (\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~342_q\))) ) ) # ( 
-- !\FD|PC|DOUT[2]~DUPLICATE_q\ & ( (!\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~54_q\)) # (\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~310_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|banco_registradores|ALT_INV_registrador~54_q\,
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~310_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~342_q\,
	dataf => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \FD|banco_registradores|registrador~1078_combout\);

-- Location: MLABCELL_X52_Y5_N51
\FD|ula|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~65_sumout\ = SUM(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1110_combout\) # ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( (\FD|banco_registradores|registrador~1078_combout\ & 
-- ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( \FD|ula|Add0~62\ ))
-- \FD|ula|Add0~66\ = CARRY(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1110_combout\) # ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( (\FD|banco_registradores|registrador~1078_combout\ & 
-- ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( \FD|ula|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010000000000000000000000101010101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ROM|ALT_INV_memROM~2_combout\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1110_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1078_combout\,
	cin => \FD|ula|Add0~62\,
	sumout => \FD|ula|Add0~65_sumout\,
	cout => \FD|ula|Add0~66\);

-- Location: FF_X52_Y5_N5
\FD|banco_registradores|registrador~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~69_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~343_q\);

-- Location: FF_X53_Y5_N23
\FD|banco_registradores|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~69_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~55_q\);

-- Location: FF_X52_Y5_N56
\FD|banco_registradores|registrador~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~69_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~311_q\);

-- Location: LABCELL_X53_Y5_N21
\FD|banco_registradores|registrador~1111\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1111_combout\ = ( \FD|banco_registradores|registrador~311_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~55_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (((\FD|banco_registradores|registrador~343_q\)) # (\FD|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\FD|banco_registradores|registrador~311_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~55_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (!\FD|PC|DOUT[2]~DUPLICATE_q\ & (\FD|banco_registradores|registrador~343_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~343_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~55_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~311_q\,
	combout => \FD|banco_registradores|registrador~1111_combout\);

-- Location: LABCELL_X53_Y5_N39
\FD|banco_registradores|registrador~1079\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1079_combout\ = ( \FD|banco_registradores|registrador~311_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~55_q\)))) # (\FD|ROM|memROM~0_combout\ & ((!\FD|PC|DOUT[2]~DUPLICATE_q\) # 
-- ((\FD|banco_registradores|registrador~343_q\)))) ) ) # ( !\FD|banco_registradores|registrador~311_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~55_q\)))) # (\FD|ROM|memROM~0_combout\ & (\FD|PC|DOUT[2]~DUPLICATE_q\ & 
-- (\FD|banco_registradores|registrador~343_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~343_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~55_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~311_q\,
	combout => \FD|banco_registradores|registrador~1079_combout\);

-- Location: MLABCELL_X52_Y5_N54
\FD|ula|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~69_sumout\ = SUM(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1111_combout\) # ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( (\FD|banco_registradores|registrador~1079_combout\ & 
-- ((\FD|ROM|memROM~1_combout\) # (\FD|ROM|memROM~0_combout\))) ) + ( \FD|ula|Add0~66\ ))
-- \FD|ula|Add0~70\ = CARRY(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1111_combout\) # ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( (\FD|banco_registradores|registrador~1079_combout\ & 
-- ((\FD|ROM|memROM~1_combout\) # (\FD|ROM|memROM~0_combout\))) ) + ( \FD|ula|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111100000000000000000000000000111101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~2_combout\,
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|ROM|ALT_INV_memROM~1_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1111_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1079_combout\,
	cin => \FD|ula|Add0~66\,
	sumout => \FD|ula|Add0~69_sumout\,
	cout => \FD|ula|Add0~70\);

-- Location: FF_X52_Y5_N59
\FD|banco_registradores|registrador~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~73_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~312_q\);

-- Location: FF_X51_Y5_N20
\FD|banco_registradores|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~73_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~56_q\);

-- Location: FF_X51_Y5_N58
\FD|banco_registradores|registrador~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~73_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~344_q\);

-- Location: LABCELL_X51_Y5_N18
\FD|banco_registradores|registrador~1112\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1112_combout\ = ( \FD|banco_registradores|registrador~344_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~56_q\)))) # (\FD|ROM|memROM~0_combout\ & ((!\FD|PC|DOUT[2]~DUPLICATE_q\) # 
-- ((\FD|banco_registradores|registrador~312_q\)))) ) ) # ( !\FD|banco_registradores|registrador~344_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~56_q\)))) # (\FD|ROM|memROM~0_combout\ & (\FD|PC|DOUT[2]~DUPLICATE_q\ & 
-- (\FD|banco_registradores|registrador~312_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100100011111011110010001111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~312_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~56_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~344_q\,
	combout => \FD|banco_registradores|registrador~1112_combout\);

-- Location: LABCELL_X51_Y5_N57
\FD|banco_registradores|registrador~1080\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1080_combout\ = ( \FD|PC|DOUT[2]~DUPLICATE_q\ & ( (!\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~56_q\)) # (\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~344_q\))) ) ) # ( 
-- !\FD|PC|DOUT[2]~DUPLICATE_q\ & ( (!\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~56_q\)) # (\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~312_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|banco_registradores|ALT_INV_registrador~56_q\,
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~312_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~344_q\,
	dataf => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \FD|banco_registradores|registrador~1080_combout\);

-- Location: MLABCELL_X52_Y5_N57
\FD|ula|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~73_sumout\ = SUM(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1112_combout\) # ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( (\FD|banco_registradores|registrador~1080_combout\ & 
-- ((\FD|ROM|memROM~1_combout\) # (\FD|ROM|memROM~0_combout\))) ) + ( \FD|ula|Add0~70\ ))
-- \FD|ula|Add0~74\ = CARRY(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1112_combout\) # ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( (\FD|banco_registradores|registrador~1080_combout\ & 
-- ((\FD|ROM|memROM~1_combout\) # (\FD|ROM|memROM~0_combout\))) ) + ( \FD|ula|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111100000000000000000000000000111101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~2_combout\,
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|ROM|ALT_INV_memROM~1_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1112_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1080_combout\,
	cin => \FD|ula|Add0~70\,
	sumout => \FD|ula|Add0~73_sumout\,
	cout => \FD|ula|Add0~74\);

-- Location: FF_X53_Y4_N35
\FD|banco_registradores|registrador~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~77_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~345_q\);

-- Location: FF_X52_Y4_N2
\FD|banco_registradores|registrador~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~77_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~313_q\);

-- Location: FF_X53_Y4_N53
\FD|banco_registradores|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~77_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~57_q\);

-- Location: LABCELL_X53_Y4_N48
\FD|banco_registradores|registrador~1081\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1081_combout\ = ( \FD|banco_registradores|registrador~57_q\ & ( (!\FD|ROM|memROM~0_combout\) # ((!\FD|PC|DOUT\(2) & ((\FD|banco_registradores|registrador~313_q\))) # (\FD|PC|DOUT\(2) & 
-- (\FD|banco_registradores|registrador~345_q\))) ) ) # ( !\FD|banco_registradores|registrador~57_q\ & ( (\FD|ROM|memROM~0_combout\ & ((!\FD|PC|DOUT\(2) & ((\FD|banco_registradores|registrador~313_q\))) # (\FD|PC|DOUT\(2) & 
-- (\FD|banco_registradores|registrador~345_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT\(2),
	datac => \FD|banco_registradores|ALT_INV_registrador~345_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~313_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~57_q\,
	combout => \FD|banco_registradores|registrador~1081_combout\);

-- Location: MLABCELL_X52_Y4_N48
\FD|banco_registradores|registrador~1113\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1113_combout\ = ( \FD|banco_registradores|registrador~57_q\ & ( (!\FD|ROM|memROM~0_combout\) # ((!\FD|PC|DOUT\(2) & (\FD|banco_registradores|registrador~345_q\)) # (\FD|PC|DOUT\(2) & 
-- ((\FD|banco_registradores|registrador~313_q\)))) ) ) # ( !\FD|banco_registradores|registrador~57_q\ & ( (\FD|ROM|memROM~0_combout\ & ((!\FD|PC|DOUT\(2) & (\FD|banco_registradores|registrador~345_q\)) # (\FD|PC|DOUT\(2) & 
-- ((\FD|banco_registradores|registrador~313_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT\(2),
	datac => \FD|banco_registradores|ALT_INV_registrador~345_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~313_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~57_q\,
	combout => \FD|banco_registradores|registrador~1113_combout\);

-- Location: MLABCELL_X52_Y4_N0
\FD|ula|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~77_sumout\ = SUM(( (\FD|banco_registradores|registrador~1081_combout\ & ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1113_combout\) # 
-- ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( \FD|ula|Add0~74\ ))
-- \FD|ula|Add0~78\ = CARRY(( (\FD|banco_registradores|registrador~1081_combout\ & ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1113_combout\) # 
-- ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( \FD|ula|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001010100000000000000000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ROM|ALT_INV_memROM~2_combout\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1081_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1113_combout\,
	cin => \FD|ula|Add0~74\,
	sumout => \FD|ula|Add0~77_sumout\,
	cout => \FD|ula|Add0~78\);

-- Location: FF_X51_Y4_N41
\FD|banco_registradores|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~81_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~58_q\);

-- Location: FF_X52_Y4_N5
\FD|banco_registradores|registrador~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~81_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~314_q\);

-- Location: FF_X51_Y4_N50
\FD|banco_registradores|registrador~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~81_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~346_q\);

-- Location: LABCELL_X51_Y4_N24
\FD|banco_registradores|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1082_combout\ = ( \FD|PC|DOUT\(2) & ( (!\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~58_q\)) # (\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~346_q\))) ) ) # ( !\FD|PC|DOUT\(2) & 
-- ( (!\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~58_q\)) # (\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~314_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~58_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~314_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~346_q\,
	dataf => \FD|PC|ALT_INV_DOUT\(2),
	combout => \FD|banco_registradores|registrador~1082_combout\);

-- Location: LABCELL_X51_Y4_N51
\FD|banco_registradores|registrador~1114\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1114_combout\ = ( \FD|banco_registradores|registrador~346_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~58_q\)))) # (\FD|ROM|memROM~0_combout\ & ((!\FD|PC|DOUT\(2)) # 
-- ((\FD|banco_registradores|registrador~314_q\)))) ) ) # ( !\FD|banco_registradores|registrador~346_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~58_q\)))) # (\FD|ROM|memROM~0_combout\ & (\FD|PC|DOUT\(2) & 
-- ((\FD|banco_registradores|registrador~314_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT\(2),
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~58_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~314_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~346_q\,
	combout => \FD|banco_registradores|registrador~1114_combout\);

-- Location: MLABCELL_X52_Y4_N3
\FD|ula|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~81_sumout\ = SUM(( (\FD|banco_registradores|registrador~1082_combout\ & ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1114_combout\) # 
-- ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( \FD|ula|Add0~78\ ))
-- \FD|ula|Add0~82\ = CARRY(( (\FD|banco_registradores|registrador~1082_combout\ & ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1114_combout\) # 
-- ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( \FD|ula|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001010100000000000000000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ROM|ALT_INV_memROM~2_combout\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1082_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1114_combout\,
	cin => \FD|ula|Add0~78\,
	sumout => \FD|ula|Add0~81_sumout\,
	cout => \FD|ula|Add0~82\);

-- Location: FF_X51_Y4_N34
\FD|banco_registradores|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~85_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~59_q\);

-- Location: FF_X52_Y4_N47
\FD|banco_registradores|registrador~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~85_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~347_q\);

-- Location: FF_X52_Y4_N8
\FD|banco_registradores|registrador~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~85_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~315_q\);

-- Location: MLABCELL_X52_Y4_N45
\FD|banco_registradores|registrador~1115\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1115_combout\ = ( \FD|banco_registradores|registrador~315_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~59_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (((\FD|banco_registradores|registrador~347_q\)) # (\FD|PC|DOUT\(2)))) ) ) # ( !\FD|banco_registradores|registrador~315_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~59_q\)))) # (\FD|ROM|memROM~0_combout\ & (!\FD|PC|DOUT\(2) & 
-- ((\FD|banco_registradores|registrador~347_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT\(2),
	datac => \FD|banco_registradores|ALT_INV_registrador~59_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~347_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~315_q\,
	combout => \FD|banco_registradores|registrador~1115_combout\);

-- Location: FF_X51_Y4_N35
\FD|banco_registradores|registrador~59DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~85_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~59DUPLICATE_q\);

-- Location: LABCELL_X51_Y4_N30
\FD|banco_registradores|registrador~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1083_combout\ = ( \FD|PC|DOUT\(2) & ( \FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~347_q\ ) ) ) # ( !\FD|PC|DOUT\(2) & ( \FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~315_q\ ) ) 
-- ) # ( \FD|PC|DOUT\(2) & ( !\FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~59DUPLICATE_q\ ) ) ) # ( !\FD|PC|DOUT\(2) & ( !\FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~59DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|banco_registradores|ALT_INV_registrador~59DUPLICATE_q\,
	datab => \FD|banco_registradores|ALT_INV_registrador~315_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~347_q\,
	datae => \FD|PC|ALT_INV_DOUT\(2),
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|registrador~1083_combout\);

-- Location: MLABCELL_X52_Y4_N6
\FD|ula|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~85_sumout\ = SUM(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1115_combout\) # ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( (\FD|banco_registradores|registrador~1083_combout\ & 
-- ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( \FD|ula|Add0~82\ ))
-- \FD|ula|Add0~86\ = CARRY(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1115_combout\) # ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( (\FD|banco_registradores|registrador~1083_combout\ & 
-- ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( \FD|ula|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010000000000000000000000101010101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ROM|ALT_INV_memROM~2_combout\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1115_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1083_combout\,
	cin => \FD|ula|Add0~82\,
	sumout => \FD|ula|Add0~85_sumout\,
	cout => \FD|ula|Add0~86\);

-- Location: FF_X52_Y4_N11
\FD|banco_registradores|registrador~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~89_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~316_q\);

-- Location: FF_X52_Y4_N44
\FD|banco_registradores|registrador~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~89_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~348_q\);

-- Location: FF_X51_Y4_N29
\FD|banco_registradores|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~89_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~60_q\);

-- Location: MLABCELL_X52_Y4_N42
\FD|banco_registradores|registrador~1084\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1084_combout\ = ( \FD|banco_registradores|registrador~60_q\ & ( (!\FD|ROM|memROM~0_combout\) # ((!\FD|PC|DOUT\(2) & (\FD|banco_registradores|registrador~316_q\)) # (\FD|PC|DOUT\(2) & 
-- ((\FD|banco_registradores|registrador~348_q\)))) ) ) # ( !\FD|banco_registradores|registrador~60_q\ & ( (\FD|ROM|memROM~0_combout\ & ((!\FD|PC|DOUT\(2) & (\FD|banco_registradores|registrador~316_q\)) # (\FD|PC|DOUT\(2) & 
-- ((\FD|banco_registradores|registrador~348_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT\(2),
	datac => \FD|banco_registradores|ALT_INV_registrador~316_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~348_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~60_q\,
	combout => \FD|banco_registradores|registrador~1084_combout\);

-- Location: MLABCELL_X52_Y4_N57
\FD|banco_registradores|registrador~1116\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1116_combout\ = ( \FD|banco_registradores|registrador~316_q\ & ( (!\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~60_q\)) # (\FD|ROM|memROM~0_combout\ & (((\FD|PC|DOUT\(2)) # 
-- (\FD|banco_registradores|registrador~348_q\)))) ) ) # ( !\FD|banco_registradores|registrador~316_q\ & ( (!\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~60_q\)) # (\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~348_q\ 
-- & !\FD|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100010001001110010001000100111011101110010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~60_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~348_q\,
	datad => \FD|PC|ALT_INV_DOUT\(2),
	dataf => \FD|banco_registradores|ALT_INV_registrador~316_q\,
	combout => \FD|banco_registradores|registrador~1116_combout\);

-- Location: MLABCELL_X52_Y4_N9
\FD|ula|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~89_sumout\ = SUM(( (\FD|banco_registradores|registrador~1084_combout\ & ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1116_combout\) # 
-- ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( \FD|ula|Add0~86\ ))
-- \FD|ula|Add0~90\ = CARRY(( (\FD|banco_registradores|registrador~1084_combout\ & ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1116_combout\) # 
-- ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( \FD|ula|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001010100000000000000000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ROM|ALT_INV_memROM~2_combout\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1084_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1116_combout\,
	cin => \FD|ula|Add0~86\,
	sumout => \FD|ula|Add0~89_sumout\,
	cout => \FD|ula|Add0~90\);

-- Location: FF_X51_Y4_N44
\FD|banco_registradores|registrador~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~93_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~349_q\);

-- Location: FF_X51_Y4_N8
\FD|banco_registradores|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~93_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~61_q\);

-- Location: FF_X52_Y4_N14
\FD|banco_registradores|registrador~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~93_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~317_q\);

-- Location: LABCELL_X51_Y4_N6
\FD|banco_registradores|registrador~1085\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1085_combout\ = ( \FD|banco_registradores|registrador~317_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~61_q\)))) # (\FD|ROM|memROM~0_combout\ & ((!\FD|PC|DOUT\(2)) # 
-- ((\FD|banco_registradores|registrador~349_q\)))) ) ) # ( !\FD|banco_registradores|registrador~317_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~61_q\)))) # (\FD|ROM|memROM~0_combout\ & (\FD|PC|DOUT\(2) & 
-- (\FD|banco_registradores|registrador~349_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100100011111011110010001111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT\(2),
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~349_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~61_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~317_q\,
	combout => \FD|banco_registradores|registrador~1085_combout\);

-- Location: LABCELL_X51_Y4_N45
\FD|banco_registradores|registrador~1117\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1117_combout\ = ( \FD|banco_registradores|registrador~349_q\ & ( (!\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~61_q\)) # (\FD|ROM|memROM~0_combout\ & (((!\FD|PC|DOUT\(2)) # 
-- (\FD|banco_registradores|registrador~317_q\)))) ) ) # ( !\FD|banco_registradores|registrador~349_q\ & ( (!\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~61_q\)) # (\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~317_q\ 
-- & \FD|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100111001000100010011101110111001001110111011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~61_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~317_q\,
	datad => \FD|PC|ALT_INV_DOUT\(2),
	dataf => \FD|banco_registradores|ALT_INV_registrador~349_q\,
	combout => \FD|banco_registradores|registrador~1117_combout\);

-- Location: MLABCELL_X52_Y4_N12
\FD|ula|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~93_sumout\ = SUM(( (\FD|banco_registradores|registrador~1085_combout\ & ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1117_combout\) # 
-- ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( \FD|ula|Add0~90\ ))
-- \FD|ula|Add0~94\ = CARRY(( (\FD|banco_registradores|registrador~1085_combout\ & ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1117_combout\) # 
-- ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( \FD|ula|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001010100000000000000000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ROM|ALT_INV_memROM~2_combout\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1085_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1117_combout\,
	cin => \FD|ula|Add0~90\,
	sumout => \FD|ula|Add0~93_sumout\,
	cout => \FD|ula|Add0~94\);

-- Location: FF_X52_Y4_N17
\FD|banco_registradores|registrador~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~97_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~318_q\);

-- Location: FF_X53_Y4_N32
\FD|banco_registradores|registrador~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~97_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~350_q\);

-- Location: FF_X53_Y4_N11
\FD|banco_registradores|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~97_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~62_q\);

-- Location: LABCELL_X53_Y4_N9
\FD|banco_registradores|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1086_combout\ = ( \FD|banco_registradores|registrador~62_q\ & ( (!\FD|ROM|memROM~0_combout\) # ((!\FD|PC|DOUT\(2) & (\FD|banco_registradores|registrador~318_q\)) # (\FD|PC|DOUT\(2) & 
-- ((\FD|banco_registradores|registrador~350_q\)))) ) ) # ( !\FD|banco_registradores|registrador~62_q\ & ( (\FD|ROM|memROM~0_combout\ & ((!\FD|PC|DOUT\(2) & (\FD|banco_registradores|registrador~318_q\)) # (\FD|PC|DOUT\(2) & 
-- ((\FD|banco_registradores|registrador~350_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101101110111010111100010001000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~318_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~350_q\,
	datad => \FD|PC|ALT_INV_DOUT\(2),
	datae => \FD|banco_registradores|ALT_INV_registrador~62_q\,
	combout => \FD|banco_registradores|registrador~1086_combout\);

-- Location: LABCELL_X53_Y4_N30
\FD|banco_registradores|registrador~1118\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1118_combout\ = ( \FD|banco_registradores|registrador~350_q\ & ( \FD|ROM|memROM~0_combout\ & ( (!\FD|PC|DOUT\(2)) # (\FD|banco_registradores|registrador~318_q\) ) ) ) # ( !\FD|banco_registradores|registrador~350_q\ & ( 
-- \FD|ROM|memROM~0_combout\ & ( (\FD|PC|DOUT\(2) & \FD|banco_registradores|registrador~318_q\) ) ) ) # ( \FD|banco_registradores|registrador~350_q\ & ( !\FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~62_q\ ) ) ) # ( 
-- !\FD|banco_registradores|registrador~350_q\ & ( !\FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|banco_registradores|ALT_INV_registrador~62_q\,
	datac => \FD|PC|ALT_INV_DOUT\(2),
	datad => \FD|banco_registradores|ALT_INV_registrador~318_q\,
	datae => \FD|banco_registradores|ALT_INV_registrador~350_q\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|registrador~1118_combout\);

-- Location: MLABCELL_X52_Y4_N15
\FD|ula|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~97_sumout\ = SUM(( (\FD|banco_registradores|registrador~1086_combout\ & ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1118_combout\) # 
-- ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( \FD|ula|Add0~94\ ))
-- \FD|ula|Add0~98\ = CARRY(( (\FD|banco_registradores|registrador~1086_combout\ & ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1118_combout\) # 
-- ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( \FD|ula|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001010100000000000000000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ROM|ALT_INV_memROM~2_combout\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1086_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1118_combout\,
	cin => \FD|ula|Add0~94\,
	sumout => \FD|ula|Add0~97_sumout\,
	cout => \FD|ula|Add0~98\);

-- Location: FF_X52_Y4_N20
\FD|banco_registradores|registrador~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~101_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~319_q\);

-- Location: FF_X53_Y4_N14
\FD|banco_registradores|registrador~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~101_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~351_q\);

-- Location: FF_X53_Y4_N8
\FD|banco_registradores|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~101_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~63_q\);

-- Location: LABCELL_X53_Y4_N15
\FD|banco_registradores|registrador~1119\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1119_combout\ = ( \FD|ROM|memROM~0_combout\ & ( (!\FD|PC|DOUT\(2) & ((\FD|banco_registradores|registrador~351_q\))) # (\FD|PC|DOUT\(2) & (\FD|banco_registradores|registrador~319_q\)) ) ) # ( !\FD|ROM|memROM~0_combout\ & 
-- ( \FD|banco_registradores|registrador~63_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110101010100001111000011110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|banco_registradores|ALT_INV_registrador~319_q\,
	datab => \FD|banco_registradores|ALT_INV_registrador~351_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~63_q\,
	datad => \FD|PC|ALT_INV_DOUT\(2),
	datae => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|registrador~1119_combout\);

-- Location: LABCELL_X53_Y4_N57
\FD|banco_registradores|registrador~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1087_combout\ = ( \FD|PC|DOUT\(2) & ( (!\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~63_q\)) # (\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~351_q\))) ) ) # ( !\FD|PC|DOUT\(2) & 
-- ( (!\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~63_q\)) # (\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~319_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~63_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~351_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~319_q\,
	dataf => \FD|PC|ALT_INV_DOUT\(2),
	combout => \FD|banco_registradores|registrador~1087_combout\);

-- Location: MLABCELL_X52_Y4_N18
\FD|ula|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~101_sumout\ = SUM(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1119_combout\) # ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( (\FD|banco_registradores|registrador~1087_combout\ & 
-- ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( \FD|ula|Add0~98\ ))
-- \FD|ula|Add0~102\ = CARRY(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1119_combout\) # ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( (\FD|banco_registradores|registrador~1087_combout\ & 
-- ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( \FD|ula|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010000000000000000000000101010101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ROM|ALT_INV_memROM~2_combout\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1119_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1087_combout\,
	cin => \FD|ula|Add0~98\,
	sumout => \FD|ula|Add0~101_sumout\,
	cout => \FD|ula|Add0~102\);

-- Location: FF_X53_Y4_N26
\FD|banco_registradores|registrador~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~105_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~352_q\);

-- Location: FF_X53_Y4_N2
\FD|banco_registradores|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~105_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~64_q\);

-- Location: FF_X52_Y4_N23
\FD|banco_registradores|registrador~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~105_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~320_q\);

-- Location: LABCELL_X53_Y4_N0
\FD|banco_registradores|registrador~1088\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1088_combout\ = ( \FD|banco_registradores|registrador~320_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~64_q\)))) # (\FD|ROM|memROM~0_combout\ & ((!\FD|PC|DOUT\(2)) # 
-- ((\FD|banco_registradores|registrador~352_q\)))) ) ) # ( !\FD|banco_registradores|registrador~320_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~64_q\)))) # (\FD|ROM|memROM~0_combout\ & (\FD|PC|DOUT\(2) & 
-- (\FD|banco_registradores|registrador~352_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT\(2),
	datac => \FD|banco_registradores|ALT_INV_registrador~352_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~64_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~320_q\,
	combout => \FD|banco_registradores|registrador~1088_combout\);

-- Location: LABCELL_X53_Y4_N24
\FD|banco_registradores|registrador~1120\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1120_combout\ = ( \FD|PC|DOUT\(2) & ( (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~64_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~320_q\)) ) ) # ( !\FD|PC|DOUT\(2) & 
-- ( (!\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~64_q\)) # (\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~352_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~320_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~64_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~352_q\,
	dataf => \FD|PC|ALT_INV_DOUT\(2),
	combout => \FD|banco_registradores|registrador~1120_combout\);

-- Location: MLABCELL_X52_Y4_N21
\FD|ula|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~105_sumout\ = SUM(( (\FD|banco_registradores|registrador~1088_combout\ & ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1120_combout\) # 
-- ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( \FD|ula|Add0~102\ ))
-- \FD|ula|Add0~106\ = CARRY(( (\FD|banco_registradores|registrador~1088_combout\ & ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1120_combout\) # 
-- ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( \FD|ula|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001010100000000000000000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ROM|ALT_INV_memROM~2_combout\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1088_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1120_combout\,
	cin => \FD|ula|Add0~102\,
	sumout => \FD|ula|Add0~105_sumout\,
	cout => \FD|ula|Add0~106\);

-- Location: FF_X52_Y4_N26
\FD|banco_registradores|registrador~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~109_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~321_q\);

-- Location: FF_X53_Y4_N44
\FD|banco_registradores|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~109_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~65_q\);

-- Location: FF_X52_Y4_N53
\FD|banco_registradores|registrador~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~109_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~353_q\);

-- Location: LABCELL_X53_Y4_N42
\FD|banco_registradores|registrador~1089\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1089_combout\ = ( \FD|banco_registradores|registrador~353_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~65_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (((\FD|banco_registradores|registrador~321_q\)) # (\FD|PC|DOUT\(2)))) ) ) # ( !\FD|banco_registradores|registrador~353_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~65_q\)))) # (\FD|ROM|memROM~0_combout\ & (!\FD|PC|DOUT\(2) & 
-- (\FD|banco_registradores|registrador~321_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT\(2),
	datac => \FD|banco_registradores|ALT_INV_registrador~321_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~65_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~353_q\,
	combout => \FD|banco_registradores|registrador~1089_combout\);

-- Location: LABCELL_X53_Y4_N39
\FD|banco_registradores|registrador~1121\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1121_combout\ = ( \FD|banco_registradores|registrador~353_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~65_q\)))) # (\FD|ROM|memROM~0_combout\ & ((!\FD|PC|DOUT\(2)) # 
-- ((\FD|banco_registradores|registrador~321_q\)))) ) ) # ( !\FD|banco_registradores|registrador~353_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~65_q\)))) # (\FD|ROM|memROM~0_combout\ & (\FD|PC|DOUT\(2) & 
-- ((\FD|banco_registradores|registrador~321_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT\(2),
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~65_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~321_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~353_q\,
	combout => \FD|banco_registradores|registrador~1121_combout\);

-- Location: MLABCELL_X52_Y4_N24
\FD|ula|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~109_sumout\ = SUM(( (\FD|banco_registradores|registrador~1089_combout\ & ((\FD|ROM|memROM~1_combout\) # (\FD|ROM|memROM~0_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1121_combout\) # 
-- ((!\FD|ROM|memROM~0_combout\ & !\FD|ROM|memROM~2_combout\)))) ) + ( \FD|ula|Add0~106\ ))
-- \FD|ula|Add0~110\ = CARRY(( (\FD|banco_registradores|registrador~1089_combout\ & ((\FD|ROM|memROM~1_combout\) # (\FD|ROM|memROM~0_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1121_combout\) # 
-- ((!\FD|ROM|memROM~0_combout\ & !\FD|ROM|memROM~2_combout\)))) ) + ( \FD|ula|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001000011100000000000000000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|ROM|ALT_INV_memROM~2_combout\,
	datac => \FD|ROM|ALT_INV_memROM~1_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1089_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1121_combout\,
	cin => \FD|ula|Add0~106\,
	sumout => \FD|ula|Add0~109_sumout\,
	cout => \FD|ula|Add0~110\);

-- Location: FF_X52_Y4_N29
\FD|banco_registradores|registrador~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~113_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~322_q\);

-- Location: FF_X51_Y4_N38
\FD|banco_registradores|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~113_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~66_q\);

-- Location: FF_X51_Y4_N14
\FD|banco_registradores|registrador~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~113_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~354_q\);

-- Location: LABCELL_X51_Y4_N12
\FD|banco_registradores|registrador~1122\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1122_combout\ = ( \FD|PC|DOUT\(2) & ( (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~66_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~322_q\)) ) ) # ( !\FD|PC|DOUT\(2) & 
-- ( (!\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~66_q\)) # (\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~354_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|banco_registradores|ALT_INV_registrador~322_q\,
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~66_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~354_q\,
	dataf => \FD|PC|ALT_INV_DOUT\(2),
	combout => \FD|banco_registradores|registrador~1122_combout\);

-- Location: LABCELL_X51_Y4_N36
\FD|banco_registradores|registrador~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1090_combout\ = ( \FD|PC|DOUT\(2) & ( (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~66_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~354_q\)) ) ) # ( !\FD|PC|DOUT\(2) & 
-- ( (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~66_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~322_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~354_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~322_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~66_q\,
	dataf => \FD|PC|ALT_INV_DOUT\(2),
	combout => \FD|banco_registradores|registrador~1090_combout\);

-- Location: MLABCELL_X52_Y4_N27
\FD|ula|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~113_sumout\ = SUM(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1122_combout\) # ((!\FD|ROM|memROM~0_combout\ & !\FD|ROM|memROM~2_combout\)))) ) + ( (\FD|banco_registradores|registrador~1090_combout\ & 
-- ((\FD|ROM|memROM~1_combout\) # (\FD|ROM|memROM~0_combout\))) ) + ( \FD|ula|Add0~110\ ))
-- \FD|ula|Add0~114\ = CARRY(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1122_combout\) # ((!\FD|ROM|memROM~0_combout\ & !\FD|ROM|memROM~2_combout\)))) ) + ( (\FD|banco_registradores|registrador~1090_combout\ & 
-- ((\FD|ROM|memROM~1_combout\) # (\FD|ROM|memROM~0_combout\))) ) + ( \FD|ula|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010000000000000000000000000111101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|ROM|ALT_INV_memROM~2_combout\,
	datac => \FD|ROM|ALT_INV_memROM~1_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1122_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1090_combout\,
	cin => \FD|ula|Add0~110\,
	sumout => \FD|ula|Add0~113_sumout\,
	cout => \FD|ula|Add0~114\);

-- Location: FF_X52_Y4_N56
\FD|banco_registradores|registrador~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~117_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~355_q\);

-- Location: FF_X53_Y4_N37
\FD|banco_registradores|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~117_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~67_q\);

-- Location: FF_X52_Y4_N32
\FD|banco_registradores|registrador~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~117_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~323_q\);

-- Location: LABCELL_X53_Y4_N36
\FD|banco_registradores|registrador~1091\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1091_combout\ = ( \FD|banco_registradores|registrador~323_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~67_q\)))) # (\FD|ROM|memROM~0_combout\ & ((!\FD|PC|DOUT\(2)) # 
-- ((\FD|banco_registradores|registrador~355_q\)))) ) ) # ( !\FD|banco_registradores|registrador~323_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~67_q\)))) # (\FD|ROM|memROM~0_combout\ & (\FD|PC|DOUT\(2) & 
-- (\FD|banco_registradores|registrador~355_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100100011111011110010001111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT\(2),
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~355_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~67_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~323_q\,
	combout => \FD|banco_registradores|registrador~1091_combout\);

-- Location: LABCELL_X53_Y4_N21
\FD|banco_registradores|registrador~1123\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1123_combout\ = ( \FD|banco_registradores|registrador~355_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~67_q\)))) # (\FD|ROM|memROM~0_combout\ & (((!\FD|PC|DOUT\(2))) # 
-- (\FD|banco_registradores|registrador~323_q\))) ) ) # ( !\FD|banco_registradores|registrador~355_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~67_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (\FD|banco_registradores|registrador~323_q\ & (\FD|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101010001111110110101000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~323_q\,
	datac => \FD|PC|ALT_INV_DOUT\(2),
	datad => \FD|banco_registradores|ALT_INV_registrador~67_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~355_q\,
	combout => \FD|banco_registradores|registrador~1123_combout\);

-- Location: MLABCELL_X52_Y4_N30
\FD|ula|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~117_sumout\ = SUM(( (\FD|banco_registradores|registrador~1091_combout\ & ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1123_combout\) # 
-- ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( \FD|ula|Add0~114\ ))
-- \FD|ula|Add0~118\ = CARRY(( (\FD|banco_registradores|registrador~1091_combout\ & ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1123_combout\) # 
-- ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( \FD|ula|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001010100000000000000000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ROM|ALT_INV_memROM~2_combout\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1091_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1123_combout\,
	cin => \FD|ula|Add0~114\,
	sumout => \FD|ula|Add0~117_sumout\,
	cout => \FD|ula|Add0~118\);

-- Location: FF_X52_Y4_N50
\FD|banco_registradores|registrador~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~121_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~356_q\);

-- Location: FF_X51_Y4_N2
\FD|banco_registradores|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~121_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~68_q\);

-- Location: FF_X52_Y4_N35
\FD|banco_registradores|registrador~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~121_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~324_q\);

-- Location: LABCELL_X51_Y4_N21
\FD|banco_registradores|registrador~1124\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1124_combout\ = ( \FD|banco_registradores|registrador~324_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~68_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (((\FD|banco_registradores|registrador~356_q\)) # (\FD|PC|DOUT\(2)))) ) ) # ( !\FD|banco_registradores|registrador~324_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~68_q\)))) # (\FD|ROM|memROM~0_combout\ & (!\FD|PC|DOUT\(2) & 
-- (\FD|banco_registradores|registrador~356_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT\(2),
	datac => \FD|banco_registradores|ALT_INV_registrador~356_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~68_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~324_q\,
	combout => \FD|banco_registradores|registrador~1124_combout\);

-- Location: LABCELL_X51_Y4_N0
\FD|banco_registradores|registrador~1092\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1092_combout\ = ( \FD|PC|DOUT\(2) & ( (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~68_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~356_q\)) ) ) # ( !\FD|PC|DOUT\(2) & 
-- ( (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~68_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~324_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~356_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~324_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~68_q\,
	dataf => \FD|PC|ALT_INV_DOUT\(2),
	combout => \FD|banco_registradores|registrador~1092_combout\);

-- Location: MLABCELL_X52_Y4_N33
\FD|ula|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~121_sumout\ = SUM(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1124_combout\) # ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( (\FD|banco_registradores|registrador~1092_combout\ & 
-- ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( \FD|ula|Add0~118\ ))
-- \FD|ula|Add0~122\ = CARRY(( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1124_combout\) # ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( (\FD|banco_registradores|registrador~1092_combout\ & 
-- ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( \FD|ula|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010000000000000000000000101010101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ROM|ALT_INV_memROM~2_combout\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1124_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1092_combout\,
	cin => \FD|ula|Add0~118\,
	sumout => \FD|ula|Add0~121_sumout\,
	cout => \FD|ula|Add0~122\);

-- Location: FF_X52_Y4_N38
\FD|banco_registradores|registrador~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|ula|Add0~125_sumout\,
	ena => \FD|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~325_q\);

-- Location: FF_X51_Y4_N56
\FD|banco_registradores|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~125_sumout\,
	sload => VCC,
	ena => \FD|ROM|ALT_INV_memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~69_q\);

-- Location: FF_X52_Y4_N59
\FD|banco_registradores|registrador~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ula|Add0~125_sumout\,
	sload => VCC,
	ena => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~357_q\);

-- Location: LABCELL_X51_Y4_N54
\FD|banco_registradores|registrador~1093\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1093_combout\ = ( \FD|banco_registradores|registrador~357_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~69_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (((\FD|banco_registradores|registrador~325_q\)) # (\FD|PC|DOUT\(2)))) ) ) # ( !\FD|banco_registradores|registrador~357_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~69_q\)))) # (\FD|ROM|memROM~0_combout\ & (!\FD|PC|DOUT\(2) & 
-- (\FD|banco_registradores|registrador~325_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|PC|ALT_INV_DOUT\(2),
	datac => \FD|banco_registradores|ALT_INV_registrador~325_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~69_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~357_q\,
	combout => \FD|banco_registradores|registrador~1093_combout\);

-- Location: LABCELL_X51_Y4_N9
\FD|banco_registradores|registrador~1125\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1125_combout\ = ( \FD|banco_registradores|registrador~325_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~69_q\)))) # (\FD|ROM|memROM~0_combout\ & 
-- (((\FD|banco_registradores|registrador~357_q\)) # (\FD|PC|DOUT\(2)))) ) ) # ( !\FD|banco_registradores|registrador~325_q\ & ( (!\FD|ROM|memROM~0_combout\ & (((\FD|banco_registradores|registrador~69_q\)))) # (\FD|ROM|memROM~0_combout\ & (!\FD|PC|DOUT\(2) & 
-- (\FD|banco_registradores|registrador~357_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT\(2),
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~357_q\,
	datad => \FD|banco_registradores|ALT_INV_registrador~69_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~325_q\,
	combout => \FD|banco_registradores|registrador~1125_combout\);

-- Location: MLABCELL_X52_Y4_N36
\FD|ula|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~125_sumout\ = SUM(( (\FD|banco_registradores|registrador~1093_combout\ & ((\FD|ROM|memROM~0_combout\) # (\FD|ROM|memROM~1_combout\))) ) + ( !\FD|ROM|memROM~1_combout\ $ (((!\FD|banco_registradores|registrador~1125_combout\) # 
-- ((!\FD|ROM|memROM~2_combout\ & !\FD|ROM|memROM~0_combout\)))) ) + ( \FD|ula|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001010100000000000000000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ROM|ALT_INV_memROM~2_combout\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1093_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1125_combout\,
	cin => \FD|ula|Add0~122\,
	sumout => \FD|ula|Add0~125_sumout\);

-- Location: LABCELL_X57_Y5_N45
\FD|banco_registradores|saidaA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[0]~0_combout\ = ( \FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~1062_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|banco_registradores|ALT_INV_registrador~1062_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|saidaA[0]~0_combout\);

-- Location: LABCELL_X55_Y5_N30
\FD|banco_registradores|saidaA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[1]~1_combout\ = ( \FD|banco_registradores|registrador~1063_combout\ & ( \FD|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1063_combout\,
	combout => \FD|banco_registradores|saidaA[1]~1_combout\);

-- Location: LABCELL_X55_Y5_N42
\FD|banco_registradores|saidaA[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[2]~2_combout\ = ( \FD|banco_registradores|registrador~1064_combout\ & ( \FD|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1064_combout\,
	combout => \FD|banco_registradores|saidaA[2]~2_combout\);

-- Location: LABCELL_X57_Y5_N9
\FD|banco_registradores|saidaA[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[3]~3_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1065_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1065_combout\,
	combout => \FD|banco_registradores|saidaA[3]~3_combout\);

-- Location: LABCELL_X55_Y5_N0
\FD|banco_registradores|saidaA[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[4]~4_combout\ = ( \FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~1066_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|banco_registradores|ALT_INV_registrador~1066_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|saidaA[4]~4_combout\);

-- Location: LABCELL_X55_Y5_N24
\FD|banco_registradores|saidaA[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[5]~5_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1067_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1067_combout\,
	combout => \FD|banco_registradores|saidaA[5]~5_combout\);

-- Location: LABCELL_X57_Y5_N12
\FD|banco_registradores|saidaA[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[6]~6_combout\ = ( \FD|banco_registradores|registrador~1068_combout\ & ( \FD|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1068_combout\,
	combout => \FD|banco_registradores|saidaA[6]~6_combout\);

-- Location: LABCELL_X55_Y5_N9
\FD|banco_registradores|saidaA[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[7]~7_combout\ = ( \FD|banco_registradores|registrador~1069_combout\ & ( \FD|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1069_combout\,
	combout => \FD|banco_registradores|saidaA[7]~7_combout\);

-- Location: LABCELL_X55_Y5_N48
\FD|banco_registradores|saidaA[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[8]~8_combout\ = ( \FD|banco_registradores|registrador~1070_combout\ & ( \FD|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1070_combout\,
	combout => \FD|banco_registradores|saidaA[8]~8_combout\);

-- Location: LABCELL_X57_Y5_N27
\FD|banco_registradores|saidaA[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[9]~9_combout\ = ( \FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~1071_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|banco_registradores|ALT_INV_registrador~1071_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|saidaA[9]~9_combout\);

-- Location: LABCELL_X57_Y5_N15
\FD|banco_registradores|saidaA[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[10]~10_combout\ = ( \FD|banco_registradores|registrador~1072_combout\ & ( \FD|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1072_combout\,
	combout => \FD|banco_registradores|saidaA[10]~10_combout\);

-- Location: LABCELL_X51_Y5_N12
\FD|banco_registradores|saidaA[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[11]~11_combout\ = ( \FD|banco_registradores|registrador~1073_combout\ & ( \FD|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1073_combout\,
	combout => \FD|banco_registradores|saidaA[11]~11_combout\);

-- Location: LABCELL_X57_Y5_N48
\FD|banco_registradores|saidaA[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[12]~12_combout\ = ( \FD|banco_registradores|registrador~1074_combout\ & ( \FD|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1074_combout\,
	combout => \FD|banco_registradores|saidaA[12]~12_combout\);

-- Location: LABCELL_X55_Y5_N54
\FD|banco_registradores|saidaA[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[13]~13_combout\ = ( \FD|banco_registradores|registrador~1075_combout\ & ( \FD|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1075_combout\,
	combout => \FD|banco_registradores|saidaA[13]~13_combout\);

-- Location: LABCELL_X51_Y5_N36
\FD|banco_registradores|saidaA[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[14]~14_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1076_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~1076_combout\,
	combout => \FD|banco_registradores|saidaA[14]~14_combout\);

-- Location: LABCELL_X51_Y5_N0
\FD|banco_registradores|saidaA[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[15]~15_combout\ = ( \FD|banco_registradores|registrador~1077_combout\ & ( \FD|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1077_combout\,
	combout => \FD|banco_registradores|saidaA[15]~15_combout\);

-- Location: LABCELL_X57_Y5_N0
\FD|banco_registradores|saidaA[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[16]~16_combout\ = ( \FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~1078_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|banco_registradores|ALT_INV_registrador~1078_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|saidaA[16]~16_combout\);

-- Location: LABCELL_X55_Y5_N15
\FD|banco_registradores|saidaA[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[17]~17_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1079_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~1079_combout\,
	combout => \FD|banco_registradores|saidaA[17]~17_combout\);

-- Location: LABCELL_X55_Y5_N21
\FD|banco_registradores|saidaA[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[18]~18_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1080_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~1080_combout\,
	combout => \FD|banco_registradores|saidaA[18]~18_combout\);

-- Location: LABCELL_X50_Y4_N51
\FD|banco_registradores|saidaA[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[19]~19_combout\ = ( \FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~1081_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1081_combout\,
	combout => \FD|banco_registradores|saidaA[19]~19_combout\);

-- Location: LABCELL_X50_Y4_N45
\FD|banco_registradores|saidaA[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[20]~20_combout\ = ( \FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~1082_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|banco_registradores|ALT_INV_registrador~1082_combout\,
	datae => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|saidaA[20]~20_combout\);

-- Location: LABCELL_X50_Y4_N15
\FD|banco_registradores|saidaA[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[21]~21_combout\ = ( \FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~1083_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1083_combout\,
	combout => \FD|banco_registradores|saidaA[21]~21_combout\);

-- Location: LABCELL_X50_Y4_N57
\FD|banco_registradores|saidaA[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[22]~22_combout\ = ( \FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~1084_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1084_combout\,
	combout => \FD|banco_registradores|saidaA[22]~22_combout\);

-- Location: LABCELL_X51_Y4_N48
\FD|banco_registradores|saidaA[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[23]~23_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1085_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~1085_combout\,
	combout => \FD|banco_registradores|saidaA[23]~23_combout\);

-- Location: LABCELL_X50_Y4_N27
\FD|banco_registradores|saidaA[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[24]~24_combout\ = ( \FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~1086_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1086_combout\,
	combout => \FD|banco_registradores|saidaA[24]~24_combout\);

-- Location: LABCELL_X51_Y4_N42
\FD|banco_registradores|saidaA[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[25]~25_combout\ = ( \FD|banco_registradores|registrador~1087_combout\ & ( \FD|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1087_combout\,
	combout => \FD|banco_registradores|saidaA[25]~25_combout\);

-- Location: LABCELL_X53_Y4_N3
\FD|banco_registradores|saidaA[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[26]~26_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1088_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1088_combout\,
	combout => \FD|banco_registradores|saidaA[26]~26_combout\);

-- Location: MLABCELL_X52_Y4_N51
\FD|banco_registradores|saidaA[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[27]~27_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1089_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~1089_combout\,
	combout => \FD|banco_registradores|saidaA[27]~27_combout\);

-- Location: LABCELL_X51_Y4_N39
\FD|banco_registradores|saidaA[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[28]~28_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1090_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~1090_combout\,
	combout => \FD|banco_registradores|saidaA[28]~28_combout\);

-- Location: LABCELL_X53_Y4_N18
\FD|banco_registradores|saidaA[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[29]~29_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1091_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~1091_combout\,
	combout => \FD|banco_registradores|saidaA[29]~29_combout\);

-- Location: LABCELL_X51_Y4_N3
\FD|banco_registradores|saidaA[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[30]~30_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1092_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1092_combout\,
	combout => \FD|banco_registradores|saidaA[30]~30_combout\);

-- Location: LABCELL_X51_Y4_N57
\FD|banco_registradores|saidaA[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[31]~31_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1093_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~1093_combout\,
	combout => \FD|banco_registradores|saidaA[31]~31_combout\);

-- Location: LABCELL_X57_Y5_N36
\FD|banco_registradores|saidaB[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[0]~0_combout\ = ( \FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~1094_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|banco_registradores|ALT_INV_registrador~1094_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|saidaB[0]~0_combout\);

-- Location: LABCELL_X57_Y5_N33
\FD|banco_registradores|saidaB[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[1]~1_combout\ = ( \FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~1095_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|banco_registradores|ALT_INV_registrador~1095_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|saidaB[1]~1_combout\);

-- Location: LABCELL_X55_Y5_N18
\FD|banco_registradores|saidaB[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[2]~2_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1096_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1096_combout\,
	combout => \FD|banco_registradores|saidaB[2]~2_combout\);

-- Location: LABCELL_X56_Y5_N21
\FD|banco_registradores|saidaB[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[3]~3_combout\ = ( \FD|banco_registradores|registrador~1097_combout\ & ( \FD|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1097_combout\,
	combout => \FD|banco_registradores|saidaB[3]~3_combout\);

-- Location: LABCELL_X55_Y5_N45
\FD|banco_registradores|saidaB[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[4]~4_combout\ = ( \FD|banco_registradores|registrador~1098_combout\ & ( \FD|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1098_combout\,
	combout => \FD|banco_registradores|saidaB[4]~4_combout\);

-- Location: LABCELL_X55_Y5_N27
\FD|banco_registradores|saidaB[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[5]~5_combout\ = ( \FD|banco_registradores|registrador~1099_combout\ & ( \FD|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1099_combout\,
	combout => \FD|banco_registradores|saidaB[5]~5_combout\);

-- Location: LABCELL_X57_Y5_N6
\FD|banco_registradores|saidaB[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[6]~6_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1100_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~1100_combout\,
	combout => \FD|banco_registradores|saidaB[6]~6_combout\);

-- Location: LABCELL_X53_Y5_N54
\FD|banco_registradores|saidaB[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[7]~7_combout\ = ( \FD|banco_registradores|registrador~1101_combout\ & ( \FD|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1101_combout\,
	combout => \FD|banco_registradores|saidaB[7]~7_combout\);

-- Location: LABCELL_X51_Y5_N54
\FD|banco_registradores|saidaB[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[8]~8_combout\ = ( \FD|banco_registradores|registrador~1102_combout\ & ( \FD|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1102_combout\,
	combout => \FD|banco_registradores|saidaB[8]~8_combout\);

-- Location: LABCELL_X57_Y5_N57
\FD|banco_registradores|saidaB[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[9]~9_combout\ = ( \FD|banco_registradores|registrador~1103_combout\ & ( \FD|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \FD|banco_registradores|ALT_INV_registrador~1103_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|saidaB[9]~9_combout\);

-- Location: LABCELL_X57_Y5_N21
\FD|banco_registradores|saidaB[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[10]~10_combout\ = ( \FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~1104_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|banco_registradores|ALT_INV_registrador~1104_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|saidaB[10]~10_combout\);

-- Location: LABCELL_X53_Y5_N12
\FD|banco_registradores|saidaB[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[11]~11_combout\ = ( \FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~1105_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|banco_registradores|ALT_INV_registrador~1105_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|saidaB[11]~11_combout\);

-- Location: LABCELL_X51_Y5_N51
\FD|banco_registradores|saidaB[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[12]~12_combout\ = ( \FD|banco_registradores|registrador~1106_combout\ & ( \FD|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1106_combout\,
	combout => \FD|banco_registradores|saidaB[12]~12_combout\);

-- Location: LABCELL_X55_Y5_N36
\FD|banco_registradores|saidaB[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[13]~13_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1107_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|banco_registradores|ALT_INV_registrador~1107_combout\,
	combout => \FD|banco_registradores|saidaB[13]~13_combout\);

-- Location: LABCELL_X55_Y5_N12
\FD|banco_registradores|saidaB[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[14]~14_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1108_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~1108_combout\,
	combout => \FD|banco_registradores|saidaB[14]~14_combout\);

-- Location: LABCELL_X51_Y5_N45
\FD|banco_registradores|saidaB[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[15]~15_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1109_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~1109_combout\,
	combout => \FD|banco_registradores|saidaB[15]~15_combout\);

-- Location: LABCELL_X51_Y5_N6
\FD|banco_registradores|saidaB[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[16]~16_combout\ = ( \FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~1110_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|banco_registradores|ALT_INV_registrador~1110_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|saidaB[16]~16_combout\);

-- Location: LABCELL_X57_Y5_N51
\FD|banco_registradores|saidaB[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[17]~17_combout\ = ( \FD|banco_registradores|registrador~1111_combout\ & ( \FD|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1111_combout\,
	combout => \FD|banco_registradores|saidaB[17]~17_combout\);

-- Location: LABCELL_X51_Y5_N24
\FD|banco_registradores|saidaB[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[18]~18_combout\ = ( \FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~1112_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|banco_registradores|ALT_INV_registrador~1112_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|saidaB[18]~18_combout\);

-- Location: LABCELL_X53_Y4_N51
\FD|banco_registradores|saidaB[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[19]~19_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1113_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~1113_combout\,
	combout => \FD|banco_registradores|saidaB[19]~19_combout\);

-- Location: LABCELL_X50_Y4_N30
\FD|banco_registradores|saidaB[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[20]~20_combout\ = ( \FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~1114_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1114_combout\,
	combout => \FD|banco_registradores|saidaB[20]~20_combout\);

-- Location: LABCELL_X50_Y4_N39
\FD|banco_registradores|saidaB[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[21]~21_combout\ = ( \FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~1115_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1115_combout\,
	combout => \FD|banco_registradores|saidaB[21]~21_combout\);

-- Location: MLABCELL_X52_Y3_N51
\FD|banco_registradores|saidaB[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[22]~22_combout\ = ( \FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~1116_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|banco_registradores|ALT_INV_registrador~1116_combout\,
	datae => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|banco_registradores|saidaB[22]~22_combout\);

-- Location: LABCELL_X51_Y4_N27
\FD|banco_registradores|saidaB[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[23]~23_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1117_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~1117_combout\,
	combout => \FD|banco_registradores|saidaB[23]~23_combout\);

-- Location: LABCELL_X50_Y4_N18
\FD|banco_registradores|saidaB[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[24]~24_combout\ = ( \FD|ROM|memROM~0_combout\ & ( \FD|banco_registradores|registrador~1118_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1118_combout\,
	combout => \FD|banco_registradores|saidaB[24]~24_combout\);

-- Location: LABCELL_X53_Y4_N54
\FD|banco_registradores|saidaB[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[25]~25_combout\ = ( \FD|banco_registradores|registrador~1119_combout\ & ( \FD|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1119_combout\,
	combout => \FD|banco_registradores|saidaB[25]~25_combout\);

-- Location: LABCELL_X53_Y4_N27
\FD|banco_registradores|saidaB[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[26]~26_combout\ = ( \FD|banco_registradores|registrador~1120_combout\ & ( \FD|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1120_combout\,
	combout => \FD|banco_registradores|saidaB[26]~26_combout\);

-- Location: LABCELL_X53_Y4_N45
\FD|banco_registradores|saidaB[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[27]~27_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1121_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~1121_combout\,
	combout => \FD|banco_registradores|saidaB[27]~27_combout\);

-- Location: LABCELL_X51_Y4_N15
\FD|banco_registradores|saidaB[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[28]~28_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1122_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~1122_combout\,
	combout => \FD|banco_registradores|saidaB[28]~28_combout\);

-- Location: MLABCELL_X52_Y4_N54
\FD|banco_registradores|saidaB[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[29]~29_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1123_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~1123_combout\,
	combout => \FD|banco_registradores|saidaB[29]~29_combout\);

-- Location: LABCELL_X51_Y4_N18
\FD|banco_registradores|saidaB[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[30]~30_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1124_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~1124_combout\,
	combout => \FD|banco_registradores|saidaB[30]~30_combout\);

-- Location: LABCELL_X45_Y5_N12
\FD|banco_registradores|saidaB[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaB[31]~31_combout\ = ( \FD|banco_registradores|registrador~1125_combout\ & ( \FD|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1125_combout\,
	combout => \FD|banco_registradores|saidaB[31]~31_combout\);

-- Location: FF_X56_Y5_N47
\FD|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y5_N45
\FD|somaUm|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~21_sumout\ = SUM(( \FD|PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~14\ ))
-- \FD|somaUm|Add0~22\ = CARRY(( \FD|PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~14\,
	sumout => \FD|somaUm|Add0~21_sumout\,
	cout => \FD|somaUm|Add0~22\);

-- Location: FF_X56_Y5_N46
\FD|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(8));

-- Location: LABCELL_X56_Y5_N48
\FD|somaUm|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~25_sumout\ = SUM(( \FD|PC|DOUT\(9) ) + ( GND ) + ( \FD|somaUm|Add0~22\ ))
-- \FD|somaUm|Add0~26\ = CARRY(( \FD|PC|DOUT\(9) ) + ( GND ) + ( \FD|somaUm|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT\(9),
	cin => \FD|somaUm|Add0~22\,
	sumout => \FD|somaUm|Add0~25_sumout\,
	cout => \FD|somaUm|Add0~26\);

-- Location: FF_X56_Y5_N50
\FD|PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(9));

-- Location: FF_X56_Y5_N53
\FD|PC|DOUT[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[10]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y5_N51
\FD|somaUm|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~29_sumout\ = SUM(( \FD|PC|DOUT[10]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~26\ ))
-- \FD|somaUm|Add0~30\ = CARRY(( \FD|PC|DOUT[10]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT[10]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~26\,
	sumout => \FD|somaUm|Add0~29_sumout\,
	cout => \FD|somaUm|Add0~30\);

-- Location: FF_X56_Y5_N52
\FD|PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(10));

-- Location: FF_X56_Y5_N56
\FD|PC|DOUT[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[11]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y5_N54
\FD|somaUm|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~33_sumout\ = SUM(( \FD|PC|DOUT[11]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~30\ ))
-- \FD|somaUm|Add0~34\ = CARRY(( \FD|PC|DOUT[11]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT[11]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~30\,
	sumout => \FD|somaUm|Add0~33_sumout\,
	cout => \FD|somaUm|Add0~34\);

-- Location: FF_X56_Y5_N55
\FD|PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(11));

-- Location: FF_X56_Y5_N59
\FD|PC|DOUT[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[12]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y5_N57
\FD|somaUm|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~37_sumout\ = SUM(( \FD|PC|DOUT[12]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~34\ ))
-- \FD|somaUm|Add0~38\ = CARRY(( \FD|PC|DOUT[12]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT[12]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~34\,
	sumout => \FD|somaUm|Add0~37_sumout\,
	cout => \FD|somaUm|Add0~38\);

-- Location: FF_X56_Y5_N58
\FD|PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(12));

-- Location: FF_X56_Y4_N2
\FD|PC|DOUT[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[13]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y4_N0
\FD|somaUm|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~41_sumout\ = SUM(( \FD|PC|DOUT[13]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~38\ ))
-- \FD|somaUm|Add0~42\ = CARRY(( \FD|PC|DOUT[13]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT[13]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~38\,
	sumout => \FD|somaUm|Add0~41_sumout\,
	cout => \FD|somaUm|Add0~42\);

-- Location: FF_X56_Y4_N1
\FD|PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(13));

-- Location: LABCELL_X56_Y4_N3
\FD|somaUm|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~45_sumout\ = SUM(( \FD|PC|DOUT\(14) ) + ( GND ) + ( \FD|somaUm|Add0~42\ ))
-- \FD|somaUm|Add0~46\ = CARRY(( \FD|PC|DOUT\(14) ) + ( GND ) + ( \FD|somaUm|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(14),
	cin => \FD|somaUm|Add0~42\,
	sumout => \FD|somaUm|Add0~45_sumout\,
	cout => \FD|somaUm|Add0~46\);

-- Location: FF_X56_Y4_N5
\FD|PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(14));

-- Location: LABCELL_X56_Y4_N6
\FD|somaUm|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~49_sumout\ = SUM(( \FD|PC|DOUT\(15) ) + ( GND ) + ( \FD|somaUm|Add0~46\ ))
-- \FD|somaUm|Add0~50\ = CARRY(( \FD|PC|DOUT\(15) ) + ( GND ) + ( \FD|somaUm|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT\(15),
	cin => \FD|somaUm|Add0~46\,
	sumout => \FD|somaUm|Add0~49_sumout\,
	cout => \FD|somaUm|Add0~50\);

-- Location: FF_X56_Y4_N7
\FD|PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(15));

-- Location: LABCELL_X56_Y4_N9
\FD|somaUm|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~53_sumout\ = SUM(( \FD|PC|DOUT\(16) ) + ( GND ) + ( \FD|somaUm|Add0~50\ ))
-- \FD|somaUm|Add0~54\ = CARRY(( \FD|PC|DOUT\(16) ) + ( GND ) + ( \FD|somaUm|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT\(16),
	cin => \FD|somaUm|Add0~50\,
	sumout => \FD|somaUm|Add0~53_sumout\,
	cout => \FD|somaUm|Add0~54\);

-- Location: FF_X56_Y4_N11
\FD|PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(16));

-- Location: LABCELL_X56_Y4_N12
\FD|somaUm|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~57_sumout\ = SUM(( \FD|PC|DOUT\(17) ) + ( GND ) + ( \FD|somaUm|Add0~54\ ))
-- \FD|somaUm|Add0~58\ = CARRY(( \FD|PC|DOUT\(17) ) + ( GND ) + ( \FD|somaUm|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|ALT_INV_DOUT\(17),
	cin => \FD|somaUm|Add0~54\,
	sumout => \FD|somaUm|Add0~57_sumout\,
	cout => \FD|somaUm|Add0~58\);

-- Location: FF_X56_Y4_N14
\FD|PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(17));

-- Location: FF_X56_Y4_N17
\FD|PC|DOUT[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[18]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y4_N15
\FD|somaUm|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~61_sumout\ = SUM(( \FD|PC|DOUT[18]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~58\ ))
-- \FD|somaUm|Add0~62\ = CARRY(( \FD|PC|DOUT[18]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT[18]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~58\,
	sumout => \FD|somaUm|Add0~61_sumout\,
	cout => \FD|somaUm|Add0~62\);

-- Location: FF_X56_Y4_N16
\FD|PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(18));

-- Location: LABCELL_X56_Y4_N18
\FD|somaUm|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~65_sumout\ = SUM(( \FD|PC|DOUT\(19) ) + ( GND ) + ( \FD|somaUm|Add0~62\ ))
-- \FD|somaUm|Add0~66\ = CARRY(( \FD|PC|DOUT\(19) ) + ( GND ) + ( \FD|somaUm|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT\(19),
	cin => \FD|somaUm|Add0~62\,
	sumout => \FD|somaUm|Add0~65_sumout\,
	cout => \FD|somaUm|Add0~66\);

-- Location: FF_X56_Y4_N20
\FD|PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(19));

-- Location: FF_X56_Y4_N23
\FD|PC|DOUT[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[20]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y4_N21
\FD|somaUm|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~69_sumout\ = SUM(( \FD|PC|DOUT[20]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~66\ ))
-- \FD|somaUm|Add0~70\ = CARRY(( \FD|PC|DOUT[20]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT[20]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~66\,
	sumout => \FD|somaUm|Add0~69_sumout\,
	cout => \FD|somaUm|Add0~70\);

-- Location: FF_X56_Y4_N22
\FD|PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(20));

-- Location: FF_X56_Y4_N26
\FD|PC|DOUT[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[21]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y4_N24
\FD|somaUm|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~73_sumout\ = SUM(( \FD|PC|DOUT[21]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~70\ ))
-- \FD|somaUm|Add0~74\ = CARRY(( \FD|PC|DOUT[21]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT[21]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~70\,
	sumout => \FD|somaUm|Add0~73_sumout\,
	cout => \FD|somaUm|Add0~74\);

-- Location: FF_X56_Y4_N25
\FD|PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(21));

-- Location: LABCELL_X56_Y4_N27
\FD|somaUm|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~77_sumout\ = SUM(( \FD|PC|DOUT\(22) ) + ( GND ) + ( \FD|somaUm|Add0~74\ ))
-- \FD|somaUm|Add0~78\ = CARRY(( \FD|PC|DOUT\(22) ) + ( GND ) + ( \FD|somaUm|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(22),
	cin => \FD|somaUm|Add0~74\,
	sumout => \FD|somaUm|Add0~77_sumout\,
	cout => \FD|somaUm|Add0~78\);

-- Location: FF_X56_Y4_N29
\FD|PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(22));

-- Location: LABCELL_X56_Y4_N30
\FD|somaUm|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~81_sumout\ = SUM(( \FD|PC|DOUT\(23) ) + ( GND ) + ( \FD|somaUm|Add0~78\ ))
-- \FD|somaUm|Add0~82\ = CARRY(( \FD|PC|DOUT\(23) ) + ( GND ) + ( \FD|somaUm|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT\(23),
	cin => \FD|somaUm|Add0~78\,
	sumout => \FD|somaUm|Add0~81_sumout\,
	cout => \FD|somaUm|Add0~82\);

-- Location: FF_X56_Y4_N31
\FD|PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(23));

-- Location: FF_X56_Y4_N35
\FD|PC|DOUT[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[24]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y4_N33
\FD|somaUm|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~85_sumout\ = SUM(( \FD|PC|DOUT[24]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~82\ ))
-- \FD|somaUm|Add0~86\ = CARRY(( \FD|PC|DOUT[24]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT[24]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~82\,
	sumout => \FD|somaUm|Add0~85_sumout\,
	cout => \FD|somaUm|Add0~86\);

-- Location: FF_X56_Y4_N34
\FD|PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(24));

-- Location: FF_X56_Y4_N38
\FD|PC|DOUT[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[25]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y4_N36
\FD|somaUm|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~89_sumout\ = SUM(( \FD|PC|DOUT[25]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~86\ ))
-- \FD|somaUm|Add0~90\ = CARRY(( \FD|PC|DOUT[25]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT[25]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~86\,
	sumout => \FD|somaUm|Add0~89_sumout\,
	cout => \FD|somaUm|Add0~90\);

-- Location: FF_X56_Y4_N37
\FD|PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(25));

-- Location: FF_X56_Y4_N41
\FD|PC|DOUT[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[26]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y4_N39
\FD|somaUm|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~93_sumout\ = SUM(( \FD|PC|DOUT[26]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~90\ ))
-- \FD|somaUm|Add0~94\ = CARRY(( \FD|PC|DOUT[26]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT[26]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~90\,
	sumout => \FD|somaUm|Add0~93_sumout\,
	cout => \FD|somaUm|Add0~94\);

-- Location: FF_X56_Y4_N40
\FD|PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(26));

-- Location: FF_X56_Y4_N44
\FD|PC|DOUT[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[27]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y4_N42
\FD|somaUm|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~97_sumout\ = SUM(( \FD|PC|DOUT[27]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~94\ ))
-- \FD|somaUm|Add0~98\ = CARRY(( \FD|PC|DOUT[27]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|ALT_INV_DOUT[27]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~94\,
	sumout => \FD|somaUm|Add0~97_sumout\,
	cout => \FD|somaUm|Add0~98\);

-- Location: FF_X56_Y4_N43
\FD|PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(27));

-- Location: FF_X56_Y4_N47
\FD|PC|DOUT[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[28]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y4_N45
\FD|somaUm|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~101_sumout\ = SUM(( \FD|PC|DOUT[28]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~98\ ))
-- \FD|somaUm|Add0~102\ = CARRY(( \FD|PC|DOUT[28]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT[28]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~98\,
	sumout => \FD|somaUm|Add0~101_sumout\,
	cout => \FD|somaUm|Add0~102\);

-- Location: FF_X56_Y4_N46
\FD|PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(28));

-- Location: FF_X56_Y4_N50
\FD|PC|DOUT[29]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[29]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y4_N48
\FD|somaUm|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~105_sumout\ = SUM(( \FD|PC|DOUT[29]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~102\ ))
-- \FD|somaUm|Add0~106\ = CARRY(( \FD|PC|DOUT[29]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT[29]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~102\,
	sumout => \FD|somaUm|Add0~105_sumout\,
	cout => \FD|somaUm|Add0~106\);

-- Location: FF_X56_Y4_N49
\FD|PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(29));

-- Location: LABCELL_X56_Y4_N51
\FD|somaUm|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~109_sumout\ = SUM(( \FD|PC|DOUT\(30) ) + ( GND ) + ( \FD|somaUm|Add0~106\ ))
-- \FD|somaUm|Add0~110\ = CARRY(( \FD|PC|DOUT\(30) ) + ( GND ) + ( \FD|somaUm|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT\(30),
	cin => \FD|somaUm|Add0~106\,
	sumout => \FD|somaUm|Add0~109_sumout\,
	cout => \FD|somaUm|Add0~110\);

-- Location: FF_X56_Y4_N52
\FD|PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(30));

-- Location: FF_X56_Y4_N56
\FD|PC|DOUT[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[31]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y4_N54
\FD|somaUm|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~113_sumout\ = SUM(( \FD|PC|DOUT[31]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT[31]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~110\,
	sumout => \FD|somaUm|Add0~113_sumout\);

-- Location: FF_X56_Y4_N55
\FD|PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(31));

-- Location: IOIBUF_X88_Y81_N53
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X26_Y81_N75
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X70_Y81_N1
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X36_Y81_N1
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X86_Y81_N1
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X82_Y81_N75
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X28_Y81_N18
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X54_Y81_N52
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X78_Y81_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X2_Y0_N92
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X68_Y81_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X28_Y81_N1
\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

-- Location: LABCELL_X35_Y8_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


