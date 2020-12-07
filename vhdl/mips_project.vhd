
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

        -- Tamanho da palavra de controle derivada 
        -- da unidade de controle
        PALAVRA_CONTROLE_WIDTH: NATURAL := 15;

        -- Tamanho da parte chamade de "funct" da instrução
        -- caso seja uma instrução do tipo R.
        FUNCT_WIDTH      : NATURAL := 6;

        -- Tamanho do seletor passado para a ULA
        -- o qual determina qual operação sera feita
        ULA_OP_WIDTH     : NATURAL := 3;
        SELETOR_ULA_WIDTH : NATURAL := 3
    );

    PORT (
        -- SINAIS DE ENTRADA --

        -- Clock vindo da placa FPGA
        -- aproximadamente 50 MHz.
        CLOCK_50     : IN std_logic;

        -- Displays hexadecimais derivados do hardware
        -- mapeado atraves do arquivo .qsf
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out std_logic_vector(6 downto 0);

        -- Sinal das chaves da placa FPGA
        -- mapeado atraves do arquivo .qsf
        SW           : IN std_logic_vector(9 DOWNTO 0);

        -- Sinal dos Botões da placa FPGA
        -- mapeado atraves do arquivo .qsf
        KEY          : IN std_logic_vector(3 DOWNTO 0);

        -- Sinal do botão Reset da placa FPGA
        -- mapeado atraves do arquivo .qsf e tambem usado para simular clock.
        FPGA_RESET_N : IN std_logic
    );
	 
END ENTITY;


ARCHITECTURE main OF mips_project IS

    -- Sinais intermediarios --
    SIGNAL opCode           : std_logic_vector(5 DOWNTO 0);
    SIGNAL funct            : std_logic_vector(5 DOWNTO 0);
    SIGNAL palavraControle  : std_logic_vector((PALAVRA_CONTROLE_WIDTH - 1) DOWNTO 0);
    SIGNAL saida_ula_temp, saida_regA_temp, saida_regB_temp, saida_escrita_banco_reg : std_logic_vector((DATA_WIDTH - 1) DOWNTO 0);
    SIGNAL saida_rom_temp, saida_pc_temp   : std_logic_vector((TOTAL_WIDTH - 1) DOWNTO 0);
    SIGNAL flag_zero_temp : std_logic;
    SIGNAL ula_out_op : std_logic_vector((SELETOR_ULA_WIDTH - 1) DOWNTO 0);
    SIGNAL valor :std_logic_vector((DATA_WIDTH - 1) DOWNTO 0);
    SIGNAL clk              : std_logic;

    SIGNAL signal_hex0 : std_logic_vector(6 DOWNTO 0);
    SIGNAL signal_hex1 : std_logic_vector(6 DOWNTO 0);
    SIGNAL signal_hex2 : std_logic_vector(6 DOWNTO 0);
    SIGNAL signal_hex3 : std_logic_vector(6 DOWNTO 0);
    SIGNAL signal_hex4 : std_logic_vector(6 DOWNTO 0);
    SIGNAL signal_hex5 : std_logic_vector(6 DOWNTO 0);


