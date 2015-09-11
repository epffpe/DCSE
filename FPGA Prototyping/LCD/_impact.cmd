loadProjectFile -file "D:\Designs\DCSE\FPGA Prototyping\LCD/LCD.ipf"
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
setCable -port auto
Program -p 1 
Program -p 1 
Program -p 1 
setCable -port auto
Program -p 1 
setMode -bs
deleteDevice -position 2
deleteDevice -position 1
