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

-- DATE "11/06/2020 18:45:38"

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
	saida_ula : OUT std_logic_vector(31 DOWNTO 0);
	saida_regA : OUT std_logic_vector(31 DOWNTO 0);
	saida_regB : OUT std_logic_vector(31 DOWNTO 0);
	funct_out : OUT std_logic_vector(5 DOWNTO 0);
	op_code_out : OUT std_logic_vector(5 DOWNTO 0);
	saida_rom : OUT std_logic_vector(31 DOWNTO 0);
	saida_pc : OUT std_logic_vector(31 DOWNTO 0);
	flag_zero_out : OUT std_logic;
	operacao_out : OUT std_logic_vector(2 DOWNTO 0)
	);
END mips_project;

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
SIGNAL ww_flag_zero_out : std_logic;
SIGNAL ww_operacao_out : std_logic_vector(2 DOWNTO 0);
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
SIGNAL \saida_ula[0]~output_o\ : std_logic;
SIGNAL \saida_ula[1]~output_o\ : std_logic;
SIGNAL \saida_ula[2]~output_o\ : std_logic;
SIGNAL \saida_ula[3]~output_o\ : std_logic;
SIGNAL \saida_ula[4]~output_o\ : std_logic;
SIGNAL \saida_ula[5]~output_o\ : std_logic;
SIGNAL \saida_ula[6]~output_o\ : std_logic;
SIGNAL \saida_ula[7]~output_o\ : std_logic;
SIGNAL \saida_ula[8]~output_o\ : std_logic;
SIGNAL \saida_ula[9]~output_o\ : std_logic;
SIGNAL \saida_ula[10]~output_o\ : std_logic;
SIGNAL \saida_ula[11]~output_o\ : std_logic;
SIGNAL \saida_ula[12]~output_o\ : std_logic;
SIGNAL \saida_ula[13]~output_o\ : std_logic;
SIGNAL \saida_ula[14]~output_o\ : std_logic;
SIGNAL \saida_ula[15]~output_o\ : std_logic;
SIGNAL \saida_ula[16]~output_o\ : std_logic;
SIGNAL \saida_ula[17]~output_o\ : std_logic;
SIGNAL \saida_ula[18]~output_o\ : std_logic;
SIGNAL \saida_ula[19]~output_o\ : std_logic;
SIGNAL \saida_ula[20]~output_o\ : std_logic;
SIGNAL \saida_ula[21]~output_o\ : std_logic;
SIGNAL \saida_ula[22]~output_o\ : std_logic;
SIGNAL \saida_ula[23]~output_o\ : std_logic;
SIGNAL \saida_ula[24]~output_o\ : std_logic;
SIGNAL \saida_ula[25]~output_o\ : std_logic;
SIGNAL \saida_ula[26]~output_o\ : std_logic;
SIGNAL \saida_ula[27]~output_o\ : std_logic;
SIGNAL \saida_ula[28]~output_o\ : std_logic;
SIGNAL \saida_ula[29]~output_o\ : std_logic;
SIGNAL \saida_ula[30]~output_o\ : std_logic;
SIGNAL \saida_ula[31]~output_o\ : std_logic;
SIGNAL \operacao_out[0]~output_o\ : std_logic;
SIGNAL \operacao_out[1]~output_o\ : std_logic;
SIGNAL \operacao_out[2]~output_o\ : std_logic;
SIGNAL \saida_regA[0]~output_o\ : std_logic;
SIGNAL \saida_regA[1]~output_o\ : std_logic;
SIGNAL \saida_regA[2]~output_o\ : std_logic;
SIGNAL \saida_regA[3]~output_o\ : std_logic;
SIGNAL \saida_regA[4]~output_o\ : std_logic;
SIGNAL \saida_regA[5]~output_o\ : std_logic;
SIGNAL \saida_regA[6]~output_o\ : std_logic;
SIGNAL \saida_regA[7]~output_o\ : std_logic;
SIGNAL \saida_regA[8]~output_o\ : std_logic;
SIGNAL \saida_regA[9]~output_o\ : std_logic;
SIGNAL \saida_regA[10]~output_o\ : std_logic;
SIGNAL \saida_regA[11]~output_o\ : std_logic;
SIGNAL \saida_regA[12]~output_o\ : std_logic;
SIGNAL \saida_regA[13]~output_o\ : std_logic;
SIGNAL \saida_regA[14]~output_o\ : std_logic;
SIGNAL \saida_regA[15]~output_o\ : std_logic;
SIGNAL \saida_regA[16]~output_o\ : std_logic;
SIGNAL \saida_regA[17]~output_o\ : std_logic;
SIGNAL \saida_regA[18]~output_o\ : std_logic;
SIGNAL \saida_regA[19]~output_o\ : std_logic;
SIGNAL \saida_regA[20]~output_o\ : std_logic;
SIGNAL \saida_regA[21]~output_o\ : std_logic;
SIGNAL \saida_regA[22]~output_o\ : std_logic;
SIGNAL \saida_regA[23]~output_o\ : std_logic;
SIGNAL \saida_regA[24]~output_o\ : std_logic;
SIGNAL \saida_regA[25]~output_o\ : std_logic;
SIGNAL \saida_regA[26]~output_o\ : std_logic;
SIGNAL \saida_regA[27]~output_o\ : std_logic;
SIGNAL \saida_regA[28]~output_o\ : std_logic;
SIGNAL \saida_regA[29]~output_o\ : std_logic;
SIGNAL \saida_regA[30]~output_o\ : std_logic;
SIGNAL \saida_regA[31]~output_o\ : std_logic;
SIGNAL \saida_regB[0]~output_o\ : std_logic;
SIGNAL \saida_regB[1]~output_o\ : std_logic;
SIGNAL \saida_regB[2]~output_o\ : std_logic;
SIGNAL \saida_regB[3]~output_o\ : std_logic;
SIGNAL \saida_regB[4]~output_o\ : std_logic;
SIGNAL \saida_regB[5]~output_o\ : std_logic;
SIGNAL \saida_regB[6]~output_o\ : std_logic;
SIGNAL \saida_regB[7]~output_o\ : std_logic;
SIGNAL \saida_regB[8]~output_o\ : std_logic;
SIGNAL \saida_regB[9]~output_o\ : std_logic;
SIGNAL \saida_regB[10]~output_o\ : std_logic;
SIGNAL \saida_regB[11]~output_o\ : std_logic;
SIGNAL \saida_regB[12]~output_o\ : std_logic;
SIGNAL \saida_regB[13]~output_o\ : std_logic;
SIGNAL \saida_regB[14]~output_o\ : std_logic;
SIGNAL \saida_regB[15]~output_o\ : std_logic;
SIGNAL \saida_regB[16]~output_o\ : std_logic;
SIGNAL \saida_regB[17]~output_o\ : std_logic;
SIGNAL \saida_regB[18]~output_o\ : std_logic;
SIGNAL \saida_regB[19]~output_o\ : std_logic;
SIGNAL \saida_regB[20]~output_o\ : std_logic;
SIGNAL \saida_regB[21]~output_o\ : std_logic;
SIGNAL \saida_regB[22]~output_o\ : std_logic;
SIGNAL \saida_regB[23]~output_o\ : std_logic;
SIGNAL \saida_regB[24]~output_o\ : std_logic;
SIGNAL \saida_regB[25]~output_o\ : std_logic;
SIGNAL \saida_regB[26]~output_o\ : std_logic;
SIGNAL \saida_regB[27]~output_o\ : std_logic;
SIGNAL \saida_regB[28]~output_o\ : std_logic;
SIGNAL \saida_regB[29]~output_o\ : std_logic;
SIGNAL \saida_regB[30]~output_o\ : std_logic;
SIGNAL \saida_regB[31]~output_o\ : std_logic;
SIGNAL \funct_out[0]~output_o\ : std_logic;
SIGNAL \funct_out[1]~output_o\ : std_logic;
SIGNAL \funct_out[2]~output_o\ : std_logic;
SIGNAL \funct_out[3]~output_o\ : std_logic;
SIGNAL \funct_out[4]~output_o\ : std_logic;
SIGNAL \funct_out[5]~output_o\ : std_logic;
SIGNAL \op_code_out[0]~output_o\ : std_logic;
SIGNAL \op_code_out[1]~output_o\ : std_logic;
SIGNAL \op_code_out[2]~output_o\ : std_logic;
SIGNAL \op_code_out[3]~output_o\ : std_logic;
SIGNAL \op_code_out[4]~output_o\ : std_logic;
SIGNAL \op_code_out[5]~output_o\ : std_logic;
SIGNAL \saida_rom[0]~output_o\ : std_logic;
SIGNAL \saida_rom[1]~output_o\ : std_logic;
SIGNAL \saida_rom[2]~output_o\ : std_logic;
SIGNAL \saida_rom[3]~output_o\ : std_logic;
SIGNAL \saida_rom[4]~output_o\ : std_logic;
SIGNAL \saida_rom[5]~output_o\ : std_logic;
SIGNAL \saida_rom[6]~output_o\ : std_logic;
SIGNAL \saida_rom[7]~output_o\ : std_logic;
SIGNAL \saida_rom[8]~output_o\ : std_logic;
SIGNAL \saida_rom[9]~output_o\ : std_logic;
SIGNAL \saida_rom[10]~output_o\ : std_logic;
SIGNAL \saida_rom[11]~output_o\ : std_logic;
SIGNAL \saida_rom[12]~output_o\ : std_logic;
SIGNAL \saida_rom[13]~output_o\ : std_logic;
SIGNAL \saida_rom[14]~output_o\ : std_logic;
SIGNAL \saida_rom[15]~output_o\ : std_logic;
SIGNAL \saida_rom[16]~output_o\ : std_logic;
SIGNAL \saida_rom[17]~output_o\ : std_logic;
SIGNAL \saida_rom[18]~output_o\ : std_logic;
SIGNAL \saida_rom[19]~output_o\ : std_logic;
SIGNAL \saida_rom[20]~output_o\ : std_logic;
SIGNAL \saida_rom[21]~output_o\ : std_logic;
SIGNAL \saida_rom[22]~output_o\ : std_logic;
SIGNAL \saida_rom[23]~output_o\ : std_logic;
SIGNAL \saida_rom[24]~output_o\ : std_logic;
SIGNAL \saida_rom[25]~output_o\ : std_logic;
SIGNAL \saida_rom[26]~output_o\ : std_logic;
SIGNAL \saida_rom[27]~output_o\ : std_logic;
SIGNAL \saida_rom[28]~output_o\ : std_logic;
SIGNAL \saida_rom[29]~output_o\ : std_logic;
SIGNAL \saida_rom[30]~output_o\ : std_logic;
SIGNAL \saida_rom[31]~output_o\ : std_logic;
SIGNAL \saida_pc[0]~output_o\ : std_logic;
SIGNAL \saida_pc[1]~output_o\ : std_logic;
SIGNAL \saida_pc[2]~output_o\ : std_logic;
SIGNAL \saida_pc[3]~output_o\ : std_logic;
SIGNAL \saida_pc[4]~output_o\ : std_logic;
SIGNAL \saida_pc[5]~output_o\ : std_logic;
SIGNAL \saida_pc[6]~output_o\ : std_logic;
SIGNAL \saida_pc[7]~output_o\ : std_logic;
SIGNAL \saida_pc[8]~output_o\ : std_logic;
SIGNAL \saida_pc[9]~output_o\ : std_logic;
SIGNAL \saida_pc[10]~output_o\ : std_logic;
SIGNAL \saida_pc[11]~output_o\ : std_logic;
SIGNAL \saida_pc[12]~output_o\ : std_logic;
SIGNAL \saida_pc[13]~output_o\ : std_logic;
SIGNAL \saida_pc[14]~output_o\ : std_logic;
SIGNAL \saida_pc[15]~output_o\ : std_logic;
SIGNAL \saida_pc[16]~output_o\ : std_logic;
SIGNAL \saida_pc[17]~output_o\ : std_logic;
SIGNAL \saida_pc[18]~output_o\ : std_logic;
SIGNAL \saida_pc[19]~output_o\ : std_logic;
SIGNAL \saida_pc[20]~output_o\ : std_logic;
SIGNAL \saida_pc[21]~output_o\ : std_logic;
SIGNAL \saida_pc[22]~output_o\ : std_logic;
SIGNAL \saida_pc[23]~output_o\ : std_logic;
SIGNAL \saida_pc[24]~output_o\ : std_logic;
SIGNAL \saida_pc[25]~output_o\ : std_logic;
SIGNAL \saida_pc[26]~output_o\ : std_logic;
SIGNAL \saida_pc[27]~output_o\ : std_logic;
SIGNAL \saida_pc[28]~output_o\ : std_logic;
SIGNAL \saida_pc[29]~output_o\ : std_logic;
SIGNAL \saida_pc[30]~output_o\ : std_logic;
SIGNAL \saida_pc[31]~output_o\ : std_logic;
SIGNAL \flag_zero_out~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \FD|ula|temp_saida[20]~21_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~378_q\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~6\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~2\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~13_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~14\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~17_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~18\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~21_sumout\ : std_logic;
SIGNAL \FD|ROM|memROM~2_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1092_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~58_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1081_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~57_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1080_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~56_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1079_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~55_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1078_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~54_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1077_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~53_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1076_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~52_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1075_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~51_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1074_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~50_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1073_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~49_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1072_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~48_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1071_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~47_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1070_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~46_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1069_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~45_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1068_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~44_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1067_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~43_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1066_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~42_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1065_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~41_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1064_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~40_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1063_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~39_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1062_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1093_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~358_q\ : std_logic;
SIGNAL \FD|ula|Add0~130_cout\ : std_logic;
SIGNAL \FD|ula|Add0~82\ : std_logic;
SIGNAL \FD|ula|Add0~85_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[1]~4_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1094_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~359_q\ : std_logic;
SIGNAL \FD|ula|Add0~86\ : std_logic;
SIGNAL \FD|ula|Add0~89_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[2]~5_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1095_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~360_q\ : std_logic;
SIGNAL \FD|ula|Add0~90\ : std_logic;
SIGNAL \FD|ula|Add0~93_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[3]~6_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~361_q\ : std_logic;
SIGNAL \FD|ula|Add0~94\ : std_logic;
SIGNAL \FD|ula|Add0~65_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[4]~2_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~362_q\ : std_logic;
SIGNAL \FD|ula|Add0~66\ : std_logic;
SIGNAL \FD|ula|Add0~33_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[5]~7_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~363_q\ : std_logic;
SIGNAL \FD|ula|Add0~34\ : std_logic;
SIGNAL \FD|ula|Add0~37_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[6]~8_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~364_q\ : std_logic;
SIGNAL \FD|ula|Add0~38\ : std_logic;
SIGNAL \FD|ula|Add0~41_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[7]~9_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~365_q\ : std_logic;
SIGNAL \FD|ula|Add0~42\ : std_logic;
SIGNAL \FD|ula|Add0~45_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[8]~10_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~366_q\ : std_logic;
SIGNAL \FD|ula|Add0~46\ : std_logic;
SIGNAL \FD|ula|Add0~17_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[9]~1_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~367_q\ : std_logic;
SIGNAL \FD|ula|Add0~18\ : std_logic;
SIGNAL \FD|ula|Add0~113_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[10]~11_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~368_q\ : std_logic;
SIGNAL \FD|ula|Add0~114\ : std_logic;
SIGNAL \FD|ula|Add0~117_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[11]~12_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~369_q\ : std_logic;
SIGNAL \FD|ula|Add0~118\ : std_logic;
SIGNAL \FD|ula|Add0~121_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[12]~13_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~370_q\ : std_logic;
SIGNAL \FD|ula|Add0~122\ : std_logic;
SIGNAL \FD|ula|Add0~69_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[13]~14_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~371_q\ : std_logic;
SIGNAL \FD|ula|Add0~70\ : std_logic;
SIGNAL \FD|ula|Add0~73_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[14]~15_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~372_q\ : std_logic;
SIGNAL \FD|ula|Add0~74\ : std_logic;
SIGNAL \FD|ula|Add0~77_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[15]~16_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~373_q\ : std_logic;
SIGNAL \FD|ula|Add0~78\ : std_logic;
SIGNAL \FD|ula|Add0~125_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[16]~17_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~374_q\ : std_logic;
SIGNAL \FD|ula|Add0~126\ : std_logic;
SIGNAL \FD|ula|Add0~21_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[17]~18_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~375_q\ : std_logic;
SIGNAL \FD|ula|Add0~22\ : std_logic;
SIGNAL \FD|ula|Add0~25_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[18]~19_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~376_q\ : std_logic;
SIGNAL \FD|ula|Add0~26\ : std_logic;
SIGNAL \FD|ula|Add0~29_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[19]~20_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~377_q\ : std_logic;
SIGNAL \FD|ula|Add0~30\ : std_logic;
SIGNAL \FD|ula|Add0~49_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[25]~26_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~383_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~63_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1086_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~62_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1085_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~61_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1084_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~60_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1083_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~59_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1082_combout\ : std_logic;
SIGNAL \FD|ula|Add0~50\ : std_logic;
SIGNAL \FD|ula|Add0~97_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[21]~22_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~379_q\ : std_logic;
SIGNAL \FD|ula|Add0~98\ : std_logic;
SIGNAL \FD|ula|Add0~101_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[22]~23_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~380_q\ : std_logic;
SIGNAL \FD|ula|Add0~102\ : std_logic;
SIGNAL \FD|ula|Add0~105_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[23]~24_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~381_q\ : std_logic;
SIGNAL \FD|ula|Add0~106\ : std_logic;
SIGNAL \FD|ula|Add0~9_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[24]~25_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~382_q\ : std_logic;
SIGNAL \FD|ula|Add0~10\ : std_logic;
SIGNAL \FD|ula|Add0~53_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[26]~27_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~384_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~64_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1087_combout\ : std_logic;
SIGNAL \FD|ula|Add0~54\ : std_logic;
SIGNAL \FD|ula|Add0~57_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[27]~28_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~385_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~65_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1088_combout\ : std_logic;
SIGNAL \FD|ula|Add0~58\ : std_logic;
SIGNAL \FD|ula|Add0~61_sumout\ : std_logic;
SIGNAL \FD|ula|Equal5~9_combout\ : std_logic;
SIGNAL \FD|ula|Equal5~2_combout\ : std_logic;
SIGNAL \FD|ula|Equal5~3_combout\ : std_logic;
SIGNAL \FD|ula|temp_saida[28]~29_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~386_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~66_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1089_combout\ : std_logic;
SIGNAL \FD|ula|Add0~62\ : std_logic;
SIGNAL \FD|ula|Add0~109_sumout\ : std_logic;
SIGNAL \FD|ula|Equal5~4_combout\ : std_logic;
SIGNAL \FD|ula|Equal5~5_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~22\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~9_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[7]~2_combout\ : std_logic;
SIGNAL \FD|ula|temp_saida[30]~0_combout\ : std_logic;
SIGNAL \FD|ula|temp_saida[29]~30_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~387_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~67_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1090_combout\ : std_logic;
SIGNAL \FD|ula|Add0~110\ : std_logic;
SIGNAL \FD|ula|Add0~13_sumout\ : std_logic;
SIGNAL \FD|ula|temp_saida[30]~31_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~388_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~68_q\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~1091_combout\ : std_logic;
SIGNAL \FD|ula|Add0~14\ : std_logic;
SIGNAL \FD|ula|Add0~1_sumout\ : std_logic;
SIGNAL \FD|ula|Equal5~12_combout\ : std_logic;
SIGNAL \FD|ula|temp_saida[31]~32_combout\ : std_logic;
SIGNAL \FD|banco_registradores|registrador~389_q\ : std_logic;
SIGNAL \FD|ula|Add0~2\ : std_logic;
SIGNAL \FD|ula|Add0~5_sumout\ : std_logic;
SIGNAL \FD|ula|Equal5~13_combout\ : std_logic;
SIGNAL \FD|ula|Equal5~7_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~5_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~1_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~1_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[3]~0_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~0_combout\ : std_logic;
SIGNAL \FD|ula|Add0~81_sumout\ : std_logic;
SIGNAL \unidade_controle|palavraControle[0]~0_combout\ : std_logic;
SIGNAL \FD|ula|temp_saida[0]~3_combout\ : std_logic;
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
SIGNAL \FD|somaQuatro|Add0~10\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~25_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~118_cout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~114_cout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~110_cout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~106_cout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~102_cout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~98_cout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~1_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[8]~3_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~26\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~29_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~2\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~5_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[9]~4_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~30\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~33_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~6\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~9_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[10]~5_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~34\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~37_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~10\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~13_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[11]~6_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~38\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~41_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~14\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~17_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[12]~7_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~42\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~45_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~18\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~21_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[13]~8_combout\ : std_logic;
SIGNAL \FD|ula|Equal5~10_combout\ : std_logic;
SIGNAL \FD|ula|Equal5~11_combout\ : std_logic;
SIGNAL \FD|ula|Equal5~8_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~46\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~49_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~22\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~25_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[14]~9_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~50\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~53_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~26\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~29_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[15]~10_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~54\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~57_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~30\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~33_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[16]~11_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~58\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~61_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~34\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~37_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[17]~12_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~62\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~65_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~38\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~41_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[18]~13_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~66\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~69_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~42\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~45_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[19]~14_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~70\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~73_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~46\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~49_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[20]~15_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~74\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~77_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~50\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~53_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[21]~16_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~78\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~81_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~54\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~57_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[22]~17_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~82\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~85_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~58\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~61_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[23]~18_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~86\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~89_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~62\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~65_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[24]~19_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~90\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~93_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~66\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~69_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[25]~20_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~94\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~97_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~70\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~73_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[26]~21_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~98\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~101_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~74\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~77_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[27]~22_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~102\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~105_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~78\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~81_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[28]~23_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~106\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~109_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~82\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~85_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[29]~24_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~110\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~113_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~86\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~89_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[30]~25_combout\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~114\ : std_logic;
SIGNAL \FD|somaQuatro|Add0~117_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~90\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|Add0~93_sumout\ : std_logic;
SIGNAL \FD|mux_prox_PC|saida_MUX[31]~26_combout\ : std_logic;
SIGNAL \FD|ula|Equal5~0_combout\ : std_logic;
SIGNAL \FD|ula|Equal5~1_combout\ : std_logic;
SIGNAL \FD|ula|Equal5~6_combout\ : std_logic;
SIGNAL \FD|PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|ula|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \FD|soma_proxPC_imedShift2|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \FD|soma_proxPC_imedShift2|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \FD|somaQuatro|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~373_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1075_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~372_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1074_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~371_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1073_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~370_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1072_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~369_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1071_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~368_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1070_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~367_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1069_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~366_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1068_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~365_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1067_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~364_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1066_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~363_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1065_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~362_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1064_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~361_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1063_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~360_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~359_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~358_q\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_temp_saida[2]~5_combout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_temp_saida[1]~4_combout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Equal5~5_combout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Equal5~4_combout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Equal5~3_combout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Equal5~2_combout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_temp_saida[0]~3_combout\ : std_logic;
SIGNAL \unidade_controle|ALT_INV_palavraControle[0]~0_combout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_temp_saida[30]~0_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~389_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1091_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~388_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1090_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~387_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1089_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~386_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1088_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~385_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1087_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~384_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1086_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~383_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1085_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~382_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1084_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~381_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1083_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~380_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1082_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~379_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1081_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~378_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1080_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~377_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1079_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~376_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1078_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~375_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1077_combout\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~374_q\ : std_logic;
SIGNAL \FD|banco_registradores|ALT_INV_registrador~1076_combout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Equal5~13_combout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Equal5~12_combout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Equal5~11_combout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Equal5~10_combout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Equal5~9_combout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Equal5~8_combout\ : std_logic;
SIGNAL \FD|ula|ALT_INV_Equal5~7_combout\ : std_logic;

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
flag_zero_out <= ww_flag_zero_out;
operacao_out <= ww_operacao_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\FD|ula|ALT_INV_Add0~117_sumout\ <= NOT \FD|ula|Add0~117_sumout\;
\FD|ula|ALT_INV_Add0~113_sumout\ <= NOT \FD|ula|Add0~113_sumout\;
\FD|ula|ALT_INV_Add0~109_sumout\ <= NOT \FD|ula|Add0~109_sumout\;
\FD|ula|ALT_INV_Add0~105_sumout\ <= NOT \FD|ula|Add0~105_sumout\;
\FD|ula|ALT_INV_Add0~101_sumout\ <= NOT \FD|ula|Add0~101_sumout\;
\FD|ula|ALT_INV_Add0~97_sumout\ <= NOT \FD|ula|Add0~97_sumout\;
\FD|ula|ALT_INV_Add0~93_sumout\ <= NOT \FD|ula|Add0~93_sumout\;
\FD|ula|ALT_INV_Add0~89_sumout\ <= NOT \FD|ula|Add0~89_sumout\;
\FD|ula|ALT_INV_Add0~85_sumout\ <= NOT \FD|ula|Add0~85_sumout\;
\FD|ula|ALT_INV_Add0~81_sumout\ <= NOT \FD|ula|Add0~81_sumout\;
\FD|ula|ALT_INV_Add0~77_sumout\ <= NOT \FD|ula|Add0~77_sumout\;
\FD|ula|ALT_INV_Add0~73_sumout\ <= NOT \FD|ula|Add0~73_sumout\;
\FD|ula|ALT_INV_Add0~69_sumout\ <= NOT \FD|ula|Add0~69_sumout\;
\FD|ula|ALT_INV_Add0~65_sumout\ <= NOT \FD|ula|Add0~65_sumout\;
\FD|ula|ALT_INV_Add0~61_sumout\ <= NOT \FD|ula|Add0~61_sumout\;
\FD|ula|ALT_INV_Add0~57_sumout\ <= NOT \FD|ula|Add0~57_sumout\;
\FD|ula|ALT_INV_Add0~53_sumout\ <= NOT \FD|ula|Add0~53_sumout\;
\FD|ula|ALT_INV_Add0~49_sumout\ <= NOT \FD|ula|Add0~49_sumout\;
\FD|ula|ALT_INV_Add0~45_sumout\ <= NOT \FD|ula|Add0~45_sumout\;
\FD|ula|ALT_INV_Add0~41_sumout\ <= NOT \FD|ula|Add0~41_sumout\;
\FD|ula|ALT_INV_Add0~37_sumout\ <= NOT \FD|ula|Add0~37_sumout\;
\FD|ula|ALT_INV_Add0~33_sumout\ <= NOT \FD|ula|Add0~33_sumout\;
\FD|ula|ALT_INV_Add0~29_sumout\ <= NOT \FD|ula|Add0~29_sumout\;
\FD|ula|ALT_INV_Add0~25_sumout\ <= NOT \FD|ula|Add0~25_sumout\;
\FD|ula|ALT_INV_Add0~21_sumout\ <= NOT \FD|ula|Add0~21_sumout\;
\FD|ula|ALT_INV_Add0~17_sumout\ <= NOT \FD|ula|Add0~17_sumout\;
\FD|ula|ALT_INV_Add0~13_sumout\ <= NOT \FD|ula|Add0~13_sumout\;
\FD|ula|ALT_INV_Add0~9_sumout\ <= NOT \FD|ula|Add0~9_sumout\;
\FD|ula|ALT_INV_Add0~5_sumout\ <= NOT \FD|ula|Add0~5_sumout\;
\FD|ula|ALT_INV_Add0~1_sumout\ <= NOT \FD|ula|Add0~1_sumout\;
\FD|PC|ALT_INV_DOUT\(27) <= NOT \FD|PC|DOUT\(27);
\FD|PC|ALT_INV_DOUT\(25) <= NOT \FD|PC|DOUT\(25);
\FD|PC|ALT_INV_DOUT\(23) <= NOT \FD|PC|DOUT\(23);
\FD|PC|ALT_INV_DOUT\(22) <= NOT \FD|PC|DOUT\(22);
\FD|PC|ALT_INV_DOUT\(20) <= NOT \FD|PC|DOUT\(20);
\FD|PC|ALT_INV_DOUT\(18) <= NOT \FD|PC|DOUT\(18);
\FD|PC|ALT_INV_DOUT\(17) <= NOT \FD|PC|DOUT\(17);
\FD|PC|ALT_INV_DOUT\(15) <= NOT \FD|PC|DOUT\(15);
\FD|PC|ALT_INV_DOUT\(13) <= NOT \FD|PC|DOUT\(13);
\FD|PC|ALT_INV_DOUT\(12) <= NOT \FD|PC|DOUT\(12);
\FD|PC|ALT_INV_DOUT\(11) <= NOT \FD|PC|DOUT\(11);
\FD|PC|ALT_INV_DOUT\(10) <= NOT \FD|PC|DOUT\(10);
\FD|PC|ALT_INV_DOUT\(9) <= NOT \FD|PC|DOUT\(9);
\FD|PC|ALT_INV_DOUT\(8) <= NOT \FD|PC|DOUT\(8);
\FD|PC|ALT_INV_DOUT\(6) <= NOT \FD|PC|DOUT\(6);
\FD|PC|ALT_INV_DOUT\(5) <= NOT \FD|PC|DOUT\(5);
\FD|PC|ALT_INV_DOUT\(4) <= NOT \FD|PC|DOUT\(4);
\FD|PC|ALT_INV_DOUT\(3) <= NOT \FD|PC|DOUT\(3);
\FD|soma_proxPC_imedShift2|ALT_INV_Add0~93_sumout\ <= NOT \FD|soma_proxPC_imedShift2|Add0~93_sumout\;
\FD|somaQuatro|ALT_INV_Add0~117_sumout\ <= NOT \FD|somaQuatro|Add0~117_sumout\;
\FD|soma_proxPC_imedShift2|ALT_INV_Add0~89_sumout\ <= NOT \FD|soma_proxPC_imedShift2|Add0~89_sumout\;
\FD|somaQuatro|ALT_INV_Add0~113_sumout\ <= NOT \FD|somaQuatro|Add0~113_sumout\;
\FD|soma_proxPC_imedShift2|ALT_INV_Add0~85_sumout\ <= NOT \FD|soma_proxPC_imedShift2|Add0~85_sumout\;
\FD|somaQuatro|ALT_INV_Add0~109_sumout\ <= NOT \FD|somaQuatro|Add0~109_sumout\;
\FD|soma_proxPC_imedShift2|ALT_INV_Add0~81_sumout\ <= NOT \FD|soma_proxPC_imedShift2|Add0~81_sumout\;
\FD|somaQuatro|ALT_INV_Add0~105_sumout\ <= NOT \FD|somaQuatro|Add0~105_sumout\;
\FD|soma_proxPC_imedShift2|ALT_INV_Add0~77_sumout\ <= NOT \FD|soma_proxPC_imedShift2|Add0~77_sumout\;
\FD|somaQuatro|ALT_INV_Add0~101_sumout\ <= NOT \FD|somaQuatro|Add0~101_sumout\;
\FD|soma_proxPC_imedShift2|ALT_INV_Add0~73_sumout\ <= NOT \FD|soma_proxPC_imedShift2|Add0~73_sumout\;
\FD|somaQuatro|ALT_INV_Add0~97_sumout\ <= NOT \FD|somaQuatro|Add0~97_sumout\;
\FD|soma_proxPC_imedShift2|ALT_INV_Add0~69_sumout\ <= NOT \FD|soma_proxPC_imedShift2|Add0~69_sumout\;
\FD|somaQuatro|ALT_INV_Add0~93_sumout\ <= NOT \FD|somaQuatro|Add0~93_sumout\;
\FD|soma_proxPC_imedShift2|ALT_INV_Add0~65_sumout\ <= NOT \FD|soma_proxPC_imedShift2|Add0~65_sumout\;
\FD|somaQuatro|ALT_INV_Add0~89_sumout\ <= NOT \FD|somaQuatro|Add0~89_sumout\;
\FD|soma_proxPC_imedShift2|ALT_INV_Add0~61_sumout\ <= NOT \FD|soma_proxPC_imedShift2|Add0~61_sumout\;
\FD|somaQuatro|ALT_INV_Add0~85_sumout\ <= NOT \FD|somaQuatro|Add0~85_sumout\;
\FD|soma_proxPC_imedShift2|ALT_INV_Add0~57_sumout\ <= NOT \FD|soma_proxPC_imedShift2|Add0~57_sumout\;
\FD|somaQuatro|ALT_INV_Add0~81_sumout\ <= NOT \FD|somaQuatro|Add0~81_sumout\;
\FD|soma_proxPC_imedShift2|ALT_INV_Add0~53_sumout\ <= NOT \FD|soma_proxPC_imedShift2|Add0~53_sumout\;
\FD|somaQuatro|ALT_INV_Add0~77_sumout\ <= NOT \FD|somaQuatro|Add0~77_sumout\;
\FD|soma_proxPC_imedShift2|ALT_INV_Add0~49_sumout\ <= NOT \FD|soma_proxPC_imedShift2|Add0~49_sumout\;
\FD|somaQuatro|ALT_INV_Add0~73_sumout\ <= NOT \FD|somaQuatro|Add0~73_sumout\;
\FD|soma_proxPC_imedShift2|ALT_INV_Add0~45_sumout\ <= NOT \FD|soma_proxPC_imedShift2|Add0~45_sumout\;
\FD|somaQuatro|ALT_INV_Add0~69_sumout\ <= NOT \FD|somaQuatro|Add0~69_sumout\;
\FD|soma_proxPC_imedShift2|ALT_INV_Add0~41_sumout\ <= NOT \FD|soma_proxPC_imedShift2|Add0~41_sumout\;
\FD|somaQuatro|ALT_INV_Add0~65_sumout\ <= NOT \FD|somaQuatro|Add0~65_sumout\;
\FD|soma_proxPC_imedShift2|ALT_INV_Add0~37_sumout\ <= NOT \FD|soma_proxPC_imedShift2|Add0~37_sumout\;
\FD|somaQuatro|ALT_INV_Add0~61_sumout\ <= NOT \FD|somaQuatro|Add0~61_sumout\;
\FD|soma_proxPC_imedShift2|ALT_INV_Add0~33_sumout\ <= NOT \FD|soma_proxPC_imedShift2|Add0~33_sumout\;
\FD|somaQuatro|ALT_INV_Add0~57_sumout\ <= NOT \FD|somaQuatro|Add0~57_sumout\;
\FD|soma_proxPC_imedShift2|ALT_INV_Add0~29_sumout\ <= NOT \FD|soma_proxPC_imedShift2|Add0~29_sumout\;
\FD|somaQuatro|ALT_INV_Add0~53_sumout\ <= NOT \FD|somaQuatro|Add0~53_sumout\;
\FD|soma_proxPC_imedShift2|ALT_INV_Add0~25_sumout\ <= NOT \FD|soma_proxPC_imedShift2|Add0~25_sumout\;
\FD|somaQuatro|ALT_INV_Add0~49_sumout\ <= NOT \FD|somaQuatro|Add0~49_sumout\;
\FD|soma_proxPC_imedShift2|ALT_INV_Add0~21_sumout\ <= NOT \FD|soma_proxPC_imedShift2|Add0~21_sumout\;
\FD|somaQuatro|ALT_INV_Add0~45_sumout\ <= NOT \FD|somaQuatro|Add0~45_sumout\;
\FD|soma_proxPC_imedShift2|ALT_INV_Add0~17_sumout\ <= NOT \FD|soma_proxPC_imedShift2|Add0~17_sumout\;
\FD|somaQuatro|ALT_INV_Add0~41_sumout\ <= NOT \FD|somaQuatro|Add0~41_sumout\;
\FD|soma_proxPC_imedShift2|ALT_INV_Add0~13_sumout\ <= NOT \FD|soma_proxPC_imedShift2|Add0~13_sumout\;
\FD|somaQuatro|ALT_INV_Add0~37_sumout\ <= NOT \FD|somaQuatro|Add0~37_sumout\;
\FD|soma_proxPC_imedShift2|ALT_INV_Add0~9_sumout\ <= NOT \FD|soma_proxPC_imedShift2|Add0~9_sumout\;
\FD|somaQuatro|ALT_INV_Add0~33_sumout\ <= NOT \FD|somaQuatro|Add0~33_sumout\;
\FD|soma_proxPC_imedShift2|ALT_INV_Add0~5_sumout\ <= NOT \FD|soma_proxPC_imedShift2|Add0~5_sumout\;
\FD|somaQuatro|ALT_INV_Add0~29_sumout\ <= NOT \FD|somaQuatro|Add0~29_sumout\;
\FD|soma_proxPC_imedShift2|ALT_INV_Add0~1_sumout\ <= NOT \FD|soma_proxPC_imedShift2|Add0~1_sumout\;
\FD|somaQuatro|ALT_INV_Add0~25_sumout\ <= NOT \FD|somaQuatro|Add0~25_sumout\;
\FD|somaQuatro|ALT_INV_Add0~21_sumout\ <= NOT \FD|somaQuatro|Add0~21_sumout\;
\FD|somaQuatro|ALT_INV_Add0~17_sumout\ <= NOT \FD|somaQuatro|Add0~17_sumout\;
\FD|somaQuatro|ALT_INV_Add0~13_sumout\ <= NOT \FD|somaQuatro|Add0~13_sumout\;
\FD|somaQuatro|ALT_INV_Add0~9_sumout\ <= NOT \FD|somaQuatro|Add0~9_sumout\;
\FD|somaQuatro|ALT_INV_Add0~5_sumout\ <= NOT \FD|somaQuatro|Add0~5_sumout\;
\FD|somaQuatro|ALT_INV_Add0~1_sumout\ <= NOT \FD|somaQuatro|Add0~1_sumout\;
\FD|ula|ALT_INV_Add0~125_sumout\ <= NOT \FD|ula|Add0~125_sumout\;
\FD|ula|ALT_INV_Add0~121_sumout\ <= NOT \FD|ula|Add0~121_sumout\;
\FD|banco_registradores|ALT_INV_registrador~53_q\ <= NOT \FD|banco_registradores|registrador~53_q\;
\FD|banco_registradores|ALT_INV_registrador~373_q\ <= NOT \FD|banco_registradores|registrador~373_q\;
\FD|banco_registradores|ALT_INV_registrador~1075_combout\ <= NOT \FD|banco_registradores|registrador~1075_combout\;
\FD|banco_registradores|ALT_INV_registrador~52_q\ <= NOT \FD|banco_registradores|registrador~52_q\;
\FD|banco_registradores|ALT_INV_registrador~372_q\ <= NOT \FD|banco_registradores|registrador~372_q\;
\FD|banco_registradores|ALT_INV_registrador~1074_combout\ <= NOT \FD|banco_registradores|registrador~1074_combout\;
\FD|banco_registradores|ALT_INV_registrador~51_q\ <= NOT \FD|banco_registradores|registrador~51_q\;
\FD|banco_registradores|ALT_INV_registrador~371_q\ <= NOT \FD|banco_registradores|registrador~371_q\;
\FD|banco_registradores|ALT_INV_registrador~1073_combout\ <= NOT \FD|banco_registradores|registrador~1073_combout\;
\FD|banco_registradores|ALT_INV_registrador~50_q\ <= NOT \FD|banco_registradores|registrador~50_q\;
\FD|banco_registradores|ALT_INV_registrador~370_q\ <= NOT \FD|banco_registradores|registrador~370_q\;
\FD|banco_registradores|ALT_INV_registrador~1072_combout\ <= NOT \FD|banco_registradores|registrador~1072_combout\;
\FD|banco_registradores|ALT_INV_registrador~49_q\ <= NOT \FD|banco_registradores|registrador~49_q\;
\FD|banco_registradores|ALT_INV_registrador~369_q\ <= NOT \FD|banco_registradores|registrador~369_q\;
\FD|banco_registradores|ALT_INV_registrador~1071_combout\ <= NOT \FD|banco_registradores|registrador~1071_combout\;
\FD|banco_registradores|ALT_INV_registrador~48_q\ <= NOT \FD|banco_registradores|registrador~48_q\;
\FD|banco_registradores|ALT_INV_registrador~368_q\ <= NOT \FD|banco_registradores|registrador~368_q\;
\FD|banco_registradores|ALT_INV_registrador~1070_combout\ <= NOT \FD|banco_registradores|registrador~1070_combout\;
\FD|banco_registradores|ALT_INV_registrador~47_q\ <= NOT \FD|banco_registradores|registrador~47_q\;
\FD|banco_registradores|ALT_INV_registrador~367_q\ <= NOT \FD|banco_registradores|registrador~367_q\;
\FD|banco_registradores|ALT_INV_registrador~1069_combout\ <= NOT \FD|banco_registradores|registrador~1069_combout\;
\FD|banco_registradores|ALT_INV_registrador~46_q\ <= NOT \FD|banco_registradores|registrador~46_q\;
\FD|banco_registradores|ALT_INV_registrador~366_q\ <= NOT \FD|banco_registradores|registrador~366_q\;
\FD|banco_registradores|ALT_INV_registrador~1068_combout\ <= NOT \FD|banco_registradores|registrador~1068_combout\;
\FD|banco_registradores|ALT_INV_registrador~45_q\ <= NOT \FD|banco_registradores|registrador~45_q\;
\FD|banco_registradores|ALT_INV_registrador~365_q\ <= NOT \FD|banco_registradores|registrador~365_q\;
\FD|banco_registradores|ALT_INV_registrador~1067_combout\ <= NOT \FD|banco_registradores|registrador~1067_combout\;
\FD|banco_registradores|ALT_INV_registrador~44_q\ <= NOT \FD|banco_registradores|registrador~44_q\;
\FD|banco_registradores|ALT_INV_registrador~364_q\ <= NOT \FD|banco_registradores|registrador~364_q\;
\FD|banco_registradores|ALT_INV_registrador~1066_combout\ <= NOT \FD|banco_registradores|registrador~1066_combout\;
\FD|banco_registradores|ALT_INV_registrador~43_q\ <= NOT \FD|banco_registradores|registrador~43_q\;
\FD|banco_registradores|ALT_INV_registrador~363_q\ <= NOT \FD|banco_registradores|registrador~363_q\;
\FD|banco_registradores|ALT_INV_registrador~1065_combout\ <= NOT \FD|banco_registradores|registrador~1065_combout\;
\FD|banco_registradores|ALT_INV_registrador~42_q\ <= NOT \FD|banco_registradores|registrador~42_q\;
\FD|banco_registradores|ALT_INV_registrador~362_q\ <= NOT \FD|banco_registradores|registrador~362_q\;
\FD|banco_registradores|ALT_INV_registrador~1064_combout\ <= NOT \FD|banco_registradores|registrador~1064_combout\;
\FD|banco_registradores|ALT_INV_registrador~41_q\ <= NOT \FD|banco_registradores|registrador~41_q\;
\FD|banco_registradores|ALT_INV_registrador~361_q\ <= NOT \FD|banco_registradores|registrador~361_q\;
\FD|banco_registradores|ALT_INV_registrador~1063_combout\ <= NOT \FD|banco_registradores|registrador~1063_combout\;
\FD|banco_registradores|ALT_INV_registrador~40_q\ <= NOT \FD|banco_registradores|registrador~40_q\;
\FD|banco_registradores|ALT_INV_registrador~360_q\ <= NOT \FD|banco_registradores|registrador~360_q\;
\FD|banco_registradores|ALT_INV_registrador~1062_combout\ <= NOT \FD|banco_registradores|registrador~1062_combout\;
\FD|banco_registradores|ALT_INV_registrador~39_q\ <= NOT \FD|banco_registradores|registrador~39_q\;
\FD|banco_registradores|ALT_INV_registrador~359_q\ <= NOT \FD|banco_registradores|registrador~359_q\;
\FD|banco_registradores|ALT_INV_registrador~358_q\ <= NOT \FD|banco_registradores|registrador~358_q\;
\FD|ROM|ALT_INV_memROM~0_combout\ <= NOT \FD|ROM|memROM~0_combout\;
\FD|PC|ALT_INV_DOUT\(7) <= NOT \FD|PC|DOUT\(7);
\FD|PC|ALT_INV_DOUT\(2) <= NOT \FD|PC|DOUT\(2);
\FD|ula|ALT_INV_temp_saida[2]~5_combout\ <= NOT \FD|ula|temp_saida[2]~5_combout\;
\FD|ula|ALT_INV_temp_saida[1]~4_combout\ <= NOT \FD|ula|temp_saida[1]~4_combout\;
\FD|ula|ALT_INV_Equal5~5_combout\ <= NOT \FD|ula|Equal5~5_combout\;
\FD|ula|ALT_INV_Equal5~4_combout\ <= NOT \FD|ula|Equal5~4_combout\;
\FD|ula|ALT_INV_Equal5~3_combout\ <= NOT \FD|ula|Equal5~3_combout\;
\FD|ula|ALT_INV_Equal5~2_combout\ <= NOT \FD|ula|Equal5~2_combout\;
\FD|ula|ALT_INV_temp_saida[0]~3_combout\ <= NOT \FD|ula|temp_saida[0]~3_combout\;
\unidade_controle|ALT_INV_palavraControle[0]~0_combout\ <= NOT \unidade_controle|palavraControle[0]~0_combout\;
\FD|ula|ALT_INV_Equal5~1_combout\ <= NOT \FD|ula|Equal5~1_combout\;
\FD|ula|ALT_INV_Equal5~0_combout\ <= NOT \FD|ula|Equal5~0_combout\;
\FD|ula|ALT_INV_temp_saida[30]~0_combout\ <= NOT \FD|ula|temp_saida[30]~0_combout\;
\FD|PC|ALT_INV_DOUT\(31) <= NOT \FD|PC|DOUT\(31);
\FD|PC|ALT_INV_DOUT\(30) <= NOT \FD|PC|DOUT\(30);
\FD|PC|ALT_INV_DOUT\(29) <= NOT \FD|PC|DOUT\(29);
\FD|PC|ALT_INV_DOUT\(28) <= NOT \FD|PC|DOUT\(28);
\FD|PC|ALT_INV_DOUT\(26) <= NOT \FD|PC|DOUT\(26);
\FD|PC|ALT_INV_DOUT\(24) <= NOT \FD|PC|DOUT\(24);
\FD|PC|ALT_INV_DOUT\(21) <= NOT \FD|PC|DOUT\(21);
\FD|PC|ALT_INV_DOUT\(19) <= NOT \FD|PC|DOUT\(19);
\FD|PC|ALT_INV_DOUT\(16) <= NOT \FD|PC|DOUT\(16);
\FD|PC|ALT_INV_DOUT\(14) <= NOT \FD|PC|DOUT\(14);
\FD|ROM|ALT_INV_memROM~2_combout\ <= NOT \FD|ROM|memROM~2_combout\;
\FD|ROM|ALT_INV_memROM~1_combout\ <= NOT \FD|ROM|memROM~1_combout\;
\FD|banco_registradores|ALT_INV_registrador~389_q\ <= NOT \FD|banco_registradores|registrador~389_q\;
\FD|banco_registradores|ALT_INV_registrador~1091_combout\ <= NOT \FD|banco_registradores|registrador~1091_combout\;
\FD|banco_registradores|ALT_INV_registrador~68_q\ <= NOT \FD|banco_registradores|registrador~68_q\;
\FD|banco_registradores|ALT_INV_registrador~388_q\ <= NOT \FD|banco_registradores|registrador~388_q\;
\FD|banco_registradores|ALT_INV_registrador~1090_combout\ <= NOT \FD|banco_registradores|registrador~1090_combout\;
\FD|banco_registradores|ALT_INV_registrador~67_q\ <= NOT \FD|banco_registradores|registrador~67_q\;
\FD|banco_registradores|ALT_INV_registrador~387_q\ <= NOT \FD|banco_registradores|registrador~387_q\;
\FD|banco_registradores|ALT_INV_registrador~1089_combout\ <= NOT \FD|banco_registradores|registrador~1089_combout\;
\FD|banco_registradores|ALT_INV_registrador~66_q\ <= NOT \FD|banco_registradores|registrador~66_q\;
\FD|banco_registradores|ALT_INV_registrador~386_q\ <= NOT \FD|banco_registradores|registrador~386_q\;
\FD|banco_registradores|ALT_INV_registrador~1088_combout\ <= NOT \FD|banco_registradores|registrador~1088_combout\;
\FD|banco_registradores|ALT_INV_registrador~65_q\ <= NOT \FD|banco_registradores|registrador~65_q\;
\FD|banco_registradores|ALT_INV_registrador~385_q\ <= NOT \FD|banco_registradores|registrador~385_q\;
\FD|banco_registradores|ALT_INV_registrador~1087_combout\ <= NOT \FD|banco_registradores|registrador~1087_combout\;
\FD|banco_registradores|ALT_INV_registrador~64_q\ <= NOT \FD|banco_registradores|registrador~64_q\;
\FD|banco_registradores|ALT_INV_registrador~384_q\ <= NOT \FD|banco_registradores|registrador~384_q\;
\FD|banco_registradores|ALT_INV_registrador~1086_combout\ <= NOT \FD|banco_registradores|registrador~1086_combout\;
\FD|banco_registradores|ALT_INV_registrador~63_q\ <= NOT \FD|banco_registradores|registrador~63_q\;
\FD|banco_registradores|ALT_INV_registrador~383_q\ <= NOT \FD|banco_registradores|registrador~383_q\;
\FD|banco_registradores|ALT_INV_registrador~1085_combout\ <= NOT \FD|banco_registradores|registrador~1085_combout\;
\FD|banco_registradores|ALT_INV_registrador~62_q\ <= NOT \FD|banco_registradores|registrador~62_q\;
\FD|banco_registradores|ALT_INV_registrador~382_q\ <= NOT \FD|banco_registradores|registrador~382_q\;
\FD|banco_registradores|ALT_INV_registrador~1084_combout\ <= NOT \FD|banco_registradores|registrador~1084_combout\;
\FD|banco_registradores|ALT_INV_registrador~61_q\ <= NOT \FD|banco_registradores|registrador~61_q\;
\FD|banco_registradores|ALT_INV_registrador~381_q\ <= NOT \FD|banco_registradores|registrador~381_q\;
\FD|banco_registradores|ALT_INV_registrador~1083_combout\ <= NOT \FD|banco_registradores|registrador~1083_combout\;
\FD|banco_registradores|ALT_INV_registrador~60_q\ <= NOT \FD|banco_registradores|registrador~60_q\;
\FD|banco_registradores|ALT_INV_registrador~380_q\ <= NOT \FD|banco_registradores|registrador~380_q\;
\FD|banco_registradores|ALT_INV_registrador~1082_combout\ <= NOT \FD|banco_registradores|registrador~1082_combout\;
\FD|banco_registradores|ALT_INV_registrador~59_q\ <= NOT \FD|banco_registradores|registrador~59_q\;
\FD|banco_registradores|ALT_INV_registrador~379_q\ <= NOT \FD|banco_registradores|registrador~379_q\;
\FD|banco_registradores|ALT_INV_registrador~1081_combout\ <= NOT \FD|banco_registradores|registrador~1081_combout\;
\FD|banco_registradores|ALT_INV_registrador~58_q\ <= NOT \FD|banco_registradores|registrador~58_q\;
\FD|banco_registradores|ALT_INV_registrador~378_q\ <= NOT \FD|banco_registradores|registrador~378_q\;
\FD|banco_registradores|ALT_INV_registrador~1080_combout\ <= NOT \FD|banco_registradores|registrador~1080_combout\;
\FD|banco_registradores|ALT_INV_registrador~57_q\ <= NOT \FD|banco_registradores|registrador~57_q\;
\FD|banco_registradores|ALT_INV_registrador~377_q\ <= NOT \FD|banco_registradores|registrador~377_q\;
\FD|banco_registradores|ALT_INV_registrador~1079_combout\ <= NOT \FD|banco_registradores|registrador~1079_combout\;
\FD|banco_registradores|ALT_INV_registrador~56_q\ <= NOT \FD|banco_registradores|registrador~56_q\;
\FD|banco_registradores|ALT_INV_registrador~376_q\ <= NOT \FD|banco_registradores|registrador~376_q\;
\FD|banco_registradores|ALT_INV_registrador~1078_combout\ <= NOT \FD|banco_registradores|registrador~1078_combout\;
\FD|banco_registradores|ALT_INV_registrador~55_q\ <= NOT \FD|banco_registradores|registrador~55_q\;
\FD|banco_registradores|ALT_INV_registrador~375_q\ <= NOT \FD|banco_registradores|registrador~375_q\;
\FD|banco_registradores|ALT_INV_registrador~1077_combout\ <= NOT \FD|banco_registradores|registrador~1077_combout\;
\FD|banco_registradores|ALT_INV_registrador~54_q\ <= NOT \FD|banco_registradores|registrador~54_q\;
\FD|banco_registradores|ALT_INV_registrador~374_q\ <= NOT \FD|banco_registradores|registrador~374_q\;
\FD|banco_registradores|ALT_INV_registrador~1076_combout\ <= NOT \FD|banco_registradores|registrador~1076_combout\;
\FD|ula|ALT_INV_Equal5~13_combout\ <= NOT \FD|ula|Equal5~13_combout\;
\FD|ula|ALT_INV_Equal5~12_combout\ <= NOT \FD|ula|Equal5~12_combout\;
\FD|ula|ALT_INV_Equal5~11_combout\ <= NOT \FD|ula|Equal5~11_combout\;
\FD|ula|ALT_INV_Equal5~10_combout\ <= NOT \FD|ula|Equal5~10_combout\;
\FD|ula|ALT_INV_Equal5~9_combout\ <= NOT \FD|ula|Equal5~9_combout\;
\FD|ula|ALT_INV_Equal5~8_combout\ <= NOT \FD|ula|Equal5~8_combout\;
\FD|ula|ALT_INV_Equal5~7_combout\ <= NOT \FD|ula|Equal5~7_combout\;

