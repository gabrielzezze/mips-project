LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY fluxo_dados IS

    GENERIC (
        DATA_WIDTH      : NATURAL := 32;
        ADDR_WIDTH      : NATURAL := 32;
        TOTAL_WIDTH     : NATURAL := 32;
        REG_WIDTH       : NATURAL := 5;
        PALAVRA_CONTROLE_WIDTH: NATURAL := 7;
        IMEDIATO_WIDTH   : NATURAL := 16
    );
    PORT (
        -- IN
        clk             : IN std_logic;
        palavraControle : IN std_logic_vector((PALAVRA_CONTROLE_WIDTH - 1) DOWNTO 0);

        -- OUT
        opCode, funct          : OUT std_logic_vector(5 DOWNTO 0);
        saida_ula, saida_regA, saida_regB : OUT std_logic_vector((DATA_WIDTH - 1) DOWNTO 0);
        saida_rom, saida_pc   : OUT std_logic_vector((TOTAL_WIDTH - 1) DOWNTO 0)
    );

END ENTITY;

ARCHITECTURE main OF fluxo_dados IS

    SIGNAL Instrucao                  : std_logic_vector(TOTAL_WIDTH - 1 DOWNTO 0);
    SIGNAL PC_ROM                     : std_logic_vector(ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL SomaUm_MuxProxPC           : std_logic_vector(ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL MuxProxPC_PC               : std_logic_vector(ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL saidaULA                   : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL saidaRAM                   : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);

    SIGNAL saidaMux_Rt_Rd             : std_logic_vector((REG_WIDTH - 1) DOWNTO 0);
    SIGNAL entradaB_ula               : std_logic_vector((DATA_WIDTH - 1) DOWNTO 0);
    SIGNAL saida_mux_saidaULA_RAM     : std_logic_vector((DATA_WIDTH - 1) DOWNTO 0);
    
    -- Saidas Intermediarias
    SIGNAL saidaRegA, saidaRegB       : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL saida_somador              : std_logic_vector(ADDR_WIDTH - 1 DOWNTO 0);

    SIGNAL imediato_extendido         : std_logic_vector((DATA_WIDTH - 1) DOWNTO 0);
    SIGNAL flag_zero                  : std_logic;

    ALIAS opCodeLocal                 : std_logic_vector(5 DOWNTO 0) IS Instrucao(31 DOWNTO 26);
    ALIAS functLocal                  : std_logic_vector(5 DOWNTO 0) IS Instrucao(5 DOWNTO 0);

	ALIAS muxULA_imediato	          : std_logic IS palavraControle(9);
	ALIAS hab_escrita_RAM	          : std_logic IS palavraControle(8);
	ALIAS hab_leitura_RAM 	          : std_logic IS palavraControle(7);
    ALIAS muxRT_imediato	          : std_logic IS palavraControle(6);
	ALIAS BEQ                         : std_logic IS palavraControle(5);
    ALIAS muxRdRt			          : std_logic IS palavraControle(4);
    ALIAS escritaReg                  : std_logic IS palavraControle(3);
    ALIAS operacao                    : std_logic_vector(2 DOWNTO 0) IS palavraControle(2 DOWNTO 0);

    ALIAS RS                          : std_logic_vector(5 DOWNTO 0) IS Instrucao(25 DOWNTO 21);
    ALIAS RT                          : std_logic_vector(5 DOWNTO 0) IS Instrucao(20 DOWNTO 16);
    ALIAS RD                          : std_logic_vector(5 DOWNTO 0) IS Instrucao(15 DOWNTO 11);
    ALIAS imediato                    : std_logic_vector((IMEDIATO_WIDTH - 1) DOWNTO 0) IS Instrucao(15 DOWNTO 0);
    
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

    somaQuatro : ENTITY work.soma_constante
        GENERIC MAP(
            larguraDados => ADDR_WIDTH,
            constante    => INCREMENTO
        )
        PORT MAP(
            entrada => PC_ROM,
            saida   => SomaUm_MuxProxPC
        );

    soma_proxPC_imedShift2 : ENTITY work.somador
        GENERIC MAP(
            larguraDados => ADDR_WIDTH --32
        )
        PORT MAP(
            entradaA => SomaUm_MuxProxPC,
            entradaB => (imediato_extendido(29 DOWNTO 0) & "00"),
            saida   => saida_somador
        );

    extende_imediato : ENTITY work.extende_sinal
        GENERIC MAP(
            larguraDadoEntrada => IMEDIATO_WIDTH,
            larguraDadoSaida   => ADDR_WIDTH
        )
        PORT MAP(
            estendeSinal_IN    => imediato,
            estendeSinal_OUT   => imediato_extendido
        );
    
    mux_proxPC_soma_proxPCImedShift2 : ENTITY work.mux_generico_2x1
        GENERIC MAP(
            larguraDados => ADDR_WIDTH
        )
        PORT MAP(
            entradaA_MUX => SomaUm_MuxProxPC,
            entradaB_MUX => saida_somador,
            seletor_MUX  => (BEQ AND flag_zero),
            saida_MUX    => MuxProxPC_PC
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

    mux_rd_rt: ENTITY work.mux_generico_2x1
        GENERIC MAP(
            larguraDados => REG_WIDTH
        )
        PORT MAP(
            entradaA_MUX => RT,
            entradaB_MUX => RD,
            seletor_MUX  => muxRdRt,
            saida_MUX    => saidaMux_Rt_Rd
        );

    banco_registradores: ENTITY work.banco_registradores
        GENERIC MAP (
            larguraDados        => DATA_WIDTH,
            larguraEndBancoRegs => REG_WIDTH
        )
        PORT MAP (
            clk             => clk,
            enderecoA       => RS,
            enderecoB       => RT,
            enderecoC       => saidaMux_Rt_Rd,
            dadoEscritaC    => saida_mux_saidaULA_RAM,
            escreveC        => escritaReg,

            saidaA          => saidaRegA,
            saidaB          => saidaRegB
        );

    mux_saidaRegB_imedExt: ENTITY work.mux_generico_2x1
        GENERIC MAP(
            larguraDados => DATA_WIDTH
        )
        PORT MAP(
            entradaA_MUX => saidaRegB,
            entradaB_MUX => imediato_extendido,
            seletor_MUX  => muxRT_imediato,
            saida_MUX    => entradaB_ula
        );
    
    ula : ENTITY work.ula
        GENERIC MAP(
            larguraDados => DATA_WIDTH
        )
        PORT MAP(
            entradaA => saidaRegA,
            entradaB => entradaB_ula,
            saida    => saidaULA,
            seletor  => operacao,
            flag_zero => flag_zero
    );

    ram : ENTITY work.ram_mips
        GENERIC MAP(
            dataWidth => DATA_WIDTH,
            addrWidth => DATA_WIDTH,
            memoryAddrWidth => 6 
        )
        PORT MAP(
            clk      => clk,
            Endereco => saidaULA,
            Dado_in  => saidaRegB,
            Dado_out => saidaRAM,
            we       => hab_escrita_RAM
        );
    
    mux_saidaULA_RAM: ENTITY work.mux_generico_2x1
        GENERIC MAP(
            larguraDados => DATA_WIDTH
        )
        PORT MAP(
            entradaA_MUX => saidaULA,
            entradaB_MUX => saidaRAM,
            seletor_MUX  => muxULA_imediato,
            saida_MUX    => saida_mux_saidaULA_RAM
        );

    funct           <= functLocal;
    opCode          <= opCodeLocal;
    saida_ula       <= saidaULA;
    saida_regA      <= saidaRegA;
    saida_regB      <= saidaRegB;
    saida_rom       <= Instrucao;
    saida_pc        <= PC_ROM;

END ARCHITECTURE;