LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY unidade_controle IS
    GENERIC (
        PALAVRA_CONTROLE_WIDTH: NATURAL := 10
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
		palavraControle : OUT std_logic_vector((PALAVRA_CONTROLE_WIDTH - 1) DOWNTO 0)
    );
	 
END ENTITY;


ARCHITECTURE main OF unidade_controle IS

	-- ALIASES --
	-- Usados para facilitar a montagem da palavra controle. --
	ALIAS muxProxPC            : std_logic IS palavraControle(10);
	ALIAS muxULA_imediato	   : std_logic IS palavraControle(9);
	ALIAS hab_escrita_RAM	   : std_logic IS palavraControle(8);
	ALIAS hab_leitura_RAM 	   : std_logic IS palavraControle(7);
	ALIAS muxRT_imediato	   : std_logic IS palavraControle(6);
	ALIAS BEQ                  : std_logic IS palavraControle(5);
	ALIAS muxRdRt			   : std_logic IS palavraControle(4);
    ALIAS escritaReg           : std_logic IS palavraControle(3);
    ALIAS operacao             : std_logic_vector(2 DOWNTO 0) IS palavraControle(2 DOWNTO 0);
	

	-- CONSTANTS --
	-- Utilizados para melhor semântica em blocos de lógica.

	-- Opcode no caso de uma instrucao R
	CONSTANT op_code_r 	   : std_logic_vector(5 DOWNTO 0) := "000000";
	CONSTANT op_code_beq   : std_logic_vector(5 DOWNTO 0) := "000100";
	CONSTANT op_code_load  : STD_LOGIC_VECTOR(5 DOWNTO 0) := "100011";
    CONSTANT op_code_store : STD_LOGIC_VECTOR(5 DOWNTO 0) := "101011";
	CONSTANT op_code_jump : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000010";

	CONSTANT funct_add     : std_logic_vector(5 DOWNTO 0) := "100000";
	CONSTANT funct_sub     : std_logic_vector(5 DOWNTO 0) := "100010";
	CONSTANT funct_and     : std_logic_vector(5 DOWNTO 0) := "100100";
	CONSTANT funct_or     : std_logic_vector(5 DOWNTO 0) := "100101";
	CONSTANT funct_slt     : std_logic_vector(5 DOWNTO 0) := "101010";

	CONSTANT op_and     : std_logic_vector(2 DOWNTO 0) := "000";
	CONSTANT op_or      : std_logic_vector(2 DOWNTO 0) := "001";
	CONSTANT op_add     : std_logic_vector(2 DOWNTO 0) := "010";
	CONSTANT op_sub     : std_logic_vector(2 DOWNTO 0) := "110";
	CONSTANT op_slt     : std_logic_vector(2 DOWNTO 0) := "111";	
	

	-- SINAIS --
	-- Pontos de controle concatenados (palavra controle).
	SIGNAL instrucao         : std_logic;
	
	-- ALIAS --
	-- Usados para facilitar a semantica dos blocos de lógica.
    SIGNAL inst_r      	    : std_logic;
	SIGNAL inst_i      	    : std_logic;
	 
BEGIN

	inst_r <= '1' WHEN (opCode = op_code_r) ELSE '0';
	inst_i <= '1' WHEN (opCode = op_code_load OR opCode = op_code_store OR opCode = op_code_beq) ELSE '0';

	-- WITH opCode SELECT instrucao 	<= '1' WHEN op_code_r, 		'0' WHEN OTHERS;
	BEQ <= '1' WHEN (opCode = op_code_beq) ELSE	'0';

	escritaReg  <=  '1' WHEN ((inst_r = '1') OR (opcode = op_code_load)) ELSE '0';
	muxRdRt     <=  '1' WHEN NOT inst_i ELSE '0';
	muxRT_imediato <= (inst_i AND NOT(BEQ));
	muxULA_imediato <= '1' WHEN (opCode = op_code_load) ELSE '0';
	hab_escrita_RAM <= '1' WHEN (opcode = op_code_store) ELSE '0';
	hab_leitura_RAM <= '1' WHEN (opcode = op_code_load) ELSE '0';

	muxProxPC <= '1' WHEN (opCode = op_code_jump) ELSE '0';

	-- Logica a qual determina a operação da ULA presente na palavra controle
	-- dependendo do opcode recebido.
    operacao <= op_add WHEN ((opCode = op_code_r AND funct = funct_add) OR opCode = op_code_load OR opCode = op_code_store) ELSE 
				op_sub WHEN ((opCode = op_code_r AND funct = funct_sub) OR opCode = op_code_beq)  ELSE
				op_and WHEN ((opCode = op_code_r AND funct = funct_and)) ELSE
				op_or WHEN ((opCode = op_code_r AND funct = funct_or)) ELSE
				op_slt WHEN ((opCode = op_code_r AND funct = funct_slt))
				ELSE (OTHERS => 'Z');
	 
END ARCHITECTURE;