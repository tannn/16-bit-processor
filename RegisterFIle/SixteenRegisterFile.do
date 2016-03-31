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
force WE 1 0
force regD 0010 25, 0011 65
force dataD 0000000000000001 25 
force regS 0010 0
force regT 0011 0

run 100