\saida_ula[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[0]~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[0]~output_o\);

\saida_ula[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[1]~4_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[1]~output_o\);

\saida_ula[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[2]~5_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[2]~output_o\);

\saida_ula[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[3]~6_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[3]~output_o\);

\saida_ula[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[4]~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[4]~output_o\);

\saida_ula[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[5]~7_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[5]~output_o\);

\saida_ula[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[6]~8_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[6]~output_o\);

\saida_ula[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[7]~9_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[7]~output_o\);

\saida_ula[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[8]~10_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[8]~output_o\);

\saida_ula[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[9]~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[9]~output_o\);

\saida_ula[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[10]~11_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[10]~output_o\);

\saida_ula[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[11]~12_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[11]~output_o\);

\saida_ula[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[12]~13_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[12]~output_o\);

\saida_ula[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[13]~14_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[13]~output_o\);

\saida_ula[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[14]~15_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[14]~output_o\);

\saida_ula[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[15]~16_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[15]~output_o\);

\saida_ula[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[16]~17_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[16]~output_o\);

\saida_ula[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[17]~18_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[17]~output_o\);

\saida_ula[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[18]~19_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[18]~output_o\);

\saida_ula[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[19]~20_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[19]~output_o\);

\saida_ula[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[20]~21_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[20]~output_o\);