BEGIN

    -- Detector de borda de subida, o qual a partir do sinal do botao reset do hardware
    -- gera um clock quando este é pressionado.
    detector_sub_0 : ENTITY work.edge_detector(borda_subida)
    PORT MAP(
        clk     => CLOCK_50,
        entrada => (NOT FPGA_RESET_N),
        saida   => clk
    );

    -- Instância do componente unidade_controle
    -- Usado para decodificar a o opcode + funct em pontos de controles (usados no fluxo de dados)
    -- o qual é retornado concatenado atravé do sinal palavraControle
    unidade_controle : ENTITY work.unidade_controle
        GENERIC MAP (
            PALAVRA_CONTROLE_WIDTH => PALAVRA_CONTROLE_WIDTH,
            ULA_OP_WIDTH => ULA_OP_WIDTH
        )
        PORT MAP(
            clk => clk,
            opCode => opCode,
            funct => funct,
            palavraControle => palavraControle
        );

    -- Instância do componente resposável pelo fluxo de dados.
    -- A partir da palavraControle gerada pela unidade de controle é capaz de
    -- conectar os components do processador e passar os sinais devidos para a execução da instrução.   
    FD: ENTITY work.fluxo_dados
            GENERIC MAP(
                DATA_WIDTH => DATA_WIDTH,
                ADDR_WIDTH => ADDR_WIDTH,
                TOTAL_WIDTH => TOTAL_WIDTH,
                PALAVRA_CONTROLE_WIDTH => PALAVRA_CONTROLE_WIDTH,
                FUNCT_WIDTH => FUNCT_WIDTH,
                ULA_OP_WIDTH => ULA_OP_WIDTH,
                SELETOR_ULA_WIDTH => SELETOR_ULA_WIDTH
            )
            PORT MAP(
                clk => clk,
                palavraControle => palavraControle,
                opCode => opCode,
                saida_ula => saida_ula_temp, 
                saida_regA => saida_regA_temp, 
                saida_regB => saida_regB_temp,
                saida_rom => saida_rom_temp,
                saida_pc => saida_pc_temp,
                funct    => funct,
                flag_zero_out => flag_zero_temp,
                ula_out_op    => ula_out_op,
                saida_escrita_banco_reg => saida_escrita_banco_reg
            );


    -- Valor que sera mostrado nos displays hexadecimais
    -- dependendo das configurações das chaves é possivel mostrar:
    -- saida do program counter, saida da ULA e dado que será escrito no banco de registradores.
    valor   <=  saida_pc_temp              WHEN (NOT SW(0) AND NOT SW(1))  ELSE
                saida_ula_temp             WHEN (SW(0) AND NOT SW(1))      ELSE
                saida_escrita_banco_reg;

    -- Converte os bits 3 a 0 do valor que sera mostrado nos displayes hexadecimais
    -- para um sinal de 7 bits que corresponde a representação em hexadecimal destes 4 bits.
    conversorHex0 : ENTITY work.conversorHex7Seg
        PORT MAP(
            dadoHex   => valor(3 DOWNTO 0),
            apaga     => '0',
            negativo  => '0',
            overFlow  => '0',
            saida7seg => signal_hex0);

    -- Converte os bits 7 a 4 do valor que sera mostrado nos displayes hexadecimais
    -- para um sinal de 7 bits que corresponde a representação em hexadecimal destes 4 bits.
    conversorHex1 : ENTITY work.conversorHex7Seg
        PORT MAP(
            dadoHex   => valor(7 DOWNTO 4),
            apaga     => '0',
            negativo  => '0',
            overFlow  => '0',
            saida7seg => signal_hex1);
    
    -- Converte os bits 11 a 8 do valor que sera mostrado nos displayes hexadecimais
    -- para um sinal de 7 bits que corresponde a representação em hexadecimal destes 4 bits.
    conversorHex2 : ENTITY work.conversorHex7Seg
        PORT MAP(
            dadoHex   => valor(11 DOWNTO 8),
            apaga     => '0',
            negativo  => '0',
            overFlow  => '0',
            saida7seg => signal_hex2);
    
    -- Converte os bits 15 a 12 do valor que sera mostrado nos displayes hexadecimais
    -- para um sinal de 7 bits que corresponde a representação em hexadecimal destes 4 bits.
    conversorHex3 : ENTITY work.conversorHex7Seg
        PORT MAP(
            dadoHex   => valor(15 DOWNTO 12),
            apaga     => '0',
            negativo  => '0',
            overFlow  => '0',
            saida7seg => signal_hex3);
    
    -- Converte os bits 19 a 16 do valor que sera mostrado nos displayes hexadecimais
    -- para um sinal de 7 bits que corresponde a representação em hexadecimal destes 4 bits.
    conversorHex4 : ENTITY work.conversorHex7Seg
        PORT MAP(
            dadoHex   => valor(19 DOWNTO 16),
            apaga     => '0',
            negativo  => '0',
            overFlow  => '0',
            saida7seg => signal_hex4);
    
    -- Converte os bits 23 a 20 do valor que sera mostrado nos displayes hexadecimais
    -- para um sinal de 7 bits que corresponde a representação em hexadecimal destes 4 bits.
    conversorHex5 : ENTITY work.conversorHex7Seg
        PORT MAP(
            dadoHex   => valor(23 DOWNTO 20),
            apaga     => '0',
            negativo  => '0',
            overFlow  => '0',
            saida7seg => signal_hex5);

    -- Usa os sinais de 7 bits convertidos pelos conversores para
    -- mostrar op valor completo nos respectivos displays.
    HEX0 <= signal_hex0;
    HEX1 <= signal_hex1;
    HEX2 <= signal_hex2;
    HEX3 <= signal_hex3;
    HEX4 <= signal_hex4;
    HEX5 <= signal_hex5;
    
END ARCHITECTURE;