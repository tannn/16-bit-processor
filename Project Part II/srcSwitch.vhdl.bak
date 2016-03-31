library ieee;
use ieee.std_logic_1164.all;

entity srcSwitch is
	port(opCode: in std_logic_vector(4 downto 0);
		 src, dst: in std_logic_vector(3 downto 0);
		 regsOut, regtOut: out std_logic_vector(3 downto 0)
		 );
end srcSwitch;

architecture arch of srcSwitch is

begin
	process(opCode)
	begin
		if(opCode(4 downto 0) = "00100") then
			regsOut <= dst;
			regtOut <= src;
		else
			regsOut <= src;
			regtOut <= dst;
		end if;
	end process;
end arch;