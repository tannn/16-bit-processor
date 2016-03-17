library ieee;
use ieee.std_logic_1164.all;

entity immediate is
	port(immed: in std_logic_vector(4 downto 0);
		 extend: in std_logic_vector(1 downto 0);
		 immedEx: out std_logic_vector(15 downto 0));
end immediate;

architecture arch of immediate is

begin
	process(immed, extend)
	begin
		if(extend = "00") then
			immedEx <= "00000000000" & immed;
		elsif(extend = "01") then
			if(immed(6) = '0') then
				immedEx <= "00000000000" & immed;
			else
				immedEx <= "11111111111" & immed;
			end if;
		elsif(extend = "10") then
			immedEx <= "0000000000000001";
		else
			immedEx <= "1111111111111111";
		end if;
	end process;
end arch;