setMode -bs
setMode -bs
setCable -port auto
Identify 
identifyMPM 
assignFile -p 1 -file "D:/Designs/DCSE/FPGA Prototyping/PS2_Keyboard/Verificacion/kb_test.bit"
Program -p 1 
setMode -bs
deleteDevice -position 2
deleteDevice -position 1
loadProjectFile -file "D:\Designs\DCSE\FPGA Prototyping\Modulo3/Modulo3.ipf"
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
setMode -bs
setMode -bs
setMode -bs
Program -p 1 
Program -p 1 
setCable -port auto
Program -p 1 
setMode -bs
deleteDevice -position 1
deleteDevice -position 1
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
