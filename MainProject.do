vsim MainProject
view wave
add wave A
add wave B
add wave alu_op
add wave A_inv
add wave B_inv
add wave alu_output

force A 1100000100001000 100
force B  1100010001001000 100
force alu_op 01 100
force A_inv  1 100
force B_inv  0 100

run 500