\saida_ula[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[21]~22_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[21]~output_o\);

\saida_ula[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[22]~23_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[22]~output_o\);

\saida_ula[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[23]~24_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[23]~output_o\);

\saida_ula[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[24]~25_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[24]~output_o\);

\saida_ula[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[25]~26_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[25]~output_o\);

\saida_ula[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[26]~27_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[26]~output_o\);

\saida_ula[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[27]~28_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[27]~output_o\);

\saida_ula[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[28]~29_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[28]~output_o\);

\saida_ula[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[29]~30_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[29]~output_o\);

\saida_ula[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[30]~31_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[30]~output_o\);

\saida_ula[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|temp_saida[31]~32_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \saida_ula[31]~output_o\);

\operacao_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \unidade_controle|palavraControle[0]~0_combout\,
	devoe => ww_devoe,
	o => \operacao_out[0]~output_o\);

\operacao_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => \unidade_controle|ALT_INV_palavraControle[0]~0_combout\,
	devoe => ww_devoe,
	o => \operacao_out[1]~output_o\);

\operacao_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|ALT_INV_memROM~0_combout\,
	oe => \unidade_controle|ALT_INV_palavraControle[0]~0_combout\,
	devoe => ww_devoe,
	o => \operacao_out[2]~output_o\);

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
	o => \saida_regA[0]~output_o\);

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
	o => \saida_regA[1]~output_o\);

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
	o => \saida_regA[2]~output_o\);

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
	o => \saida_regA[3]~output_o\);

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
	o => \saida_regA[4]~output_o\);

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
	o => \saida_regA[5]~output_o\);

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
	o => \saida_regA[6]~output_o\);

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
	o => \saida_regA[7]~output_o\);

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
	o => \saida_regA[8]~output_o\);

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
	o => \saida_regA[9]~output_o\);

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
	o => \saida_regA[10]~output_o\);

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
	o => \saida_regA[11]~output_o\);

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
	o => \saida_regA[12]~output_o\);

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
	o => \saida_regA[13]~output_o\);

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
	o => \saida_regA[14]~output_o\);

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
	o => \saida_regA[15]~output_o\);

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
	o => \saida_regA[16]~output_o\);

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
	o => \saida_regA[17]~output_o\);

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
	o => \saida_regA[18]~output_o\);

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
	o => \saida_regA[19]~output_o\);

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
	o => \saida_regA[20]~output_o\);

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
	o => \saida_regA[21]~output_o\);

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
	o => \saida_regA[22]~output_o\);

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
	o => \saida_regA[23]~output_o\);

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
	o => \saida_regA[24]~output_o\);

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
	o => \saida_regA[25]~output_o\);

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
	o => \saida_regA[26]~output_o\);

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
	o => \saida_regA[27]~output_o\);

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
	o => \saida_regA[28]~output_o\);

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
	o => \saida_regA[29]~output_o\);

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
	o => \saida_regA[30]~output_o\);

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
	o => \saida_regA[31]~output_o\);

\saida_regB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida_regB[0]~output_o\);

\saida_regB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[1]~1_combout\,
	devoe => ww_devoe,
	o => \saida_regB[1]~output_o\);

\saida_regB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[2]~2_combout\,
	devoe => ww_devoe,
	o => \saida_regB[2]~output_o\);

\saida_regB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[3]~3_combout\,
	devoe => ww_devoe,
	o => \saida_regB[3]~output_o\);

\saida_regB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[4]~4_combout\,
	devoe => ww_devoe,
	o => \saida_regB[4]~output_o\);

\saida_regB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[5]~5_combout\,
	devoe => ww_devoe,
	o => \saida_regB[5]~output_o\);

\saida_regB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[6]~6_combout\,
	devoe => ww_devoe,
	o => \saida_regB[6]~output_o\);

\saida_regB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[7]~7_combout\,
	devoe => ww_devoe,
	o => \saida_regB[7]~output_o\);

\saida_regB[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[8]~8_combout\,
	devoe => ww_devoe,
	o => \saida_regB[8]~output_o\);

\saida_regB[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[9]~9_combout\,
	devoe => ww_devoe,
	o => \saida_regB[9]~output_o\);

\saida_regB[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[10]~10_combout\,
	devoe => ww_devoe,
	o => \saida_regB[10]~output_o\);

\saida_regB[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[11]~11_combout\,
	devoe => ww_devoe,
	o => \saida_regB[11]~output_o\);

\saida_regB[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[12]~12_combout\,
	devoe => ww_devoe,
	o => \saida_regB[12]~output_o\);

\saida_regB[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[13]~13_combout\,
	devoe => ww_devoe,
	o => \saida_regB[13]~output_o\);

\saida_regB[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[14]~14_combout\,
	devoe => ww_devoe,
	o => \saida_regB[14]~output_o\);

\saida_regB[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[15]~15_combout\,
	devoe => ww_devoe,
	o => \saida_regB[15]~output_o\);

\saida_regB[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[16]~16_combout\,
	devoe => ww_devoe,
	o => \saida_regB[16]~output_o\);

\saida_regB[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[17]~17_combout\,
	devoe => ww_devoe,
	o => \saida_regB[17]~output_o\);

\saida_regB[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[18]~18_combout\,
	devoe => ww_devoe,
	o => \saida_regB[18]~output_o\);

\saida_regB[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[19]~19_combout\,
	devoe => ww_devoe,
	o => \saida_regB[19]~output_o\);

\saida_regB[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[20]~20_combout\,
	devoe => ww_devoe,
	o => \saida_regB[20]~output_o\);

\saida_regB[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[21]~21_combout\,
	devoe => ww_devoe,
	o => \saida_regB[21]~output_o\);

\saida_regB[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[22]~22_combout\,
	devoe => ww_devoe,
	o => \saida_regB[22]~output_o\);

\saida_regB[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[23]~23_combout\,
	devoe => ww_devoe,
	o => \saida_regB[23]~output_o\);

\saida_regB[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[24]~24_combout\,
	devoe => ww_devoe,
	o => \saida_regB[24]~output_o\);

\saida_regB[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[25]~25_combout\,
	devoe => ww_devoe,
	o => \saida_regB[25]~output_o\);

\saida_regB[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[26]~26_combout\,
	devoe => ww_devoe,
	o => \saida_regB[26]~output_o\);

\saida_regB[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[27]~27_combout\,
	devoe => ww_devoe,
	o => \saida_regB[27]~output_o\);

\saida_regB[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[28]~28_combout\,
	devoe => ww_devoe,
	o => \saida_regB[28]~output_o\);

\saida_regB[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[29]~29_combout\,
	devoe => ww_devoe,
	o => \saida_regB[29]~output_o\);

\saida_regB[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[30]~30_combout\,
	devoe => ww_devoe,
	o => \saida_regB[30]~output_o\);

\saida_regB[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|banco_registradores|saidaA[31]~31_combout\,
	devoe => ww_devoe,
	o => \saida_regB[31]~output_o\);

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
	o => \funct_out[0]~output_o\);

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
	o => \funct_out[1]~output_o\);

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
	o => \funct_out[2]~output_o\);

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
	o => \funct_out[3]~output_o\);

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
	o => \funct_out[4]~output_o\);

\funct_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \funct_out[5]~output_o\);

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
	o => \op_code_out[0]~output_o\);

\op_code_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \op_code_out[1]~output_o\);

\op_code_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => \op_code_out[2]~output_o\);

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
	o => \op_code_out[3]~output_o\);

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
	o => \op_code_out[4]~output_o\);

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
	o => \op_code_out[5]~output_o\);

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
	o => \saida_rom[0]~output_o\);

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
	o => \saida_rom[1]~output_o\);

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
	o => \saida_rom[2]~output_o\);

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
	o => \saida_rom[3]~output_o\);

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
	o => \saida_rom[4]~output_o\);

\saida_rom[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \saida_rom[5]~output_o\);

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
	o => \saida_rom[6]~output_o\);

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
	o => \saida_rom[7]~output_o\);

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
	o => \saida_rom[8]~output_o\);

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
	o => \saida_rom[9]~output_o\);

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
	o => \saida_rom[10]~output_o\);

\saida_rom[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_rom[11]~output_o\);

\saida_rom[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \saida_rom[12]~output_o\);

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
	o => \saida_rom[13]~output_o\);

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
	o => \saida_rom[14]~output_o\);

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
	o => \saida_rom[15]~output_o\);

\saida_rom[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_rom[16]~output_o\);

\saida_rom[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \saida_rom[17]~output_o\);

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
	o => \saida_rom[18]~output_o\);

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
	o => \saida_rom[19]~output_o\);

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
	o => \saida_rom[20]~output_o\);

\saida_rom[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_rom[21]~output_o\);

\saida_rom[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \saida_rom[22]~output_o\);

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
	o => \saida_rom[23]~output_o\);

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
	o => \saida_rom[24]~output_o\);

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
	o => \saida_rom[25]~output_o\);

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
	o => \saida_rom[26]~output_o\);

\saida_rom[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \saida_rom[27]~output_o\);

\saida_rom[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => \saida_rom[28]~output_o\);

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
	o => \saida_rom[29]~output_o\);

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
	o => \saida_rom[30]~output_o\);

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
	o => \saida_rom[31]~output_o\);

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
	o => \saida_pc[0]~output_o\);

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
	o => \saida_pc[1]~output_o\);

\saida_pc[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(2),
	devoe => ww_devoe,
	o => \saida_pc[2]~output_o\);

\saida_pc[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(3),
	devoe => ww_devoe,
	o => \saida_pc[3]~output_o\);

\saida_pc[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(4),
	devoe => ww_devoe,
	o => \saida_pc[4]~output_o\);

\saida_pc[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(5),
	devoe => ww_devoe,
	o => \saida_pc[5]~output_o\);

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
	o => \saida_pc[6]~output_o\);

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
	o => \saida_pc[7]~output_o\);

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
	o => \saida_pc[8]~output_o\);

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
	o => \saida_pc[9]~output_o\);

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
	o => \saida_pc[10]~output_o\);

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
	o => \saida_pc[11]~output_o\);

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
	o => \saida_pc[12]~output_o\);

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
	o => \saida_pc[13]~output_o\);

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
	o => \saida_pc[14]~output_o\);

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
	o => \saida_pc[15]~output_o\);

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
	o => \saida_pc[16]~output_o\);

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
	o => \saida_pc[17]~output_o\);

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
	o => \saida_pc[18]~output_o\);

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
	o => \saida_pc[19]~output_o\);

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
	o => \saida_pc[20]~output_o\);

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
	o => \saida_pc[21]~output_o\);

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
	o => \saida_pc[22]~output_o\);

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
	o => \saida_pc[23]~output_o\);

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
	o => \saida_pc[24]~output_o\);

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
	o => \saida_pc[25]~output_o\);

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
	o => \saida_pc[26]~output_o\);

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
	o => \saida_pc[27]~output_o\);

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
	o => \saida_pc[28]~output_o\);

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
	o => \saida_pc[29]~output_o\);

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
	o => \saida_pc[30]~output_o\);

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
	o => \saida_pc[31]~output_o\);

\flag_zero_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ula|Equal5~6_combout\,
	devoe => ww_devoe,
	o => \flag_zero_out~output_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\FD|ula|temp_saida[20]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[20]~21_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~49_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~49_sumout\,
	combout => \FD|ula|temp_saida[20]~21_combout\);

\FD|banco_registradores|registrador~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[20]~21_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~378_q\);

