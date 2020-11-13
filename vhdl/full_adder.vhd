Library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
	port(
		a,b,c:      in STD_LOGIC;   -- entradas
		soma,vaium: out STD_LOGIC   -- sum e carry
	);
end entity;

architecture main of full_adder is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.

begin
  -- Implementação vem aqui!
	soma <= (a xor b) xor c;
	vaium <= ((a xor b) and c) or (a and b);
	
end architecture;