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

    constant zero : std_logic_vector(larguraDados-1 downto 0) := (others => '0');

    signal soma :       STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    signal subtracao :  STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    signal operacao_and :     STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    signal operacao_or :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    signal operacao_xor :     STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    signal operacao_not :     STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    signal temp_saida : STD_LOGIC_VECTOR((larguraDados-1) downto 0);

    CONSTANT op_and     : std_logic_vector(2 DOWNTO 0) := "000";
	CONSTANT op_or      : std_logic_vector(2 DOWNTO 0) := "001";
	CONSTANT op_add     : std_logic_vector(2 DOWNTO 0) := "010";
	CONSTANT op_sub     : std_logic_vector(2 DOWNTO 0) := "110";
	CONSTANT op_slt     : std_logic_vector(2 DOWNTO 0) := "111";

    begin
        
        soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
        subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
        operacao_and    <= entradaA and entradaB;
        operacao_or     <= entradaA or entradaB;
        operacao_xor    <= entradaA xor entradaB;
        operacao_not    <= not entradaA;

        temp_saida <= soma when (seletor = op_add) else
                      subtracao when (seletor = op_sub) else
                      -- entradaA when  (seletor = "000010") else
                      -- entradaB when  (seletor = "000011") else
                      -- operacao_xor when    (seletor = "000100") else
                      -- operacao_not when    (seletor = "000101") else
                      operacao_and when    (seletor = op_and) else
                      operacao_or when     (seletor = op_or) else
                      entradaA;  

        flag_zero <= '1' WHEN unsigned(temp_saida) = unsigned(zero) ELSE '0';
        saida <= temp_saida;

end architecture;