\FD|somaQuatro|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~5_sumout\ = SUM(( \FD|PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))
-- \FD|somaQuatro|Add0~6\ = CARRY(( \FD|PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(2),
	cin => GND,
	sumout => \FD|somaQuatro|Add0~5_sumout\,
	cout => \FD|somaQuatro|Add0~6\);

\FD|somaQuatro|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~1_sumout\ = SUM(( \FD|PC|DOUT\(3) ) + ( GND ) + ( \FD|somaQuatro|Add0~6\ ))
-- \FD|somaQuatro|Add0~2\ = CARRY(( \FD|PC|DOUT\(3) ) + ( GND ) + ( \FD|somaQuatro|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(3),
	cin => \FD|somaQuatro|Add0~6\,
	sumout => \FD|somaQuatro|Add0~1_sumout\,
	cout => \FD|somaQuatro|Add0~2\);

\FD|somaQuatro|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~13_sumout\ = SUM(( \FD|PC|DOUT\(4) ) + ( GND ) + ( \FD|somaQuatro|Add0~2\ ))
-- \FD|somaQuatro|Add0~14\ = CARRY(( \FD|PC|DOUT\(4) ) + ( GND ) + ( \FD|somaQuatro|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(4),
	cin => \FD|somaQuatro|Add0~2\,
	sumout => \FD|somaQuatro|Add0~13_sumout\,
	cout => \FD|somaQuatro|Add0~14\);

\FD|somaQuatro|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~17_sumout\ = SUM(( \FD|PC|DOUT\(5) ) + ( GND ) + ( \FD|somaQuatro|Add0~14\ ))
-- \FD|somaQuatro|Add0~18\ = CARRY(( \FD|PC|DOUT\(5) ) + ( GND ) + ( \FD|somaQuatro|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(5),
	cin => \FD|somaQuatro|Add0~14\,
	sumout => \FD|somaQuatro|Add0~17_sumout\,
	cout => \FD|somaQuatro|Add0~18\);

\FD|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|somaQuatro|Add0~17_sumout\,
	sclr => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(5));

\FD|somaQuatro|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~21_sumout\ = SUM(( \FD|PC|DOUT\(6) ) + ( GND ) + ( \FD|somaQuatro|Add0~18\ ))
-- \FD|somaQuatro|Add0~22\ = CARRY(( \FD|PC|DOUT\(6) ) + ( GND ) + ( \FD|somaQuatro|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(6),
	cin => \FD|somaQuatro|Add0~18\,
	sumout => \FD|somaQuatro|Add0~21_sumout\,
	cout => \FD|somaQuatro|Add0~22\);

\FD|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|somaQuatro|Add0~21_sumout\,
	sclr => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(6));

\FD|ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~2_combout\ = ( !\FD|PC|DOUT\(5) & ( !\FD|PC|DOUT\(6) & ( (!\FD|PC|DOUT\(3) & (\FD|PC|DOUT\(2) & (!\FD|PC|DOUT\(7) & !\FD|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT\(3),
	datab => \FD|PC|ALT_INV_DOUT\(2),
	datac => \FD|PC|ALT_INV_DOUT\(7),
	datad => \FD|PC|ALT_INV_DOUT\(4),
	datae => \FD|PC|ALT_INV_DOUT\(5),
	dataf => \FD|PC|ALT_INV_DOUT\(6),
	combout => \FD|ROM|memROM~2_combout\);

\FD|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|somaQuatro|Add0~13_sumout\,
	sclr => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(4));

\FD|banco_registradores|registrador~1092\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1092_combout\ = ( \FD|PC|DOUT\(5) & ( \FD|PC|DOUT\(6) ) ) # ( !\FD|PC|DOUT\(5) & ( \FD|PC|DOUT\(6) ) ) # ( \FD|PC|DOUT\(5) & ( !\FD|PC|DOUT\(6) ) ) # ( !\FD|PC|DOUT\(5) & ( !\FD|PC|DOUT\(6) & ( (((\FD|PC|DOUT\(3) & 
-- \FD|PC|DOUT\(2))) # (\FD|PC|DOUT\(4))) # (\FD|PC|DOUT\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT\(3),
	datab => \FD|PC|ALT_INV_DOUT\(2),
	datac => \FD|PC|ALT_INV_DOUT\(7),
	datad => \FD|PC|ALT_INV_DOUT\(4),
	datae => \FD|PC|ALT_INV_DOUT\(5),
	dataf => \FD|PC|ALT_INV_DOUT\(6),
	combout => \FD|banco_registradores|registrador~1092_combout\);

\FD|banco_registradores|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[20]~21_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~58_q\);

\FD|banco_registradores|registrador~1081\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1081_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~58_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~378_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~378_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~58_q\,
	combout => \FD|banco_registradores|registrador~1081_combout\);

\FD|banco_registradores|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[19]~20_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~57_q\);

\FD|banco_registradores|registrador~1080\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1080_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~57_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~377_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~377_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~57_q\,
	combout => \FD|banco_registradores|registrador~1080_combout\);

\FD|banco_registradores|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[18]~19_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~56_q\);

\FD|banco_registradores|registrador~1079\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1079_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~56_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~376_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~376_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~56_q\,
	combout => \FD|banco_registradores|registrador~1079_combout\);

\FD|banco_registradores|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[17]~18_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~55_q\);

\FD|banco_registradores|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1078_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~55_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~375_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~375_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~55_q\,
	combout => \FD|banco_registradores|registrador~1078_combout\);

\FD|banco_registradores|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[16]~17_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~54_q\);

\FD|banco_registradores|registrador~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1077_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~54_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~374_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~374_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~54_q\,
	combout => \FD|banco_registradores|registrador~1077_combout\);

\FD|banco_registradores|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[15]~16_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~53_q\);

\FD|banco_registradores|registrador~1076\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1076_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~53_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~373_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~373_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~53_q\,
	combout => \FD|banco_registradores|registrador~1076_combout\);

\FD|banco_registradores|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[14]~15_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~52_q\);

\FD|banco_registradores|registrador~1075\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1075_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~52_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~372_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~372_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~52_q\,
	combout => \FD|banco_registradores|registrador~1075_combout\);

\FD|banco_registradores|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[13]~14_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~51_q\);

\FD|banco_registradores|registrador~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1074_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~51_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~371_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~371_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~51_q\,
	combout => \FD|banco_registradores|registrador~1074_combout\);

\FD|banco_registradores|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[12]~13_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~50_q\);

\FD|banco_registradores|registrador~1073\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1073_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~50_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~370_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~370_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~50_q\,
	combout => \FD|banco_registradores|registrador~1073_combout\);

\FD|banco_registradores|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[11]~12_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~49_q\);

\FD|banco_registradores|registrador~1072\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1072_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~49_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~369_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~369_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~49_q\,
	combout => \FD|banco_registradores|registrador~1072_combout\);

\FD|banco_registradores|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[10]~11_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~48_q\);

\FD|banco_registradores|registrador~1071\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1071_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~48_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~368_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~368_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~48_q\,
	combout => \FD|banco_registradores|registrador~1071_combout\);

\FD|banco_registradores|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[9]~1_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~47_q\);

\FD|banco_registradores|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1070_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~47_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~367_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~367_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~47_q\,
	combout => \FD|banco_registradores|registrador~1070_combout\);

\FD|banco_registradores|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[8]~10_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~46_q\);

\FD|banco_registradores|registrador~1069\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1069_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~46_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~366_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~366_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~46_q\,
	combout => \FD|banco_registradores|registrador~1069_combout\);

\FD|banco_registradores|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[7]~9_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~45_q\);

\FD|banco_registradores|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1068_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~45_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~365_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~365_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~45_q\,
	combout => \FD|banco_registradores|registrador~1068_combout\);

\FD|banco_registradores|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[6]~8_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~44_q\);

\FD|banco_registradores|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1067_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~44_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~364_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~364_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~44_q\,
	combout => \FD|banco_registradores|registrador~1067_combout\);

\FD|banco_registradores|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[5]~7_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~43_q\);

\FD|banco_registradores|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1066_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~43_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~363_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~363_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~43_q\,
	combout => \FD|banco_registradores|registrador~1066_combout\);

\FD|banco_registradores|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[4]~2_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~42_q\);

\FD|banco_registradores|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1065_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~42_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~362_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~362_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~42_q\,
	combout => \FD|banco_registradores|registrador~1065_combout\);

\FD|banco_registradores|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[3]~6_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~41_q\);

\FD|banco_registradores|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1064_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~41_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~361_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~361_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~41_q\,
	combout => \FD|banco_registradores|registrador~1064_combout\);

\FD|banco_registradores|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[2]~5_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~40_q\);

\FD|banco_registradores|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1063_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~40_q\))) # (\FD|ROM|memROM~0_combout\ & (!\FD|banco_registradores|registrador~360_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001001110010011100100111001001110010011100100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~360_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~40_q\,
	combout => \FD|banco_registradores|registrador~1063_combout\);

\FD|banco_registradores|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[1]~4_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~39_q\);

\FD|banco_registradores|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1062_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~39_q\))) # (\FD|ROM|memROM~0_combout\ & (!\FD|banco_registradores|registrador~359_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001001110010011100100111001001110010011100100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~359_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~39_q\,
	combout => \FD|banco_registradores|registrador~1062_combout\);

\FD|banco_registradores|registrador~1093\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1093_combout\ = !\FD|ula|temp_saida[0]~3_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[0]~3_combout\,
	combout => \FD|banco_registradores|registrador~1093_combout\);

\FD|banco_registradores|registrador~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|banco_registradores|registrador~1093_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~358_q\);

\FD|ula|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~130_cout\ = CARRY(( !\FD|ROM|memROM~0_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|ROM|ALT_INV_memROM~0_combout\,
	cin => GND,
	cout => \FD|ula|Add0~130_cout\);

\FD|ula|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~81_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & !\FD|banco_registradores|registrador~358_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (!\FD|banco_registradores|registrador~358_q\) ) + ( \FD|ula|Add0~130_cout\ ))
-- \FD|ula|Add0~82\ = CARRY(( (\FD|ROM|memROM~0_combout\ & !\FD|banco_registradores|registrador~358_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (!\FD|banco_registradores|registrador~358_q\) ) + ( \FD|ula|Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~358_q\,
	cin => \FD|ula|Add0~130_cout\,
	sumout => \FD|ula|Add0~81_sumout\,
	cout => \FD|ula|Add0~82\);

\FD|ula|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~85_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & !\FD|banco_registradores|registrador~359_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1062_combout\) ) + ( \FD|ula|Add0~82\ ))
-- \FD|ula|Add0~86\ = CARRY(( (\FD|ROM|memROM~0_combout\ & !\FD|banco_registradores|registrador~359_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1062_combout\) ) + ( \FD|ula|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~359_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1062_combout\,
	cin => \FD|ula|Add0~82\,
	sumout => \FD|ula|Add0~85_sumout\,
	cout => \FD|ula|Add0~86\);

\FD|ula|temp_saida[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[1]~4_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~85_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~85_sumout\,
	combout => \FD|ula|temp_saida[1]~4_combout\);

\FD|banco_registradores|registrador~1094\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1094_combout\ = !\FD|ula|temp_saida[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[1]~4_combout\,
	combout => \FD|banco_registradores|registrador~1094_combout\);

\FD|banco_registradores|registrador~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|banco_registradores|registrador~1094_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~359_q\);

\FD|ula|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~89_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & !\FD|banco_registradores|registrador~360_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1063_combout\) ) + ( \FD|ula|Add0~86\ ))
-- \FD|ula|Add0~90\ = CARRY(( (\FD|ROM|memROM~0_combout\ & !\FD|banco_registradores|registrador~360_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1063_combout\) ) + ( \FD|ula|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~360_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1063_combout\,
	cin => \FD|ula|Add0~86\,
	sumout => \FD|ula|Add0~89_sumout\,
	cout => \FD|ula|Add0~90\);

\FD|ula|temp_saida[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[2]~5_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~89_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~89_sumout\,
	combout => \FD|ula|temp_saida[2]~5_combout\);

\FD|banco_registradores|registrador~1095\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1095_combout\ = !\FD|ula|temp_saida[2]~5_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[2]~5_combout\,
	combout => \FD|banco_registradores|registrador~1095_combout\);

\FD|banco_registradores|registrador~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|banco_registradores|registrador~1095_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~360_q\);

\FD|ula|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~93_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~361_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1064_combout\) ) + ( \FD|ula|Add0~90\ ))
-- \FD|ula|Add0~94\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~361_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1064_combout\) ) + ( \FD|ula|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~361_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1064_combout\,
	cin => \FD|ula|Add0~90\,
	sumout => \FD|ula|Add0~93_sumout\,
	cout => \FD|ula|Add0~94\);

\FD|ula|temp_saida[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[3]~6_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~93_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~93_sumout\,
	combout => \FD|ula|temp_saida[3]~6_combout\);

\FD|banco_registradores|registrador~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[3]~6_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~361_q\);

\FD|ula|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~65_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~362_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1065_combout\) ) + ( \FD|ula|Add0~94\ ))
-- \FD|ula|Add0~66\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~362_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1065_combout\) ) + ( \FD|ula|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~362_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1065_combout\,
	cin => \FD|ula|Add0~94\,
	sumout => \FD|ula|Add0~65_sumout\,
	cout => \FD|ula|Add0~66\);

\FD|ula|temp_saida[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[4]~2_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~65_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~65_sumout\,
	combout => \FD|ula|temp_saida[4]~2_combout\);

\FD|banco_registradores|registrador~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[4]~2_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~362_q\);

\FD|ula|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~33_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~363_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1066_combout\) ) + ( \FD|ula|Add0~66\ ))
-- \FD|ula|Add0~34\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~363_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1066_combout\) ) + ( \FD|ula|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~363_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1066_combout\,
	cin => \FD|ula|Add0~66\,
	sumout => \FD|ula|Add0~33_sumout\,
	cout => \FD|ula|Add0~34\);

\FD|ula|temp_saida[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[5]~7_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~33_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~33_sumout\,
	combout => \FD|ula|temp_saida[5]~7_combout\);

\FD|banco_registradores|registrador~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[5]~7_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~363_q\);

\FD|ula|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~37_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~364_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1067_combout\) ) + ( \FD|ula|Add0~34\ ))
-- \FD|ula|Add0~38\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~364_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1067_combout\) ) + ( \FD|ula|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~364_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1067_combout\,
	cin => \FD|ula|Add0~34\,
	sumout => \FD|ula|Add0~37_sumout\,
	cout => \FD|ula|Add0~38\);

\FD|ula|temp_saida[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[6]~8_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~37_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~37_sumout\,
	combout => \FD|ula|temp_saida[6]~8_combout\);

\FD|banco_registradores|registrador~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[6]~8_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~364_q\);

\FD|ula|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~41_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~365_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1068_combout\) ) + ( \FD|ula|Add0~38\ ))
-- \FD|ula|Add0~42\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~365_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1068_combout\) ) + ( \FD|ula|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~365_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1068_combout\,
	cin => \FD|ula|Add0~38\,
	sumout => \FD|ula|Add0~41_sumout\,
	cout => \FD|ula|Add0~42\);

\FD|ula|temp_saida[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[7]~9_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~41_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~41_sumout\,
	combout => \FD|ula|temp_saida[7]~9_combout\);

\FD|banco_registradores|registrador~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[7]~9_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~365_q\);

\FD|ula|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~45_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~366_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1069_combout\) ) + ( \FD|ula|Add0~42\ ))
-- \FD|ula|Add0~46\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~366_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1069_combout\) ) + ( \FD|ula|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~366_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1069_combout\,
	cin => \FD|ula|Add0~42\,
	sumout => \FD|ula|Add0~45_sumout\,
	cout => \FD|ula|Add0~46\);

\FD|ula|temp_saida[8]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[8]~10_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~45_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~45_sumout\,
	combout => \FD|ula|temp_saida[8]~10_combout\);

\FD|banco_registradores|registrador~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[8]~10_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~366_q\);

\FD|ula|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~17_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~367_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1070_combout\) ) + ( \FD|ula|Add0~46\ ))
-- \FD|ula|Add0~18\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~367_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1070_combout\) ) + ( \FD|ula|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~367_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1070_combout\,
	cin => \FD|ula|Add0~46\,
	sumout => \FD|ula|Add0~17_sumout\,
	cout => \FD|ula|Add0~18\);

\FD|ula|temp_saida[9]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[9]~1_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~17_sumout\,
	combout => \FD|ula|temp_saida[9]~1_combout\);

\FD|banco_registradores|registrador~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[9]~1_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~367_q\);

\FD|ula|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~113_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~368_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1071_combout\) ) + ( \FD|ula|Add0~18\ ))
-- \FD|ula|Add0~114\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~368_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1071_combout\) ) + ( \FD|ula|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~368_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1071_combout\,
	cin => \FD|ula|Add0~18\,
	sumout => \FD|ula|Add0~113_sumout\,
	cout => \FD|ula|Add0~114\);

\FD|ula|temp_saida[10]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[10]~11_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~113_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~113_sumout\,
	combout => \FD|ula|temp_saida[10]~11_combout\);

\FD|banco_registradores|registrador~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[10]~11_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~368_q\);

\FD|ula|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~117_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~369_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1072_combout\) ) + ( \FD|ula|Add0~114\ ))
-- \FD|ula|Add0~118\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~369_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1072_combout\) ) + ( \FD|ula|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~369_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1072_combout\,
	cin => \FD|ula|Add0~114\,
	sumout => \FD|ula|Add0~117_sumout\,
	cout => \FD|ula|Add0~118\);

\FD|ula|temp_saida[11]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[11]~12_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~117_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~117_sumout\,
	combout => \FD|ula|temp_saida[11]~12_combout\);

\FD|banco_registradores|registrador~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[11]~12_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~369_q\);

\FD|ula|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~121_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~370_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1073_combout\) ) + ( \FD|ula|Add0~118\ ))
-- \FD|ula|Add0~122\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~370_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1073_combout\) ) + ( \FD|ula|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~370_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1073_combout\,
	cin => \FD|ula|Add0~118\,
	sumout => \FD|ula|Add0~121_sumout\,
	cout => \FD|ula|Add0~122\);

\FD|ula|temp_saida[12]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[12]~13_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~121_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~121_sumout\,
	combout => \FD|ula|temp_saida[12]~13_combout\);

\FD|banco_registradores|registrador~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[12]~13_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~370_q\);

\FD|ula|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~69_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~371_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1074_combout\) ) + ( \FD|ula|Add0~122\ ))
-- \FD|ula|Add0~70\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~371_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1074_combout\) ) + ( \FD|ula|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~371_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1074_combout\,
	cin => \FD|ula|Add0~122\,
	sumout => \FD|ula|Add0~69_sumout\,
	cout => \FD|ula|Add0~70\);

\FD|ula|temp_saida[13]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[13]~14_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~69_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~69_sumout\,
	combout => \FD|ula|temp_saida[13]~14_combout\);

\FD|banco_registradores|registrador~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[13]~14_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~371_q\);

\FD|ula|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~73_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~372_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1075_combout\) ) + ( \FD|ula|Add0~70\ ))
-- \FD|ula|Add0~74\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~372_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1075_combout\) ) + ( \FD|ula|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~372_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1075_combout\,
	cin => \FD|ula|Add0~70\,
	sumout => \FD|ula|Add0~73_sumout\,
	cout => \FD|ula|Add0~74\);

\FD|ula|temp_saida[14]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[14]~15_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~73_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~73_sumout\,
	combout => \FD|ula|temp_saida[14]~15_combout\);

\FD|banco_registradores|registrador~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[14]~15_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~372_q\);

\FD|ula|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~77_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~373_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1076_combout\) ) + ( \FD|ula|Add0~74\ ))
-- \FD|ula|Add0~78\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~373_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1076_combout\) ) + ( \FD|ula|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~373_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1076_combout\,
	cin => \FD|ula|Add0~74\,
	sumout => \FD|ula|Add0~77_sumout\,
	cout => \FD|ula|Add0~78\);

\FD|ula|temp_saida[15]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[15]~16_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~77_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~77_sumout\,
	combout => \FD|ula|temp_saida[15]~16_combout\);

\FD|banco_registradores|registrador~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[15]~16_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~373_q\);

\FD|ula|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~125_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~374_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1077_combout\) ) + ( \FD|ula|Add0~78\ ))
-- \FD|ula|Add0~126\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~374_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1077_combout\) ) + ( \FD|ula|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~374_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1077_combout\,
	cin => \FD|ula|Add0~78\,
	sumout => \FD|ula|Add0~125_sumout\,
	cout => \FD|ula|Add0~126\);

\FD|ula|temp_saida[16]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[16]~17_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~125_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~125_sumout\,
	combout => \FD|ula|temp_saida[16]~17_combout\);

\FD|banco_registradores|registrador~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[16]~17_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~374_q\);

\FD|ula|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~21_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~375_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1078_combout\) ) + ( \FD|ula|Add0~126\ ))
-- \FD|ula|Add0~22\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~375_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1078_combout\) ) + ( \FD|ula|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~375_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1078_combout\,
	cin => \FD|ula|Add0~126\,
	sumout => \FD|ula|Add0~21_sumout\,
	cout => \FD|ula|Add0~22\);

\FD|ula|temp_saida[17]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[17]~18_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~21_sumout\,
	combout => \FD|ula|temp_saida[17]~18_combout\);

\FD|banco_registradores|registrador~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[17]~18_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~375_q\);

\FD|ula|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~25_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~376_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1079_combout\) ) + ( \FD|ula|Add0~22\ ))
-- \FD|ula|Add0~26\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~376_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1079_combout\) ) + ( \FD|ula|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~376_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1079_combout\,
	cin => \FD|ula|Add0~22\,
	sumout => \FD|ula|Add0~25_sumout\,
	cout => \FD|ula|Add0~26\);

\FD|ula|temp_saida[18]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[18]~19_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~25_sumout\,
	combout => \FD|ula|temp_saida[18]~19_combout\);

\FD|banco_registradores|registrador~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[18]~19_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~376_q\);

\FD|ula|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~29_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~377_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1080_combout\) ) + ( \FD|ula|Add0~26\ ))
-- \FD|ula|Add0~30\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~377_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1080_combout\) ) + ( \FD|ula|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~377_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1080_combout\,
	cin => \FD|ula|Add0~26\,
	sumout => \FD|ula|Add0~29_sumout\,
	cout => \FD|ula|Add0~30\);

\FD|ula|temp_saida[19]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[19]~20_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~29_sumout\,
	combout => \FD|ula|temp_saida[19]~20_combout\);

\FD|banco_registradores|registrador~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[19]~20_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~377_q\);

\FD|ula|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~49_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~378_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1081_combout\) ) + ( \FD|ula|Add0~30\ ))
-- \FD|ula|Add0~50\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~378_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1081_combout\) ) + ( \FD|ula|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~378_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1081_combout\,
	cin => \FD|ula|Add0~30\,
	sumout => \FD|ula|Add0~49_sumout\,
	cout => \FD|ula|Add0~50\);

\FD|ula|temp_saida[25]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[25]~26_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~53_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~53_sumout\,
	combout => \FD|ula|temp_saida[25]~26_combout\);

\FD|banco_registradores|registrador~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[25]~26_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~383_q\);

\FD|banco_registradores|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[25]~26_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~63_q\);

\FD|banco_registradores|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1086_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~63_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~383_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~383_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~63_q\,
	combout => \FD|banco_registradores|registrador~1086_combout\);

\FD|banco_registradores|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[24]~25_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~62_q\);

\FD|banco_registradores|registrador~1085\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1085_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~62_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~382_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~382_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~62_q\,
	combout => \FD|banco_registradores|registrador~1085_combout\);

\FD|banco_registradores|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[23]~24_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~61_q\);

\FD|banco_registradores|registrador~1084\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1084_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~61_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~381_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~381_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~61_q\,
	combout => \FD|banco_registradores|registrador~1084_combout\);

\FD|banco_registradores|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[22]~23_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~60_q\);

\FD|banco_registradores|registrador~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1083_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~60_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~380_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~380_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~60_q\,
	combout => \FD|banco_registradores|registrador~1083_combout\);

\FD|banco_registradores|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[21]~22_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~59_q\);

\FD|banco_registradores|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1082_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~59_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~379_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~379_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~59_q\,
	combout => \FD|banco_registradores|registrador~1082_combout\);

\FD|ula|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~97_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~379_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1082_combout\) ) + ( \FD|ula|Add0~50\ ))
-- \FD|ula|Add0~98\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~379_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1082_combout\) ) + ( \FD|ula|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~379_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1082_combout\,
	cin => \FD|ula|Add0~50\,
	sumout => \FD|ula|Add0~97_sumout\,
	cout => \FD|ula|Add0~98\);

\FD|ula|temp_saida[21]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[21]~22_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~97_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~97_sumout\,
	combout => \FD|ula|temp_saida[21]~22_combout\);

