library ieee;
use ieee.std_logic_1164.all;

entity jumpExtender is
	port(j: in std_logic_vector(14 downto 0);
		 jEx: out std_logic_vector(15 downto 0));
end jumpExtender;

architecture arch of jumpExtender is

begin
	process(j)
	begin
		if(j(14) = '0') then
			jEx <= "0" & j;
		else
			jEx <= "1" & j;
		end if;
	end process;
end arch;