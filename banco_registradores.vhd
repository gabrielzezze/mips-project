library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).
entity banco_registradores is
    generic
    (
        larguraDados        : natural := 32;
        larguraEndBancoRegs : natural := 5   --Resulta em 2^5=32 posicoes
    );
-- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port
    (
        clk                                     : in  std_logic;
        enderecoA, enderecoB, enderecoC         : in  std_logic_vector((larguraEndBancoRegs-1) downto 0);
        dadoEscritaC                            : in  std_logic_vector((larguraDados-1) downto 0);
        escreveC                                : in  std_logic := '0';
        saidaA, saidaB                          : out std_logic_vector((larguraDados -1) downto 0)
    );
end entity;

architecture comportamento of banco_registradores is

    subtype palavra_t is std_logic_vector((larguraDados-1) downto 0);
    type memoria_t is array(2**larguraEndBancoRegs-1 downto 0) of palavra_t;

    FUNCTION initMemory
        RETURN memoria_t IS VARIABLE tmp : memoria_t := (OTHERS => (OTHERS => '0'));
    BEGIN
        tmp(0)  := "00000000";
        tmp(1)  := "00000000";
        tmp(2)  := "00000000";
        tmp(3)  := "00000000";
        tmp(4)  := "00000000";
        tmp(5)  := "00000000";
        tmp(6)  := "00000000";
        tmp(7)  := "00000000";
        tmp(8)  := "00000001";
        tmp(9)  := "00000001";
        tmp(10) := "00000000";
        tmp(11) := "00000000";
        tmp(12) := "00000000";
        tmp(13) := "00000000";
        tmp(14) := "00000000";
        tmp(15) := "00000000";
        tmp(16) := "00000000";
        tmp(17) := "00000000";
        tmp(18) := "00000000";
        tmp(19) := "00000000";
        tmp(20) := "00000000";
        tmp(21) := "00000000";
        tmp(22) := "00000000";
        tmp(23) := "00000000";
        tmp(24) := "00000000";
        tmp(25) := "00000000";
        tmp(26) := "00000000";
        tmp(27) := "00000000";
        tmp(28) := "00000000";
        tmp(29) := "00000000";
        tmp(30) := "00000000";
        tmp(31) := "00000000";
        RETURN tmp;
    END initMemory;

    -- Declaracao dos registradores:
    shared variable registrador : memoria_t;

begin

    process(clk) is
    begin
        if (rising_edge(clk)) then
            if (escreveC = '1') then
                registrador(to_integer(unsigned(enderecoC))) := dadoEscritaC;
            end if;
        end if;
    end process;

    -- IF endereco = 0 : retorna ZERO
     process(all) is
     begin
         if (unsigned(enderecoA) = 0) then
            saidaA <= (others => '0');
         else
            saidaA <= registrador(to_integer(unsigned(enderecoA)));
         end if;
         if (unsigned(enderecoB) = 0) then
            saidaB <= (others => '0');
         else
            saidaB <= registrador(to_integer(unsigned(enderecoB)));
        end if;
     end process;

end architecture;