\FD|banco_registradores|registrador~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[21]~22_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~379_q\);

\FD|ula|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~101_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~380_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1083_combout\) ) + ( \FD|ula|Add0~98\ ))
-- \FD|ula|Add0~102\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~380_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1083_combout\) ) + ( \FD|ula|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~380_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1083_combout\,
	cin => \FD|ula|Add0~98\,
	sumout => \FD|ula|Add0~101_sumout\,
	cout => \FD|ula|Add0~102\);

\FD|ula|temp_saida[22]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[22]~23_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~101_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~101_sumout\,
	combout => \FD|ula|temp_saida[22]~23_combout\);

\FD|banco_registradores|registrador~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[22]~23_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~380_q\);

\FD|ula|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~105_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~381_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1084_combout\) ) + ( \FD|ula|Add0~102\ ))
-- \FD|ula|Add0~106\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~381_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1084_combout\) ) + ( \FD|ula|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~381_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1084_combout\,
	cin => \FD|ula|Add0~102\,
	sumout => \FD|ula|Add0~105_sumout\,
	cout => \FD|ula|Add0~106\);

\FD|ula|temp_saida[23]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[23]~24_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~105_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~105_sumout\,
	combout => \FD|ula|temp_saida[23]~24_combout\);

\FD|banco_registradores|registrador~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[23]~24_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~381_q\);

\FD|ula|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~9_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~382_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1085_combout\) ) + ( \FD|ula|Add0~106\ ))
-- \FD|ula|Add0~10\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~382_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1085_combout\) ) + ( \FD|ula|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~382_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1085_combout\,
	cin => \FD|ula|Add0~106\,
	sumout => \FD|ula|Add0~9_sumout\,
	cout => \FD|ula|Add0~10\);

\FD|ula|temp_saida[24]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[24]~25_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~9_sumout\,
	combout => \FD|ula|temp_saida[24]~25_combout\);

\FD|banco_registradores|registrador~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[24]~25_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~382_q\);

\FD|ula|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~53_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~383_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1086_combout\) ) + ( \FD|ula|Add0~10\ ))
-- \FD|ula|Add0~54\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~383_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1086_combout\) ) + ( \FD|ula|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~383_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1086_combout\,
	cin => \FD|ula|Add0~10\,
	sumout => \FD|ula|Add0~53_sumout\,
	cout => \FD|ula|Add0~54\);

\FD|ula|temp_saida[26]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[26]~27_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~57_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~57_sumout\,
	combout => \FD|ula|temp_saida[26]~27_combout\);

\FD|banco_registradores|registrador~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[26]~27_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~384_q\);

\FD|banco_registradores|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[26]~27_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~64_q\);

\FD|banco_registradores|registrador~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1087_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~64_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~384_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~384_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~64_q\,
	combout => \FD|banco_registradores|registrador~1087_combout\);

\FD|ula|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~57_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~384_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1087_combout\) ) + ( \FD|ula|Add0~54\ ))
-- \FD|ula|Add0~58\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~384_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1087_combout\) ) + ( \FD|ula|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~384_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1087_combout\,
	cin => \FD|ula|Add0~54\,
	sumout => \FD|ula|Add0~57_sumout\,
	cout => \FD|ula|Add0~58\);

\FD|ula|temp_saida[27]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[27]~28_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~61_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~61_sumout\,
	combout => \FD|ula|temp_saida[27]~28_combout\);

\FD|banco_registradores|registrador~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[27]~28_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~385_q\);

\FD|banco_registradores|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[27]~28_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~65_q\);

\FD|banco_registradores|registrador~1088\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1088_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~65_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~385_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~385_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~65_q\,
	combout => \FD|banco_registradores|registrador~1088_combout\);

\FD|ula|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~61_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~385_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1088_combout\) ) + ( \FD|ula|Add0~58\ ))
-- \FD|ula|Add0~62\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~385_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1088_combout\) ) + ( \FD|ula|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~385_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1088_combout\,
	cin => \FD|ula|Add0~58\,
	sumout => \FD|ula|Add0~61_sumout\,
	cout => \FD|ula|Add0~62\);

\FD|ula|Equal5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Equal5~9_combout\ = (!\FD|ula|Add0~65_sumout\ & (!\FD|ula|Add0~85_sumout\ & (!\FD|ula|Add0~89_sumout\ & !\FD|ula|Add0~93_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_Add0~65_sumout\,
	datab => \FD|ula|ALT_INV_Add0~85_sumout\,
	datac => \FD|ula|ALT_INV_Add0~89_sumout\,
	datad => \FD|ula|ALT_INV_Add0~93_sumout\,
	combout => \FD|ula|Equal5~9_combout\);

\FD|ula|Equal5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Equal5~2_combout\ = ( !\FD|ula|temp_saida[0]~3_combout\ & ( \FD|ula|Equal5~9_combout\ & ( (!\FD|ula|temp_saida[30]~0_combout\) # ((!\FD|ula|Add0~69_sumout\ & (!\FD|ula|Add0~73_sumout\ & !\FD|ula|Add0~77_sumout\))) ) ) ) # ( 
-- !\FD|ula|temp_saida[0]~3_combout\ & ( !\FD|ula|Equal5~9_combout\ & ( !\FD|ula|temp_saida[30]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000011101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~69_sumout\,
	datac => \FD|ula|ALT_INV_Add0~73_sumout\,
	datad => \FD|ula|ALT_INV_Add0~77_sumout\,
	datae => \FD|ula|ALT_INV_temp_saida[0]~3_combout\,
	dataf => \FD|ula|ALT_INV_Equal5~9_combout\,
	combout => \FD|ula|Equal5~2_combout\);

\FD|ula|Equal5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Equal5~3_combout\ = ( \FD|ula|Add0~61_sumout\ & ( \FD|ula|Equal5~2_combout\ & ( !\FD|ula|temp_saida[30]~0_combout\ ) ) ) # ( !\FD|ula|Add0~61_sumout\ & ( \FD|ula|Equal5~2_combout\ & ( (!\FD|ula|temp_saida[30]~0_combout\) # 
-- ((!\FD|ula|Add0~49_sumout\ & (!\FD|ula|Add0~53_sumout\ & !\FD|ula|Add0~57_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~49_sumout\,
	datac => \FD|ula|ALT_INV_Add0~53_sumout\,
	datad => \FD|ula|ALT_INV_Add0~57_sumout\,
	datae => \FD|ula|ALT_INV_Add0~61_sumout\,
	dataf => \FD|ula|ALT_INV_Equal5~2_combout\,
	combout => \FD|ula|Equal5~3_combout\);

\FD|ula|temp_saida[28]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[28]~29_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~109_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~109_sumout\,
	combout => \FD|ula|temp_saida[28]~29_combout\);

\FD|banco_registradores|registrador~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[28]~29_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~386_q\);

\FD|banco_registradores|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[28]~29_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~66_q\);

\FD|banco_registradores|registrador~1089\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1089_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~66_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~386_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~386_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~66_q\,
	combout => \FD|banco_registradores|registrador~1089_combout\);

\FD|ula|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~109_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~386_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1089_combout\) ) + ( \FD|ula|Add0~62\ ))
-- \FD|ula|Add0~110\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~386_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1089_combout\) ) + ( \FD|ula|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~386_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1089_combout\,
	cin => \FD|ula|Add0~62\,
	sumout => \FD|ula|Add0~109_sumout\,
	cout => \FD|ula|Add0~110\);

\FD|ula|Equal5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Equal5~4_combout\ = ( \FD|ula|Add0~125_sumout\ & ( \FD|ula|temp_saida[30]~0_combout\ ) ) # ( !\FD|ula|Add0~125_sumout\ & ( (\FD|ula|temp_saida[30]~0_combout\ & (((\FD|ula|Add0~121_sumout\) # (\FD|ula|Add0~117_sumout\)) # 
-- (\FD|ula|Add0~113_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010100010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~113_sumout\,
	datac => \FD|ula|ALT_INV_Add0~117_sumout\,
	datad => \FD|ula|ALT_INV_Add0~121_sumout\,
	datae => \FD|ula|ALT_INV_Add0~125_sumout\,
	combout => \FD|ula|Equal5~4_combout\);

\FD|ula|Equal5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Equal5~5_combout\ = ( \FD|ula|Add0~109_sumout\ & ( !\FD|ula|Equal5~4_combout\ & ( !\FD|ula|temp_saida[30]~0_combout\ ) ) ) # ( !\FD|ula|Add0~109_sumout\ & ( !\FD|ula|Equal5~4_combout\ & ( (!\FD|ula|temp_saida[30]~0_combout\) # 
-- ((!\FD|ula|Add0~97_sumout\ & (!\FD|ula|Add0~101_sumout\ & !\FD|ula|Add0~105_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~97_sumout\,
	datac => \FD|ula|ALT_INV_Add0~101_sumout\,
	datad => \FD|ula|ALT_INV_Add0~105_sumout\,
	datae => \FD|ula|ALT_INV_Add0~109_sumout\,
	dataf => \FD|ula|ALT_INV_Equal5~4_combout\,
	combout => \FD|ula|Equal5~5_combout\);

\FD|somaQuatro|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~9_sumout\ = SUM(( \FD|PC|DOUT\(7) ) + ( GND ) + ( \FD|somaQuatro|Add0~22\ ))
-- \FD|somaQuatro|Add0~10\ = CARRY(( \FD|PC|DOUT\(7) ) + ( GND ) + ( \FD|somaQuatro|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(7),
	cin => \FD|somaQuatro|Add0~22\,
	sumout => \FD|somaQuatro|Add0~9_sumout\,
	cout => \FD|somaQuatro|Add0~10\);

\FD|mux_prox_PC|saida_MUX[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[7]~2_combout\ = ( !\FD|ROM|memROM~2_combout\ & ( \FD|somaQuatro|Add0~9_sumout\ & ( (!\FD|ROM|memROM~1_combout\) # (((!\FD|ula|Equal5~3_combout\) # (!\FD|ula|Equal5~5_combout\)) # (\FD|ula|Equal5~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111110110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~3_combout\,
	datad => \FD|ula|ALT_INV_Equal5~5_combout\,
	datae => \FD|ROM|ALT_INV_memROM~2_combout\,
	dataf => \FD|somaQuatro|ALT_INV_Add0~9_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[7]~2_combout\);

\FD|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(7));

\FD|ula|temp_saida[30]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[30]~0_combout\ = ( !\FD|PC|DOUT\(5) & ( !\FD|PC|DOUT\(6) & ( (!\FD|PC|DOUT\(2) & (!\FD|PC|DOUT\(7) & !\FD|PC|DOUT\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|ALT_INV_DOUT\(2),
	datac => \FD|PC|ALT_INV_DOUT\(7),
	datad => \FD|PC|ALT_INV_DOUT\(4),
	datae => \FD|PC|ALT_INV_DOUT\(5),
	dataf => \FD|PC|ALT_INV_DOUT\(6),
	combout => \FD|ula|temp_saida[30]~0_combout\);

\FD|ula|temp_saida[29]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[29]~30_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~13_sumout\,
	combout => \FD|ula|temp_saida[29]~30_combout\);

\FD|banco_registradores|registrador~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[29]~30_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~387_q\);

\FD|banco_registradores|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[29]~30_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~67_q\);

\FD|banco_registradores|registrador~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1090_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~67_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~387_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~387_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~67_q\,
	combout => \FD|banco_registradores|registrador~1090_combout\);

\FD|ula|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~13_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~387_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1090_combout\) ) + ( \FD|ula|Add0~110\ ))
-- \FD|ula|Add0~14\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~387_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1090_combout\) ) + ( \FD|ula|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~387_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1090_combout\,
	cin => \FD|ula|Add0~110\,
	sumout => \FD|ula|Add0~13_sumout\,
	cout => \FD|ula|Add0~14\);

\FD|ula|temp_saida[30]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[30]~31_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~1_sumout\,
	combout => \FD|ula|temp_saida[30]~31_combout\);

\FD|banco_registradores|registrador~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[30]~31_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~388_q\);

\FD|banco_registradores|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[30]~31_combout\,
	ena => \FD|banco_registradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~68_q\);

\FD|banco_registradores|registrador~1091\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|registrador~1091_combout\ = (!\FD|ROM|memROM~0_combout\ & ((\FD|banco_registradores|registrador~68_q\))) # (\FD|ROM|memROM~0_combout\ & (\FD|banco_registradores|registrador~388_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~388_q\,
	datac => \FD|banco_registradores|ALT_INV_registrador~68_q\,
	combout => \FD|banco_registradores|registrador~1091_combout\);

\FD|ula|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~1_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~388_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1091_combout\) ) + ( \FD|ula|Add0~14\ ))
-- \FD|ula|Add0~2\ = CARRY(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~388_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~1091_combout\) ) + ( \FD|ula|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~388_q\,
	dataf => \FD|banco_registradores|ALT_INV_registrador~1091_combout\,
	cin => \FD|ula|Add0~14\,
	sumout => \FD|ula|Add0~1_sumout\,
	cout => \FD|ula|Add0~2\);

\FD|ula|Equal5~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Equal5~12_combout\ = (!\FD|ula|Add0~33_sumout\ & (!\FD|ula|Add0~37_sumout\ & (!\FD|ula|Add0~41_sumout\ & !\FD|ula|Add0~45_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_Add0~33_sumout\,
	datab => \FD|ula|ALT_INV_Add0~37_sumout\,
	datac => \FD|ula|ALT_INV_Add0~41_sumout\,
	datad => \FD|ula|ALT_INV_Add0~45_sumout\,
	combout => \FD|ula|Equal5~12_combout\);

\FD|ula|temp_saida[31]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[31]~32_combout\ = (\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Add0~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~5_sumout\,
	combout => \FD|ula|temp_saida[31]~32_combout\);

\FD|banco_registradores|registrador~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|ula|temp_saida[31]~32_combout\,
	ena => \FD|ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|banco_registradores|registrador~389_q\);

\FD|ula|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Add0~5_sumout\ = SUM(( (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~389_q\) ) + ( (!\FD|ROM|memROM~0_combout\) # (\FD|banco_registradores|registrador~389_q\) ) + ( \FD|ula|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|banco_registradores|ALT_INV_registrador~389_q\,
	cin => \FD|ula|Add0~2\,
	sumout => \FD|ula|Add0~5_sumout\);

\FD|ula|Equal5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Equal5~13_combout\ = ( !\FD|ula|Add0~17_sumout\ & ( (!\FD|ula|Add0~5_sumout\ & (!\FD|ula|Add0~21_sumout\ & (!\FD|ula|Add0~25_sumout\ & !\FD|ula|Add0~29_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_Add0~5_sumout\,
	datab => \FD|ula|ALT_INV_Add0~21_sumout\,
	datac => \FD|ula|ALT_INV_Add0~25_sumout\,
	datad => \FD|ula|ALT_INV_Add0~29_sumout\,
	datae => \FD|ula|ALT_INV_Add0~17_sumout\,
	combout => \FD|ula|Equal5~13_combout\);

\FD|ula|Equal5~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Equal5~7_combout\ = ( \FD|ula|Equal5~12_combout\ & ( \FD|ula|Equal5~13_combout\ & ( (\FD|ula|temp_saida[30]~0_combout\ & (((\FD|ula|Add0~1_sumout\) # (\FD|ula|Add0~13_sumout\)) # (\FD|ula|Add0~9_sumout\))) ) ) ) # ( !\FD|ula|Equal5~12_combout\ & ( 
-- \FD|ula|Equal5~13_combout\ & ( \FD|ula|temp_saida[30]~0_combout\ ) ) ) # ( \FD|ula|Equal5~12_combout\ & ( !\FD|ula|Equal5~13_combout\ & ( \FD|ula|temp_saida[30]~0_combout\ ) ) ) # ( !\FD|ula|Equal5~12_combout\ & ( !\FD|ula|Equal5~13_combout\ & ( 
-- \FD|ula|temp_saida[30]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~9_sumout\,
	datac => \FD|ula|ALT_INV_Add0~13_sumout\,
	datad => \FD|ula|ALT_INV_Add0~1_sumout\,
	datae => \FD|ula|ALT_INV_Equal5~12_combout\,
	dataf => \FD|ula|ALT_INV_Equal5~13_combout\,
	combout => \FD|ula|Equal5~7_combout\);

\FD|mux_prox_PC|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[2]~1_combout\ = ( \FD|somaQuatro|Add0~5_sumout\ & ( !\FD|ROM|memROM~2_combout\ & ( (!\FD|ROM|memROM~1_combout\) # (((!\FD|ula|Equal5~3_combout\) # (!\FD|ula|Equal5~5_combout\)) # (\FD|ula|Equal5~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~3_combout\,
	datad => \FD|ula|ALT_INV_Equal5~5_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~5_sumout\,
	dataf => \FD|ROM|ALT_INV_memROM~2_combout\,
	combout => \FD|mux_prox_PC|saida_MUX[2]~1_combout\);

\FD|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(2));

\FD|ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~1_combout\ = ( !\FD|PC|DOUT\(5) & ( !\FD|PC|DOUT\(6) & ( (!\FD|PC|DOUT\(3) & (!\FD|PC|DOUT\(2) & (!\FD|PC|DOUT\(7) & !\FD|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT\(3),
	datab => \FD|PC|ALT_INV_DOUT\(2),
	datac => \FD|PC|ALT_INV_DOUT\(7),
	datad => \FD|PC|ALT_INV_DOUT\(4),
	datae => \FD|PC|ALT_INV_DOUT\(5),
	dataf => \FD|PC|ALT_INV_DOUT\(6),
	combout => \FD|ROM|memROM~1_combout\);

\FD|mux_prox_PC|saida_MUX[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[3]~0_combout\ = ( \FD|somaQuatro|Add0~1_sumout\ ) # ( !\FD|somaQuatro|Add0~1_sumout\ & ( (\FD|ROM|memROM~1_combout\ & (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~3_combout\ & \FD|ula|Equal5~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111111111111111100000000000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~3_combout\,
	datad => \FD|ula|ALT_INV_Equal5~5_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~1_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[3]~0_combout\);

\FD|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[3]~0_combout\,
	sclr => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(3));

\FD|ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~0_combout\ = ( !\FD|PC|DOUT\(5) & ( !\FD|PC|DOUT\(6) & ( (\FD|PC|DOUT\(3) & (!\FD|PC|DOUT\(2) & (!\FD|PC|DOUT\(7) & !\FD|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT\(3),
	datab => \FD|PC|ALT_INV_DOUT\(2),
	datac => \FD|PC|ALT_INV_DOUT\(7),
	datad => \FD|PC|ALT_INV_DOUT\(4),
	datae => \FD|PC|ALT_INV_DOUT\(5),
	dataf => \FD|PC|ALT_INV_DOUT\(6),
	combout => \FD|ROM|memROM~0_combout\);

\unidade_controle|palavraControle[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_controle|palavraControle[0]~0_combout\ = ( \FD|PC|DOUT\(5) & ( \FD|PC|DOUT\(6) ) ) # ( !\FD|PC|DOUT\(5) & ( \FD|PC|DOUT\(6) ) ) # ( \FD|PC|DOUT\(5) & ( !\FD|PC|DOUT\(6) ) ) # ( !\FD|PC|DOUT\(5) & ( !\FD|PC|DOUT\(6) & ( ((\FD|PC|DOUT\(4)) # 
-- (\FD|PC|DOUT\(7))) # (\FD|PC|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|ALT_INV_DOUT\(2),
	datac => \FD|PC|ALT_INV_DOUT\(7),
	datad => \FD|PC|ALT_INV_DOUT\(4),
	datae => \FD|PC|ALT_INV_DOUT\(5),
	dataf => \FD|PC|ALT_INV_DOUT\(6),
	combout => \unidade_controle|palavraControle[0]~0_combout\);

\FD|ula|temp_saida[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|temp_saida[0]~3_combout\ = (\FD|ula|Add0~81_sumout\ & !\unidade_controle|palavraControle[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_Add0~81_sumout\,
	datab => \unidade_controle|ALT_INV_palavraControle[0]~0_combout\,
	combout => \FD|ula|temp_saida[0]~3_combout\);

\FD|banco_registradores|saidaA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[0]~0_combout\ = (\FD|ROM|memROM~0_combout\ & !\FD|banco_registradores|registrador~358_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~358_q\,
	combout => \FD|banco_registradores|saidaA[0]~0_combout\);

\FD|banco_registradores|saidaA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[1]~1_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1062_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1062_combout\,
	combout => \FD|banco_registradores|saidaA[1]~1_combout\);

\FD|banco_registradores|saidaA[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[2]~2_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1063_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1063_combout\,
	combout => \FD|banco_registradores|saidaA[2]~2_combout\);

\FD|banco_registradores|saidaA[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[3]~3_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1064_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1064_combout\,
	combout => \FD|banco_registradores|saidaA[3]~3_combout\);

\FD|banco_registradores|saidaA[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[4]~4_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1065_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1065_combout\,
	combout => \FD|banco_registradores|saidaA[4]~4_combout\);

\FD|banco_registradores|saidaA[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[5]~5_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1066_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1066_combout\,
	combout => \FD|banco_registradores|saidaA[5]~5_combout\);

\FD|banco_registradores|saidaA[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[6]~6_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1067_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1067_combout\,
	combout => \FD|banco_registradores|saidaA[6]~6_combout\);

\FD|banco_registradores|saidaA[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[7]~7_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1068_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1068_combout\,
	combout => \FD|banco_registradores|saidaA[7]~7_combout\);

\FD|banco_registradores|saidaA[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[8]~8_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1069_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1069_combout\,
	combout => \FD|banco_registradores|saidaA[8]~8_combout\);

\FD|banco_registradores|saidaA[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[9]~9_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1070_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1070_combout\,
	combout => \FD|banco_registradores|saidaA[9]~9_combout\);

\FD|banco_registradores|saidaA[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[10]~10_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1071_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1071_combout\,
	combout => \FD|banco_registradores|saidaA[10]~10_combout\);

\FD|banco_registradores|saidaA[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[11]~11_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1072_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1072_combout\,
	combout => \FD|banco_registradores|saidaA[11]~11_combout\);

\FD|banco_registradores|saidaA[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[12]~12_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1073_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1073_combout\,
	combout => \FD|banco_registradores|saidaA[12]~12_combout\);

\FD|banco_registradores|saidaA[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[13]~13_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1074_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1074_combout\,
	combout => \FD|banco_registradores|saidaA[13]~13_combout\);

\FD|banco_registradores|saidaA[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[14]~14_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1075_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1075_combout\,
	combout => \FD|banco_registradores|saidaA[14]~14_combout\);

\FD|banco_registradores|saidaA[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[15]~15_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1076_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1076_combout\,
	combout => \FD|banco_registradores|saidaA[15]~15_combout\);

\FD|banco_registradores|saidaA[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[16]~16_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1077_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1077_combout\,
	combout => \FD|banco_registradores|saidaA[16]~16_combout\);

\FD|banco_registradores|saidaA[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[17]~17_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1078_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1078_combout\,
	combout => \FD|banco_registradores|saidaA[17]~17_combout\);

\FD|banco_registradores|saidaA[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[18]~18_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1079_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1079_combout\,
	combout => \FD|banco_registradores|saidaA[18]~18_combout\);

\FD|banco_registradores|saidaA[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[19]~19_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1080_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1080_combout\,
	combout => \FD|banco_registradores|saidaA[19]~19_combout\);

\FD|banco_registradores|saidaA[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[20]~20_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1081_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1081_combout\,
	combout => \FD|banco_registradores|saidaA[20]~20_combout\);

\FD|banco_registradores|saidaA[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[21]~21_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1082_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1082_combout\,
	combout => \FD|banco_registradores|saidaA[21]~21_combout\);

\FD|banco_registradores|saidaA[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[22]~22_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1083_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1083_combout\,
	combout => \FD|banco_registradores|saidaA[22]~22_combout\);

\FD|banco_registradores|saidaA[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[23]~23_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1084_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1084_combout\,
	combout => \FD|banco_registradores|saidaA[23]~23_combout\);

\FD|banco_registradores|saidaA[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[24]~24_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1085_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1085_combout\,
	combout => \FD|banco_registradores|saidaA[24]~24_combout\);

\FD|banco_registradores|saidaA[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[25]~25_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1086_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1086_combout\,
	combout => \FD|banco_registradores|saidaA[25]~25_combout\);

\FD|banco_registradores|saidaA[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[26]~26_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1087_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1087_combout\,
	combout => \FD|banco_registradores|saidaA[26]~26_combout\);

\FD|banco_registradores|saidaA[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[27]~27_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1088_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1088_combout\,
	combout => \FD|banco_registradores|saidaA[27]~27_combout\);

\FD|banco_registradores|saidaA[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[28]~28_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1089_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1089_combout\,
	combout => \FD|banco_registradores|saidaA[28]~28_combout\);

\FD|banco_registradores|saidaA[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[29]~29_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1090_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1090_combout\,
	combout => \FD|banco_registradores|saidaA[29]~29_combout\);

\FD|banco_registradores|saidaA[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[30]~30_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~1091_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~1091_combout\,
	combout => \FD|banco_registradores|saidaA[30]~30_combout\);

\FD|banco_registradores|saidaA[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|banco_registradores|saidaA[31]~31_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|banco_registradores|registrador~389_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|banco_registradores|ALT_INV_registrador~389_q\,
	combout => \FD|banco_registradores|saidaA[31]~31_combout\);

\FD|somaQuatro|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~25_sumout\ = SUM(( \FD|PC|DOUT\(8) ) + ( GND ) + ( \FD|somaQuatro|Add0~10\ ))
-- \FD|somaQuatro|Add0~26\ = CARRY(( \FD|PC|DOUT\(8) ) + ( GND ) + ( \FD|somaQuatro|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(8),
	cin => \FD|somaQuatro|Add0~10\,
	sumout => \FD|somaQuatro|Add0~25_sumout\,
	cout => \FD|somaQuatro|Add0~26\);

\FD|soma_proxPC_imedShift2|Add0~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~118_cout\ = CARRY(( \FD|ROM|memROM~1_combout\ ) + ( \FD|somaQuatro|Add0~5_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|ROM|ALT_INV_memROM~1_combout\,
	dataf => \FD|somaQuatro|ALT_INV_Add0~5_sumout\,
	cin => GND,
	cout => \FD|soma_proxPC_imedShift2|Add0~118_cout\);

\FD|soma_proxPC_imedShift2|Add0~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~114_cout\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~1_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~118_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~1_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~118_cout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~114_cout\);

\FD|soma_proxPC_imedShift2|Add0~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~110_cout\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~13_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~114_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~13_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~114_cout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~110_cout\);

\FD|soma_proxPC_imedShift2|Add0~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~106_cout\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~17_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~110_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~17_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~110_cout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~106_cout\);

\FD|soma_proxPC_imedShift2|Add0~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~102_cout\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~21_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~106_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~21_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~106_cout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~102_cout\);

\FD|soma_proxPC_imedShift2|Add0~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~98_cout\ = CARRY(( \FD|ROM|memROM~0_combout\ ) + ( \FD|somaQuatro|Add0~9_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~102_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|somaQuatro|ALT_INV_Add0~9_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~102_cout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~98_cout\);

\FD|soma_proxPC_imedShift2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~1_sumout\ = SUM(( GND ) + ( \FD|somaQuatro|Add0~25_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~98_cout\ ))
-- \FD|soma_proxPC_imedShift2|Add0~2\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~25_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~98_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~25_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~98_cout\,
	sumout => \FD|soma_proxPC_imedShift2|Add0~1_sumout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~2\);

\FD|mux_prox_PC|saida_MUX[8]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[8]~3_combout\ = ( \FD|somaQuatro|Add0~25_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~1_sumout\ ) ) # ( !\FD|somaQuatro|Add0~25_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~1_sumout\ & ( (\FD|ROM|memROM~1_combout\ & 
-- (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~3_combout\ & \FD|ula|Equal5~5_combout\))) ) ) ) # ( \FD|somaQuatro|Add0~25_sumout\ & ( !\FD|soma_proxPC_imedShift2|Add0~1_sumout\ & ( (!\FD|ROM|memROM~1_combout\) # (((!\FD|ula|Equal5~3_combout\) # 
-- (!\FD|ula|Equal5~5_combout\)) # (\FD|ula|Equal5~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~3_combout\,
	datad => \FD|ula|ALT_INV_Equal5~5_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~25_sumout\,
	dataf => \FD|soma_proxPC_imedShift2|ALT_INV_Add0~1_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[8]~3_combout\);

\FD|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[8]~3_combout\,
	sclr => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(8));

\FD|somaQuatro|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~29_sumout\ = SUM(( \FD|PC|DOUT\(9) ) + ( GND ) + ( \FD|somaQuatro|Add0~26\ ))
-- \FD|somaQuatro|Add0~30\ = CARRY(( \FD|PC|DOUT\(9) ) + ( GND ) + ( \FD|somaQuatro|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(9),
	cin => \FD|somaQuatro|Add0~26\,
	sumout => \FD|somaQuatro|Add0~29_sumout\,
	cout => \FD|somaQuatro|Add0~30\);

\FD|soma_proxPC_imedShift2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~5_sumout\ = SUM(( GND ) + ( \FD|somaQuatro|Add0~29_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~2\ ))
-- \FD|soma_proxPC_imedShift2|Add0~6\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~29_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~29_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~2\,
	sumout => \FD|soma_proxPC_imedShift2|Add0~5_sumout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~6\);

\FD|mux_prox_PC|saida_MUX[9]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[9]~4_combout\ = ( \FD|somaQuatro|Add0~29_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~5_sumout\ ) ) # ( !\FD|somaQuatro|Add0~29_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~5_sumout\ & ( (\FD|ROM|memROM~1_combout\ & 
-- (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~3_combout\ & \FD|ula|Equal5~5_combout\))) ) ) ) # ( \FD|somaQuatro|Add0~29_sumout\ & ( !\FD|soma_proxPC_imedShift2|Add0~5_sumout\ & ( (!\FD|ROM|memROM~1_combout\) # (((!\FD|ula|Equal5~3_combout\) # 
-- (!\FD|ula|Equal5~5_combout\)) # (\FD|ula|Equal5~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~3_combout\,
	datad => \FD|ula|ALT_INV_Equal5~5_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~29_sumout\,
	dataf => \FD|soma_proxPC_imedShift2|ALT_INV_Add0~5_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[9]~4_combout\);

