LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY unidade_controle IS
    GENERIC (
        PALAVRA_CONTROLE_WIDTH: NATURAL := 7
    );

    PORT (
		-- SINAIS DE ENTRADA --
		-- Clock vindo da placa FPGA
		-- aproximadamente 50 MHz.
		clk    	: IN std_logic;
		
		-- Primeiros 4 bits da instrução vindo do fluxo de dados
		-- recebido aqui para auxiliar na criação da palavra controle.
		opCode 	: IN std_logic_vector(5 DOWNTO 0);

        funct   : IN std_logic_vector(5 DOWNTO 0);
		
		-- SINAIS DE SAÍDA --
		-- Pontos de controle concatenados, determinado aqui a partir do opcode e valor da flag zero.
		palavraControle : OUT std_logic_vector(6 DOWNTO 0)
    );
	 
END ENTITY;


ARCHITECTURE main OF unidade_controle IS

	-- ALIASES --
	-- Usados para facilitar a montagem da palavra controle. --
    ALIAS escritaReg           : std_logic IS palavraControle(6);
    ALIAS operacao             : std_logic_vector(5 DOWNTO 0) IS palavraControle(5 DOWNTO 0);
	

	-- CONSTANTS --
	-- Utilizados para melhor semântica em blocos de lógica.

	-- Opcode no caso de uma instrucao R
	CONSTANT op_code_r 		: std_logic_vector(5 DOWNTO 0) := "000000";
	
	

	-- SINAIS --
	-- Pontos de controle concatenados (palavra controle).
	SIGNAL instrucao         : std_logic;
	
	-- ALIAS --
	-- Usados para facilitar a semantica dos blocos de lógica.
    ALIAS inst_r      	    : std_logic IS instrucao;
	 
BEGIN

    WITH opCode SELECT instrucao <= '1' WHEN op_code_r, '0' WHEN OTHERS;

	escritaReg  <=  inst_r;

	-- Logica a qual determina a operação da ULA presente na palavra controle
	-- dependendo do opcode recebido.
    WITH opCode SELECT operacao <= funct WHEN op_code_r, (OTHERS => 'Z') WHEN OTHERS;
	 
END ARCHITECTURE;