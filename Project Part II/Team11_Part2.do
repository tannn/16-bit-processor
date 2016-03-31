vsim Processor 

add wave Instruction
add wave IR
add wave RegS
add wave RegT
add wave DataS
add wave DataT
add wave InA
add wave InB
add wave ALU_Out
add wave RB_Out
add wave RM_Out
add wave RZ_Out
add wave Ry_Out
add wave N_Out
add wave C_Out
add wave V_Out
add wave Z_Out
add wave Clock 
add wave Reset
add wave IR_Enable
add wave mfc
add wave b_Select
add wave ALU_op
add wave Immediate
add wave rf_write
add wave b_inv

force Clock 0 0, 1 50 -repeat 100
force Reset 1 0, 0 500  
force mfc 1 0


force Instruction 010010000100100000000000  500, 010010000100110000000000 1000, 000110000100110010000000 1500, 001000000101010010000000 2000, 000100000100110010000000 2500, 000010000100110101000000 3000, 000000000100110100000000 3500

run 4000

