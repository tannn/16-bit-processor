LIBRARY ieee; 
USE ieee.std_logic_1164.all; 

ENTITY Team11_Lab9 IS
	PORT( 
	S,C, V, Z, N, mfc, clock, reset : IN STD_LOGIC; 
	opCode : IN STD_LOGIC_VECTOR (4 downto 0); 
	Cond : IN STD_LOGIC_VECTOR (3 downto 0 ); 
	rf_write, b_select, addressing_select : OUT STD_LOGIC; 
	a_Inv, b_inv, ir_enable : OUT STD_LOGIC; 
	ma_select, mem_read, mem_write : OUT STD_LOGIC; 
	pc_select, pc_enable, inc_select: OUT STD_LOGIC; 
	alu_op, c_select, y_select : OUT STD_LOGIC_VECTOR (1 downto 0); 
	extend : OUT STD_LOGIC_VECTOR (1 downto 0) 
	); 
	END Team11_Lab9; 
	
	ARCHITECTURE behavior OF Team11_Lab9 is 
	SIGNAL wmfc: STD_LOGIC; 
	shared VARIABLE stage: integer := 0;
	BEGIN 
		PROCESS(clock, reset)
		BEGIN 
			IF (rising_edge(clock)) THEN 
				IF (reset = '1') THEN 
					stage := 0; 
				END IF; 
				IF ((mfc = '1' )or (wmfc = '0' )) THEN 
					stage := stage mod 5 + 1; 
				END IF; 
				-- Stage 1 (Instruction Fetch)
				
				IF (stage = 1) THEN 
					wmfc <= '1'; 
					alu_op <= "00"; 
					c_select <= "01"; 
					y_select <= "00"; 
					rf_write <= '0';
					b_select <= '0'; 
					b_inv <= '0'; 
					a_inv <= '0'; 
					extend <= "00"; 
					ir_enable <= '1'; 
					ma_select <= '1'; 
					mem_read <= '1'; 
					mem_write <= '0'; 
					pc_select <= '1'; 
					pc_enable <= mfc; 
					inc_select <= '0';
				
				-- Stage 2 (Register Load)
				
				ELSIF(stage = 2) THEN 
					wmfc <= '0'; 
					ir_enable <= '0'; 
					mem_read <= '0'; 
					pc_enable <= '0'; 
				
				-- Stage 3 (ALU, Branch, Jump)
				
				ELSIF(stage = 3) THEN 
				
					--Double Operand 
					
					IF(opCode(4 downto 0) = "00010" )THEN 
						--AND
						alu_op <= "00"; 
					ELSIF(opCode(4 downto 0)= "00001" )THEN 
						--OR
						alu_op <= "01"; 
					ELSIF(opCode(4 downto 0)= "00000" )THEN 
						--XOR
						alu_op <= "10"; 
					ELSIF(opCode(4 downto 0)= "00011" )THEN 
						--ADD
						alu_op <= "11"; 	
					ELSIF(opCode(4 downto 0)= "00100" )THEN 
						--SUB
						alu_op <= "11"; 
						b_inv <= '1'; 
					--Single Operand 
						
					ELSIF(opCode(4 downto 0)= "01001" )THEN 
						--INC
						alu_op <= "11"; 
						b_select <= '1';
					END IF; 
				
				--Stage 4  (Memory Stage)
				
				ELSIF(stage = 4)THEN
					--Double Operand 
					IF(opCode (4 downto 0) = "11111")THEN 
						--DO NOTHING YET
 					
					--Single Operand 
					ELSIF(opCode (4 downto 0)= "11111")THEN 
						--DO NOTHING YET 
						
					END IF; 
				
				--Stage 5 (Writeback Stage)
				
				ELSIF(stage = 5) THEN
					--Double Operand 
					IF(opCode (4) = '0' AND opCode (3) = '0'   )THEN 
						rf_write <= '1'; 
 					
					--Single Operand 
					ELSIF(opCode (4) = '0' AND opCode (3) = '1' )THEN 
						rf_write <= '1'; 
						
					END IF; 
				 
				
			END IF; 
		
		END IF; 
			
		END PROCESS; 
		
	END behavior; 
	
	
	
		
