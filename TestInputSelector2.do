vsim InputSelector
view wave
add wave A
add wave Inv
add wave SelectedInput

force A 1111111100000000 0
force Inv 0 0, 1 100

run 200