loadProjectFile -file "D:\Designs\DCSE\FPGA Prototyping\UART_RX/UART_RX.ipf"
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
saveProjectFile -file "D:\Designs\DCSE\FPGA Prototyping\UART_RX/UART_RX.ipf"
setMode -bs
deleteDevice -position 2
deleteDevice -position 1
