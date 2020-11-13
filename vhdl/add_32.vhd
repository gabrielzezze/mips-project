LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY add_32 IS
    GENERIC (
        DATA_WIDTH : NATURAL := 32
    );
    PORT (
        -- Input ports
        entradaA    : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
        entradaB    : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
        carry_in    : IN STD_LOGIC;

        -- Output ports
        saida        : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
        overflow    : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE main OF add_32 IS
    SIGNAL carry_out : STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
    
BEGIN
    somaBit0 : ENTITY work.full_adder
        PORT MAP (
            a    => entradaA(0),
            b    => entradaB(0),
            c    => carry_in,
            soma  => saida(0),
            vaium   => carry_out(0)
        );

    somaBit1_31 : FOR idx IN 1 TO DATA_WIDTH - 1 GENERATE

        soma_bits : ENTITY work.full_adder
            PORT MAP(
                a           => entradaA(idx),
                b           => entradaB(idx),
                c           => carry_out(idx - 1),
                soma        => saida(idx),
                vaium       => carry_out(idx)
            );

    END GENERATE;

    overflow <= carry_out(DATA_WIDTH - 1) XOR carry_out(DATA_WIDTH - 2);
END ARCHITECTURE;