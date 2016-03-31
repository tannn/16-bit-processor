vsim ALU_Complete

add wave A
add wave B
add wave B_inv 
add wave A_inv
add wave alu_op
add wave alu_output
add wave SB
add wave SA
add wave AndOutput
add wave OrOutput
add wave XorOutput
add wave FA
add wave S0
add wave S1

force A 0000000000000000 0
force B 0000000000000001 0
force A_inv 0 0
force B_inv 0 0 
force alu_op 10 0 

run 100 