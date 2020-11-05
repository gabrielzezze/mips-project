
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mips_project IS

    GENERIC (
        -- Tamanho do valor imediato determinado na 
        -- etapa de design do processador.
        DATA_WIDTH : NATURAL := 32;

        -- Tamanho dos endereços ROM/RAM determinado na 
        -- etapa de design do processador.
        ADDR_WIDTH : NATURAL := 32;

        -- Tamanho das instrucoes completas determinado na 
        -- etapa de design do processador.
        TOTAL_WIDTH: NATURAL := 32;

        PALAVRA_CONTROLE_WIDTH: NATURAL := 10
    );

    PORT (
        -- SINAIS DE ENTRADA --
        -- Clock vindo da placa FPGA
        -- aproximadamente 50 MHz.
        CLOCK_50     : IN std_logic;

        -- Sinal das chaves da placa FPGA
        SW           : IN std_logic_vector(9 DOWNTO 0);
        -- Sinal dos Botões da placa FPGA
        KEY          : IN std_logic_vector(3 DOWNTO 0);
        -- Sinal do botão Reset da placa FPGA
        FPGA_RESET_N : IN std_logic;

        saida_ula, saida_regA, saida_regB : OUT std_logic_vector((DATA_WIDTH - 1) DOWNTO 0);
        funct_out, op_code_out                        : OUT std_logic_vector(5 DOWNTO 0);
        saida_rom, saida_pc   : OUT std_logic_vector((TOTAL_WIDTH - 1) DOWNTO 0)
    );
	 
END ENTITY;


ARCHITECTURE main OF mips_project IS

    SIGNAL opCode           : std_logic_vector(5 DOWNTO 0);
    SIGNAL funct            : std_logic_vector(5 DOWNTO 0);
    SIGNAL palavraControle  : std_logic_vector((PALAVRA_CONTROLE_WIDTH - 1) DOWNTO 0);
    SIGNAL saida_ula_temp, saida_regA_temp, saida_regB_temp : std_logic_vector((DATA_WIDTH - 1) DOWNTO 0);
    SIGNAL saida_rom_temp, saida_pc_temp   : std_logic_vector((TOTAL_WIDTH - 1) DOWNTO 0);

BEGIN
    -- Instância do componente unidade_controle
    unidade_controle : ENTITY work.unidade_controle
        GENERIC MAP (
            PALAVRA_CONTROLE_WIDTH => PALAVRA_CONTROLE_WIDTH
        )
        PORT MAP(
            clk => CLOCK_50,
            opCode => opCode,
            funct => funct,
            palavraControle => palavraControle
        );

        -- Instância do componente resposável pelo fluxo de dados .   
    FD: ENTITY work.fluxo_dados
            GENERIC MAP(
                DATA_WIDTH => DATA_WIDTH,
                ADDR_WIDTH => ADDR_WIDTH,
                TOTAL_WIDTH => TOTAL_WIDTH
            )
            PORT MAP(
                clk => CLOCK_50,
                palavraControle => palavraControle,
                opCode => opCode,
                saida_ula => saida_ula_temp, 
                saida_regA => saida_regA_temp, 
                saida_regB => saida_regB_temp,
                saida_rom => saida_rom_temp,
                saida_pc => saida_pc_temp,
                funct    => funct
            );


    funct_out <= funct;
    saida_ula <= saida_ula_temp; 
    saida_regA <= saida_regA_temp;
    saida_regB <= saida_regB_temp;
    op_code_out <= opCode;
    saida_rom <= saida_rom_temp;
    saida_pc <= saida_pc_temp;
    
END ARCHITECTURE;