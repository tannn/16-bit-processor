vsim Team11_Part2 

add wave RA
add wave RB
add wave RM
add wave RZ
add wave Ry
add wave PC
add wave IR
add wave clock 
add wave reset

force clock 0 0, 1 10 -repeat 20
force reset 1 0, 0 100  
force mfc 1 0
force Cond 1111

force IR 010010000100100000000000 100, 010010000100110000000000 200, 000110000100110010000000 300, 001000000100100101000000 400, 000100000100110010000000 500, 000010000101010011000000 600, 000000000101000011000000 700

run 800
