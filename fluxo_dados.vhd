LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY fluxo_dados IS

    GENERIC (
        DATA_WIDTH      : NATURAL := 32;
        ADDR_WIDTH      : NATURAL := 32;
        TOTAL_WIDTH     : NATURAL := 32;
        REG_WIDTH       : NATURAL := 5;
        PALAVRA_CONTROLE_WIDTH: NATURAL := 7
    );
    PORT (
        -- IN
        clk             : IN std_logic;
        palavraControle : IN std_logic_vector((PALAVRA_CONTROLE_WIDTH - 1) DOWNTO 0);
        flag_zero_out   : OUT std_logic;

        -- OUT
        opCode          : OUT std_logic_vector(5 DOWNTO 0)
    );

END ENTITY;

ARCHITECTURE main OF fluxo_dados IS

    SIGNAL Instrucao                  : std_logic_vector(TOTAL_WIDTH - 1 DOWNTO 0);
    SIGNAL PC_ROM                     : std_logic_vector(ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL SomaUm_MuxProxPC           : std_logic_vector(ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL MuxProxPC_PC               : std_logic_vector(ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL saidaULA                   : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
    
    -- Saidas Intermediarias
    SIGNAL saidaRegA, saidaRegB       : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);

    ALIAS opCodeLocal                 : std_logic_vector(5 DOWNTO 0) IS Instrucao(31 DOWNTO 26);

    ALIAS escritaReg                  : std_logic IS palavraControle(6);
    ALIAS operacao                    : std_logic_vector(5 DOWNTO 0) IS palavraControle(5 DOWNTO 0);
    
    CONSTANT INCREMENTO : NATURAL := 4;
BEGIN

    PC : ENTITY work.registrador_generico
        GENERIC MAP(
            larguraDados => ADDR_WIDTH
        )
        PORT MAP(
            DIN    => MuxProxPC_PC,
            DOUT   => PC_ROM,
            ENABLE => '1',
            CLK    => clk,
            RST    => '0'
        );

    MuxProxPC : ENTITY work.mux_generico_2x1
        GENERIC MAP(
            larguraDados => ADDR_WIDTH
        )
        PORT MAP(
            entradaA_MUX => SomaUm_MuxProxPC,
            entradaB_MUX => (OTHERS => '0'),
            seletor_MUX  => '0',
            saida_MUX    => MuxProxPC_PC
        );
    
    somaUm : ENTITY work.soma_constante
        GENERIC MAP(
            larguraDados => ADDR_WIDTH,
            constante    => INCREMENTO
        )
        PORT MAP(
            entrada => PC_ROM,
            saida   => SomaUm_MuxProxPC
        );

    ROM : ENTITY work.rom_mips
        GENERIC MAP(
            dataWidth => TOTAL_WIDTH,
            addrWidth => ADDR_WIDTH,
            memoryAddrWidth => 6
        )
        PORT MAP(
            clk => clk,
            Endereco => PC_ROM,
            Dado     => Instrucao
        );

    banco_registradores: ENTITY work.banco_registradores
        GENERIC MAP (
            larguraDados        => DATA_WIDTH,
            larguraEndBancoRegs => REG_WIDTH
        )
        PORT MAP (
            clk             => clk,
            enderecoA       => Instrucao(25 DOWNTO 21),
            enderecoB       => Instrucao(20 DOWNTO 16),
            enderecoC       => Instrucao(15 DOWNTO 11),
            dadoEscritaC    => saidaULA,
            escreveC        => escritaReg,

            saidaA          => saidaRegA,
            saidaB          => saidaRegB
        );
    
    ula : ENTITY work.ula
        GENERIC MAP(
            larguraDados => DATA_WIDTH
        )
        PORT MAP(
            entradaA => saidaRegA,
            entradaB => saidaRegB,
            saida    => saidaULA,
            seletor  => operacao
    );

    opCode          <= opCodeLocal;

END ARCHITECTURE;