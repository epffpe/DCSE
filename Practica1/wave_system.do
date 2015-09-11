onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb_ramdump/clk50
add wave -noupdate -format Logic /tb_ramdump/rst_n
add wave -noupdate -format Literal /tb_ramdump/inter
add wave -noupdate -format Literal /tb_ramdump/data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {883128454452 ps} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
update
WaveRestoreZoom {0 ps} {3160500 us}