\FD|PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[9]~4_combout\,
	sclr => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(9));

\FD|somaQuatro|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~33_sumout\ = SUM(( \FD|PC|DOUT\(10) ) + ( GND ) + ( \FD|somaQuatro|Add0~30\ ))
-- \FD|somaQuatro|Add0~34\ = CARRY(( \FD|PC|DOUT\(10) ) + ( GND ) + ( \FD|somaQuatro|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(10),
	cin => \FD|somaQuatro|Add0~30\,
	sumout => \FD|somaQuatro|Add0~33_sumout\,
	cout => \FD|somaQuatro|Add0~34\);

\FD|soma_proxPC_imedShift2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~9_sumout\ = SUM(( GND ) + ( \FD|somaQuatro|Add0~33_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~6\ ))
-- \FD|soma_proxPC_imedShift2|Add0~10\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~33_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~33_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~6\,
	sumout => \FD|soma_proxPC_imedShift2|Add0~9_sumout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~10\);

\FD|mux_prox_PC|saida_MUX[10]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[10]~5_combout\ = ( \FD|somaQuatro|Add0~33_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~9_sumout\ ) ) # ( !\FD|somaQuatro|Add0~33_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~9_sumout\ & ( (\FD|ROM|memROM~1_combout\ & 
-- (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~3_combout\ & \FD|ula|Equal5~5_combout\))) ) ) ) # ( \FD|somaQuatro|Add0~33_sumout\ & ( !\FD|soma_proxPC_imedShift2|Add0~9_sumout\ & ( (!\FD|ROM|memROM~1_combout\) # (((!\FD|ula|Equal5~3_combout\) # 
-- (!\FD|ula|Equal5~5_combout\)) # (\FD|ula|Equal5~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~3_combout\,
	datad => \FD|ula|ALT_INV_Equal5~5_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~33_sumout\,
	dataf => \FD|soma_proxPC_imedShift2|ALT_INV_Add0~9_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[10]~5_combout\);

\FD|PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[10]~5_combout\,
	sclr => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(10));

\FD|somaQuatro|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~37_sumout\ = SUM(( \FD|PC|DOUT\(11) ) + ( GND ) + ( \FD|somaQuatro|Add0~34\ ))
-- \FD|somaQuatro|Add0~38\ = CARRY(( \FD|PC|DOUT\(11) ) + ( GND ) + ( \FD|somaQuatro|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(11),
	cin => \FD|somaQuatro|Add0~34\,
	sumout => \FD|somaQuatro|Add0~37_sumout\,
	cout => \FD|somaQuatro|Add0~38\);

\FD|soma_proxPC_imedShift2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~13_sumout\ = SUM(( GND ) + ( \FD|somaQuatro|Add0~37_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~10\ ))
-- \FD|soma_proxPC_imedShift2|Add0~14\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~37_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~37_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~10\,
	sumout => \FD|soma_proxPC_imedShift2|Add0~13_sumout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~14\);

\FD|mux_prox_PC|saida_MUX[11]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[11]~6_combout\ = ( \FD|somaQuatro|Add0~37_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~13_sumout\ ) ) # ( !\FD|somaQuatro|Add0~37_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~13_sumout\ & ( (\FD|ROM|memROM~1_combout\ & 
-- (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~3_combout\ & \FD|ula|Equal5~5_combout\))) ) ) ) # ( \FD|somaQuatro|Add0~37_sumout\ & ( !\FD|soma_proxPC_imedShift2|Add0~13_sumout\ & ( (!\FD|ROM|memROM~1_combout\) # (((!\FD|ula|Equal5~3_combout\) # 
-- (!\FD|ula|Equal5~5_combout\)) # (\FD|ula|Equal5~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~3_combout\,
	datad => \FD|ula|ALT_INV_Equal5~5_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~37_sumout\,
	dataf => \FD|soma_proxPC_imedShift2|ALT_INV_Add0~13_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[11]~6_combout\);

\FD|PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[11]~6_combout\,
	sclr => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(11));

\FD|somaQuatro|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~41_sumout\ = SUM(( \FD|PC|DOUT\(12) ) + ( GND ) + ( \FD|somaQuatro|Add0~38\ ))
-- \FD|somaQuatro|Add0~42\ = CARRY(( \FD|PC|DOUT\(12) ) + ( GND ) + ( \FD|somaQuatro|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(12),
	cin => \FD|somaQuatro|Add0~38\,
	sumout => \FD|somaQuatro|Add0~41_sumout\,
	cout => \FD|somaQuatro|Add0~42\);

\FD|soma_proxPC_imedShift2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~17_sumout\ = SUM(( GND ) + ( \FD|somaQuatro|Add0~41_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~14\ ))
-- \FD|soma_proxPC_imedShift2|Add0~18\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~41_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~41_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~14\,
	sumout => \FD|soma_proxPC_imedShift2|Add0~17_sumout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~18\);

\FD|mux_prox_PC|saida_MUX[12]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[12]~7_combout\ = ( \FD|somaQuatro|Add0~41_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~17_sumout\ ) ) # ( !\FD|somaQuatro|Add0~41_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~17_sumout\ & ( (\FD|ROM|memROM~1_combout\ & 
-- (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~3_combout\ & \FD|ula|Equal5~5_combout\))) ) ) ) # ( \FD|somaQuatro|Add0~41_sumout\ & ( !\FD|soma_proxPC_imedShift2|Add0~17_sumout\ & ( (!\FD|ROM|memROM~1_combout\) # (((!\FD|ula|Equal5~3_combout\) # 
-- (!\FD|ula|Equal5~5_combout\)) # (\FD|ula|Equal5~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~3_combout\,
	datad => \FD|ula|ALT_INV_Equal5~5_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~41_sumout\,
	dataf => \FD|soma_proxPC_imedShift2|ALT_INV_Add0~17_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[12]~7_combout\);

\FD|PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[12]~7_combout\,
	sclr => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(12));

\FD|somaQuatro|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~45_sumout\ = SUM(( \FD|PC|DOUT\(13) ) + ( GND ) + ( \FD|somaQuatro|Add0~42\ ))
-- \FD|somaQuatro|Add0~46\ = CARRY(( \FD|PC|DOUT\(13) ) + ( GND ) + ( \FD|somaQuatro|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(13),
	cin => \FD|somaQuatro|Add0~42\,
	sumout => \FD|somaQuatro|Add0~45_sumout\,
	cout => \FD|somaQuatro|Add0~46\);

\FD|soma_proxPC_imedShift2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~21_sumout\ = SUM(( GND ) + ( \FD|somaQuatro|Add0~45_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~18\ ))
-- \FD|soma_proxPC_imedShift2|Add0~22\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~45_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~45_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~18\,
	sumout => \FD|soma_proxPC_imedShift2|Add0~21_sumout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~22\);

\FD|mux_prox_PC|saida_MUX[13]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[13]~8_combout\ = ( \FD|somaQuatro|Add0~45_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~21_sumout\ ) ) # ( !\FD|somaQuatro|Add0~45_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~21_sumout\ & ( (\FD|ROM|memROM~1_combout\ & 
-- (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~3_combout\ & \FD|ula|Equal5~5_combout\))) ) ) ) # ( \FD|somaQuatro|Add0~45_sumout\ & ( !\FD|soma_proxPC_imedShift2|Add0~21_sumout\ & ( (!\FD|ROM|memROM~1_combout\) # (((!\FD|ula|Equal5~3_combout\) # 
-- (!\FD|ula|Equal5~5_combout\)) # (\FD|ula|Equal5~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~3_combout\,
	datad => \FD|ula|ALT_INV_Equal5~5_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~45_sumout\,
	dataf => \FD|soma_proxPC_imedShift2|ALT_INV_Add0~21_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[13]~8_combout\);

\FD|PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[13]~8_combout\,
	sclr => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(13));

\FD|ula|Equal5~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Equal5~10_combout\ = ( !\FD|ula|Add0~121_sumout\ & ( (!\FD|ula|Add0~125_sumout\ & (!\FD|ula|Add0~105_sumout\ & (!\FD|ula|Add0~113_sumout\ & !\FD|ula|Add0~117_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_Add0~125_sumout\,
	datab => \FD|ula|ALT_INV_Add0~105_sumout\,
	datac => \FD|ula|ALT_INV_Add0~113_sumout\,
	datad => \FD|ula|ALT_INV_Add0~117_sumout\,
	datae => \FD|ula|ALT_INV_Add0~121_sumout\,
	combout => \FD|ula|Equal5~10_combout\);

\FD|ula|Equal5~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Equal5~11_combout\ = ( !\FD|ula|Add0~101_sumout\ & ( (!\FD|ula|Add0~61_sumout\ & (!\FD|ula|Add0~49_sumout\ & (!\FD|ula|Add0~53_sumout\ & !\FD|ula|Add0~97_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_Add0~61_sumout\,
	datab => \FD|ula|ALT_INV_Add0~49_sumout\,
	datac => \FD|ula|ALT_INV_Add0~53_sumout\,
	datad => \FD|ula|ALT_INV_Add0~97_sumout\,
	datae => \FD|ula|ALT_INV_Add0~101_sumout\,
	combout => \FD|ula|Equal5~11_combout\);

\FD|ula|Equal5~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Equal5~8_combout\ = ( \FD|ula|Equal5~10_combout\ & ( \FD|ula|Equal5~11_combout\ & ( (\FD|ula|Equal5~2_combout\ & ((!\FD|ula|temp_saida[30]~0_combout\) # ((!\FD|ula|Add0~57_sumout\ & !\FD|ula|Add0~109_sumout\)))) ) ) ) # ( 
-- !\FD|ula|Equal5~10_combout\ & ( \FD|ula|Equal5~11_combout\ & ( (!\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Equal5~2_combout\) ) ) ) # ( \FD|ula|Equal5~10_combout\ & ( !\FD|ula|Equal5~11_combout\ & ( (!\FD|ula|temp_saida[30]~0_combout\ & 
-- \FD|ula|Equal5~2_combout\) ) ) ) # ( !\FD|ula|Equal5~10_combout\ & ( !\FD|ula|Equal5~11_combout\ & ( (!\FD|ula|temp_saida[30]~0_combout\ & \FD|ula|Equal5~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~57_sumout\,
	datac => \FD|ula|ALT_INV_Add0~109_sumout\,
	datad => \FD|ula|ALT_INV_Equal5~2_combout\,
	datae => \FD|ula|ALT_INV_Equal5~10_combout\,
	dataf => \FD|ula|ALT_INV_Equal5~11_combout\,
	combout => \FD|ula|Equal5~8_combout\);

\FD|somaQuatro|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~49_sumout\ = SUM(( \FD|PC|DOUT\(14) ) + ( GND ) + ( \FD|somaQuatro|Add0~46\ ))
-- \FD|somaQuatro|Add0~50\ = CARRY(( \FD|PC|DOUT\(14) ) + ( GND ) + ( \FD|somaQuatro|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(14),
	cin => \FD|somaQuatro|Add0~46\,
	sumout => \FD|somaQuatro|Add0~49_sumout\,
	cout => \FD|somaQuatro|Add0~50\);

\FD|soma_proxPC_imedShift2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~25_sumout\ = SUM(( \FD|ROM|memROM~0_combout\ ) + ( \FD|somaQuatro|Add0~49_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~22\ ))
-- \FD|soma_proxPC_imedShift2|Add0~26\ = CARRY(( \FD|ROM|memROM~0_combout\ ) + ( \FD|somaQuatro|Add0~49_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|somaQuatro|ALT_INV_Add0~49_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~22\,
	sumout => \FD|soma_proxPC_imedShift2|Add0~25_sumout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~26\);

\FD|mux_prox_PC|saida_MUX[14]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[14]~9_combout\ = ( \FD|somaQuatro|Add0~49_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~25_sumout\ & ( !\FD|ROM|memROM~2_combout\ ) ) ) # ( !\FD|somaQuatro|Add0~49_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~25_sumout\ & ( 
-- (\FD|ROM|memROM~1_combout\ & (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~8_combout\ & !\FD|ROM|memROM~2_combout\))) ) ) ) # ( \FD|somaQuatro|Add0~49_sumout\ & ( !\FD|soma_proxPC_imedShift2|Add0~25_sumout\ & ( (!\FD|ROM|memROM~2_combout\ & 
-- ((!\FD|ROM|memROM~1_combout\) # ((!\FD|ula|Equal5~8_combout\) # (\FD|ula|Equal5~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110000000000000100000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~8_combout\,
	datad => \FD|ROM|ALT_INV_memROM~2_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~49_sumout\,
	dataf => \FD|soma_proxPC_imedShift2|ALT_INV_Add0~25_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[14]~9_combout\);

\FD|PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(14));

\FD|somaQuatro|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~53_sumout\ = SUM(( \FD|PC|DOUT\(15) ) + ( GND ) + ( \FD|somaQuatro|Add0~50\ ))
-- \FD|somaQuatro|Add0~54\ = CARRY(( \FD|PC|DOUT\(15) ) + ( GND ) + ( \FD|somaQuatro|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(15),
	cin => \FD|somaQuatro|Add0~50\,
	sumout => \FD|somaQuatro|Add0~53_sumout\,
	cout => \FD|somaQuatro|Add0~54\);

\FD|soma_proxPC_imedShift2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~29_sumout\ = SUM(( GND ) + ( \FD|somaQuatro|Add0~53_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~26\ ))
-- \FD|soma_proxPC_imedShift2|Add0~30\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~53_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~53_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~26\,
	sumout => \FD|soma_proxPC_imedShift2|Add0~29_sumout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~30\);

\FD|mux_prox_PC|saida_MUX[15]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[15]~10_combout\ = ( \FD|somaQuatro|Add0~53_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~29_sumout\ ) ) # ( !\FD|somaQuatro|Add0~53_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~29_sumout\ & ( (\FD|ROM|memROM~1_combout\ & 
-- (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~3_combout\ & \FD|ula|Equal5~5_combout\))) ) ) ) # ( \FD|somaQuatro|Add0~53_sumout\ & ( !\FD|soma_proxPC_imedShift2|Add0~29_sumout\ & ( (!\FD|ROM|memROM~1_combout\) # (((!\FD|ula|Equal5~3_combout\) # 
-- (!\FD|ula|Equal5~5_combout\)) # (\FD|ula|Equal5~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~3_combout\,
	datad => \FD|ula|ALT_INV_Equal5~5_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~53_sumout\,
	dataf => \FD|soma_proxPC_imedShift2|ALT_INV_Add0~29_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[15]~10_combout\);

\FD|PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[15]~10_combout\,
	sclr => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(15));

