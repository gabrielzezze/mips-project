LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY interface_hex IS
    GENERIC (
        DATA_WIDTH : NATURAL := 8
    );
    PORT (
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT std_logic_vector(6 DOWNTO 0);
        valor    : IN std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
		clk      : IN std_logic
    );
END ENTITY;

ARCHITECTURE comportamento OF interface_hex IS

    SIGNAL signal_hex0 : std_logic_vector(6 DOWNTO 0);
    SIGNAL signal_hex1 : std_logic_vector(6 DOWNTO 0);
    SIGNAL signal_hex2 : std_logic_vector(6 DOWNTO 0);
    SIGNAL signal_hex3 : std_logic_vector(6 DOWNTO 0);
    SIGNAL signal_hex4 : std_logic_vector(6 DOWNTO 0);
    SIGNAL signal_hex5 : std_logic_vector(6 DOWNTO 0);

BEGIN

    conversorHex0 : ENTITY work.conversorHex7Seg
        PORT MAP(
            dadoHex   => valor(3 DOWNTO 0),
            apaga     => '0',
            negativo  => '0',
            overFlow  => '0',
            saida7seg => signal_hex0);

    conversorHex1 : ENTITY work.conversorHex7Seg
        PORT MAP(
            dadoHex   => valor(7 DOWNTO 4),
            apaga     => '0',
            negativo  => '0',
            overFlow  => '0',
            saida7seg => signal_hex1);

    conversorHex2 : ENTITY work.conversorHex7Seg
        PORT MAP(
            dadoHex   => valor(11 DOWNTO 8),
            apaga     => '0',
            negativo  => '0',
            overFlow  => '0',
            saida7seg => signal_hex2);

    conversorHex3 : ENTITY work.conversorHex7Seg
        PORT MAP(
            dadoHex   => valor(15 DOWNTO 12),
            apaga     => '0',
            negativo  => '0',
            overFlow  => '0',
            saida7seg => signal_hex3);

    conversorHex4 : ENTITY work.conversorHex7Seg
        PORT MAP(
            dadoHex   => valor(19 DOWNTO 16),
            apaga     => '0',
            negativo  => '0',
            overFlow  => '0',
            saida7seg => signal_hex4);

    conversorHex5 : ENTITY work.conversorHex7Seg
        PORT MAP(
            dadoHex   => valor(23 DOWNTO 20),
            apaga     => '0',
            negativo  => '0',
            overFlow  => '0',
            saida7seg => signal_hex5);

            
    HEX0 <= signal_hex0;
    HEX1 <= signal_hex1;
    HEX2 <= signal_hex2;
    HEX3 <= signal_hex3;
    HEX4 <= signal_hex4;
    HEX5 <= signal_hex5;

    
END ARCHITECTURE;