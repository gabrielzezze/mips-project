library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity edge_detector is
     Port ( 
              -- Clock do hardware
              clk     : in  STD_LOGIC;
              -- Sinal de entrada (botão)
              entrada : in  STD_LOGIC;
              -- Sinal de sair que simula um clock
              saida   : out STD_LOGIC);
end entity;

-- Arquitetura para detectar bordas de subida
architecture borda_subida of edge_detector is
    signal saidaQ : STD_LOGIC;
begin
  process(clk)
  begin
        if rising_edge(clk) then
            saidaQ <= entrada;
        end if;
  end process;
  saida <= entrada and (not saidaQ);
end  architecture borda_subida;

-- Arquitetura para detctar bordas de descida.
architecture borda_descida of edge_detector is
    signal saidaQ : STD_LOGIC;
begin
  process(clk)
  begin
        if rising_edge(clk) then
            saidaQ <= entrada;
        end if;
  end process;
  saida <= (not entrada) and saidaQ;
end  architecture borda_descida;