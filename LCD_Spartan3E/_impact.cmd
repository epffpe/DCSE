setMode -bs
setMode -bs
setCable -port auto
Identify 
identifyMPM 
assignFile -p 1 -file "D:/Designs/DCSE/LCD_Spartan3E/modulo3.bit"
Program -p 1 
Program -p 1 
Program -p 1 
Program -p 1 
Program -p 1 
Program -p 1 
ReadIdcode -p 1 
setCable -port auto
Program -p 1 
Program -p 1 
Program -p 1 
setMode -bs
deleteDevice -position 3
deleteDevice -position 2
deleteDevice -position 1
