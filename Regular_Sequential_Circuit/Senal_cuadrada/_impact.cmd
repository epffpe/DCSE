loadProjectFile -file "D:\Designs\DCSE\Regular_Sequential_Circuit\Senal_cuadrada/Senal_cuadrada.ipf"
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
setMode -bs
deleteDevice -position 2
deleteDevice -position 1
