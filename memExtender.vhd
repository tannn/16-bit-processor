library ieee; 
use ieee.std_logic_1164.all;

entity memExtender is
	port(mem: in std_logic_vector(15 downto 0);
		 memEx: out std_logic_vector(23 downto 0));
end memExtender;

architecture arch of memExtender is

begin
	process(mem)
	begin
			memEx <= "00000000" & mem;
	end process;
end arch;