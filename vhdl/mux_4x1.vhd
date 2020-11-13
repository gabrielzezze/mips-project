LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY mux_4x1 IS
    GENERIC (
        DATA_WIDTH : NATURAL := 32
    );
    PORT (
        -- Inputs ports
        entradaA, entradaB, entradaC, entradaD  : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
        seletor  : IN STD_LOGIC_VECTOR(1 DOWNTO 0);

        -- Output ports
        saida : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE main OF mux_4x1 IS
BEGIN
    -- Selecionando a entrada de acordo com o seletor.
    saida   <=  entradaA WHEN (seletor = "00") ELSE
                entradaB WHEN (seletor = "01") ELSE
                entradaC WHEN (seletor = "10") ELSE
                entradaD WHEN (seletor = "11") ELSE
                (OTHERS => '0');
END ARCHITECTURE;