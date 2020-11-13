library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ula is

    generic
    (
        larguraDados : natural := 8
    );

    port
    (
        entradaA, entradaB:   in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
        seletor:              in STD_LOGIC_VECTOR(2 downto 0);
        saida:                out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
        flag_zero:            out std_logic
    );

end entity;

architecture comportamento of ula is

    signal temp_saida       : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    signal saida_b_not_b    : std_logic_vector((larguraDados-1) downto 0);
    signal saida_adder    : std_logic_vector((larguraDados-1) downto 0);
    signal saida_overflow : std_logic;

    CONSTANT op_and     : std_logic_vector(2 DOWNTO 0) := "000";
	CONSTANT op_or      : std_logic_vector(2 DOWNTO 0) := "001";
	CONSTANT op_add     : std_logic_vector(2 DOWNTO 0) := "010";
	CONSTANT op_sub     : std_logic_vector(2 DOWNTO 0) := "110";
	CONSTANT op_slt     : std_logic_vector(2 DOWNTO 0) := "111";

    begin
        

        mux_b_not_b : ENTITY work.mux_generico_2x1
        GENERIC MAP(
            larguraDados => larguraDados
        )
        PORT MAP(
            entradaA_MUX => entradaB,
            entradaB_MUX => not entradaB,
            seletor_MUX  => seletor(2),
            saida_MUX    => saida_b_not_b
        );

        zupper_adder : ENTITY work.add_32
            GENERIC MAP (
                DATA_WIDTH => larguraDados
            )
            PORT MAP(
                entradaA  => entradaA,
                entradaB  => saida_b_not_b,
                carry_in  => seletor(2),
                saida     => saida_adder,
                overflow  => saida_overflow
            );

        mux_ula : ENTITY work.mux_4x1
            GENERIC MAP(
                DATA_WIDTH => larguraDados
            )
            PORT MAP(
                -- Inputs ports
                entradaA => (entradaA AND saida_b_not_b),
                entradaB => (entradaA OR saida_b_not_b),
                entradaC => (saida_adder), 
                entradaD => ("0000000000000000000000000000000" & (saida_overflow XOR saida_adder(larguraDados - 1))),
                seletor  => seletor(1 DOWNTO 0),
                saida    => temp_saida
            ); 

        flag_zero <= '1' WHEN unsigned(temp_saida) = 0 ELSE '0';
        saida <= temp_saida;

end architecture;