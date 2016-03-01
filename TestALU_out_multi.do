vsim ALU_out_multiplexer
view wave
add wave A0
add wave B0
add wave A1
add wave B1
add wave S0
add wave S1
add wave ALU_multi_out

force A0  1 100
force B0  0 100
force A1  1 100
force B1  0 100
force S0  1 100
force S1  0 100

run 600