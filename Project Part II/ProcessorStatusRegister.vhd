LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ProcessorStatusRegister IS
	PORT(
		n,c,v,z									:IN std_logic; 
		enable, reset, Clock				:IN std_logic;
		N_Out,C_Out,V_Out,Z_Out								:OUT std_logic
	);
END ProcessorStatusRegister;

ARCHITECTURE behavior OF ProcessorStatusRegister IS
BEGIN
	PROCESS(Clock, reset)
	BEGIN
		IF(reset = '1') THEN	
			N_Out <= '0';
			C_Out <= '0';
			V_Out <= '0';
			Z_Out <= '0';
		ELSIF(rising_edge(Clock)) THEN
			IF(enable = '1') THEN
				N_Out <= n;
				C_Out <= c;
				V_Out <= v;
				Z_Out <= z;
			END IF;
		END IF;
	END PROCESS;
END behavior;