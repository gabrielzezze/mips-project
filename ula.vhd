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
        seletor:              in STD_LOGIC_VECTOR(5 downto 0);
        saida:                out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
        flag_zero:            out std_logic
    );

end entity;

architecture comportamento of ula is

    constant zero : std_logic_vector(larguraDados-1 downto 0) := (others => '0');

    signal soma :       STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    signal subtracao :  STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    signal op_and :     STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    signal op_or :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    signal op_xor :     STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    signal op_not :     STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    signal temp_saida : STD_LOGIC_VECTOR((larguraDados-1) downto 0);

    begin
        
        soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
        subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
        op_and    <= entradaA and entradaB;
        op_or     <= entradaA or entradaB;
        op_xor    <= entradaA xor entradaB;
        op_not    <= not entradaA;

        temp_saida <= soma when (seletor = "000000") else
            subtracao when (seletor = "000001") else
            entradaA when  (seletor = "000010") else
            entradaB when  (seletor = "000011") else
            op_xor when    (seletor = "000100") else
            op_not when    (seletor = "000101") else
            op_and when    (seletor = "000110") else
            op_or when     (seletor = "000111") else
            entradaA;      -- outra opcao: saida = entradaA

        flag_zero <= '1' WHEN unsigned(temp_saida) = unsigned(zero) ELSE '0';
        saida <= temp_saida;

end architecture;