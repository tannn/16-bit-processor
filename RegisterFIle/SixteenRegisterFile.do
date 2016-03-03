vsim SixteenRegisterFile
view wave
add wave WE
add wave regD
add wave regS
add wave regT
add wave dataD
add wave clock
add wave reset
add wave dataS
add wave dataT

force reset 1 0, 0 10
force clock 0 0, 1 10 -repeat 20
force WE 1111111111111111 0
force regD 0101 25, 0010 65
force dataD 0000111100001111 25, 0101010101010101 65 
force regS 0101 25, 0010 65
force regT 0000 25, 0101 65

run 100