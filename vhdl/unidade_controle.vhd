LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY unidade_controle IS
    GENERIC (
		-- Tamanho da palavra de controle derivada 
        -- da unidade de controle
		PALAVRA_CONTROLE_WIDTH: NATURAL := 15;
		
		-- Tamanho do seletor passado para a ULA
        -- o qual determina qual operação sera feita
		ULA_OP_WIDTH     : NATURAL := 3
    );

    PORT (
		-- SINAIS DE ENTRADA --
		-- Clock vindo da placa FPGA
		-- aproximadamente 50 MHz.
		clk    	: IN std_logic;
		
		-- Primeiros 6 bits da instrução vindo do fluxo de dados
		-- recebido aqui para auxiliar na criação da palavra controle.
		opCode 	: IN std_logic_vector(5 DOWNTO 0);

		-- Ultimos 6 bits da instrução caso seja uma instrução tipo R
		-- ajuda na determinação da operaçãoo a ser realizada pela ULA.
        funct   : IN std_logic_vector(5 DOWNTO 0);
		
		-- SINAIS DE SAÍDA --
		-- Pontos de controle concatenados, determinado aqui a 
		-- partir do opcode e funct.
		palavraControle : OUT std_logic_vector((PALAVRA_CONTROLE_WIDTH - 1) DOWNTO 0)
    );
	 
END ENTITY;


ARCHITECTURE main OF unidade_controle IS

	-- ALIASES --
	-- Usados para facilitar a montagem da palavra controle. --
	ALIAS is_jal_op            : std_logic IS palavraControle(14);
	ALIAS muxRAM_ImediatoUI    : std_logic IS palavraControle(13);
	ALIAS BNE                  : std_logic IS palavraControle(12);
	ALIAS muxProxPC            : std_logic_vector(1 downto 0) IS palavraControle(11 downto 10);
	ALIAS muxULA_imediato	   : std_logic IS palavraControle(9);
	ALIAS hab_escrita_RAM	   : std_logic IS palavraControle(8);
	ALIAS hab_leitura_RAM 	   : std_logic IS palavraControle(7);
	ALIAS muxRT_imediato	   : std_logic IS palavraControle(6);
	ALIAS BEQ                  : std_logic IS palavraControle(5);
	ALIAS muxRdRt			   : std_logic IS palavraControle(4);
    ALIAS escritaReg           : std_logic IS palavraControle(3);
    ALIAS uc_ula_op            : std_logic_vector((ULA_OP_WIDTH - 1) DOWNTO 0) IS palavraControle(2 DOWNTO 0);
	

	-- CONSTANTS --
	-- Utilizados para melhor semântica em blocos de lógica.

	-- Opcodes para cada instrução suportada.
	CONSTANT op_code_r 	   : std_logic_vector(5 DOWNTO 0) := "000000";
	CONSTANT op_code_beq   : std_logic_vector(5 DOWNTO 0) := "000100";
	CONSTANT op_code_load  : STD_LOGIC_VECTOR(5 DOWNTO 0) := "100011";
    CONSTANT op_code_store : STD_LOGIC_VECTOR(5 DOWNTO 0) := "101011";
	CONSTANT op_code_jump : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000010";
	CONSTANT op_code_addi : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001000";
	CONSTANT op_code_andi : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001100";
	CONSTANT op_code_ori : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001101";
	CONSTANT op_code_slti : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001010";
	CONSTANT op_code_bne : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000101";
	CONSTANT op_code_lui : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001111";
	CONSTANT op_code_jal : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000011";

	-- Seletores da ULA para cada operação suportada.
    CONSTANT ula_op_add             : std_logic_vector((ULA_OP_WIDTH - 1) DOWNTO 0) := "000";
    CONSTANT ula_op_sub             : std_logic_vector((ULA_OP_WIDTH - 1) DOWNTO 0) := "001";
    CONSTANT ula_op_funct           : std_logic_vector((ULA_OP_WIDTH - 1) DOWNTO 0) := "010";
    CONSTANT ula_op_and           : std_logic_vector((ULA_OP_WIDTH - 1) DOWNTO 0) := "011";
    CONSTANT ula_op_or           : std_logic_vector((ULA_OP_WIDTH - 1) DOWNTO 0) := "100";
	CONSTANT ula_op_slt           : std_logic_vector((ULA_OP_WIDTH - 1) DOWNTO 0) := "101";

	-- Funct para casos de instrução JR
	CONSTANT jr_funct              : std_logic_vector(5 DOWNTO 0) := "001000";

	-- Sinais para intermediar as operaçōes
	-- Determina se é uma instrução do tipo R.
	SIGNAL inst_r      	    : std_logic;

	-- Determina se é uma instrção do tipo I.
	SIGNAL inst_i      	    : std_logic;
	 
