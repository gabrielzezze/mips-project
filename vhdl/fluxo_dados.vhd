LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY fluxo_dados IS

    GENERIC (
        DATA_WIDTH      : NATURAL := 32;
        ADDR_WIDTH      : NATURAL := 32;
        TOTAL_WIDTH     : NATURAL := 32;
        REG_WIDTH       : NATURAL := 5;
        PALAVRA_CONTROLE_WIDTH: NATURAL := 15;
        IMEDIATO_WIDTH   : NATURAL := 16;
        FUNCT_WIDTH      : NATURAL := 6;
        ULA_OP_WIDTH     : NATURAL := 3;
        SELETOR_ULA_WIDTH : NATURAL := 3
    );
    PORT (
        -- IN
        clk             : IN std_logic;
        palavraControle : IN std_logic_vector((PALAVRA_CONTROLE_WIDTH - 1) DOWNTO 0);

        -- OUT
        opCode, funct          : OUT std_logic_vector(5 DOWNTO 0);
        saida_ula, saida_regA, saida_regB, saida_escrita_banco_reg : OUT std_logic_vector((DATA_WIDTH - 1) DOWNTO 0);
        saida_rom, saida_pc   : OUT std_logic_vector((TOTAL_WIDTH - 1) DOWNTO 0);
        flag_zero_out         : out std_logic;
        ula_out_op            : OUT std_logic_vector((SELETOR_ULA_WIDTH - 1) DOWNTO 0)
    );

END ENTITY;

ARCHITECTURE main OF fluxo_dados IS

    SIGNAL Instrucao                  : std_logic_vector(TOTAL_WIDTH - 1 DOWNTO 0);
    SIGNAL PC_ROM                     : std_logic_vector(ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL SomaUm_MuxProxPC           : std_logic_vector(ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL MuxProxPC_PC, saidaMux_proxPC_somaImedProxPC               : std_logic_vector(ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL saidaULA                   : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL saidaRAM                   : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);

    SIGNAL saidaMux_Rt_Rd             : std_logic_vector((REG_WIDTH - 1) DOWNTO 0);
    SIGNAL entradaB_ula               : std_logic_vector((DATA_WIDTH - 1) DOWNTO 0);
    SIGNAL saida_mux_saidaULA_RAM     : std_logic_vector((DATA_WIDTH - 1) DOWNTO 0);
    SIGNAL saida_mux_saidaULA_RAM_imediatoUI     : std_logic_vector((DATA_WIDTH - 1) DOWNTO 0);

    -- Saidas Intermediarias
    SIGNAL saidaRegA, saidaRegB       : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL saida_somador              : std_logic_vector(ADDR_WIDTH - 1 DOWNTO 0);

    SIGNAL imediato_extendido         : std_logic_vector((DATA_WIDTH - 1) DOWNTO 0);
    SIGNAL flag_zero                  : std_logic;

    SIGNAL seletor_ula_local : std_logic_vector((SELETOR_ULA_WIDTH - 1) DOWNTO 0);

    signal saida_mux_RdRt_31          : std_logic_vector((REG_WIDTH - 1) DOWNTO 0);
    signal saida_mux_ula_PCplus4      : std_logic_vector((DATA_WIDTH - 1) DOWNTO 0);

    ALIAS opCodeLocal                 : std_logic_vector(5 DOWNTO 0) IS Instrucao(31 DOWNTO 26);
    ALIAS functLocal                  : std_logic_vector(5 DOWNTO 0) IS Instrucao(5 DOWNTO 0);

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

    ALIAS RS                          : std_logic_vector(4 DOWNTO 0) IS Instrucao(25 DOWNTO 21);
    ALIAS RT                          : std_logic_vector(4 DOWNTO 0) IS Instrucao(20 DOWNTO 16);
    ALIAS RD                          : std_logic_vector(4 DOWNTO 0) IS Instrucao(15 DOWNTO 11);
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

    mux_prox_PC_regA : ENTITY work.mux_4x1
        GENERIC MAP(
            DATA_WIDTH => ADDR_WIDTH
        )
        PORT MAP(
            entradaA => saidaMux_proxPC_somaImedProxPC,
            entradaB => (SomaUm_MuxProxPC(31 downto 28) & (Instrucao(25 downto 0) & "00")),
            entradaC => saidaRegA,
            entradaD => (OTHERS => '0'),
            seletor  => muxProxPC,
            saida    => MuxProxPC_PC
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
            seletor_MUX  => ((BEQ AND flag_zero) OR (BNE AND NOT(flag_zero))),
            saida_MUX    => saidaMux_proxPC_somaImedProxPC
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

    mux_RdRt_31: ENTITY work.mux_generico_2x1
        GENERIC MAP(
            larguraDados => REG_WIDTH
        )
        PORT MAP(
            entradaA_MUX => saidaMux_Rt_Rd,
            entradaB_MUX => "11111",
            seletor_MUX  => is_jal_op,
            saida_MUX    => saida_mux_RdRt_31
        );
        
    mux_saidaULA_PC4: ENTITY work.mux_generico_2x1
        GENERIC MAP(
            larguraDados => DATA_WIDTH
        )
        PORT MAP(
            entradaA_MUX => saida_mux_saidaULA_RAM_imediatoUI,
            entradaB_MUX => SomaUm_MuxProxPC,
            seletor_MUX  => is_jal_op,
            saida_MUX    => saida_mux_ula_PCplus4
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
            enderecoC       => saida_mux_RdRt_31,
            dadoEscritaC    => saida_mux_ula_PCplus4,
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

    uc_ula : ENTITY work.unidade_controle_ula
        GENERIC  MAP(
            FUNCT_WIDTH => FUNCT_WIDTH,
            ULA_OP_WIDTH => ULA_OP_WIDTH,
            SELETOR_ULA_WIDTH => SELETOR_ULA_WIDTH
        )
        PORT MAP(
            uc_ula_op   => uc_ula_op,
            funct       => functLocal,
            seletor_ula => seletor_ula_local
    );
    
    ula : ENTITY work.ula
        GENERIC MAP(
            larguraDados => DATA_WIDTH
        )
        PORT MAP(
            entradaA => saidaRegA,
            entradaB => entradaB_ula,
            saida    => saidaULA,
            seletor  => seletor_ula_local,
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

    mux_RAM_imediato_ui : ENTITY work.mux_generico_2x1
        GENERIC MAP(
            larguraDados => DATA_WIDTH
        )
        PORT MAP(
            entradaA_MUX => saida_mux_saidaULA_RAM,
            entradaB_MUX => imediato & "0000000000000000",
            seletor_MUX  => muxRAM_ImediatoUI,
            saida_MUX    => saida_mux_saidaULA_RAM_imediatoUI
        );

    funct           <= functLocal;
    opCode          <= opCodeLocal;
    saida_ula       <= saidaULA;
    saida_regA      <= saidaRegA;
    saida_regB      <= saidaRegB;
    saida_rom       <= Instrucao;
    saida_pc        <= PC_ROM;
    flag_zero_out   <= flag_zero;
    ula_out_op      <= seletor_ula_local;
    saida_escrita_banco_reg <= saida_mux_saidaULA_RAM_imediatoUI;

END ARCHITECTURE;