\FD|somaQuatro|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~57_sumout\ = SUM(( \FD|PC|DOUT\(16) ) + ( GND ) + ( \FD|somaQuatro|Add0~54\ ))
-- \FD|somaQuatro|Add0~58\ = CARRY(( \FD|PC|DOUT\(16) ) + ( GND ) + ( \FD|somaQuatro|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(16),
	cin => \FD|somaQuatro|Add0~54\,
	sumout => \FD|somaQuatro|Add0~57_sumout\,
	cout => \FD|somaQuatro|Add0~58\);

\FD|soma_proxPC_imedShift2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~33_sumout\ = SUM(( \FD|ROM|memROM~0_combout\ ) + ( \FD|somaQuatro|Add0~57_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~30\ ))
-- \FD|soma_proxPC_imedShift2|Add0~34\ = CARRY(( \FD|ROM|memROM~0_combout\ ) + ( \FD|somaQuatro|Add0~57_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|somaQuatro|ALT_INV_Add0~57_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~30\,
	sumout => \FD|soma_proxPC_imedShift2|Add0~33_sumout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~34\);

\FD|mux_prox_PC|saida_MUX[16]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[16]~11_combout\ = ( \FD|somaQuatro|Add0~57_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~33_sumout\ & ( !\FD|ROM|memROM~2_combout\ ) ) ) # ( !\FD|somaQuatro|Add0~57_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~33_sumout\ & ( 
-- (\FD|ROM|memROM~1_combout\ & (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~8_combout\ & !\FD|ROM|memROM~2_combout\))) ) ) ) # ( \FD|somaQuatro|Add0~57_sumout\ & ( !\FD|soma_proxPC_imedShift2|Add0~33_sumout\ & ( (!\FD|ROM|memROM~2_combout\ & 
-- ((!\FD|ROM|memROM~1_combout\) # ((!\FD|ula|Equal5~8_combout\) # (\FD|ula|Equal5~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110000000000000100000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~8_combout\,
	datad => \FD|ROM|ALT_INV_memROM~2_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~57_sumout\,
	dataf => \FD|soma_proxPC_imedShift2|ALT_INV_Add0~33_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[16]~11_combout\);

\FD|PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[16]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(16));

\FD|somaQuatro|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~61_sumout\ = SUM(( \FD|PC|DOUT\(17) ) + ( GND ) + ( \FD|somaQuatro|Add0~58\ ))
-- \FD|somaQuatro|Add0~62\ = CARRY(( \FD|PC|DOUT\(17) ) + ( GND ) + ( \FD|somaQuatro|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(17),
	cin => \FD|somaQuatro|Add0~58\,
	sumout => \FD|somaQuatro|Add0~61_sumout\,
	cout => \FD|somaQuatro|Add0~62\);

\FD|soma_proxPC_imedShift2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~37_sumout\ = SUM(( GND ) + ( \FD|somaQuatro|Add0~61_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~34\ ))
-- \FD|soma_proxPC_imedShift2|Add0~38\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~61_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~61_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~34\,
	sumout => \FD|soma_proxPC_imedShift2|Add0~37_sumout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~38\);

\FD|mux_prox_PC|saida_MUX[17]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[17]~12_combout\ = ( \FD|somaQuatro|Add0~61_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~37_sumout\ ) ) # ( !\FD|somaQuatro|Add0~61_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~37_sumout\ & ( (\FD|ROM|memROM~1_combout\ & 
-- (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~3_combout\ & \FD|ula|Equal5~5_combout\))) ) ) ) # ( \FD|somaQuatro|Add0~61_sumout\ & ( !\FD|soma_proxPC_imedShift2|Add0~37_sumout\ & ( (!\FD|ROM|memROM~1_combout\) # (((!\FD|ula|Equal5~3_combout\) # 
-- (!\FD|ula|Equal5~5_combout\)) # (\FD|ula|Equal5~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~3_combout\,
	datad => \FD|ula|ALT_INV_Equal5~5_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~61_sumout\,
	dataf => \FD|soma_proxPC_imedShift2|ALT_INV_Add0~37_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[17]~12_combout\);

\FD|PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[17]~12_combout\,
	sclr => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(17));

\FD|somaQuatro|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~65_sumout\ = SUM(( \FD|PC|DOUT\(18) ) + ( GND ) + ( \FD|somaQuatro|Add0~62\ ))
-- \FD|somaQuatro|Add0~66\ = CARRY(( \FD|PC|DOUT\(18) ) + ( GND ) + ( \FD|somaQuatro|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(18),
	cin => \FD|somaQuatro|Add0~62\,
	sumout => \FD|somaQuatro|Add0~65_sumout\,
	cout => \FD|somaQuatro|Add0~66\);

\FD|soma_proxPC_imedShift2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~41_sumout\ = SUM(( GND ) + ( \FD|somaQuatro|Add0~65_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~38\ ))
-- \FD|soma_proxPC_imedShift2|Add0~42\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~65_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~65_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~38\,
	sumout => \FD|soma_proxPC_imedShift2|Add0~41_sumout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~42\);

\FD|mux_prox_PC|saida_MUX[18]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[18]~13_combout\ = ( \FD|somaQuatro|Add0~65_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~41_sumout\ ) ) # ( !\FD|somaQuatro|Add0~65_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~41_sumout\ & ( (\FD|ROM|memROM~1_combout\ & 
-- (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~3_combout\ & \FD|ula|Equal5~5_combout\))) ) ) ) # ( \FD|somaQuatro|Add0~65_sumout\ & ( !\FD|soma_proxPC_imedShift2|Add0~41_sumout\ & ( (!\FD|ROM|memROM~1_combout\) # (((!\FD|ula|Equal5~3_combout\) # 
-- (!\FD|ula|Equal5~5_combout\)) # (\FD|ula|Equal5~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~3_combout\,
	datad => \FD|ula|ALT_INV_Equal5~5_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~65_sumout\,
	dataf => \FD|soma_proxPC_imedShift2|ALT_INV_Add0~41_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[18]~13_combout\);

\FD|PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[18]~13_combout\,
	sclr => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(18));

\FD|somaQuatro|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~69_sumout\ = SUM(( \FD|PC|DOUT\(19) ) + ( GND ) + ( \FD|somaQuatro|Add0~66\ ))
-- \FD|somaQuatro|Add0~70\ = CARRY(( \FD|PC|DOUT\(19) ) + ( GND ) + ( \FD|somaQuatro|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(19),
	cin => \FD|somaQuatro|Add0~66\,
	sumout => \FD|somaQuatro|Add0~69_sumout\,
	cout => \FD|somaQuatro|Add0~70\);

\FD|soma_proxPC_imedShift2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~45_sumout\ = SUM(( GND ) + ( \FD|somaQuatro|Add0~69_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~42\ ))
-- \FD|soma_proxPC_imedShift2|Add0~46\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~69_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~69_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~42\,
	sumout => \FD|soma_proxPC_imedShift2|Add0~45_sumout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~46\);

\FD|mux_prox_PC|saida_MUX[19]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[19]~14_combout\ = ( \FD|somaQuatro|Add0~69_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~45_sumout\ & ( !\FD|ROM|memROM~2_combout\ ) ) ) # ( !\FD|somaQuatro|Add0~69_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~45_sumout\ & ( 
-- (\FD|ROM|memROM~1_combout\ & (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~8_combout\ & !\FD|ROM|memROM~2_combout\))) ) ) ) # ( \FD|somaQuatro|Add0~69_sumout\ & ( !\FD|soma_proxPC_imedShift2|Add0~45_sumout\ & ( (!\FD|ROM|memROM~2_combout\ & 
-- ((!\FD|ROM|memROM~1_combout\) # ((!\FD|ula|Equal5~8_combout\) # (\FD|ula|Equal5~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110000000000000100000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~8_combout\,
	datad => \FD|ROM|ALT_INV_memROM~2_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~69_sumout\,
	dataf => \FD|soma_proxPC_imedShift2|ALT_INV_Add0~45_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[19]~14_combout\);

\FD|PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[19]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(19));

\FD|somaQuatro|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~73_sumout\ = SUM(( \FD|PC|DOUT\(20) ) + ( GND ) + ( \FD|somaQuatro|Add0~70\ ))
-- \FD|somaQuatro|Add0~74\ = CARRY(( \FD|PC|DOUT\(20) ) + ( GND ) + ( \FD|somaQuatro|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(20),
	cin => \FD|somaQuatro|Add0~70\,
	sumout => \FD|somaQuatro|Add0~73_sumout\,
	cout => \FD|somaQuatro|Add0~74\);

\FD|soma_proxPC_imedShift2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~49_sumout\ = SUM(( GND ) + ( \FD|somaQuatro|Add0~73_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~46\ ))
-- \FD|soma_proxPC_imedShift2|Add0~50\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~73_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~73_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~46\,
	sumout => \FD|soma_proxPC_imedShift2|Add0~49_sumout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~50\);

\FD|mux_prox_PC|saida_MUX[20]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[20]~15_combout\ = ( \FD|somaQuatro|Add0~73_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~49_sumout\ ) ) # ( !\FD|somaQuatro|Add0~73_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~49_sumout\ & ( (\FD|ROM|memROM~1_combout\ & 
-- (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~3_combout\ & \FD|ula|Equal5~5_combout\))) ) ) ) # ( \FD|somaQuatro|Add0~73_sumout\ & ( !\FD|soma_proxPC_imedShift2|Add0~49_sumout\ & ( (!\FD|ROM|memROM~1_combout\) # (((!\FD|ula|Equal5~3_combout\) # 
-- (!\FD|ula|Equal5~5_combout\)) # (\FD|ula|Equal5~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~3_combout\,
	datad => \FD|ula|ALT_INV_Equal5~5_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~73_sumout\,
	dataf => \FD|soma_proxPC_imedShift2|ALT_INV_Add0~49_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[20]~15_combout\);

\FD|PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[20]~15_combout\,
	sclr => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(20));

\FD|somaQuatro|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~77_sumout\ = SUM(( \FD|PC|DOUT\(21) ) + ( GND ) + ( \FD|somaQuatro|Add0~74\ ))
-- \FD|somaQuatro|Add0~78\ = CARRY(( \FD|PC|DOUT\(21) ) + ( GND ) + ( \FD|somaQuatro|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(21),
	cin => \FD|somaQuatro|Add0~74\,
	sumout => \FD|somaQuatro|Add0~77_sumout\,
	cout => \FD|somaQuatro|Add0~78\);

\FD|soma_proxPC_imedShift2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~53_sumout\ = SUM(( GND ) + ( \FD|somaQuatro|Add0~77_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~50\ ))
-- \FD|soma_proxPC_imedShift2|Add0~54\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~77_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~77_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~50\,
	sumout => \FD|soma_proxPC_imedShift2|Add0~53_sumout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~54\);

\FD|mux_prox_PC|saida_MUX[21]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[21]~16_combout\ = ( \FD|somaQuatro|Add0~77_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~53_sumout\ & ( !\FD|ROM|memROM~2_combout\ ) ) ) # ( !\FD|somaQuatro|Add0~77_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~53_sumout\ & ( 
-- (\FD|ROM|memROM~1_combout\ & (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~8_combout\ & !\FD|ROM|memROM~2_combout\))) ) ) ) # ( \FD|somaQuatro|Add0~77_sumout\ & ( !\FD|soma_proxPC_imedShift2|Add0~53_sumout\ & ( (!\FD|ROM|memROM~2_combout\ & 
-- ((!\FD|ROM|memROM~1_combout\) # ((!\FD|ula|Equal5~8_combout\) # (\FD|ula|Equal5~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110000000000000100000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~8_combout\,
	datad => \FD|ROM|ALT_INV_memROM~2_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~77_sumout\,
	dataf => \FD|soma_proxPC_imedShift2|ALT_INV_Add0~53_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[21]~16_combout\);

\FD|PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[21]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(21));

\FD|somaQuatro|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~81_sumout\ = SUM(( \FD|PC|DOUT\(22) ) + ( GND ) + ( \FD|somaQuatro|Add0~78\ ))
-- \FD|somaQuatro|Add0~82\ = CARRY(( \FD|PC|DOUT\(22) ) + ( GND ) + ( \FD|somaQuatro|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(22),
	cin => \FD|somaQuatro|Add0~78\,
	sumout => \FD|somaQuatro|Add0~81_sumout\,
	cout => \FD|somaQuatro|Add0~82\);

\FD|soma_proxPC_imedShift2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~57_sumout\ = SUM(( GND ) + ( \FD|somaQuatro|Add0~81_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~54\ ))
-- \FD|soma_proxPC_imedShift2|Add0~58\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~81_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~81_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~54\,
	sumout => \FD|soma_proxPC_imedShift2|Add0~57_sumout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~58\);

\FD|mux_prox_PC|saida_MUX[22]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[22]~17_combout\ = ( \FD|somaQuatro|Add0~81_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~57_sumout\ ) ) # ( !\FD|somaQuatro|Add0~81_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~57_sumout\ & ( (\FD|ROM|memROM~1_combout\ & 
-- (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~3_combout\ & \FD|ula|Equal5~5_combout\))) ) ) ) # ( \FD|somaQuatro|Add0~81_sumout\ & ( !\FD|soma_proxPC_imedShift2|Add0~57_sumout\ & ( (!\FD|ROM|memROM~1_combout\) # (((!\FD|ula|Equal5~3_combout\) # 
-- (!\FD|ula|Equal5~5_combout\)) # (\FD|ula|Equal5~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~3_combout\,
	datad => \FD|ula|ALT_INV_Equal5~5_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~81_sumout\,
	dataf => \FD|soma_proxPC_imedShift2|ALT_INV_Add0~57_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[22]~17_combout\);

\FD|PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[22]~17_combout\,
	sclr => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(22));

\FD|somaQuatro|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~85_sumout\ = SUM(( \FD|PC|DOUT\(23) ) + ( GND ) + ( \FD|somaQuatro|Add0~82\ ))
-- \FD|somaQuatro|Add0~86\ = CARRY(( \FD|PC|DOUT\(23) ) + ( GND ) + ( \FD|somaQuatro|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(23),
	cin => \FD|somaQuatro|Add0~82\,
	sumout => \FD|somaQuatro|Add0~85_sumout\,
	cout => \FD|somaQuatro|Add0~86\);

\FD|soma_proxPC_imedShift2|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~61_sumout\ = SUM(( GND ) + ( \FD|somaQuatro|Add0~85_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~58\ ))
-- \FD|soma_proxPC_imedShift2|Add0~62\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~85_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~85_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~58\,
	sumout => \FD|soma_proxPC_imedShift2|Add0~61_sumout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~62\);

\FD|mux_prox_PC|saida_MUX[23]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[23]~18_combout\ = ( \FD|somaQuatro|Add0~85_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~61_sumout\ ) ) # ( !\FD|somaQuatro|Add0~85_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~61_sumout\ & ( (\FD|ROM|memROM~1_combout\ & 
-- (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~3_combout\ & \FD|ula|Equal5~5_combout\))) ) ) ) # ( \FD|somaQuatro|Add0~85_sumout\ & ( !\FD|soma_proxPC_imedShift2|Add0~61_sumout\ & ( (!\FD|ROM|memROM~1_combout\) # (((!\FD|ula|Equal5~3_combout\) # 
-- (!\FD|ula|Equal5~5_combout\)) # (\FD|ula|Equal5~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~3_combout\,
	datad => \FD|ula|ALT_INV_Equal5~5_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~85_sumout\,
	dataf => \FD|soma_proxPC_imedShift2|ALT_INV_Add0~61_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[23]~18_combout\);

\FD|PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[23]~18_combout\,
	sclr => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(23));

\FD|somaQuatro|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~89_sumout\ = SUM(( \FD|PC|DOUT\(24) ) + ( GND ) + ( \FD|somaQuatro|Add0~86\ ))
-- \FD|somaQuatro|Add0~90\ = CARRY(( \FD|PC|DOUT\(24) ) + ( GND ) + ( \FD|somaQuatro|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(24),
	cin => \FD|somaQuatro|Add0~86\,
	sumout => \FD|somaQuatro|Add0~89_sumout\,
	cout => \FD|somaQuatro|Add0~90\);

\FD|soma_proxPC_imedShift2|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~65_sumout\ = SUM(( GND ) + ( \FD|somaQuatro|Add0~89_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~62\ ))
-- \FD|soma_proxPC_imedShift2|Add0~66\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~89_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~89_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~62\,
	sumout => \FD|soma_proxPC_imedShift2|Add0~65_sumout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~66\);

\FD|mux_prox_PC|saida_MUX[24]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[24]~19_combout\ = ( \FD|somaQuatro|Add0~89_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~65_sumout\ & ( !\FD|ROM|memROM~2_combout\ ) ) ) # ( !\FD|somaQuatro|Add0~89_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~65_sumout\ & ( 
-- (\FD|ROM|memROM~1_combout\ & (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~8_combout\ & !\FD|ROM|memROM~2_combout\))) ) ) ) # ( \FD|somaQuatro|Add0~89_sumout\ & ( !\FD|soma_proxPC_imedShift2|Add0~65_sumout\ & ( (!\FD|ROM|memROM~2_combout\ & 
-- ((!\FD|ROM|memROM~1_combout\) # ((!\FD|ula|Equal5~8_combout\) # (\FD|ula|Equal5~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110000000000000100000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~8_combout\,
	datad => \FD|ROM|ALT_INV_memROM~2_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~89_sumout\,
	dataf => \FD|soma_proxPC_imedShift2|ALT_INV_Add0~65_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[24]~19_combout\);

\FD|PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[24]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(24));

\FD|somaQuatro|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~93_sumout\ = SUM(( \FD|PC|DOUT\(25) ) + ( GND ) + ( \FD|somaQuatro|Add0~90\ ))
-- \FD|somaQuatro|Add0~94\ = CARRY(( \FD|PC|DOUT\(25) ) + ( GND ) + ( \FD|somaQuatro|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(25),
	cin => \FD|somaQuatro|Add0~90\,
	sumout => \FD|somaQuatro|Add0~93_sumout\,
	cout => \FD|somaQuatro|Add0~94\);

\FD|soma_proxPC_imedShift2|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~69_sumout\ = SUM(( GND ) + ( \FD|somaQuatro|Add0~93_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~66\ ))
-- \FD|soma_proxPC_imedShift2|Add0~70\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~93_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~93_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~66\,
	sumout => \FD|soma_proxPC_imedShift2|Add0~69_sumout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~70\);

\FD|mux_prox_PC|saida_MUX[25]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[25]~20_combout\ = ( \FD|somaQuatro|Add0~93_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~69_sumout\ ) ) # ( !\FD|somaQuatro|Add0~93_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~69_sumout\ & ( (\FD|ROM|memROM~1_combout\ & 
-- (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~3_combout\ & \FD|ula|Equal5~5_combout\))) ) ) ) # ( \FD|somaQuatro|Add0~93_sumout\ & ( !\FD|soma_proxPC_imedShift2|Add0~69_sumout\ & ( (!\FD|ROM|memROM~1_combout\) # (((!\FD|ula|Equal5~3_combout\) # 
-- (!\FD|ula|Equal5~5_combout\)) # (\FD|ula|Equal5~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~3_combout\,
	datad => \FD|ula|ALT_INV_Equal5~5_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~93_sumout\,
	dataf => \FD|soma_proxPC_imedShift2|ALT_INV_Add0~69_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[25]~20_combout\);

\FD|PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[25]~20_combout\,
	sclr => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(25));

\FD|somaQuatro|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~97_sumout\ = SUM(( \FD|PC|DOUT\(26) ) + ( GND ) + ( \FD|somaQuatro|Add0~94\ ))
-- \FD|somaQuatro|Add0~98\ = CARRY(( \FD|PC|DOUT\(26) ) + ( GND ) + ( \FD|somaQuatro|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(26),
	cin => \FD|somaQuatro|Add0~94\,
	sumout => \FD|somaQuatro|Add0~97_sumout\,
	cout => \FD|somaQuatro|Add0~98\);

\FD|soma_proxPC_imedShift2|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~73_sumout\ = SUM(( GND ) + ( \FD|somaQuatro|Add0~97_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~70\ ))
-- \FD|soma_proxPC_imedShift2|Add0~74\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~97_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~97_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~70\,
	sumout => \FD|soma_proxPC_imedShift2|Add0~73_sumout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~74\);

\FD|mux_prox_PC|saida_MUX[26]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[26]~21_combout\ = ( \FD|somaQuatro|Add0~97_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~73_sumout\ & ( !\FD|ROM|memROM~2_combout\ ) ) ) # ( !\FD|somaQuatro|Add0~97_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~73_sumout\ & ( 
-- (\FD|ROM|memROM~1_combout\ & (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~8_combout\ & !\FD|ROM|memROM~2_combout\))) ) ) ) # ( \FD|somaQuatro|Add0~97_sumout\ & ( !\FD|soma_proxPC_imedShift2|Add0~73_sumout\ & ( (!\FD|ROM|memROM~2_combout\ & 
-- ((!\FD|ROM|memROM~1_combout\) # ((!\FD|ula|Equal5~8_combout\) # (\FD|ula|Equal5~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110000000000000100000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~8_combout\,
	datad => \FD|ROM|ALT_INV_memROM~2_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~97_sumout\,
	dataf => \FD|soma_proxPC_imedShift2|ALT_INV_Add0~73_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[26]~21_combout\);

\FD|PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[26]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(26));

\FD|somaQuatro|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~101_sumout\ = SUM(( \FD|PC|DOUT\(27) ) + ( GND ) + ( \FD|somaQuatro|Add0~98\ ))
-- \FD|somaQuatro|Add0~102\ = CARRY(( \FD|PC|DOUT\(27) ) + ( GND ) + ( \FD|somaQuatro|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(27),
	cin => \FD|somaQuatro|Add0~98\,
	sumout => \FD|somaQuatro|Add0~101_sumout\,
	cout => \FD|somaQuatro|Add0~102\);

\FD|soma_proxPC_imedShift2|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~77_sumout\ = SUM(( GND ) + ( \FD|somaQuatro|Add0~101_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~74\ ))
-- \FD|soma_proxPC_imedShift2|Add0~78\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~101_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~101_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~74\,
	sumout => \FD|soma_proxPC_imedShift2|Add0~77_sumout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~78\);

\FD|mux_prox_PC|saida_MUX[27]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[27]~22_combout\ = ( \FD|somaQuatro|Add0~101_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~77_sumout\ ) ) # ( !\FD|somaQuatro|Add0~101_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~77_sumout\ & ( (\FD|ROM|memROM~1_combout\ & 
-- (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~3_combout\ & \FD|ula|Equal5~5_combout\))) ) ) ) # ( \FD|somaQuatro|Add0~101_sumout\ & ( !\FD|soma_proxPC_imedShift2|Add0~77_sumout\ & ( (!\FD|ROM|memROM~1_combout\) # (((!\FD|ula|Equal5~3_combout\) # 
-- (!\FD|ula|Equal5~5_combout\)) # (\FD|ula|Equal5~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~3_combout\,
	datad => \FD|ula|ALT_INV_Equal5~5_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~101_sumout\,
	dataf => \FD|soma_proxPC_imedShift2|ALT_INV_Add0~77_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[27]~22_combout\);

\FD|PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[27]~22_combout\,
	sclr => \FD|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(27));