BEGIN

	-- Logica para determinar se é uma instrução do tipo R.
	inst_r <= '1' WHEN (opCode = op_code_r) ELSE '0';

	-- Logica para determinar se é uma instrução do tipo I.
	inst_i <= '1' WHEN 
					(opCode = op_code_load OR 
					opCode = op_code_store OR 
					opCode = op_code_beq OR 
					opCode = op_code_addi OR
					opCode = op_code_andi OR
					opCode = op_code_ori OR
					opCode = op_code_slti OR
					opCode = op_code_bne OR
					opCode = op_code_lui)
					ELSE '0';

	-- Acionamento do ponto de controle BEQ caso a instrução
	-- possua o opcode correspondente.
	BEQ <= '1' WHEN (opCode = op_code_beq) ELSE	'0';

	-- Acionamento do ponto de controle BNE caso a instrução
	-- possua o opcode correspondente.
	BNE <= '1' WHEN (opCode = op_code_bne) ELSE	'0';

	-- Habilita a escrita ao banco de registradores
	-- caso seja uma instrução que possua opcodes que requerem esta escrita. 
	escritaReg  <=  '1' WHEN (inst_r = '1' OR 
							 opcode = op_code_load OR 
							 opCode = op_code_addi OR
							 opCode = op_code_andi OR
							 opCode = op_code_ori OR
							 opCode = op_code_slti OR
							 opCode = op_code_jal) 
							ELSE '0';
	
	-- Seletor do mux o qual dita se o endereço do registrador que será escrito
	-- (caso o habilitação de escrita esteja acionada) RD (Instrução 15-11) ou RT (Instrução 20-16).
	-- Já que apenas a instrução do tipo R possui o registrador RD.
	muxRdRt     <=  '1' WHEN NOT inst_i ELSE '0';

	-- Seletor do mux o qual determina se a segunda entrada da ULA será o segundo dado
	-- lido pelo banco de registradores ou o valor imediato.
	muxRT_imediato <= (inst_i AND NOT(BEQ) AND NOT(BNE));

	-- Seletor do mux o qual dita se o dado que sera escrito na memória é a saida
	-- da ULA ou o valor imediato.
	muxULA_imediato <= '1' WHEN (opCode = op_code_load) ELSE '0';

	-- Sinal que habilita a escrita na memória ou não.
	-- Apenas em casos de "Store"
	hab_escrita_RAM <= '1' WHEN (opcode = op_code_store) ELSE '0';

	-- Sinal que habilita a leitura da memória.
	-- Apenas em casos de "Load".
	hab_leitura_RAM <= '1' WHEN (opcode = op_code_load) ELSE '0';

	-- Seletor do mux o qual dita se o dado escrito no banco de registradores
	-- será o dado lido na memória ou o imediato.
	muxRAM_ImediatoUI <= '1' WHEN (opcode = op_code_lui) ELSE '0';

	-- Seletor do mux o qual determina se algum jump deve ocorrer
	-- ????????????????????????????
	muxProxPC <= "01" WHEN (opCode = op_code_jump OR opCode = op_code_jal) else
				 "10" WHEN (opCode = op_code_r AND funct = jr_funct)
				  ELSE "00";
	
	-- Sinal o qual representa se o opcode é da instrução JAL.
	is_jal_op <= '1' WHEN (opCode = op_code_jal) ELSE '0';

	-- Opcode passado para a unidade de controle da ULA, o qual
	-- será usado junto com o funct (na unidade de controle da ULA) 
	--para determinar a operação que será feita na ULA. 
	uc_ula_op <= ula_op_funct WHEN (opCode = op_code_r) ELSE 
				 ula_op_add WHEN (opCode = op_code_load OR opCode = op_code_store OR opCode = op_code_addi) ELSE 
				 ula_op_sub WHEN (opCode = op_code_beq OR opCode = op_code_bne) else
				 ula_op_and WHEN (opCode = op_code_andi) else
				 ula_op_or WHEN (opCode = op_code_ori) else
				 ula_op_slt WHEN (opCode = op_code_slti) else
				 (OTHERS => '0');
	
	
END ARCHITECTURE;