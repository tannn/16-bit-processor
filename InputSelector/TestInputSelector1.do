vsim InputSelector
view wave
add wave A
add wave Inv
add wave SelectedInput

force A 1010101010101010 0
force Inv 0 0, 1 100

run 200