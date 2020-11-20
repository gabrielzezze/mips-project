LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY unidade_controle_ula IS
    GENERIC (
        FUNCT_WIDTH: NATURAL := 6;
        ULA_OP_WIDTH: NATURAL := 3;
        SELETOR_ULA_WIDTH : NATURAL := 3
    );

    PORT (
		uc_ula_op 	: IN std_logic_vector((ULA_OP_WIDTH - 1) DOWNTO 0);
        funct   : IN std_logic_vector((FUNCT_WIDTH - 1) DOWNTO 0);
		
		-- SINAIS DE SAÍDA --
		seletor_ula : OUT std_logic_vector((SELETOR_ULA_WIDTH - 1) DOWNTO 0)
    );
	 
END ENTITY;


ARCHITECTURE main OF unidade_controle_ula IS

	-- CONSTANTS --
	-- Utilizados para melhor semântica em blocos de lógica.
    CONSTANT ula_op_add             : std_logic_vector((ULA_OP_WIDTH - 1) DOWNTO 0) := "000";
    CONSTANT ula_op_sub             : std_logic_vector((ULA_OP_WIDTH - 1) DOWNTO 0) := "001";
    CONSTANT ula_op_funct           : std_logic_vector((ULA_OP_WIDTH - 1) DOWNTO 0) := "010";
    CONSTANT ula_op_and           : std_logic_vector((ULA_OP_WIDTH - 1) DOWNTO 0) := "011";
    CONSTANT ula_op_or           : std_logic_vector((ULA_OP_WIDTH - 1) DOWNTO 0) := "100";
    CONSTANT ula_op_slt           : std_logic_vector((ULA_OP_WIDTH - 1) DOWNTO 0) := "101";


    CONSTANT funct_add      : std_logic_vector(5 DOWNTO 0) := "100000";
	CONSTANT funct_sub      : std_logic_vector(5 DOWNTO 0) := "100010";
	CONSTANT funct_and      : std_logic_vector(5 DOWNTO 0) := "100100";
	CONSTANT funct_or       : std_logic_vector(5 DOWNTO 0) := "100101";
	CONSTANT funct_slt      : std_logic_vector(5 DOWNTO 0) := "101010";
    
    -- Seletor Constants
    CONSTANT seletor_ula_and            : std_logic_vector((SELETOR_ULA_WIDTH - 1) DOWNTO 0) := "000";
    CONSTANT seletor_ula_or             : std_logic_vector((SELETOR_ULA_WIDTH - 1) DOWNTO 0) := "001";
    CONSTANT seletor_ula_add            : std_logic_vector((SELETOR_ULA_WIDTH - 1) DOWNTO 0) := "010";
    CONSTANT seletor_ula_sub            : std_logic_vector((SELETOR_ULA_WIDTH - 1) DOWNTO 0) := "110";
    CONSTANT seletor_ula_slt            : std_logic_vector((SELETOR_ULA_WIDTH - 1) DOWNTO 0) := "111";

    -- SIGNALS
    SIGNAL temp_seletor_ula             : std_logic_vector((SELETOR_ULA_WIDTH - 1) DOWNTO 0);
    SIGNAL seletor_funct_ula            : std_logic_vector((SELETOR_ULA_WIDTH - 1) DOWNTO 0);
	 
BEGIN

    seletor_funct_ula   <=  seletor_ula_add WHEN (funct = funct_add) ELSE
                            seletor_ula_sub WHEN (funct = funct_sub) ELSE
                            seletor_ula_and WHEN (funct = funct_and) ELSE
                            seletor_ula_or  WHEN (funct = funct_or)  ELSE
                            seletor_ula_slt WHEN (funct = funct_slt) ELSE
                            (OTHERS => '0');

	temp_seletor_ula    <=  seletor_ula_add WHEN (uc_ula_op = ula_op_add) ELSE
                            seletor_ula_sub WHEN (uc_ula_op = ula_op_sub) ELSE
                            seletor_ula_and WHEN (uc_ula_op = ula_op_and) ELSE
                            seletor_ula_or WHEN (uc_ula_op = ula_op_or) ELSE
                            seletor_ula_slt WHEN (uc_ula_op = ula_op_slt) ELSE
                            seletor_funct_ula WHEN (uc_ula_op = ula_op_funct) ELSE
                            (OTHERS => '0');

    seletor_ula <= temp_seletor_ula;
    
END ARCHITECTURE;