\FD|somaQuatro|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~105_sumout\ = SUM(( \FD|PC|DOUT\(28) ) + ( GND ) + ( \FD|somaQuatro|Add0~102\ ))
-- \FD|somaQuatro|Add0~106\ = CARRY(( \FD|PC|DOUT\(28) ) + ( GND ) + ( \FD|somaQuatro|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(28),
	cin => \FD|somaQuatro|Add0~102\,
	sumout => \FD|somaQuatro|Add0~105_sumout\,
	cout => \FD|somaQuatro|Add0~106\);

\FD|soma_proxPC_imedShift2|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~81_sumout\ = SUM(( GND ) + ( \FD|somaQuatro|Add0~105_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~78\ ))
-- \FD|soma_proxPC_imedShift2|Add0~82\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~105_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~105_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~78\,
	sumout => \FD|soma_proxPC_imedShift2|Add0~81_sumout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~82\);

\FD|mux_prox_PC|saida_MUX[28]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[28]~23_combout\ = ( \FD|somaQuatro|Add0~105_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~81_sumout\ ) ) # ( !\FD|somaQuatro|Add0~105_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~81_sumout\ & ( (\FD|ROM|memROM~1_combout\ & 
-- (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~3_combout\ & \FD|ula|Equal5~5_combout\))) ) ) ) # ( \FD|somaQuatro|Add0~105_sumout\ & ( !\FD|soma_proxPC_imedShift2|Add0~81_sumout\ & ( (!\FD|ROM|memROM~1_combout\) # (((!\FD|ula|Equal5~3_combout\) # 
-- (!\FD|ula|Equal5~5_combout\)) # (\FD|ula|Equal5~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~3_combout\,
	datad => \FD|ula|ALT_INV_Equal5~5_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~105_sumout\,
	dataf => \FD|soma_proxPC_imedShift2|ALT_INV_Add0~81_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[28]~23_combout\);

\FD|PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[28]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(28));

\FD|somaQuatro|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~109_sumout\ = SUM(( \FD|PC|DOUT\(29) ) + ( GND ) + ( \FD|somaQuatro|Add0~106\ ))
-- \FD|somaQuatro|Add0~110\ = CARRY(( \FD|PC|DOUT\(29) ) + ( GND ) + ( \FD|somaQuatro|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(29),
	cin => \FD|somaQuatro|Add0~106\,
	sumout => \FD|somaQuatro|Add0~109_sumout\,
	cout => \FD|somaQuatro|Add0~110\);

\FD|soma_proxPC_imedShift2|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~85_sumout\ = SUM(( GND ) + ( \FD|somaQuatro|Add0~109_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~82\ ))
-- \FD|soma_proxPC_imedShift2|Add0~86\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~109_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~109_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~82\,
	sumout => \FD|soma_proxPC_imedShift2|Add0~85_sumout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~86\);

\FD|mux_prox_PC|saida_MUX[29]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[29]~24_combout\ = ( \FD|somaQuatro|Add0~109_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~85_sumout\ ) ) # ( !\FD|somaQuatro|Add0~109_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~85_sumout\ & ( (\FD|ROM|memROM~1_combout\ & 
-- (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~3_combout\ & \FD|ula|Equal5~5_combout\))) ) ) ) # ( \FD|somaQuatro|Add0~109_sumout\ & ( !\FD|soma_proxPC_imedShift2|Add0~85_sumout\ & ( (!\FD|ROM|memROM~1_combout\) # (((!\FD|ula|Equal5~3_combout\) # 
-- (!\FD|ula|Equal5~5_combout\)) # (\FD|ula|Equal5~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~3_combout\,
	datad => \FD|ula|ALT_INV_Equal5~5_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~109_sumout\,
	dataf => \FD|soma_proxPC_imedShift2|ALT_INV_Add0~85_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[29]~24_combout\);

\FD|PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[29]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(29));

\FD|somaQuatro|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~113_sumout\ = SUM(( \FD|PC|DOUT\(30) ) + ( GND ) + ( \FD|somaQuatro|Add0~110\ ))
-- \FD|somaQuatro|Add0~114\ = CARRY(( \FD|PC|DOUT\(30) ) + ( GND ) + ( \FD|somaQuatro|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(30),
	cin => \FD|somaQuatro|Add0~110\,
	sumout => \FD|somaQuatro|Add0~113_sumout\,
	cout => \FD|somaQuatro|Add0~114\);

\FD|soma_proxPC_imedShift2|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~89_sumout\ = SUM(( GND ) + ( \FD|somaQuatro|Add0~113_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~86\ ))
-- \FD|soma_proxPC_imedShift2|Add0~90\ = CARRY(( GND ) + ( \FD|somaQuatro|Add0~113_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~113_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~86\,
	sumout => \FD|soma_proxPC_imedShift2|Add0~89_sumout\,
	cout => \FD|soma_proxPC_imedShift2|Add0~90\);

\FD|mux_prox_PC|saida_MUX[30]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[30]~25_combout\ = ( \FD|somaQuatro|Add0~113_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~89_sumout\ ) ) # ( !\FD|somaQuatro|Add0~113_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~89_sumout\ & ( (\FD|ROM|memROM~1_combout\ & 
-- (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~3_combout\ & \FD|ula|Equal5~5_combout\))) ) ) ) # ( \FD|somaQuatro|Add0~113_sumout\ & ( !\FD|soma_proxPC_imedShift2|Add0~89_sumout\ & ( (!\FD|ROM|memROM~1_combout\) # (((!\FD|ula|Equal5~3_combout\) # 
-- (!\FD|ula|Equal5~5_combout\)) # (\FD|ula|Equal5~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~3_combout\,
	datad => \FD|ula|ALT_INV_Equal5~5_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~113_sumout\,
	dataf => \FD|soma_proxPC_imedShift2|ALT_INV_Add0~89_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[30]~25_combout\);

\FD|PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[30]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(30));

\FD|somaQuatro|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaQuatro|Add0~117_sumout\ = SUM(( \FD|PC|DOUT\(31) ) + ( GND ) + ( \FD|somaQuatro|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT\(31),
	cin => \FD|somaQuatro|Add0~114\,
	sumout => \FD|somaQuatro|Add0~117_sumout\);

\FD|soma_proxPC_imedShift2|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|soma_proxPC_imedShift2|Add0~93_sumout\ = SUM(( GND ) + ( \FD|somaQuatro|Add0~117_sumout\ ) + ( \FD|soma_proxPC_imedShift2|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|somaQuatro|ALT_INV_Add0~117_sumout\,
	cin => \FD|soma_proxPC_imedShift2|Add0~90\,
	sumout => \FD|soma_proxPC_imedShift2|Add0~93_sumout\);

\FD|mux_prox_PC|saida_MUX[31]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|mux_prox_PC|saida_MUX[31]~26_combout\ = ( \FD|somaQuatro|Add0~117_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~93_sumout\ ) ) # ( !\FD|somaQuatro|Add0~117_sumout\ & ( \FD|soma_proxPC_imedShift2|Add0~93_sumout\ & ( (\FD|ROM|memROM~1_combout\ & 
-- (!\FD|ula|Equal5~7_combout\ & (\FD|ula|Equal5~3_combout\ & \FD|ula|Equal5~5_combout\))) ) ) ) # ( \FD|somaQuatro|Add0~117_sumout\ & ( !\FD|soma_proxPC_imedShift2|Add0~93_sumout\ & ( (!\FD|ROM|memROM~1_combout\) # (((!\FD|ula|Equal5~3_combout\) # 
-- (!\FD|ula|Equal5~5_combout\)) # (\FD|ula|Equal5~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ula|ALT_INV_Equal5~7_combout\,
	datac => \FD|ula|ALT_INV_Equal5~3_combout\,
	datad => \FD|ula|ALT_INV_Equal5~5_combout\,
	datae => \FD|somaQuatro|ALT_INV_Add0~117_sumout\,
	dataf => \FD|soma_proxPC_imedShift2|ALT_INV_Add0~93_sumout\,
	combout => \FD|mux_prox_PC|saida_MUX[31]~26_combout\);

\FD|PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FD|mux_prox_PC|saida_MUX[31]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(31));

\FD|ula|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Equal5~0_combout\ = ( \FD|ula|Add0~17_sumout\ & ( \FD|ula|Equal5~12_combout\ & ( \FD|ula|temp_saida[30]~0_combout\ ) ) ) # ( !\FD|ula|Add0~17_sumout\ & ( \FD|ula|Equal5~12_combout\ & ( (\FD|ula|temp_saida[30]~0_combout\ & 
-- (((\FD|ula|Add0~29_sumout\) # (\FD|ula|Add0~25_sumout\)) # (\FD|ula|Add0~21_sumout\))) ) ) ) # ( \FD|ula|Add0~17_sumout\ & ( !\FD|ula|Equal5~12_combout\ & ( \FD|ula|temp_saida[30]~0_combout\ ) ) ) # ( !\FD|ula|Add0~17_sumout\ & ( 
-- !\FD|ula|Equal5~12_combout\ & ( \FD|ula|temp_saida[30]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~21_sumout\,
	datac => \FD|ula|ALT_INV_Add0~25_sumout\,
	datad => \FD|ula|ALT_INV_Add0~29_sumout\,
	datae => \FD|ula|ALT_INV_Add0~17_sumout\,
	dataf => \FD|ula|ALT_INV_Equal5~12_combout\,
	combout => \FD|ula|Equal5~0_combout\);

\FD|ula|Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Equal5~1_combout\ = (!\FD|ula|Equal5~0_combout\ & ((!\FD|ula|temp_saida[30]~0_combout\) # ((!\FD|ula|Add0~9_sumout\ & !\FD|ula|Add0~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101000000000111010100000000011101010000000001110101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~9_sumout\,
	datac => \FD|ula|ALT_INV_Add0~13_sumout\,
	datad => \FD|ula|ALT_INV_Equal5~0_combout\,
	combout => \FD|ula|Equal5~1_combout\);

\FD|ula|Equal5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ula|Equal5~6_combout\ = ( \FD|ula|Equal5~3_combout\ & ( \FD|ula|Equal5~5_combout\ & ( (\FD|ula|Equal5~1_combout\ & ((!\FD|ula|temp_saida[30]~0_combout\) # ((!\FD|ula|Add0~1_sumout\ & !\FD|ula|Add0~5_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ula|ALT_INV_temp_saida[30]~0_combout\,
	datab => \FD|ula|ALT_INV_Add0~1_sumout\,
	datac => \FD|ula|ALT_INV_Add0~5_sumout\,
	datad => \FD|ula|ALT_INV_Equal5~1_combout\,
	datae => \FD|ula|ALT_INV_Equal5~3_combout\,
	dataf => \FD|ula|ALT_INV_Equal5~5_combout\,
	combout => \FD|ula|Equal5~6_combout\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

ww_saida_ula(0) <= \saida_ula[0]~output_o\;

ww_saida_ula(1) <= \saida_ula[1]~output_o\;

ww_saida_ula(2) <= \saida_ula[2]~output_o\;

ww_saida_ula(3) <= \saida_ula[3]~output_o\;

ww_saida_ula(4) <= \saida_ula[4]~output_o\;

ww_saida_ula(5) <= \saida_ula[5]~output_o\;

ww_saida_ula(6) <= \saida_ula[6]~output_o\;

ww_saida_ula(7) <= \saida_ula[7]~output_o\;

ww_saida_ula(8) <= \saida_ula[8]~output_o\;

ww_saida_ula(9) <= \saida_ula[9]~output_o\;

ww_saida_ula(10) <= \saida_ula[10]~output_o\;

ww_saida_ula(11) <= \saida_ula[11]~output_o\;

ww_saida_ula(12) <= \saida_ula[12]~output_o\;

ww_saida_ula(13) <= \saida_ula[13]~output_o\;

ww_saida_ula(14) <= \saida_ula[14]~output_o\;

ww_saida_ula(15) <= \saida_ula[15]~output_o\;

ww_saida_ula(16) <= \saida_ula[16]~output_o\;

ww_saida_ula(17) <= \saida_ula[17]~output_o\;

ww_saida_ula(18) <= \saida_ula[18]~output_o\;

ww_saida_ula(19) <= \saida_ula[19]~output_o\;

ww_saida_ula(20) <= \saida_ula[20]~output_o\;

ww_saida_ula(21) <= \saida_ula[21]~output_o\;

ww_saida_ula(22) <= \saida_ula[22]~output_o\;

ww_saida_ula(23) <= \saida_ula[23]~output_o\;

ww_saida_ula(24) <= \saida_ula[24]~output_o\;

ww_saida_ula(25) <= \saida_ula[25]~output_o\;

ww_saida_ula(26) <= \saida_ula[26]~output_o\;

ww_saida_ula(27) <= \saida_ula[27]~output_o\;

ww_saida_ula(28) <= \saida_ula[28]~output_o\;

ww_saida_ula(29) <= \saida_ula[29]~output_o\;

ww_saida_ula(30) <= \saida_ula[30]~output_o\;

ww_saida_ula(31) <= \saida_ula[31]~output_o\;

ww_saida_regA(0) <= \saida_regA[0]~output_o\;

ww_saida_regA(1) <= \saida_regA[1]~output_o\;

ww_saida_regA(2) <= \saida_regA[2]~output_o\;

ww_saida_regA(3) <= \saida_regA[3]~output_o\;

ww_saida_regA(4) <= \saida_regA[4]~output_o\;

ww_saida_regA(5) <= \saida_regA[5]~output_o\;

ww_saida_regA(6) <= \saida_regA[6]~output_o\;

ww_saida_regA(7) <= \saida_regA[7]~output_o\;

ww_saida_regA(8) <= \saida_regA[8]~output_o\;

ww_saida_regA(9) <= \saida_regA[9]~output_o\;

ww_saida_regA(10) <= \saida_regA[10]~output_o\;

ww_saida_regA(11) <= \saida_regA[11]~output_o\;

ww_saida_regA(12) <= \saida_regA[12]~output_o\;

ww_saida_regA(13) <= \saida_regA[13]~output_o\;

ww_saida_regA(14) <= \saida_regA[14]~output_o\;

ww_saida_regA(15) <= \saida_regA[15]~output_o\;

ww_saida_regA(16) <= \saida_regA[16]~output_o\;

ww_saida_regA(17) <= \saida_regA[17]~output_o\;

ww_saida_regA(18) <= \saida_regA[18]~output_o\;

ww_saida_regA(19) <= \saida_regA[19]~output_o\;

ww_saida_regA(20) <= \saida_regA[20]~output_o\;

ww_saida_regA(21) <= \saida_regA[21]~output_o\;

ww_saida_regA(22) <= \saida_regA[22]~output_o\;

ww_saida_regA(23) <= \saida_regA[23]~output_o\;

ww_saida_regA(24) <= \saida_regA[24]~output_o\;

ww_saida_regA(25) <= \saida_regA[25]~output_o\;

ww_saida_regA(26) <= \saida_regA[26]~output_o\;

ww_saida_regA(27) <= \saida_regA[27]~output_o\;

ww_saida_regA(28) <= \saida_regA[28]~output_o\;

ww_saida_regA(29) <= \saida_regA[29]~output_o\;

ww_saida_regA(30) <= \saida_regA[30]~output_o\;

ww_saida_regA(31) <= \saida_regA[31]~output_o\;

ww_saida_regB(0) <= \saida_regB[0]~output_o\;

ww_saida_regB(1) <= \saida_regB[1]~output_o\;

ww_saida_regB(2) <= \saida_regB[2]~output_o\;

ww_saida_regB(3) <= \saida_regB[3]~output_o\;

ww_saida_regB(4) <= \saida_regB[4]~output_o\;

ww_saida_regB(5) <= \saida_regB[5]~output_o\;

ww_saida_regB(6) <= \saida_regB[6]~output_o\;

ww_saida_regB(7) <= \saida_regB[7]~output_o\;

ww_saida_regB(8) <= \saida_regB[8]~output_o\;

ww_saida_regB(9) <= \saida_regB[9]~output_o\;

ww_saida_regB(10) <= \saida_regB[10]~output_o\;

ww_saida_regB(11) <= \saida_regB[11]~output_o\;

ww_saida_regB(12) <= \saida_regB[12]~output_o\;

ww_saida_regB(13) <= \saida_regB[13]~output_o\;

ww_saida_regB(14) <= \saida_regB[14]~output_o\;

ww_saida_regB(15) <= \saida_regB[15]~output_o\;

ww_saida_regB(16) <= \saida_regB[16]~output_o\;

ww_saida_regB(17) <= \saida_regB[17]~output_o\;

ww_saida_regB(18) <= \saida_regB[18]~output_o\;

ww_saida_regB(19) <= \saida_regB[19]~output_o\;

ww_saida_regB(20) <= \saida_regB[20]~output_o\;

ww_saida_regB(21) <= \saida_regB[21]~output_o\;

ww_saida_regB(22) <= \saida_regB[22]~output_o\;

ww_saida_regB(23) <= \saida_regB[23]~output_o\;

ww_saida_regB(24) <= \saida_regB[24]~output_o\;

ww_saida_regB(25) <= \saida_regB[25]~output_o\;

ww_saida_regB(26) <= \saida_regB[26]~output_o\;

ww_saida_regB(27) <= \saida_regB[27]~output_o\;

ww_saida_regB(28) <= \saida_regB[28]~output_o\;

ww_saida_regB(29) <= \saida_regB[29]~output_o\;

ww_saida_regB(30) <= \saida_regB[30]~output_o\;

ww_saida_regB(31) <= \saida_regB[31]~output_o\;

ww_funct_out(0) <= \funct_out[0]~output_o\;

ww_funct_out(1) <= \funct_out[1]~output_o\;

ww_funct_out(2) <= \funct_out[2]~output_o\;

ww_funct_out(3) <= \funct_out[3]~output_o\;

ww_funct_out(4) <= \funct_out[4]~output_o\;

ww_funct_out(5) <= \funct_out[5]~output_o\;

ww_op_code_out(0) <= \op_code_out[0]~output_o\;

ww_op_code_out(1) <= \op_code_out[1]~output_o\;

ww_op_code_out(2) <= \op_code_out[2]~output_o\;

ww_op_code_out(3) <= \op_code_out[3]~output_o\;

ww_op_code_out(4) <= \op_code_out[4]~output_o\;

ww_op_code_out(5) <= \op_code_out[5]~output_o\;

ww_saida_rom(0) <= \saida_rom[0]~output_o\;

ww_saida_rom(1) <= \saida_rom[1]~output_o\;

ww_saida_rom(2) <= \saida_rom[2]~output_o\;

ww_saida_rom(3) <= \saida_rom[3]~output_o\;

ww_saida_rom(4) <= \saida_rom[4]~output_o\;

ww_saida_rom(5) <= \saida_rom[5]~output_o\;

ww_saida_rom(6) <= \saida_rom[6]~output_o\;

ww_saida_rom(7) <= \saida_rom[7]~output_o\;

ww_saida_rom(8) <= \saida_rom[8]~output_o\;

ww_saida_rom(9) <= \saida_rom[9]~output_o\;

ww_saida_rom(10) <= \saida_rom[10]~output_o\;

ww_saida_rom(11) <= \saida_rom[11]~output_o\;

ww_saida_rom(12) <= \saida_rom[12]~output_o\;

ww_saida_rom(13) <= \saida_rom[13]~output_o\;

ww_saida_rom(14) <= \saida_rom[14]~output_o\;

ww_saida_rom(15) <= \saida_rom[15]~output_o\;

ww_saida_rom(16) <= \saida_rom[16]~output_o\;

ww_saida_rom(17) <= \saida_rom[17]~output_o\;

ww_saida_rom(18) <= \saida_rom[18]~output_o\;

ww_saida_rom(19) <= \saida_rom[19]~output_o\;

ww_saida_rom(20) <= \saida_rom[20]~output_o\;

ww_saida_rom(21) <= \saida_rom[21]~output_o\;

ww_saida_rom(22) <= \saida_rom[22]~output_o\;

ww_saida_rom(23) <= \saida_rom[23]~output_o\;

ww_saida_rom(24) <= \saida_rom[24]~output_o\;

ww_saida_rom(25) <= \saida_rom[25]~output_o\;

ww_saida_rom(26) <= \saida_rom[26]~output_o\;

ww_saida_rom(27) <= \saida_rom[27]~output_o\;

ww_saida_rom(28) <= \saida_rom[28]~output_o\;

ww_saida_rom(29) <= \saida_rom[29]~output_o\;

ww_saida_rom(30) <= \saida_rom[30]~output_o\;

ww_saida_rom(31) <= \saida_rom[31]~output_o\;

ww_saida_pc(0) <= \saida_pc[0]~output_o\;

ww_saida_pc(1) <= \saida_pc[1]~output_o\;

ww_saida_pc(2) <= \saida_pc[2]~output_o\;

ww_saida_pc(3) <= \saida_pc[3]~output_o\;

ww_saida_pc(4) <= \saida_pc[4]~output_o\;

ww_saida_pc(5) <= \saida_pc[5]~output_o\;

ww_saida_pc(6) <= \saida_pc[6]~output_o\;

ww_saida_pc(7) <= \saida_pc[7]~output_o\;

ww_saida_pc(8) <= \saida_pc[8]~output_o\;

ww_saida_pc(9) <= \saida_pc[9]~output_o\;

ww_saida_pc(10) <= \saida_pc[10]~output_o\;

ww_saida_pc(11) <= \saida_pc[11]~output_o\;

ww_saida_pc(12) <= \saida_pc[12]~output_o\;

ww_saida_pc(13) <= \saida_pc[13]~output_o\;

ww_saida_pc(14) <= \saida_pc[14]~output_o\;

ww_saida_pc(15) <= \saida_pc[15]~output_o\;

ww_saida_pc(16) <= \saida_pc[16]~output_o\;

ww_saida_pc(17) <= \saida_pc[17]~output_o\;

ww_saida_pc(18) <= \saida_pc[18]~output_o\;

ww_saida_pc(19) <= \saida_pc[19]~output_o\;

ww_saida_pc(20) <= \saida_pc[20]~output_o\;

ww_saida_pc(21) <= \saida_pc[21]~output_o\;

ww_saida_pc(22) <= \saida_pc[22]~output_o\;

ww_saida_pc(23) <= \saida_pc[23]~output_o\;

ww_saida_pc(24) <= \saida_pc[24]~output_o\;

ww_saida_pc(25) <= \saida_pc[25]~output_o\;

ww_saida_pc(26) <= \saida_pc[26]~output_o\;

ww_saida_pc(27) <= \saida_pc[27]~output_o\;

ww_saida_pc(28) <= \saida_pc[28]~output_o\;

ww_saida_pc(29) <= \saida_pc[29]~output_o\;

ww_saida_pc(30) <= \saida_pc[30]~output_o\;

ww_saida_pc(31) <= \saida_pc[31]~output_o\;

ww_flag_zero_out <= \flag_zero_out~output_o\;

ww_operacao_out(0) <= \operacao_out[0]~output_o\;

ww_operacao_out(1) <= \operacao_out[1]~output_o\;

ww_operacao_out(2) <= \operacao_out[2]~output_o\;
END structure;


