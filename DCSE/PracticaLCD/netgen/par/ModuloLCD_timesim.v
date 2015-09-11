////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: K.31
//  \   \         Application: netgen
//  /   /         Filename: ModuloLCD_timesim.v
// /___/   /\     Timestamp: Sat Feb 07 02:13:12 2009
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf ModuloLCD.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers false -w -dir netgen/par -ofmt verilog -sim ModuloLCD.ncd ModuloLCD_timesim.v 
// Device	: 3s700afg484-4 (PRODUCTION 1.39 2008-01-09)
// Input file	: ModuloLCD.ncd
// Output file	: D:\Desings\DCSE\PracticaLCD\netgen\par\ModuloLCD_timesim.v
// # of Modules	: 1
// Design Name	: ModuloLCD
// Xilinx        : C:\Xilinx\10.1\ISE
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Development System Reference Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module ModuloLCD (
  clk50, lcd_e_out, lcd_rw_out, lcd_rs_out, rot_press_in, modo_in, lcd_data_out, leds_out, pb_in, rot_in
);
  input clk50;
  output lcd_e_out;
  output lcd_rw_out;
  output lcd_rs_out;
  input rot_press_in;
  input modo_in;
  output [7 : 0] lcd_data_out;
  output [7 : 0] leds_out;
  input [3 : 0] pb_in;
  input [1 : 0] rot_in;
  wire NlwRenamedSig_IO_rot_press_in;
  wire NlwRenamedSig_IO_modo_in;
  wire GLOBAL_LOGIC0;
  wire clk640;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000_0 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[1] ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[3] ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[5] ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[7] ;
  wire \Inst_UControl/clr_timer_673 ;
  wire \Inst_UControl/LCD_E_697 ;
  wire \Inst_UControl/LCD_RS_698 ;
  wire leds_out_0_699;
  wire leds_out_1_700;
  wire leds_out_2_701;
  wire leds_out_3_703;
  wire leds_out_4_704;
  wire leds_out_5_705;
  wire leds_out_6_706;
  wire leds_out_7_707;
  wire \Inst_UControl/LCD_DB[0] ;
  wire \Inst_UControl/LCD_DB[1] ;
  wire \Inst_UControl/LCD_DB[2] ;
  wire \Inst_UControl/LCD_DB[3] ;
  wire \Inst_UControl/LCD_DB[5] ;
  wire \Inst_UControl/LCD_DB[7] ;
  wire \Inst_Clock1562/CLK0_BUF ;
  wire GLOBAL_LOGIC1;
  wire \Inst_Clock1562/CLK0_OUT ;
  wire \Inst_Clock1562/CLKDV_BUF ;
  wire \Inst_Counter/tic_727 ;
  wire \Inst_Interfaz/rst_n_728 ;
  wire \Inst_UControl/state_FSM_FFd5_729 ;
  wire \Inst_UControl/state_FSM_FFd4_730 ;
  wire \Inst_UControl/state_FSM_FFd3_731 ;
  wire \Inst_UControl/state_FSM_Out2_SW0/O ;
  wire \Inst_UControl/state_FSM_FFd2_733 ;
  wire \Inst_UControl/state_FSM_FFd1_734 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000011_735 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000016_736 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000028_0 ;
  wire \Inst_UControl/state_FSM_FFd2-In_SW2/O ;
  wire \Inst_UControl/state_FSM_FFd3-In_SW1/O ;
  wire \Inst_Interfaz/rotary_q2_741 ;
  wire \Inst_Interfaz/rotary_q1_744 ;
  wire \Inst_Interfaz/Inst_pb1/state_FSM_FFd2_745 ;
  wire \Inst_Interfaz/Inst_pb0/state_FSM_FFd2_746 ;
  wire \Inst_Interfaz/Inst_pb3/state_FSM_FFd2_747 ;
  wire \Inst_Interfaz/Inst_pb2/state_FSM_FFd2_748 ;
  wire \Inst_UControl/state_index0002 ;
  wire \Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd2_752 ;
  wire modo_int_753;
  wire \Inst_Interfaz/delay_rotary_q1_756 ;
  wire \Inst_Interfaz/pb1_761 ;
  wire \Inst_Interfaz/pb0_762 ;
  wire \Inst_Interfaz/pb3_765 ;
  wire \Inst_Interfaz/pb2_766 ;
  wire \Inst_Interfaz/rotary_event_767 ;
  wire \Inst_Interfaz/rotary_left_768 ;
  wire rot_press_769;
  wire \Inst_Interfaz/rotatory_press_770 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_771 ;
  wire \Inst_Interfaz/Inst_pb2/state_FSM_FFd1_772 ;
  wire \Inst_Interfaz/Inst_pb0/state_FSM_FFd1_773 ;
  wire \Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1_774 ;
  wire \Inst_Interfaz/Inst_pb3/state_FSM_FFd1_775 ;
  wire \Inst_Interfaz/Inst_pb1/state_FSM_FFd1_777 ;
  wire \leds_out_5/DXMUX_2015 ;
  wire Mshreg_leds_out_5;
  wire \leds_out_5/DIF_MUX_2004 ;
  wire \leds_out_5/DYMUX_1999 ;
  wire Mshreg_leds_out_4;
  wire \leds_out_5/DIG_MUX_1988 ;
  wire \leds_out_5/CLKINV_1986 ;
  wire \leds_out_5/SRINV_1980 ;
  wire \leds_out_7/DXMUX_2068 ;
  wire Mshreg_leds_out_7;
  wire \leds_out_7/DIF_MUX_2057 ;
  wire \leds_out_7/DYMUX_2052 ;
  wire Mshreg_leds_out_6;
  wire \leds_out_7/DIG_MUX_2041 ;
  wire \leds_out_7/CLKINV_2039 ;
  wire \leds_out_7/SRINV_2033 ;
  wire \Inst_Interfaz/rotary_in<1>/DXMUX_2121 ;
  wire \Inst_Interfaz/Mshreg_rotary_in_1 ;
  wire \Inst_Interfaz/rotary_in<1>/DIF_MUX_2110 ;
  wire \Inst_Interfaz/rotary_in<1>/DYMUX_2105 ;
  wire \Inst_Interfaz/Mshreg_rotary_in_0 ;
  wire \Inst_Interfaz/rotary_in<1>/DIG_MUX_2094 ;
  wire \Inst_Interfaz/rotary_in<1>/CLKINV_2092 ;
  wire \Inst_Interfaz/rotary_in<1>/SRINV_2086 ;
  wire \Inst_UControl/state_FSM_FFd4/DXMUX_2160 ;
  wire \Inst_UControl/state_FSM_FFd4-In ;
  wire \Inst_UControl/state_FSM_FFd4/DYMUX_2146 ;
  wire \Inst_UControl/state_cmp_eq0016 ;
  wire \Inst_UControl/state_FSM_FFd4/SRINVNOT ;
  wire \Inst_UControl/state_FSM_FFd4/CLKINV_2136 ;
  wire \Inst_UControl/LCD_DB<1>/DXMUX_2202 ;
  wire \Inst_UControl/state_index0008 ;
  wire \Inst_UControl/LCD_DB<1>/DYMUX_2187 ;
  wire \Inst_UControl/state_index0009 ;
  wire \Inst_UControl/LCD_DB<1>/SRINVNOT ;
  wire \Inst_UControl/LCD_DB<1>/CLKINV_2178 ;
  wire \Inst_UControl/LCD_DB<3>/DXMUX_2244 ;
  wire \Inst_UControl/state_index0006 ;
  wire \Inst_UControl/LCD_DB<3>/DYMUX_2230 ;
  wire \Inst_UControl/state_index0007 ;
  wire \Inst_UControl/LCD_DB<3>/SRINVNOT ;
  wire \Inst_UControl/LCD_DB<3>/CLKINV_2219 ;
  wire \Inst_UControl/LCD_DB<5>/DYMUX_2267 ;
  wire \Inst_UControl/state_index0004 ;
  wire \Inst_UControl/LCD_DB<5>/CLKINV_2258 ;
  wire \Inst_UControl/state_FSM_FFd1/DXMUX_2310 ;
  wire \Inst_UControl/state_FSM_FFd1-In_2307 ;
  wire \Inst_UControl/state_FSM_FFd1/DYMUX_2296 ;
  wire \Inst_UControl/state_FSM_FFd1/GYMUX_2295 ;
  wire \Inst_UControl/state_index0002_pack_1 ;
  wire \Inst_UControl/state_FSM_FFd1/SRINVNOT ;
  wire \Inst_UControl/state_FSM_FFd1/CLKINV_2286 ;
  wire \Inst_UControl/state_FSM_FFd5/DYMUX_2333 ;
  wire \Inst_UControl/state_FSM_FFd5-In ;
  wire \Inst_UControl/state_FSM_FFd5/CLKINV_2322 ;
  wire \Inst_UControl/tiempo<1>/DXMUX_2375 ;
  wire \Inst_UControl/state_index0000 ;
  wire \Inst_UControl/tiempo<1>/DYMUX_2361 ;
  wire \Inst_UControl/state_index0001 ;
  wire \Inst_UControl/tiempo<1>/SRINVNOT ;
  wire \Inst_UControl/tiempo<1>/CLKINV_2352 ;
  wire \leds_out_1/DXMUX_2431 ;
  wire Mshreg_leds_out_1;
  wire \leds_out_1/DIF_MUX_2420 ;
  wire \leds_out_1/DYMUX_2415 ;
  wire Mshreg_leds_out_0;
  wire \leds_out_1/DIG_MUX_2404 ;
  wire \leds_out_1/CLKINV_2402 ;
  wire \leds_out_1/SRINV_2396 ;
  wire \leds_out_3/DXMUX_2447 ;
  wire \leds_out_3/DYMUX_2442 ;
  wire \leds_out_3/CLKINV_2440 ;
  wire \Inst_Interfaz/rotary_left_and0000 ;
  wire \Inst_Interfaz/rotary_event_not0001 ;
  wire \Inst_Interfaz/delay_rotary_q1/DYMUX_2480 ;
  wire \Inst_Interfaz/delay_rotary_q1/CLKINV_2478 ;
  wire rot_in_1_IBUF_1630;
  wire \lcd_data_out<0>/O ;
  wire \lcd_data_out<1>/O ;
  wire \lcd_data_out<2>/O ;
  wire \lcd_rw_out/O ;
  wire \lcd_data_out<3>/O ;
  wire \lcd_data_out<4>/O ;
  wire \lcd_data_out<5>/O ;
  wire \lcd_data_out<6>/O ;
  wire \lcd_data_out<7>/O ;
  wire modo_in_IBUF_1709;
  wire \Inst_Clock1562/CLK0_BUFG_INST/S_INVNOT ;
  wire \Inst_Clock1562/CLK0_BUFG_INST/I0_INV ;
  wire \Inst_Clock1562/DCM_SP_INST/CLK90 ;
  wire \Inst_Clock1562/DCM_SP_INST/CLK180 ;
  wire \Inst_Clock1562/DCM_SP_INST/CLK270 ;
  wire \Inst_Clock1562/DCM_SP_INST/CLK2X ;
  wire \Inst_Clock1562/DCM_SP_INST/CLK2X180 ;
  wire \Inst_Clock1562/DCM_SP_INST/CLKFX ;
  wire \Inst_Clock1562/DCM_SP_INST/CLKFX180 ;
  wire \Inst_Clock1562/DCM_SP_INST/LOCKED ;
  wire \Inst_Clock1562/DCM_SP_INST/STATUS7 ;
  wire \Inst_Clock1562/DCM_SP_INST/STATUS6 ;
  wire \Inst_Clock1562/DCM_SP_INST/STATUS5 ;
  wire \Inst_Clock1562/DCM_SP_INST/STATUS4 ;
  wire \Inst_Clock1562/DCM_SP_INST/STATUS3 ;
  wire \Inst_Clock1562/DCM_SP_INST/STATUS2 ;
  wire \Inst_Clock1562/DCM_SP_INST/STATUS1 ;
  wire \Inst_Clock1562/DCM_SP_INST/STATUS0 ;
  wire \Inst_Clock1562/DCM_SP_INST/PSDONE ;
  wire \Inst_Clock1562/DCM_SP_INST/CLKFB_BUF_1724 ;
  wire \Inst_Clock1562/DCM_SP_INST/CLKIN_BUF_1723 ;
  wire \Inst_Clock1562/CLKDV_BUFG_INST/S_INVNOT ;
  wire \Inst_Clock1562/CLKDV_BUFG_INST/I0_INV ;
  wire \Inst_Counter/tic/DXMUX_1775 ;
  wire \Inst_Counter/tic/F5MUX_1773 ;
  wire \Inst_Counter/Mmux_tic_mux0001_3_1771 ;
  wire \Inst_Counter/tic/BXINV_1765 ;
  wire \Inst_Counter/Mmux_tic_mux0001_4_1763 ;
  wire \Inst_Counter/tic/CLKINV_1757 ;
  wire \Inst_UControl/LCD_E/DXMUX_1807 ;
  wire \Inst_UControl/_mux0000 ;
  wire \Inst_UControl/state_FSM_Out2_SW0/O_pack_1 ;
  wire \Inst_UControl/LCD_E/CLKINV_1789 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_not0001 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000016_pack_1 ;
  wire \Inst_UControl/state_FSM_FFd2/DXMUX_1866 ;
  wire \Inst_UControl/state_FSM_FFd2-In_1863 ;
  wire \Inst_UControl/state_FSM_FFd2-In_SW2/O_pack_1 ;
  wire \Inst_UControl/state_FSM_FFd2/CLKINV_1848 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000011_pack_1 ;
  wire \Inst_UControl/state_FSM_FFd3/DXMUX_1925 ;
  wire \Inst_UControl/state_FSM_FFd3-In_1922 ;
  wire \Inst_UControl/state_FSM_FFd3-In_SW1/O_pack_1 ;
  wire \Inst_UControl/state_FSM_FFd3/CLKINV_1909 ;
  wire \Inst_Interfaz/rotary_q2/DXMUX_1962 ;
  wire \Inst_Interfaz/rotary_q2_mux0000 ;
  wire \Inst_Interfaz/rotary_q2/DYMUX_1950 ;
  wire \Inst_Interfaz/rotary_q1_mux0000 ;
  wire \Inst_Interfaz/rotary_q2/CLKINV_1941 ;
  wire \Inst_Counter/temp<14>/DXMUX_1488 ;
  wire \Inst_Counter/temp<14>/XORF_1486 ;
  wire \Inst_Counter/temp<14>/CYINIT_1485 ;
  wire \Inst_Counter/temp<14>_rt_1483 ;
  wire \Inst_Counter/temp<14>/CLKINV_1474 ;
  wire \Inst_Clock1562/CLKIN_IBUFG_OUT ;
  wire \lcd_e_out/O ;
  wire \lcd_rs_out/O ;
  wire \leds_out<0>/O ;
  wire \leds_out<1>/O ;
  wire \leds_out<2>/O ;
  wire rot_press_in_IBUF_1548;
  wire \leds_out<3>/O ;
  wire \leds_out<4>/O ;
  wire \leds_out<5>/O ;
  wire \leds_out<6>/O ;
  wire \leds_out<7>/O ;
  wire pb_in_0_IBUF_1595;
  wire pb_in_1_IBUF_1602;
  wire pb_in_2_IBUF_1609;
  wire pb_in_3_IBUF_1616;
  wire rot_in_0_IBUF_1623;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/DXMUX_1075 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/XORF_1073 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/LOGIC_ZERO_1072 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/CYINIT_1071 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/CYSELF_1062 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/F ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/DYMUX_1056 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/XORG_1054 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[10] ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<11>_rt_1051 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/SRINV_1043 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/CLKINV_1042 ;
  wire \Inst_Counter/temp<0>/DXMUX_1126 ;
  wire \Inst_Counter/temp<0>/LOGIC_ONE_1124 ;
  wire \Inst_Counter/temp<0>/CYINIT_1123 ;
  wire \Inst_Counter/temp<0>/CYSELF_1114 ;
  wire \Inst_Counter/temp<0>/DYMUX_1105 ;
  wire \Inst_Counter/temp<0>/XORG_1103 ;
  wire \Inst_Counter/temp<0>/CYMUXG_1102 ;
  wire \Inst_Counter/temp<0>/LOGIC_ZERO_1100 ;
  wire \Inst_Counter/temp<0>/CYSELG_1091 ;
  wire \Inst_Counter/temp<0>/G ;
  wire \Inst_Counter/temp<0>/SRINV_1089 ;
  wire \Inst_Counter/temp<0>/CLKINV_1088 ;
  wire \Inst_Counter/temp<2>/DXMUX_1182 ;
  wire \Inst_Counter/temp<2>/XORF_1180 ;
  wire \Inst_Counter/temp<2>/CYINIT_1179 ;
  wire \Inst_Counter/temp<2>/F ;
  wire \Inst_Counter/temp<2>/DYMUX_1163 ;
  wire \Inst_Counter/temp<2>/XORG_1161 ;
  wire \Inst_Counter/temp<2>/CYSELF_1159 ;
  wire \Inst_Counter/temp<2>/CYMUXFAST_1158 ;
  wire \Inst_Counter/temp<2>/CYAND_1157 ;
  wire \Inst_Counter/temp<2>/FASTCARRY_1156 ;
  wire \Inst_Counter/temp<2>/CYMUXG2_1155 ;
  wire \Inst_Counter/temp<2>/CYMUXF2_1154 ;
  wire \Inst_Counter/temp<2>/LOGIC_ZERO_1153 ;
  wire \Inst_Counter/temp<2>/CYSELG_1144 ;
  wire \Inst_Counter/temp<2>/G ;
  wire \Inst_Counter/temp<2>/SRINV_1142 ;
  wire \Inst_Counter/temp<2>/CLKINV_1141 ;
  wire \Inst_Counter/temp<4>/DXMUX_1238 ;
  wire \Inst_Counter/temp<4>/XORF_1236 ;
  wire \Inst_Counter/temp<4>/CYINIT_1235 ;
  wire \Inst_Counter/temp<4>/F ;
  wire \Inst_Counter/temp<4>/DYMUX_1219 ;
  wire \Inst_Counter/temp<4>/XORG_1217 ;
  wire \Inst_Counter/temp<4>/CYSELF_1215 ;
  wire \Inst_Counter/temp<4>/CYMUXFAST_1214 ;
  wire \Inst_Counter/temp<4>/CYAND_1213 ;
  wire \Inst_Counter/temp<4>/FASTCARRY_1212 ;
  wire \Inst_Counter/temp<4>/CYMUXG2_1211 ;
  wire \Inst_Counter/temp<4>/CYMUXF2_1210 ;
  wire \Inst_Counter/temp<4>/LOGIC_ZERO_1209 ;
  wire \Inst_Counter/temp<4>/CYSELG_1200 ;
  wire \Inst_Counter/temp<4>/G ;
  wire \Inst_Counter/temp<4>/SRINV_1198 ;
  wire \Inst_Counter/temp<4>/CLKINV_1197 ;
  wire \Inst_Counter/temp<6>/DXMUX_1294 ;
  wire \Inst_Counter/temp<6>/XORF_1292 ;
  wire \Inst_Counter/temp<6>/CYINIT_1291 ;
  wire \Inst_Counter/temp<6>/F ;
  wire \Inst_Counter/temp<6>/DYMUX_1275 ;
  wire \Inst_Counter/temp<6>/XORG_1273 ;
  wire \Inst_Counter/temp<6>/CYSELF_1271 ;
  wire \Inst_Counter/temp<6>/CYMUXFAST_1270 ;
  wire \Inst_Counter/temp<6>/CYAND_1269 ;
  wire \Inst_Counter/temp<6>/FASTCARRY_1268 ;
  wire \Inst_Counter/temp<6>/CYMUXG2_1267 ;
  wire \Inst_Counter/temp<6>/CYMUXF2_1266 ;
  wire \Inst_Counter/temp<6>/LOGIC_ZERO_1265 ;
  wire \Inst_Counter/temp<6>/CYSELG_1256 ;
  wire \Inst_Counter/temp<6>/G ;
  wire \Inst_Counter/temp<6>/SRINV_1254 ;
  wire \Inst_Counter/temp<6>/CLKINV_1253 ;
  wire \Inst_Counter/temp<8>/DXMUX_1350 ;
  wire \Inst_Counter/temp<8>/XORF_1348 ;
  wire \Inst_Counter/temp<8>/CYINIT_1347 ;
  wire \Inst_Counter/temp<8>/F ;
  wire \Inst_Counter/temp<8>/DYMUX_1331 ;
  wire \Inst_Counter/temp<8>/XORG_1329 ;
  wire \Inst_Counter/temp<8>/CYSELF_1327 ;
  wire \Inst_Counter/temp<8>/CYMUXFAST_1326 ;
  wire \Inst_Counter/temp<8>/CYAND_1325 ;
  wire \Inst_Counter/temp<8>/FASTCARRY_1324 ;
  wire \Inst_Counter/temp<8>/CYMUXG2_1323 ;
  wire \Inst_Counter/temp<8>/CYMUXF2_1322 ;
  wire \Inst_Counter/temp<8>/LOGIC_ZERO_1321 ;
  wire \Inst_Counter/temp<8>/CYSELG_1312 ;
  wire \Inst_Counter/temp<8>/G ;
  wire \Inst_Counter/temp<8>/SRINV_1310 ;
  wire \Inst_Counter/temp<8>/CLKINV_1309 ;
  wire \Inst_Counter/temp<10>/DXMUX_1406 ;
  wire \Inst_Counter/temp<10>/XORF_1404 ;
  wire \Inst_Counter/temp<10>/CYINIT_1403 ;
  wire \Inst_Counter/temp<10>/F ;
  wire \Inst_Counter/temp<10>/DYMUX_1387 ;
  wire \Inst_Counter/temp<10>/XORG_1385 ;
  wire \Inst_Counter/temp<10>/CYSELF_1383 ;
  wire \Inst_Counter/temp<10>/CYMUXFAST_1382 ;
  wire \Inst_Counter/temp<10>/CYAND_1381 ;
  wire \Inst_Counter/temp<10>/FASTCARRY_1380 ;
  wire \Inst_Counter/temp<10>/CYMUXG2_1379 ;
  wire \Inst_Counter/temp<10>/CYMUXF2_1378 ;
  wire \Inst_Counter/temp<10>/LOGIC_ZERO_1377 ;
  wire \Inst_Counter/temp<10>/CYSELG_1368 ;
  wire \Inst_Counter/temp<10>/G ;
  wire \Inst_Counter/temp<10>/SRINV_1366 ;
  wire \Inst_Counter/temp<10>/CLKINV_1365 ;
  wire \Inst_Counter/temp<12>/DXMUX_1462 ;
  wire \Inst_Counter/temp<12>/XORF_1460 ;
  wire \Inst_Counter/temp<12>/CYINIT_1459 ;
  wire \Inst_Counter/temp<12>/F ;
  wire \Inst_Counter/temp<12>/DYMUX_1443 ;
  wire \Inst_Counter/temp<12>/XORG_1441 ;
  wire \Inst_Counter/temp<12>/CYSELF_1439 ;
  wire \Inst_Counter/temp<12>/CYMUXFAST_1438 ;
  wire \Inst_Counter/temp<12>/CYAND_1437 ;
  wire \Inst_Counter/temp<12>/FASTCARRY_1436 ;
  wire \Inst_Counter/temp<12>/CYMUXG2_1435 ;
  wire \Inst_Counter/temp<12>/CYMUXF2_1434 ;
  wire \Inst_Counter/temp<12>/LOGIC_ZERO_1433 ;
  wire \Inst_Counter/temp<12>/CYSELG_1424 ;
  wire \Inst_Counter/temp<12>/G ;
  wire \Inst_Counter/temp<12>/SRINV_1422 ;
  wire \Inst_Counter/temp<12>/CLKINV_1421 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/DXMUX_822 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/LOGIC_ONE_820 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/CYINIT_819 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/CYSELF_810 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/DYMUX_803 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/XORG_801 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/CYMUXG_800 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[0] ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/LOGIC_ZERO_798 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/CYSELG_789 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/G ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/SRINV_787 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/CLKINV_786 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/DXMUX_874 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/XORF_872 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYINIT_871 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/F ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/DYMUX_857 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/XORG_855 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[2] ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYSELF_853 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYMUXFAST_852 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYAND_851 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/FASTCARRY_850 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYMUXG2_849 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYMUXF2_848 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/LOGIC_ZERO_847 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYSELG_838 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/G ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/SRINV_836 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CLKINV_835 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/DXMUX_926 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/XORF_924 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYINIT_923 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/F ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/DYMUX_909 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/XORG_907 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[4] ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYSELF_905 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYMUXFAST_904 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYAND_903 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/FASTCARRY_902 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYMUXG2_901 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYMUXF2_900 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/LOGIC_ZERO_899 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYSELG_890 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/G ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/SRINV_888 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CLKINV_887 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/DXMUX_978 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/XORF_976 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYINIT_975 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/F ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/DYMUX_961 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/XORG_959 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[6] ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYSELF_957 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYMUXFAST_956 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYAND_955 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/FASTCARRY_954 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYMUXG2_953 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYMUXF2_952 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/LOGIC_ZERO_951 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYSELG_942 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/G ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/SRINV_940 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CLKINV_939 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/DXMUX_1030 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/XORF_1028 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYINIT_1027 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/F ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/DYMUX_1013 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/XORG_1011 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[8] ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYSELF_1009 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYMUXFAST_1008 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYAND_1007 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/FASTCARRY_1006 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYMUXG2_1005 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYMUXF2_1004 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/LOGIC_ZERO_1003 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYSELG_994 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/G ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/SRINV_992 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CLKINV_991 ;
  wire \Inst_Interfaz/pb1/DXMUX_2496 ;
  wire \Inst_Interfaz/pb1/DYMUX_2491 ;
  wire \Inst_Interfaz/pb1/CLKINV_2489 ;
  wire \Inst_Interfaz/pb3/DXMUX_2512 ;
  wire \Inst_Interfaz/pb3/DYMUX_2507 ;
  wire \Inst_Interfaz/pb3/CLKINV_2505 ;
  wire \Inst_Interfaz/rotary_event/DYMUX_2523 ;
  wire \Inst_Interfaz/rotary_event/SRINV_2521 ;
  wire \Inst_Interfaz/rotary_event/CLKINV_2520 ;
  wire \Inst_LEDS/led<2>/DYMUX_2535 ;
  wire \Inst_LEDS/led<2>/CLKINV_2533 ;
  wire \Inst_LEDS/led<2>/CEINV_2532 ;
  wire \Inst_LEDS/led<3>/DYMUX_2547 ;
  wire \Inst_LEDS/led<3>/CLKINV_2545 ;
  wire \Inst_LEDS/led<3>/CEINV_2544 ;
  wire \Inst_UControl/clr_timer/DYMUX_2559 ;
  wire \Inst_UControl/clr_timer/CLKINV_2556 ;
  wire \Inst_Interfaz/rotatory_press/DYMUX_2571 ;
  wire \Inst_Interfaz/rotatory_press/CLKINV_2569 ;
  wire \Inst_Interfaz/Inst_pb2/state_FSM_FFd1/DXMUX_2596 ;
  wire \Inst_Interfaz/Inst_pb2/state_FSM_FFd1/DYMUX_2591 ;
  wire \Inst_Interfaz/Inst_pb2/state_FSM_FFd2-In ;
  wire \Inst_Interfaz/Inst_pb2/state_FSM_FFd1/CLKINV_2581 ;
  wire \rot_press/DYMUX_2605 ;
  wire \rot_press/CLKINV_2603 ;
  wire \pb_int<1>/DXMUX_2621 ;
  wire \pb_int<1>/DYMUX_2616 ;
  wire \pb_int<1>/CLKINV_2614 ;
  wire \pb_int<3>/DXMUX_2637 ;
  wire \pb_int<3>/DYMUX_2632 ;
  wire \pb_int<3>/CLKINV_2630 ;
  wire \Inst_Interfaz/Inst_pb0/state_FSM_FFd1/DXMUX_2662 ;
  wire \Inst_Interfaz/Inst_pb0/state_FSM_FFd1/DYMUX_2657 ;
  wire \Inst_Interfaz/Inst_pb0/state_FSM_FFd2-In ;
  wire \Inst_Interfaz/Inst_pb0/state_FSM_FFd1/CLKINV_2647 ;
  wire \Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1/DXMUX_2687 ;
  wire \Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1/DYMUX_2682 ;
  wire \Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd2-In ;
  wire \Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1/CLKINV_2672 ;
  wire \modo_int/DYMUX_2696 ;
  wire \modo_int/CLKINV_2694 ;
  wire \Inst_Interfaz/Inst_pb3/state_FSM_FFd1/DXMUX_2721 ;
  wire \Inst_Interfaz/Inst_pb3/state_FSM_FFd1/DYMUX_2716 ;
  wire \Inst_Interfaz/Inst_pb3/state_FSM_FFd2-In ;
  wire \Inst_Interfaz/Inst_pb3/state_FSM_FFd1/CLKINV_2706 ;
  wire \rot<1>/DXMUX_2737 ;
  wire \rot<1>/DYMUX_2732 ;
  wire \rot<1>/CLKINV_2730 ;
  wire \Inst_Interfaz/rotary_left/DYMUX_2748 ;
  wire \Inst_Interfaz/rotary_left/CLKINV_2746 ;
  wire \Inst_Interfaz/rotary_left/CEINV_2745 ;
  wire \Inst_Interfaz/rst_and0000 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000028_2774 ;
  wire \Inst_Interfaz/Inst_pb1/state_FSM_FFd1/DXMUX_2798 ;
  wire \Inst_Interfaz/Inst_pb1/state_FSM_FFd1/DYMUX_2793 ;
  wire \Inst_Interfaz/Inst_pb1/state_FSM_FFd2-In ;
  wire \Inst_Interfaz/Inst_pb1/state_FSM_FFd1/CLKINV_2783 ;
  wire \Inst_Interfaz/rst_n/DYMUX_2809 ;
  wire \Inst_Interfaz/rst_n/SRINV_2807 ;
  wire \Inst_Interfaz/rst_n/CLKINV_2806 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/clk10ms/DYMUX_2821 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/clk10ms/SRINV_2819 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/clk10ms/CLKINV_2818 ;
  wire \Inst_UControl/LCD_E/FFX/RSTAND_1812 ;
  wire \Inst_Counter/temp<14>/FFX/RSTAND_1493 ;
  wire \Inst_UControl/state_FSM_FFd2/FFX/RSTAND_1871 ;
  wire \Inst_UControl/state_FSM_FFd3/FFX/RSTAND_1930 ;
  wire \Inst_UControl/LCD_DB<5>/FFY/RSTAND_2272 ;
  wire \Inst_UControl/state_FSM_FFd5/FFY/RSTAND_2338 ;
  wire \Inst_UControl/clr_timer/FFY/RSTAND_2564 ;
  wire VCC;
  wire GND;
  wire \NLW_Inst_Clock1562/DCM_SP_INST_DSSEN_UNCONNECTED ;
  wire \NLW_Mshreg_leds_out_0/SRL16E_Q15_UNCONNECTED ;
  wire \NLW_Mshreg_leds_out_4/SRL16E_Q15_UNCONNECTED ;
  wire \NLW_Mshreg_leds_out_6/SRL16E_Q15_UNCONNECTED ;
  wire \NLW_Inst_Interfaz/Mshreg_rotary_in_0/SRL16E_Q15_UNCONNECTED ;
  wire \NLW_Mshreg_leds_out_5/SRL16E_Q15_UNCONNECTED ;
  wire \NLW_Mshreg_leds_out_7/SRL16E_Q15_UNCONNECTED ;
  wire \NLW_Inst_Interfaz/Mshreg_rotary_in_1/SRL16E_Q15_UNCONNECTED ;
  wire \NLW_Mshreg_leds_out_1/SRL16E_Q15_UNCONNECTED ;
  wire [3 : 0] NlwRenamedSig_IO_pb_in;
  wire [1 : 0] NlwRenamedSig_IO_rot_in;
  wire [11 : 0] \Inst_Interfaz/Inst_divDEBOUNCER/contador ;
  wire [14 : 0] \Inst_Counter/temp ;
  wire [12 : 0] \Inst_Counter/Mcount_temp_cy ;
  wire [1 : 0] \Inst_UControl/tiempo ;
  wire [1 : 0] \Inst_Interfaz/rotary_in ;
  wire [1 : 0] rot;
  wire [3 : 2] \Inst_LEDS/led ;
  wire [3 : 0] pb_int;
  wire [0 : 0] \Inst_Counter/Mcount_temp_lut ;
  wire [0 : 0] \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_lut ;
  assign
    NlwRenamedSig_IO_rot_press_in = rot_press_in,
    NlwRenamedSig_IO_modo_in = modo_in,
    NlwRenamedSig_IO_pb_in[3] = pb_in[3],
    NlwRenamedSig_IO_pb_in[2] = pb_in[2],
    NlwRenamedSig_IO_pb_in[1] = pb_in[1],
    NlwRenamedSig_IO_pb_in[0] = pb_in[0],
    NlwRenamedSig_IO_rot_in[1] = rot_in[1],
    NlwRenamedSig_IO_rot_in[0] = rot_in[0];
  initial $sdf_annotate("netgen/par/modulolcd_timesim.sdf");
  X_BUF #(
    .LOC ( "SLICE_X60Y12" ))
  \leds_out_5/DXMUX  (
    .I(Mshreg_leds_out_5),
    .O(\leds_out_5/DXMUX_2015 )
  );
  X_BUF #(
    .LOC ( "SLICE_X60Y12" ))
  \leds_out_5/DIF_MUX  (
    .I(\Inst_Interfaz/Inst_pb1/state_FSM_FFd2_745 ),
    .O(\leds_out_5/DIF_MUX_2004 )
  );
  X_BUF #(
    .LOC ( "SLICE_X60Y12" ))
  \leds_out_5/DYMUX  (
    .I(Mshreg_leds_out_4),
    .O(\leds_out_5/DYMUX_1999 )
  );
  X_BUF #(
    .LOC ( "SLICE_X60Y12" ))
  \leds_out_5/DIG_MUX  (
    .I(\Inst_Interfaz/Inst_pb0/state_FSM_FFd2_746 ),
    .O(\leds_out_5/DIG_MUX_1988 )
  );
  X_BUF #(
    .LOC ( "SLICE_X60Y12" ))
  \leds_out_5/SRINV  (
    .I(GLOBAL_LOGIC1),
    .O(\leds_out_5/SRINV_1980 )
  );
  X_BUF #(
    .LOC ( "SLICE_X60Y12" ))
  \leds_out_5/CLKINV  (
    .I(clk640),
    .O(\leds_out_5/CLKINV_1986 )
  );
  X_BUF #(
    .LOC ( "SLICE_X60Y11" ))
  \leds_out_7/DXMUX  (
    .I(Mshreg_leds_out_7),
    .O(\leds_out_7/DXMUX_2068 )
  );
  X_BUF #(
    .LOC ( "SLICE_X60Y11" ))
  \leds_out_7/DIF_MUX  (
    .I(\Inst_Interfaz/Inst_pb3/state_FSM_FFd2_747 ),
    .O(\leds_out_7/DIF_MUX_2057 )
  );
  X_BUF #(
    .LOC ( "SLICE_X60Y11" ))
  \leds_out_7/DYMUX  (
    .I(Mshreg_leds_out_6),
    .O(\leds_out_7/DYMUX_2052 )
  );
  X_BUF #(
    .LOC ( "SLICE_X60Y11" ))
  \leds_out_7/DIG_MUX  (
    .I(\Inst_Interfaz/Inst_pb2/state_FSM_FFd2_748 ),
    .O(\leds_out_7/DIG_MUX_2041 )
  );
  X_BUF #(
    .LOC ( "SLICE_X60Y11" ))
  \leds_out_7/SRINV  (
    .I(GLOBAL_LOGIC1),
    .O(\leds_out_7/SRINV_2033 )
  );
  X_BUF #(
    .LOC ( "SLICE_X60Y11" ))
  \leds_out_7/CLKINV  (
    .I(clk640),
    .O(\leds_out_7/CLKINV_2039 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y15" ))
  \Inst_Interfaz/rotary_in<1>/DXMUX  (
    .I(\Inst_Interfaz/Mshreg_rotary_in_1 ),
    .O(\Inst_Interfaz/rotary_in<1>/DXMUX_2121 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y15" ))
  \Inst_Interfaz/rotary_in<1>/DIF_MUX  (
    .I(rot[1]),
    .O(\Inst_Interfaz/rotary_in<1>/DIF_MUX_2110 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y15" ))
  \Inst_Interfaz/rotary_in<1>/DYMUX  (
    .I(\Inst_Interfaz/Mshreg_rotary_in_0 ),
    .O(\Inst_Interfaz/rotary_in<1>/DYMUX_2105 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y15" ))
  \Inst_Interfaz/rotary_in<1>/DIG_MUX  (
    .I(rot[0]),
    .O(\Inst_Interfaz/rotary_in<1>/DIG_MUX_2094 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y15" ))
  \Inst_Interfaz/rotary_in<1>/SRINV  (
    .I(GLOBAL_LOGIC1),
    .O(\Inst_Interfaz/rotary_in<1>/SRINV_2086 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y15" ))
  \Inst_Interfaz/rotary_in<1>/CLKINV  (
    .I(clk640),
    .O(\Inst_Interfaz/rotary_in<1>/CLKINV_2092 )
  );
  X_BUF #(
    .LOC ( "SLICE_X40Y8" ))
  \Inst_UControl/state_FSM_FFd4/DXMUX  (
    .I(\Inst_UControl/state_FSM_FFd4-In ),
    .O(\Inst_UControl/state_FSM_FFd4/DXMUX_2160 )
  );
  X_BUF #(
    .LOC ( "SLICE_X40Y8" ))
  \Inst_UControl/state_FSM_FFd4/DYMUX  (
    .I(\Inst_UControl/state_cmp_eq0016 ),
    .O(\Inst_UControl/state_FSM_FFd4/DYMUX_2146 )
  );
  X_INV #(
    .LOC ( "SLICE_X40Y8" ))
  \Inst_UControl/state_FSM_FFd4/SRINV  (
    .I(\Inst_Interfaz/rst_n_728 ),
    .O(\Inst_UControl/state_FSM_FFd4/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X40Y8" ))
  \Inst_UControl/state_FSM_FFd4/CLKINV  (
    .I(clk640),
    .O(\Inst_UControl/state_FSM_FFd4/CLKINV_2136 )
  );
  X_LUT4 #(
    .INIT ( 16'h0022 ),
    .LOC ( "SLICE_X40Y8" ))
  \Inst_UControl/state_FSM_Out01  (
    .ADR0(\Inst_UControl/state_FSM_FFd1_734 ),
    .ADR1(\Inst_UControl/state_FSM_FFd4_730 ),
    .ADR2(VCC),
    .ADR3(\Inst_UControl/state_FSM_FFd5_729 ),
    .O(\Inst_UControl/state_cmp_eq0016 )
  );
  X_BUF #(
    .LOC ( "SLICE_X43Y5" ))
  \Inst_UControl/LCD_DB<1>/DXMUX  (
    .I(\Inst_UControl/state_index0008 ),
    .O(\Inst_UControl/LCD_DB<1>/DXMUX_2202 )
  );
  X_BUF #(
    .LOC ( "SLICE_X43Y5" ))
  \Inst_UControl/LCD_DB<1>/DYMUX  (
    .I(\Inst_UControl/state_index0009 ),
    .O(\Inst_UControl/LCD_DB<1>/DYMUX_2187 )
  );
  X_INV #(
    .LOC ( "SLICE_X43Y5" ))
  \Inst_UControl/LCD_DB<1>/SRINV  (
    .I(\Inst_Interfaz/rst_n_728 ),
    .O(\Inst_UControl/LCD_DB<1>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X43Y5" ))
  \Inst_UControl/LCD_DB<1>/CLKINV  (
    .I(clk640),
    .O(\Inst_UControl/LCD_DB<1>/CLKINV_2178 )
  );
  X_LUT4 #(
    .INIT ( 16'hF088 ),
    .LOC ( "SLICE_X43Y5" ))
  \Inst_UControl/state_FSM_Out131  (
    .ADR0(\Inst_UControl/state_FSM_FFd3_731 ),
    .ADR1(\Inst_UControl/state_FSM_FFd2_733 ),
    .ADR2(\Inst_UControl/state_FSM_FFd1_734 ),
    .ADR3(\Inst_UControl/state_FSM_FFd4_730 ),
    .O(\Inst_UControl/state_index0009 )
  );
  X_BUF #(
    .LOC ( "SLICE_X41Y4" ))
  \Inst_UControl/LCD_DB<3>/DXMUX  (
    .I(\Inst_UControl/state_index0006 ),
    .O(\Inst_UControl/LCD_DB<3>/DXMUX_2244 )
  );
  X_BUF #(
    .LOC ( "SLICE_X41Y4" ))
  \Inst_UControl/LCD_DB<3>/DYMUX  (
    .I(\Inst_UControl/state_index0007 ),
    .O(\Inst_UControl/LCD_DB<3>/DYMUX_2230 )
  );
  X_INV #(
    .LOC ( "SLICE_X41Y4" ))
  \Inst_UControl/LCD_DB<3>/SRINV  (
    .I(\Inst_Interfaz/rst_n_728 ),
    .O(\Inst_UControl/LCD_DB<3>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X41Y4" ))
  \Inst_UControl/LCD_DB<3>/CLKINV  (
    .I(clk640),
    .O(\Inst_UControl/LCD_DB<3>/CLKINV_2219 )
  );
  X_LUT4 #(
    .INIT ( 16'h4444 ),
    .LOC ( "SLICE_X41Y4" ))
  \Inst_UControl/state_FSM_Out1021  (
    .ADR0(\Inst_UControl/state_FSM_FFd3_731 ),
    .ADR1(\Inst_UControl/state_FSM_FFd2_733 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Inst_UControl/state_index0007 )
  );
  X_BUF #(
    .LOC ( "SLICE_X40Y5" ))
  \Inst_UControl/LCD_DB<5>/DYMUX  (
    .I(\Inst_UControl/state_index0004 ),
    .O(\Inst_UControl/LCD_DB<5>/DYMUX_2267 )
  );
  X_BUF #(
    .LOC ( "SLICE_X40Y5" ))
  \Inst_UControl/LCD_DB<5>/CLKINV  (
    .I(clk640),
    .O(\Inst_UControl/LCD_DB<5>/CLKINV_2258 )
  );
  X_BUF #(
    .LOC ( "SLICE_X41Y8" ))
  \Inst_UControl/state_FSM_FFd1/DXMUX  (
    .I(\Inst_UControl/state_FSM_FFd1-In_2307 ),
    .O(\Inst_UControl/state_FSM_FFd1/DXMUX_2310 )
  );
  X_BUF #(
    .LOC ( "SLICE_X41Y8" ))
  \Inst_UControl/state_FSM_FFd1/DYMUX  (
    .I(\Inst_UControl/state_FSM_FFd1/GYMUX_2295 ),
    .O(\Inst_UControl/state_FSM_FFd1/DYMUX_2296 )
  );
  X_BUF #(
    .LOC ( "SLICE_X41Y8" ))
  \Inst_UControl/state_FSM_FFd1/YUSED  (
    .I(\Inst_UControl/state_FSM_FFd1/GYMUX_2295 ),
    .O(\Inst_UControl/state_index0002 )
  );
  X_BUF #(
    .LOC ( "SLICE_X41Y8" ))
  \Inst_UControl/state_FSM_FFd1/GYMUX  (
    .I(\Inst_UControl/state_index0002_pack_1 ),
    .O(\Inst_UControl/state_FSM_FFd1/GYMUX_2295 )
  );
  X_INV #(
    .LOC ( "SLICE_X41Y8" ))
  \Inst_UControl/state_FSM_FFd1/SRINV  (
    .I(\Inst_Interfaz/rst_n_728 ),
    .O(\Inst_UControl/state_FSM_FFd1/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X41Y8" ))
  \Inst_UControl/state_FSM_FFd1/CLKINV  (
    .I(clk640),
    .O(\Inst_UControl/state_FSM_FFd1/CLKINV_2286 )
  );
  X_LUT4 #(
    .INIT ( 16'h8080 ),
    .LOC ( "SLICE_X41Y8" ))
  \Inst_UControl/state_Out71  (
    .ADR0(\Inst_UControl/state_FSM_FFd3_731 ),
    .ADR1(\Inst_UControl/state_FSM_FFd2_733 ),
    .ADR2(\Inst_UControl/state_FSM_FFd4_730 ),
    .ADR3(VCC),
    .O(\Inst_UControl/state_index0002_pack_1 )
  );
  X_BUF #(
    .LOC ( "SLICE_X38Y15" ))
  \Inst_UControl/state_FSM_FFd5/DYMUX  (
    .I(\Inst_UControl/state_FSM_FFd5-In ),
    .O(\Inst_UControl/state_FSM_FFd5/DYMUX_2333 )
  );
  X_BUF #(
    .LOC ( "SLICE_X38Y15" ))
  \Inst_UControl/state_FSM_FFd5/CLKINV  (
    .I(clk640),
    .O(\Inst_UControl/state_FSM_FFd5/CLKINV_2322 )
  );
  X_BUF #(
    .LOC ( "SLICE_X38Y12" ))
  \Inst_UControl/tiempo<1>/DXMUX  (
    .I(\Inst_UControl/state_index0000 ),
    .O(\Inst_UControl/tiempo<1>/DXMUX_2375 )
  );
  X_BUF #(
    .LOC ( "SLICE_X38Y12" ))
  \Inst_UControl/tiempo<1>/DYMUX  (
    .I(\Inst_UControl/state_index0001 ),
    .O(\Inst_UControl/tiempo<1>/DYMUX_2361 )
  );
  X_INV #(
    .LOC ( "SLICE_X38Y12" ))
  \Inst_UControl/tiempo<1>/SRINV  (
    .I(\Inst_Interfaz/rst_n_728 ),
    .O(\Inst_UControl/tiempo<1>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X38Y12" ))
  \Inst_UControl/tiempo<1>/CLKINV  (
    .I(clk640),
    .O(\Inst_UControl/tiempo<1>/CLKINV_2352 )
  );
  X_LUT4 #(
    .INIT ( 16'h0301 ),
    .LOC ( "SLICE_X38Y12" ))
  \Inst_UControl/state_FSM_Out41  (
    .ADR0(\Inst_UControl/state_FSM_FFd1_734 ),
    .ADR1(\Inst_UControl/state_FSM_FFd4_730 ),
    .ADR2(\Inst_UControl/state_FSM_FFd2_733 ),
    .ADR3(\Inst_UControl/state_FSM_FFd3_731 ),
    .O(\Inst_UControl/state_index0001 )
  );
  X_BUF #(
    .LOC ( "SLICE_X56Y20" ))
  \leds_out_1/DXMUX  (
    .I(Mshreg_leds_out_1),
    .O(\leds_out_1/DXMUX_2431 )
  );
  X_BUF #(
    .LOC ( "SLICE_X56Y20" ))
  \leds_out_1/DIF_MUX  (
    .I(\Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd2_752 ),
    .O(\leds_out_1/DIF_MUX_2420 )
  );
  X_BUF #(
    .LOC ( "SLICE_X56Y20" ))
  \leds_out_1/DYMUX  (
    .I(Mshreg_leds_out_0),
    .O(\leds_out_1/DYMUX_2415 )
  );
  X_BUF #(
    .LOC ( "SLICE_X56Y20" ))
  \leds_out_1/DIG_MUX  (
    .I(modo_int_753),
    .O(\leds_out_1/DIG_MUX_2404 )
  );
  X_BUF #(
    .LOC ( "SLICE_X56Y20" ))
  \leds_out_1/SRINV  (
    .I(GLOBAL_LOGIC1),
    .O(\leds_out_1/SRINV_2396 )
  );
  X_BUF #(
    .LOC ( "SLICE_X56Y20" ))
  \leds_out_1/CLKINV  (
    .I(clk640),
    .O(\leds_out_1/CLKINV_2402 )
  );
  X_BUF #(
    .LOC ( "SLICE_X60Y22" ))
  \leds_out_3/DXMUX  (
    .I(\Inst_LEDS/led [3]),
    .O(\leds_out_3/DXMUX_2447 )
  );
  X_BUF #(
    .LOC ( "SLICE_X60Y22" ))
  \leds_out_3/DYMUX  (
    .I(\Inst_LEDS/led [2]),
    .O(\leds_out_3/DYMUX_2442 )
  );
  X_BUF #(
    .LOC ( "SLICE_X60Y22" ))
  \leds_out_3/CLKINV  (
    .I(clk640),
    .O(\leds_out_3/CLKINV_2440 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF33 ),
    .LOC ( "SLICE_X56Y24" ))
  \Inst_Interfaz/rotary_event_not00011  (
    .ADR0(VCC),
    .ADR1(\Inst_Interfaz/rotary_q1_744 ),
    .ADR2(VCC),
    .ADR3(\Inst_Interfaz/delay_rotary_q1_756 ),
    .O(\Inst_Interfaz/rotary_event_not0001 )
  );
  X_BUF #(
    .LOC ( "SLICE_X57Y25" ))
  \Inst_Interfaz/delay_rotary_q1/DYMUX  (
    .I(\Inst_Interfaz/rotary_q1_744 ),
    .O(\Inst_Interfaz/delay_rotary_q1/DYMUX_2480 )
  );
  X_BUF #(
    .LOC ( "SLICE_X57Y25" ))
  \Inst_Interfaz/delay_rotary_q1/CLKINV  (
    .I(clk640),
    .O(\Inst_Interfaz/delay_rotary_q1/CLKINV_2478 )
  );
  X_IPAD #(
    .LOC ( "IPAD219" ))
  \rot_in<1>/PAD  (
    .PAD(NlwRenamedSig_IO_rot_in[1])
  );
  X_PU #(
    .LOC ( "IPAD219" ))
  \rot_in<1>/PULLUP  (
    .O(NlwRenamedSig_IO_rot_in[1])
  );
  X_BUF #(
    .LOC ( "IPAD219" ))
  rot_in_1_IBUF (
    .I(NlwRenamedSig_IO_rot_in[1]),
    .O(rot_in_1_IBUF_1630)
  );
  X_OPAD #(
    .LOC ( "PAD240" ))
  \lcd_data_out<0>/PAD  (
    .PAD(lcd_data_out[0])
  );
  X_OBUF #(
    .LOC ( "PAD240" ))
  lcd_data_out_0_OBUF (
    .I(\lcd_data_out<0>/O ),
    .O(lcd_data_out[0])
  );
  X_OPAD #(
    .LOC ( "PAD220" ))
  \lcd_data_out<1>/PAD  (
    .PAD(lcd_data_out[1])
  );
  X_OBUF #(
    .LOC ( "PAD220" ))
  lcd_data_out_1_OBUF (
    .I(\lcd_data_out<1>/O ),
    .O(lcd_data_out[1])
  );
  X_OPAD #(
    .LOC ( "PAD221" ))
  \lcd_data_out<2>/PAD  (
    .PAD(lcd_data_out[2])
  );
  X_OBUF #(
    .LOC ( "PAD221" ))
  lcd_data_out_2_OBUF (
    .I(\lcd_data_out<2>/O ),
    .O(lcd_data_out[2])
  );
  X_OPAD #(
    .LOC ( "PAD236" ))
  \lcd_rw_out/PAD  (
    .PAD(lcd_rw_out)
  );
  X_OBUF #(
    .LOC ( "PAD236" ))
  lcd_rw_out_OBUF (
    .I(\lcd_rw_out/O ),
    .O(lcd_rw_out)
  );
  X_OPAD #(
    .LOC ( "PAD245" ))
  \lcd_data_out<3>/PAD  (
    .PAD(lcd_data_out[3])
  );
  X_OBUF #(
    .LOC ( "PAD245" ))
  lcd_data_out_3_OBUF (
    .I(\lcd_data_out<3>/O ),
    .O(lcd_data_out[3])
  );
  X_OPAD #(
    .LOC ( "PAD246" ))
  \lcd_data_out<4>/PAD  (
    .PAD(lcd_data_out[4])
  );
  X_OBUF #(
    .LOC ( "PAD246" ))
  lcd_data_out_4_OBUF (
    .I(\lcd_data_out<4>/O ),
    .O(lcd_data_out[4])
  );
  X_OPAD #(
    .LOC ( "PAD225" ))
  \lcd_data_out<5>/PAD  (
    .PAD(lcd_data_out[5])
  );
  X_OBUF #(
    .LOC ( "PAD225" ))
  lcd_data_out_5_OBUF (
    .I(\lcd_data_out<5>/O ),
    .O(lcd_data_out[5])
  );
  X_OPAD #(
    .LOC ( "PAD226" ))
  \lcd_data_out<6>/PAD  (
    .PAD(lcd_data_out[6])
  );
  X_OBUF #(
    .LOC ( "PAD226" ))
  lcd_data_out_6_OBUF (
    .I(\lcd_data_out<6>/O ),
    .O(lcd_data_out[6])
  );
  X_OPAD #(
    .LOC ( "PAD230" ))
  \lcd_data_out<7>/PAD  (
    .PAD(lcd_data_out[7])
  );
  X_OBUF #(
    .LOC ( "PAD230" ))
  lcd_data_out_7_OBUF (
    .I(\lcd_data_out<7>/O ),
    .O(lcd_data_out[7])
  );
  X_IPAD #(
    .LOC ( "IPAD279" ))
  \modo_in/PAD  (
    .PAD(NlwRenamedSig_IO_modo_in)
  );
  X_PU #(
    .LOC ( "IPAD279" ))
  \modo_in/PULLUP  (
    .O(NlwRenamedSig_IO_modo_in)
  );
  X_BUF #(
    .LOC ( "IPAD279" ))
  modo_in_IBUF (
    .I(NlwRenamedSig_IO_modo_in),
    .O(modo_in_IBUF_1709)
  );
  X_BUFGMUX #(
    .LOC ( "BUFGMUX_X1Y11" ))
  \Inst_Clock1562/CLK0_BUFG_INST  (
    .I0(\Inst_Clock1562/CLK0_BUFG_INST/I0_INV ),
    .I1(GND),
    .S(\Inst_Clock1562/CLK0_BUFG_INST/S_INVNOT ),
    .O(\Inst_Clock1562/CLK0_OUT )
  );
  X_INV #(
    .LOC ( "BUFGMUX_X1Y11" ))
  \Inst_Clock1562/CLK0_BUFG_INST/SINV  (
    .I(GLOBAL_LOGIC1),
    .O(\Inst_Clock1562/CLK0_BUFG_INST/S_INVNOT )
  );
  X_BUF #(
    .LOC ( "BUFGMUX_X1Y11" ))
  \Inst_Clock1562/CLK0_BUFG_INST/I0_USED  (
    .I(\Inst_Clock1562/CLK0_BUF ),
    .O(\Inst_Clock1562/CLK0_BUFG_INST/I0_INV )
  );
  X_DCM_SP #(
    .DUTY_CYCLE_CORRECTION ( "TRUE" ),
    .FACTORY_JF ( 16'hC080 ),
    .CLKDV_DIVIDE ( 16.000000 ),
    .CLKFX_DIVIDE ( 1 ),
    .CLKFX_MULTIPLY ( 4 ),
    .CLKOUT_PHASE_SHIFT ( "NONE" ),
    .CLKIN_PERIOD ( 40.0000000000000000 ),
    .DFS_FREQUENCY_MODE ( "LOW" ),
    .STARTUP_WAIT ( "FALSE" ),
    .CLK_FEEDBACK ( "1X" ),
    .DLL_FREQUENCY_MODE ( "LOW" ),
    .CLKIN_DIVIDE_BY_2 ( "TRUE" ),
    .PHASE_SHIFT ( 0 ),
    .LOC ( "DCM_X2Y3" ))
  \Inst_Clock1562/DCM_SP_INST  (
    .CLKIN(\Inst_Clock1562/DCM_SP_INST/CLKIN_BUF_1723 ),
    .CLKFB(\Inst_Clock1562/DCM_SP_INST/CLKFB_BUF_1724 ),
    .RST(GLOBAL_LOGIC0),
    .DSSEN(\NLW_Inst_Clock1562/DCM_SP_INST_DSSEN_UNCONNECTED ),
    .PSINCDEC(GLOBAL_LOGIC0),
    .PSEN(GLOBAL_LOGIC0),
    .PSCLK(GLOBAL_LOGIC0),
    .PSDONE(\Inst_Clock1562/DCM_SP_INST/PSDONE ),
    .LOCKED(\Inst_Clock1562/DCM_SP_INST/LOCKED ),
    .CLKFX180(\Inst_Clock1562/DCM_SP_INST/CLKFX180 ),
    .CLKFX(\Inst_Clock1562/DCM_SP_INST/CLKFX ),
    .CLKDV(\Inst_Clock1562/CLKDV_BUF ),
    .CLK2X180(\Inst_Clock1562/DCM_SP_INST/CLK2X180 ),
    .CLK2X(\Inst_Clock1562/DCM_SP_INST/CLK2X ),
    .CLK270(\Inst_Clock1562/DCM_SP_INST/CLK270 ),
    .CLK180(\Inst_Clock1562/DCM_SP_INST/CLK180 ),
    .CLK90(\Inst_Clock1562/DCM_SP_INST/CLK90 ),
    .CLK0(\Inst_Clock1562/CLK0_BUF ),
    .STATUS({\Inst_Clock1562/DCM_SP_INST/STATUS7 , \Inst_Clock1562/DCM_SP_INST/STATUS6 , \Inst_Clock1562/DCM_SP_INST/STATUS5 , 
\Inst_Clock1562/DCM_SP_INST/STATUS4 , \Inst_Clock1562/DCM_SP_INST/STATUS3 , \Inst_Clock1562/DCM_SP_INST/STATUS2 , \Inst_Clock1562/DCM_SP_INST/STATUS1 
, \Inst_Clock1562/DCM_SP_INST/STATUS0 })
  );
  X_BUF #(
    .LOC ( "DCM_X2Y3" ))
  \Inst_Clock1562/DCM_SP_INST/CLKFB_BUF  (
    .I(\Inst_Clock1562/CLK0_OUT ),
    .O(\Inst_Clock1562/DCM_SP_INST/CLKFB_BUF_1724 )
  );
  X_BUF #(
    .LOC ( "DCM_X2Y3" ))
  \Inst_Clock1562/DCM_SP_INST/CLKIN_BUF  (
    .I(\Inst_Clock1562/CLKIN_IBUFG_OUT ),
    .O(\Inst_Clock1562/DCM_SP_INST/CLKIN_BUF_1723 )
  );
  X_BUFGMUX #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \Inst_Clock1562/CLKDV_BUFG_INST  (
    .I0(\Inst_Clock1562/CLKDV_BUFG_INST/I0_INV ),
    .I1(GND),
    .S(\Inst_Clock1562/CLKDV_BUFG_INST/S_INVNOT ),
    .O(clk640)
  );
  X_INV #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \Inst_Clock1562/CLKDV_BUFG_INST/SINV  (
    .I(GLOBAL_LOGIC1),
    .O(\Inst_Clock1562/CLKDV_BUFG_INST/S_INVNOT )
  );
  X_BUF #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \Inst_Clock1562/CLKDV_BUFG_INST/I0_USED  (
    .I(\Inst_Clock1562/CLKDV_BUF ),
    .O(\Inst_Clock1562/CLKDV_BUFG_INST/I0_INV )
  );
  X_BUF #(
    .LOC ( "SLICE_X36Y18" ))
  \Inst_Counter/tic/DXMUX  (
    .I(\Inst_Counter/tic/F5MUX_1773 ),
    .O(\Inst_Counter/tic/DXMUX_1775 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X36Y18" ))
  \Inst_Counter/tic/F5MUX  (
    .IA(\Inst_Counter/Mmux_tic_mux0001_4_1763 ),
    .IB(\Inst_Counter/Mmux_tic_mux0001_3_1771 ),
    .SEL(\Inst_Counter/tic/BXINV_1765 ),
    .O(\Inst_Counter/tic/F5MUX_1773 )
  );
  X_BUF #(
    .LOC ( "SLICE_X36Y18" ))
  \Inst_Counter/tic/BXINV  (
    .I(\Inst_UControl/tiempo [1]),
    .O(\Inst_Counter/tic/BXINV_1765 )
  );
  X_BUF #(
    .LOC ( "SLICE_X36Y18" ))
  \Inst_Counter/tic/CLKINV  (
    .I(clk640),
    .O(\Inst_Counter/tic/CLKINV_1757 )
  );
  X_LUT4 #(
    .INIT ( 16'hD8D8 ),
    .LOC ( "SLICE_X36Y18" ))
  \Inst_Counter/Mmux_tic_mux0001_4  (
    .ADR0(\Inst_UControl/tiempo [0]),
    .ADR1(\Inst_Counter/temp [7]),
    .ADR2(\Inst_Counter/temp [5]),
    .ADR3(VCC),
    .O(\Inst_Counter/Mmux_tic_mux0001_4_1763 )
  );
  X_BUF #(
    .LOC ( "SLICE_X39Y8" ))
  \Inst_UControl/LCD_E/DXMUX  (
    .I(\Inst_UControl/_mux0000 ),
    .O(\Inst_UControl/LCD_E/DXMUX_1807 )
  );
  X_BUF #(
    .LOC ( "SLICE_X39Y8" ))
  \Inst_UControl/LCD_E/YUSED  (
    .I(\Inst_UControl/state_FSM_Out2_SW0/O_pack_1 ),
    .O(\Inst_UControl/state_FSM_Out2_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X39Y8" ))
  \Inst_UControl/LCD_E/CLKINV  (
    .I(clk640),
    .O(\Inst_UControl/LCD_E/CLKINV_1789 )
  );
  X_LUT4 #(
    .INIT ( 16'hEEEE ),
    .LOC ( "SLICE_X39Y8" ))
  \Inst_UControl/state_FSM_Out2_SW0  (
    .ADR0(\Inst_UControl/state_FSM_FFd2_733 ),
    .ADR1(\Inst_UControl/state_FSM_FFd1_734 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Inst_UControl/state_FSM_Out2_SW0/O_pack_1 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y38" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_not0001/YUSED  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000016_pack_1 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000016_736 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X50Y38" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000016  (
    .ADR0(\Inst_Interfaz/Inst_divDEBOUNCER/contador [8]),
    .ADR1(\Inst_Interfaz/Inst_divDEBOUNCER/contador [10]),
    .ADR2(\Inst_Interfaz/Inst_divDEBOUNCER/contador [11]),
    .ADR3(\Inst_Interfaz/Inst_divDEBOUNCER/contador [9]),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000016_pack_1 )
  );
  X_BUF #(
    .LOC ( "SLICE_X38Y11" ))
  \Inst_UControl/state_FSM_FFd2/DXMUX  (
    .I(\Inst_UControl/state_FSM_FFd2-In_1863 ),
    .O(\Inst_UControl/state_FSM_FFd2/DXMUX_1866 )
  );
  X_BUF #(
    .LOC ( "SLICE_X38Y11" ))
  \Inst_UControl/state_FSM_FFd2/YUSED  (
    .I(\Inst_UControl/state_FSM_FFd2-In_SW2/O_pack_1 ),
    .O(\Inst_UControl/state_FSM_FFd2-In_SW2/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X38Y11" ))
  \Inst_UControl/state_FSM_FFd2/CLKINV  (
    .I(clk640),
    .O(\Inst_UControl/state_FSM_FFd2/CLKINV_1848 )
  );
  X_LUT4 #(
    .INIT ( 16'h7777 ),
    .LOC ( "SLICE_X38Y11" ))
  \Inst_UControl/state_FSM_FFd2-In_SW2  (
    .ADR0(\Inst_Counter/tic_727 ),
    .ADR1(\Inst_UControl/state_FSM_FFd3_731 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Inst_UControl/state_FSM_FFd2-In_SW2/O_pack_1 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y39" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000/XUSED  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y39" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000/YUSED  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000011_pack_1 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000011_735 )
  );
  X_LUT4 #(
    .INIT ( 16'h0002 ),
    .LOC ( "SLICE_X50Y39" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000011  (
    .ADR0(\Inst_Interfaz/Inst_divDEBOUNCER/contador [1]),
    .ADR1(\Inst_Interfaz/Inst_divDEBOUNCER/contador [2]),
    .ADR2(\Inst_Interfaz/Inst_divDEBOUNCER/contador [0]),
    .ADR3(\Inst_Interfaz/Inst_divDEBOUNCER/contador [3]),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000011_pack_1 )
  );
  X_BUF #(
    .LOC ( "SLICE_X39Y12" ))
  \Inst_UControl/state_FSM_FFd3/DXMUX  (
    .I(\Inst_UControl/state_FSM_FFd3-In_1922 ),
    .O(\Inst_UControl/state_FSM_FFd3/DXMUX_1925 )
  );
  X_BUF #(
    .LOC ( "SLICE_X39Y12" ))
  \Inst_UControl/state_FSM_FFd3/YUSED  (
    .I(\Inst_UControl/state_FSM_FFd3-In_SW1/O_pack_1 ),
    .O(\Inst_UControl/state_FSM_FFd3-In_SW1/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X39Y12" ))
  \Inst_UControl/state_FSM_FFd3/CLKINV  (
    .I(clk640),
    .O(\Inst_UControl/state_FSM_FFd3/CLKINV_1909 )
  );
  X_LUT4 #(
    .INIT ( 16'hEE88 ),
    .LOC ( "SLICE_X54Y19" ))
  \Inst_Interfaz/Mmux_rotary_q1_mux000011  (
    .ADR0(\Inst_Interfaz/rotary_q1_744 ),
    .ADR1(\Inst_Interfaz/rotary_in [0]),
    .ADR2(VCC),
    .ADR3(\Inst_Interfaz/rotary_in [1]),
    .O(\Inst_Interfaz/rotary_q1_mux0000 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y19" ))
  \Inst_Interfaz/rotary_q2/DXMUX  (
    .I(\Inst_Interfaz/rotary_q2_mux0000 ),
    .O(\Inst_Interfaz/rotary_q2/DXMUX_1962 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y19" ))
  \Inst_Interfaz/rotary_q2/DYMUX  (
    .I(\Inst_Interfaz/rotary_q1_mux0000 ),
    .O(\Inst_Interfaz/rotary_q2/DYMUX_1950 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y19" ))
  \Inst_Interfaz/rotary_q2/CLKINV  (
    .I(clk640),
    .O(\Inst_Interfaz/rotary_q2/CLKINV_1941 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y23" ))
  \Inst_Counter/temp<14>/DXMUX  (
    .I(\Inst_Counter/temp<14>/XORF_1486 ),
    .O(\Inst_Counter/temp<14>/DXMUX_1488 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X37Y23" ))
  \Inst_Counter/temp<14>/XORF  (
    .I0(\Inst_Counter/temp<14>/CYINIT_1485 ),
    .I1(\Inst_Counter/temp<14>_rt_1483 ),
    .O(\Inst_Counter/temp<14>/XORF_1486 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y23" ))
  \Inst_Counter/temp<14>/CYINIT  (
    .I(\Inst_Counter/temp<12>/CYMUXFAST_1438 ),
    .O(\Inst_Counter/temp<14>/CYINIT_1485 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y23" ))
  \Inst_Counter/temp<14>/CLKINV  (
    .I(clk640),
    .O(\Inst_Counter/temp<14>/CLKINV_1474 )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X37Y23" ))
  \Inst_Counter/temp<14>_rt  (
    .ADR0(VCC),
    .ADR1(\Inst_Counter/temp [14]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Inst_Counter/temp<14>_rt_1483 )
  );
  X_IPAD #(
    .LOC ( "PAD54" ))
  \clk50/PAD  (
    .PAD(clk50)
  );
  X_BUF #(
    .LOC ( "PAD54" ))
  \Inst_Clock1562/CLKIN_IBUFG_INST  (
    .I(clk50),
    .O(\Inst_Clock1562/CLKIN_IBUFG_OUT )
  );
  X_OPAD #(
    .LOC ( "PAD278" ))
  \lcd_e_out/PAD  (
    .PAD(lcd_e_out)
  );
  X_OBUF #(
    .LOC ( "PAD278" ))
  lcd_e_out_OBUF (
    .I(\lcd_e_out/O ),
    .O(lcd_e_out)
  );
  X_OPAD #(
    .LOC ( "PAD235" ))
  \lcd_rs_out/PAD  (
    .PAD(lcd_rs_out)
  );
  X_OBUF #(
    .LOC ( "PAD235" ))
  lcd_rs_out_OBUF (
    .I(\lcd_rs_out/O ),
    .O(lcd_rs_out)
  );
  X_OPAD #(
    .LOC ( "PAD172" ))
  \leds_out<0>/PAD  (
    .PAD(leds_out[0])
  );
  X_OBUF #(
    .LOC ( "PAD172" ))
  leds_out_0_OBUF (
    .I(\leds_out<0>/O ),
    .O(leds_out[0])
  );
  X_OPAD #(
    .LOC ( "PAD171" ))
  \leds_out<1>/PAD  (
    .PAD(leds_out[1])
  );
  X_OBUF #(
    .LOC ( "PAD171" ))
  leds_out_1_OBUF (
    .I(\leds_out<1>/O ),
    .O(leds_out[1])
  );
  X_OPAD #(
    .LOC ( "PAD178" ))
  \leds_out<2>/PAD  (
    .PAD(leds_out[2])
  );
  X_OBUF #(
    .LOC ( "PAD178" ))
  leds_out_2_OBUF (
    .I(\leds_out<2>/O ),
    .O(leds_out[2])
  );
  X_IPAD #(
    .LOC ( "IPAD229" ))
  \rot_press_in/PAD  (
    .PAD(NlwRenamedSig_IO_rot_press_in)
  );
  X_PD #(
    .LOC ( "IPAD229" ))
  \rot_press_in/PULLDOWN  (
    .O(NlwRenamedSig_IO_rot_press_in)
  );
  X_BUF #(
    .LOC ( "IPAD229" ))
  rot_press_in_IBUF (
    .I(NlwRenamedSig_IO_rot_press_in),
    .O(rot_press_in_IBUF_1548)
  );
  X_OPAD #(
    .LOC ( "PAD177" ))
  \leds_out<3>/PAD  (
    .PAD(leds_out[3])
  );
  X_OBUF #(
    .LOC ( "PAD177" ))
  leds_out_3_OBUF (
    .I(\leds_out<3>/O ),
    .O(leds_out[3])
  );
  X_OPAD #(
    .LOC ( "PAD186" ))
  \leds_out<4>/PAD  (
    .PAD(leds_out[4])
  );
  X_OBUF #(
    .LOC ( "PAD186" ))
  leds_out_4_OBUF (
    .I(\leds_out<4>/O ),
    .O(leds_out[4])
  );
  X_OPAD #(
    .LOC ( "PAD185" ))
  \leds_out<5>/PAD  (
    .PAD(leds_out[5])
  );
  X_OBUF #(
    .LOC ( "PAD185" ))
  leds_out_5_OBUF (
    .I(\leds_out<5>/O ),
    .O(leds_out[5])
  );
  X_OPAD #(
    .LOC ( "PAD188" ))
  \leds_out<6>/PAD  (
    .PAD(leds_out[6])
  );
  X_OBUF #(
    .LOC ( "PAD188" ))
  leds_out_6_OBUF (
    .I(\leds_out<6>/O ),
    .O(leds_out[6])
  );
  X_OPAD #(
    .LOC ( "PAD187" ))
  \leds_out<7>/PAD  (
    .PAD(leds_out[7])
  );
  X_OBUF #(
    .LOC ( "PAD187" ))
  leds_out_7_OBUF (
    .I(\leds_out<7>/O ),
    .O(leds_out[7])
  );
  X_IPAD #(
    .LOC ( "IPAD214" ))
  \pb_in<0>/PAD  (
    .PAD(NlwRenamedSig_IO_pb_in[0])
  );
  X_PD #(
    .LOC ( "IPAD214" ))
  \pb_in<0>/PULLDOWN  (
    .O(NlwRenamedSig_IO_pb_in[0])
  );
  X_BUF #(
    .LOC ( "IPAD214" ))
  pb_in_0_IBUF (
    .I(NlwRenamedSig_IO_pb_in[0]),
    .O(pb_in_0_IBUF_1595)
  );
  X_IPAD #(
    .LOC ( "IPAD204" ))
  \pb_in<1>/PAD  (
    .PAD(NlwRenamedSig_IO_pb_in[1])
  );
  X_PD #(
    .LOC ( "IPAD204" ))
  \pb_in<1>/PULLDOWN  (
    .O(NlwRenamedSig_IO_pb_in[1])
  );
  X_BUF #(
    .LOC ( "IPAD204" ))
  pb_in_1_IBUF (
    .I(NlwRenamedSig_IO_pb_in[1]),
    .O(pb_in_1_IBUF_1602)
  );
  X_IPAD #(
    .LOC ( "IPAD199" ))
  \pb_in<2>/PAD  (
    .PAD(NlwRenamedSig_IO_pb_in[2])
  );
  X_PD #(
    .LOC ( "IPAD199" ))
  \pb_in<2>/PULLDOWN  (
    .O(NlwRenamedSig_IO_pb_in[2])
  );
  X_BUF #(
    .LOC ( "IPAD199" ))
  pb_in_2_IBUF (
    .I(NlwRenamedSig_IO_pb_in[2]),
    .O(pb_in_2_IBUF_1609)
  );
  X_IPAD #(
    .LOC ( "IPAD209" ))
  \pb_in<3>/PAD  (
    .PAD(NlwRenamedSig_IO_pb_in[3])
  );
  X_PD #(
    .LOC ( "IPAD209" ))
  \pb_in<3>/PULLDOWN  (
    .O(NlwRenamedSig_IO_pb_in[3])
  );
  X_BUF #(
    .LOC ( "IPAD209" ))
  pb_in_3_IBUF (
    .I(NlwRenamedSig_IO_pb_in[3]),
    .O(pb_in_3_IBUF_1616)
  );
  X_IPAD #(
    .LOC ( "IPAD224" ))
  \rot_in<0>/PAD  (
    .PAD(NlwRenamedSig_IO_rot_in[0])
  );
  X_PU #(
    .LOC ( "IPAD224" ))
  \rot_in<0>/PULLUP  (
    .O(NlwRenamedSig_IO_rot_in[0])
  );
  X_BUF #(
    .LOC ( "IPAD224" ))
  rot_in_0_IBUF (
    .I(NlwRenamedSig_IO_rot_in[0]),
    .O(rot_in_0_IBUF_1623)
  );
  X_ZERO #(
    .LOC ( "SLICE_X51Y41" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/LOGIC_ZERO  (
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/LOGIC_ZERO_1072 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y41" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/DXMUX  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/XORF_1073 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/DXMUX_1075 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y41" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/XORF  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/CYINIT_1071 ),
    .I1(\Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/F ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/XORF_1073 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y41" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/CYMUXF  (
    .IA(\Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/LOGIC_ZERO_1072 ),
    .IB(\Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/CYINIT_1071 ),
    .SEL(\Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/CYSELF_1062 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[10] )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y41" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/CYINIT  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYMUXFAST_1008 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/CYINIT_1071 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y41" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/CYSELF  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/F ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/CYSELF_1062 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y41" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/DYMUX  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/XORG_1054 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/DYMUX_1056 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y41" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/XORG  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[10] ),
    .I1(\Inst_Interfaz/Inst_divDEBOUNCER/contador<11>_rt_1051 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/XORG_1054 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y41" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/SRINV  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000_0 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/SRINV_1043 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y41" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/CLKINV  (
    .I(clk640),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/CLKINV_1042 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X37Y16" ))
  \Inst_Counter/temp<0>/LOGIC_ZERO  (
    .O(\Inst_Counter/temp<0>/LOGIC_ZERO_1100 )
  );
  X_ONE #(
    .LOC ( "SLICE_X37Y16" ))
  \Inst_Counter/temp<0>/LOGIC_ONE  (
    .O(\Inst_Counter/temp<0>/LOGIC_ONE_1124 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y16" ))
  \Inst_Counter/temp<0>/DXMUX  (
    .I(\Inst_Counter/Mcount_temp_lut [0]),
    .O(\Inst_Counter/temp<0>/DXMUX_1126 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y16" ))
  \Inst_Counter/temp<0>/CYMUXF  (
    .IA(\Inst_Counter/temp<0>/LOGIC_ONE_1124 ),
    .IB(\Inst_Counter/temp<0>/CYINIT_1123 ),
    .SEL(\Inst_Counter/temp<0>/CYSELF_1114 ),
    .O(\Inst_Counter/Mcount_temp_cy [0])
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y16" ))
  \Inst_Counter/temp<0>/CYINIT  (
    .I(GLOBAL_LOGIC0),
    .O(\Inst_Counter/temp<0>/CYINIT_1123 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y16" ))
  \Inst_Counter/temp<0>/CYSELF  (
    .I(\Inst_Counter/Mcount_temp_lut [0]),
    .O(\Inst_Counter/temp<0>/CYSELF_1114 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y16" ))
  \Inst_Counter/temp<0>/DYMUX  (
    .I(\Inst_Counter/temp<0>/XORG_1103 ),
    .O(\Inst_Counter/temp<0>/DYMUX_1105 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X37Y16" ))
  \Inst_Counter/temp<0>/XORG  (
    .I0(\Inst_Counter/Mcount_temp_cy [0]),
    .I1(\Inst_Counter/temp<0>/G ),
    .O(\Inst_Counter/temp<0>/XORG_1103 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y16" ))
  \Inst_Counter/temp<0>/COUTUSED  (
    .I(\Inst_Counter/temp<0>/CYMUXG_1102 ),
    .O(\Inst_Counter/Mcount_temp_cy [1])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y16" ))
  \Inst_Counter/temp<0>/CYMUXG  (
    .IA(\Inst_Counter/temp<0>/LOGIC_ZERO_1100 ),
    .IB(\Inst_Counter/Mcount_temp_cy [0]),
    .SEL(\Inst_Counter/temp<0>/CYSELG_1091 ),
    .O(\Inst_Counter/temp<0>/CYMUXG_1102 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y16" ))
  \Inst_Counter/temp<0>/CYSELG  (
    .I(\Inst_Counter/temp<0>/G ),
    .O(\Inst_Counter/temp<0>/CYSELG_1091 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y16" ))
  \Inst_Counter/temp<0>/SRINV  (
    .I(\Inst_UControl/clr_timer_673 ),
    .O(\Inst_Counter/temp<0>/SRINV_1089 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y16" ))
  \Inst_Counter/temp<0>/CLKINV  (
    .I(clk640),
    .O(\Inst_Counter/temp<0>/CLKINV_1088 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X37Y17" ))
  \Inst_Counter/temp<2>/LOGIC_ZERO  (
    .O(\Inst_Counter/temp<2>/LOGIC_ZERO_1153 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y17" ))
  \Inst_Counter/temp<2>/DXMUX  (
    .I(\Inst_Counter/temp<2>/XORF_1180 ),
    .O(\Inst_Counter/temp<2>/DXMUX_1182 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X37Y17" ))
  \Inst_Counter/temp<2>/XORF  (
    .I0(\Inst_Counter/temp<2>/CYINIT_1179 ),
    .I1(\Inst_Counter/temp<2>/F ),
    .O(\Inst_Counter/temp<2>/XORF_1180 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y17" ))
  \Inst_Counter/temp<2>/CYMUXF  (
    .IA(\Inst_Counter/temp<2>/LOGIC_ZERO_1153 ),
    .IB(\Inst_Counter/temp<2>/CYINIT_1179 ),
    .SEL(\Inst_Counter/temp<2>/CYSELF_1159 ),
    .O(\Inst_Counter/Mcount_temp_cy [2])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y17" ))
  \Inst_Counter/temp<2>/CYMUXF2  (
    .IA(\Inst_Counter/temp<2>/LOGIC_ZERO_1153 ),
    .IB(\Inst_Counter/temp<2>/LOGIC_ZERO_1153 ),
    .SEL(\Inst_Counter/temp<2>/CYSELF_1159 ),
    .O(\Inst_Counter/temp<2>/CYMUXF2_1154 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y17" ))
  \Inst_Counter/temp<2>/CYINIT  (
    .I(\Inst_Counter/Mcount_temp_cy [1]),
    .O(\Inst_Counter/temp<2>/CYINIT_1179 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y17" ))
  \Inst_Counter/temp<2>/CYSELF  (
    .I(\Inst_Counter/temp<2>/F ),
    .O(\Inst_Counter/temp<2>/CYSELF_1159 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y17" ))
  \Inst_Counter/temp<2>/DYMUX  (
    .I(\Inst_Counter/temp<2>/XORG_1161 ),
    .O(\Inst_Counter/temp<2>/DYMUX_1163 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X37Y17" ))
  \Inst_Counter/temp<2>/XORG  (
    .I0(\Inst_Counter/Mcount_temp_cy [2]),
    .I1(\Inst_Counter/temp<2>/G ),
    .O(\Inst_Counter/temp<2>/XORG_1161 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y17" ))
  \Inst_Counter/temp<2>/COUTUSED  (
    .I(\Inst_Counter/temp<2>/CYMUXFAST_1158 ),
    .O(\Inst_Counter/Mcount_temp_cy [3])
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y17" ))
  \Inst_Counter/temp<2>/FASTCARRY  (
    .I(\Inst_Counter/Mcount_temp_cy [1]),
    .O(\Inst_Counter/temp<2>/FASTCARRY_1156 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X37Y17" ))
  \Inst_Counter/temp<2>/CYAND  (
    .I0(\Inst_Counter/temp<2>/CYSELG_1144 ),
    .I1(\Inst_Counter/temp<2>/CYSELF_1159 ),
    .O(\Inst_Counter/temp<2>/CYAND_1157 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y17" ))
  \Inst_Counter/temp<2>/CYMUXFAST  (
    .IA(\Inst_Counter/temp<2>/CYMUXG2_1155 ),
    .IB(\Inst_Counter/temp<2>/FASTCARRY_1156 ),
    .SEL(\Inst_Counter/temp<2>/CYAND_1157 ),
    .O(\Inst_Counter/temp<2>/CYMUXFAST_1158 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y17" ))
  \Inst_Counter/temp<2>/CYMUXG2  (
    .IA(\Inst_Counter/temp<2>/LOGIC_ZERO_1153 ),
    .IB(\Inst_Counter/temp<2>/CYMUXF2_1154 ),
    .SEL(\Inst_Counter/temp<2>/CYSELG_1144 ),
    .O(\Inst_Counter/temp<2>/CYMUXG2_1155 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y17" ))
  \Inst_Counter/temp<2>/CYSELG  (
    .I(\Inst_Counter/temp<2>/G ),
    .O(\Inst_Counter/temp<2>/CYSELG_1144 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y17" ))
  \Inst_Counter/temp<2>/SRINV  (
    .I(\Inst_UControl/clr_timer_673 ),
    .O(\Inst_Counter/temp<2>/SRINV_1142 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y17" ))
  \Inst_Counter/temp<2>/CLKINV  (
    .I(clk640),
    .O(\Inst_Counter/temp<2>/CLKINV_1141 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X37Y18" ))
  \Inst_Counter/temp<4>/LOGIC_ZERO  (
    .O(\Inst_Counter/temp<4>/LOGIC_ZERO_1209 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y18" ))
  \Inst_Counter/temp<4>/DXMUX  (
    .I(\Inst_Counter/temp<4>/XORF_1236 ),
    .O(\Inst_Counter/temp<4>/DXMUX_1238 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X37Y18" ))
  \Inst_Counter/temp<4>/XORF  (
    .I0(\Inst_Counter/temp<4>/CYINIT_1235 ),
    .I1(\Inst_Counter/temp<4>/F ),
    .O(\Inst_Counter/temp<4>/XORF_1236 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y18" ))
  \Inst_Counter/temp<4>/CYMUXF  (
    .IA(\Inst_Counter/temp<4>/LOGIC_ZERO_1209 ),
    .IB(\Inst_Counter/temp<4>/CYINIT_1235 ),
    .SEL(\Inst_Counter/temp<4>/CYSELF_1215 ),
    .O(\Inst_Counter/Mcount_temp_cy [4])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y18" ))
  \Inst_Counter/temp<4>/CYMUXF2  (
    .IA(\Inst_Counter/temp<4>/LOGIC_ZERO_1209 ),
    .IB(\Inst_Counter/temp<4>/LOGIC_ZERO_1209 ),
    .SEL(\Inst_Counter/temp<4>/CYSELF_1215 ),
    .O(\Inst_Counter/temp<4>/CYMUXF2_1210 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y18" ))
  \Inst_Counter/temp<4>/CYINIT  (
    .I(\Inst_Counter/Mcount_temp_cy [3]),
    .O(\Inst_Counter/temp<4>/CYINIT_1235 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y18" ))
  \Inst_Counter/temp<4>/CYSELF  (
    .I(\Inst_Counter/temp<4>/F ),
    .O(\Inst_Counter/temp<4>/CYSELF_1215 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y18" ))
  \Inst_Counter/temp<4>/DYMUX  (
    .I(\Inst_Counter/temp<4>/XORG_1217 ),
    .O(\Inst_Counter/temp<4>/DYMUX_1219 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X37Y18" ))
  \Inst_Counter/temp<4>/XORG  (
    .I0(\Inst_Counter/Mcount_temp_cy [4]),
    .I1(\Inst_Counter/temp<4>/G ),
    .O(\Inst_Counter/temp<4>/XORG_1217 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y18" ))
  \Inst_Counter/temp<4>/COUTUSED  (
    .I(\Inst_Counter/temp<4>/CYMUXFAST_1214 ),
    .O(\Inst_Counter/Mcount_temp_cy [5])
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y18" ))
  \Inst_Counter/temp<4>/FASTCARRY  (
    .I(\Inst_Counter/Mcount_temp_cy [3]),
    .O(\Inst_Counter/temp<4>/FASTCARRY_1212 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X37Y18" ))
  \Inst_Counter/temp<4>/CYAND  (
    .I0(\Inst_Counter/temp<4>/CYSELG_1200 ),
    .I1(\Inst_Counter/temp<4>/CYSELF_1215 ),
    .O(\Inst_Counter/temp<4>/CYAND_1213 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y18" ))
  \Inst_Counter/temp<4>/CYMUXFAST  (
    .IA(\Inst_Counter/temp<4>/CYMUXG2_1211 ),
    .IB(\Inst_Counter/temp<4>/FASTCARRY_1212 ),
    .SEL(\Inst_Counter/temp<4>/CYAND_1213 ),
    .O(\Inst_Counter/temp<4>/CYMUXFAST_1214 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y18" ))
  \Inst_Counter/temp<4>/CYMUXG2  (
    .IA(\Inst_Counter/temp<4>/LOGIC_ZERO_1209 ),
    .IB(\Inst_Counter/temp<4>/CYMUXF2_1210 ),
    .SEL(\Inst_Counter/temp<4>/CYSELG_1200 ),
    .O(\Inst_Counter/temp<4>/CYMUXG2_1211 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y18" ))
  \Inst_Counter/temp<4>/CYSELG  (
    .I(\Inst_Counter/temp<4>/G ),
    .O(\Inst_Counter/temp<4>/CYSELG_1200 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y18" ))
  \Inst_Counter/temp<4>/SRINV  (
    .I(\Inst_UControl/clr_timer_673 ),
    .O(\Inst_Counter/temp<4>/SRINV_1198 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y18" ))
  \Inst_Counter/temp<4>/CLKINV  (
    .I(clk640),
    .O(\Inst_Counter/temp<4>/CLKINV_1197 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X37Y19" ))
  \Inst_Counter/temp<6>/LOGIC_ZERO  (
    .O(\Inst_Counter/temp<6>/LOGIC_ZERO_1265 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y19" ))
  \Inst_Counter/temp<6>/DXMUX  (
    .I(\Inst_Counter/temp<6>/XORF_1292 ),
    .O(\Inst_Counter/temp<6>/DXMUX_1294 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X37Y19" ))
  \Inst_Counter/temp<6>/XORF  (
    .I0(\Inst_Counter/temp<6>/CYINIT_1291 ),
    .I1(\Inst_Counter/temp<6>/F ),
    .O(\Inst_Counter/temp<6>/XORF_1292 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y19" ))
  \Inst_Counter/temp<6>/CYMUXF  (
    .IA(\Inst_Counter/temp<6>/LOGIC_ZERO_1265 ),
    .IB(\Inst_Counter/temp<6>/CYINIT_1291 ),
    .SEL(\Inst_Counter/temp<6>/CYSELF_1271 ),
    .O(\Inst_Counter/Mcount_temp_cy [6])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y19" ))
  \Inst_Counter/temp<6>/CYMUXF2  (
    .IA(\Inst_Counter/temp<6>/LOGIC_ZERO_1265 ),
    .IB(\Inst_Counter/temp<6>/LOGIC_ZERO_1265 ),
    .SEL(\Inst_Counter/temp<6>/CYSELF_1271 ),
    .O(\Inst_Counter/temp<6>/CYMUXF2_1266 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y19" ))
  \Inst_Counter/temp<6>/CYINIT  (
    .I(\Inst_Counter/Mcount_temp_cy [5]),
    .O(\Inst_Counter/temp<6>/CYINIT_1291 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y19" ))
  \Inst_Counter/temp<6>/CYSELF  (
    .I(\Inst_Counter/temp<6>/F ),
    .O(\Inst_Counter/temp<6>/CYSELF_1271 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y19" ))
  \Inst_Counter/temp<6>/DYMUX  (
    .I(\Inst_Counter/temp<6>/XORG_1273 ),
    .O(\Inst_Counter/temp<6>/DYMUX_1275 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X37Y19" ))
  \Inst_Counter/temp<6>/XORG  (
    .I0(\Inst_Counter/Mcount_temp_cy [6]),
    .I1(\Inst_Counter/temp<6>/G ),
    .O(\Inst_Counter/temp<6>/XORG_1273 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y19" ))
  \Inst_Counter/temp<6>/COUTUSED  (
    .I(\Inst_Counter/temp<6>/CYMUXFAST_1270 ),
    .O(\Inst_Counter/Mcount_temp_cy [7])
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y19" ))
  \Inst_Counter/temp<6>/FASTCARRY  (
    .I(\Inst_Counter/Mcount_temp_cy [5]),
    .O(\Inst_Counter/temp<6>/FASTCARRY_1268 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X37Y19" ))
  \Inst_Counter/temp<6>/CYAND  (
    .I0(\Inst_Counter/temp<6>/CYSELG_1256 ),
    .I1(\Inst_Counter/temp<6>/CYSELF_1271 ),
    .O(\Inst_Counter/temp<6>/CYAND_1269 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y19" ))
  \Inst_Counter/temp<6>/CYMUXFAST  (
    .IA(\Inst_Counter/temp<6>/CYMUXG2_1267 ),
    .IB(\Inst_Counter/temp<6>/FASTCARRY_1268 ),
    .SEL(\Inst_Counter/temp<6>/CYAND_1269 ),
    .O(\Inst_Counter/temp<6>/CYMUXFAST_1270 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y19" ))
  \Inst_Counter/temp<6>/CYMUXG2  (
    .IA(\Inst_Counter/temp<6>/LOGIC_ZERO_1265 ),
    .IB(\Inst_Counter/temp<6>/CYMUXF2_1266 ),
    .SEL(\Inst_Counter/temp<6>/CYSELG_1256 ),
    .O(\Inst_Counter/temp<6>/CYMUXG2_1267 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y19" ))
  \Inst_Counter/temp<6>/CYSELG  (
    .I(\Inst_Counter/temp<6>/G ),
    .O(\Inst_Counter/temp<6>/CYSELG_1256 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y19" ))
  \Inst_Counter/temp<6>/SRINV  (
    .I(\Inst_UControl/clr_timer_673 ),
    .O(\Inst_Counter/temp<6>/SRINV_1254 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y19" ))
  \Inst_Counter/temp<6>/CLKINV  (
    .I(clk640),
    .O(\Inst_Counter/temp<6>/CLKINV_1253 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X37Y20" ))
  \Inst_Counter/temp<8>/LOGIC_ZERO  (
    .O(\Inst_Counter/temp<8>/LOGIC_ZERO_1321 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y20" ))
  \Inst_Counter/temp<8>/DXMUX  (
    .I(\Inst_Counter/temp<8>/XORF_1348 ),
    .O(\Inst_Counter/temp<8>/DXMUX_1350 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X37Y20" ))
  \Inst_Counter/temp<8>/XORF  (
    .I0(\Inst_Counter/temp<8>/CYINIT_1347 ),
    .I1(\Inst_Counter/temp<8>/F ),
    .O(\Inst_Counter/temp<8>/XORF_1348 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y20" ))
  \Inst_Counter/temp<8>/CYMUXF  (
    .IA(\Inst_Counter/temp<8>/LOGIC_ZERO_1321 ),
    .IB(\Inst_Counter/temp<8>/CYINIT_1347 ),
    .SEL(\Inst_Counter/temp<8>/CYSELF_1327 ),
    .O(\Inst_Counter/Mcount_temp_cy [8])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y20" ))
  \Inst_Counter/temp<8>/CYMUXF2  (
    .IA(\Inst_Counter/temp<8>/LOGIC_ZERO_1321 ),
    .IB(\Inst_Counter/temp<8>/LOGIC_ZERO_1321 ),
    .SEL(\Inst_Counter/temp<8>/CYSELF_1327 ),
    .O(\Inst_Counter/temp<8>/CYMUXF2_1322 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y20" ))
  \Inst_Counter/temp<8>/CYINIT  (
    .I(\Inst_Counter/Mcount_temp_cy [7]),
    .O(\Inst_Counter/temp<8>/CYINIT_1347 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y20" ))
  \Inst_Counter/temp<8>/CYSELF  (
    .I(\Inst_Counter/temp<8>/F ),
    .O(\Inst_Counter/temp<8>/CYSELF_1327 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y20" ))
  \Inst_Counter/temp<8>/DYMUX  (
    .I(\Inst_Counter/temp<8>/XORG_1329 ),
    .O(\Inst_Counter/temp<8>/DYMUX_1331 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X37Y20" ))
  \Inst_Counter/temp<8>/XORG  (
    .I0(\Inst_Counter/Mcount_temp_cy [8]),
    .I1(\Inst_Counter/temp<8>/G ),
    .O(\Inst_Counter/temp<8>/XORG_1329 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y20" ))
  \Inst_Counter/temp<8>/COUTUSED  (
    .I(\Inst_Counter/temp<8>/CYMUXFAST_1326 ),
    .O(\Inst_Counter/Mcount_temp_cy [9])
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y20" ))
  \Inst_Counter/temp<8>/FASTCARRY  (
    .I(\Inst_Counter/Mcount_temp_cy [7]),
    .O(\Inst_Counter/temp<8>/FASTCARRY_1324 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X37Y20" ))
  \Inst_Counter/temp<8>/CYAND  (
    .I0(\Inst_Counter/temp<8>/CYSELG_1312 ),
    .I1(\Inst_Counter/temp<8>/CYSELF_1327 ),
    .O(\Inst_Counter/temp<8>/CYAND_1325 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y20" ))
  \Inst_Counter/temp<8>/CYMUXFAST  (
    .IA(\Inst_Counter/temp<8>/CYMUXG2_1323 ),
    .IB(\Inst_Counter/temp<8>/FASTCARRY_1324 ),
    .SEL(\Inst_Counter/temp<8>/CYAND_1325 ),
    .O(\Inst_Counter/temp<8>/CYMUXFAST_1326 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y20" ))
  \Inst_Counter/temp<8>/CYMUXG2  (
    .IA(\Inst_Counter/temp<8>/LOGIC_ZERO_1321 ),
    .IB(\Inst_Counter/temp<8>/CYMUXF2_1322 ),
    .SEL(\Inst_Counter/temp<8>/CYSELG_1312 ),
    .O(\Inst_Counter/temp<8>/CYMUXG2_1323 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y20" ))
  \Inst_Counter/temp<8>/CYSELG  (
    .I(\Inst_Counter/temp<8>/G ),
    .O(\Inst_Counter/temp<8>/CYSELG_1312 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y20" ))
  \Inst_Counter/temp<8>/SRINV  (
    .I(\Inst_UControl/clr_timer_673 ),
    .O(\Inst_Counter/temp<8>/SRINV_1310 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y20" ))
  \Inst_Counter/temp<8>/CLKINV  (
    .I(clk640),
    .O(\Inst_Counter/temp<8>/CLKINV_1309 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X37Y21" ))
  \Inst_Counter/temp<10>/LOGIC_ZERO  (
    .O(\Inst_Counter/temp<10>/LOGIC_ZERO_1377 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y21" ))
  \Inst_Counter/temp<10>/DXMUX  (
    .I(\Inst_Counter/temp<10>/XORF_1404 ),
    .O(\Inst_Counter/temp<10>/DXMUX_1406 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X37Y21" ))
  \Inst_Counter/temp<10>/XORF  (
    .I0(\Inst_Counter/temp<10>/CYINIT_1403 ),
    .I1(\Inst_Counter/temp<10>/F ),
    .O(\Inst_Counter/temp<10>/XORF_1404 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y21" ))
  \Inst_Counter/temp<10>/CYMUXF  (
    .IA(\Inst_Counter/temp<10>/LOGIC_ZERO_1377 ),
    .IB(\Inst_Counter/temp<10>/CYINIT_1403 ),
    .SEL(\Inst_Counter/temp<10>/CYSELF_1383 ),
    .O(\Inst_Counter/Mcount_temp_cy [10])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y21" ))
  \Inst_Counter/temp<10>/CYMUXF2  (
    .IA(\Inst_Counter/temp<10>/LOGIC_ZERO_1377 ),
    .IB(\Inst_Counter/temp<10>/LOGIC_ZERO_1377 ),
    .SEL(\Inst_Counter/temp<10>/CYSELF_1383 ),
    .O(\Inst_Counter/temp<10>/CYMUXF2_1378 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y21" ))
  \Inst_Counter/temp<10>/CYINIT  (
    .I(\Inst_Counter/Mcount_temp_cy [9]),
    .O(\Inst_Counter/temp<10>/CYINIT_1403 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y21" ))
  \Inst_Counter/temp<10>/CYSELF  (
    .I(\Inst_Counter/temp<10>/F ),
    .O(\Inst_Counter/temp<10>/CYSELF_1383 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y21" ))
  \Inst_Counter/temp<10>/DYMUX  (
    .I(\Inst_Counter/temp<10>/XORG_1385 ),
    .O(\Inst_Counter/temp<10>/DYMUX_1387 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X37Y21" ))
  \Inst_Counter/temp<10>/XORG  (
    .I0(\Inst_Counter/Mcount_temp_cy [10]),
    .I1(\Inst_Counter/temp<10>/G ),
    .O(\Inst_Counter/temp<10>/XORG_1385 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y21" ))
  \Inst_Counter/temp<10>/COUTUSED  (
    .I(\Inst_Counter/temp<10>/CYMUXFAST_1382 ),
    .O(\Inst_Counter/Mcount_temp_cy [11])
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y21" ))
  \Inst_Counter/temp<10>/FASTCARRY  (
    .I(\Inst_Counter/Mcount_temp_cy [9]),
    .O(\Inst_Counter/temp<10>/FASTCARRY_1380 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X37Y21" ))
  \Inst_Counter/temp<10>/CYAND  (
    .I0(\Inst_Counter/temp<10>/CYSELG_1368 ),
    .I1(\Inst_Counter/temp<10>/CYSELF_1383 ),
    .O(\Inst_Counter/temp<10>/CYAND_1381 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y21" ))
  \Inst_Counter/temp<10>/CYMUXFAST  (
    .IA(\Inst_Counter/temp<10>/CYMUXG2_1379 ),
    .IB(\Inst_Counter/temp<10>/FASTCARRY_1380 ),
    .SEL(\Inst_Counter/temp<10>/CYAND_1381 ),
    .O(\Inst_Counter/temp<10>/CYMUXFAST_1382 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y21" ))
  \Inst_Counter/temp<10>/CYMUXG2  (
    .IA(\Inst_Counter/temp<10>/LOGIC_ZERO_1377 ),
    .IB(\Inst_Counter/temp<10>/CYMUXF2_1378 ),
    .SEL(\Inst_Counter/temp<10>/CYSELG_1368 ),
    .O(\Inst_Counter/temp<10>/CYMUXG2_1379 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y21" ))
  \Inst_Counter/temp<10>/CYSELG  (
    .I(\Inst_Counter/temp<10>/G ),
    .O(\Inst_Counter/temp<10>/CYSELG_1368 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y21" ))
  \Inst_Counter/temp<10>/SRINV  (
    .I(\Inst_UControl/clr_timer_673 ),
    .O(\Inst_Counter/temp<10>/SRINV_1366 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y21" ))
  \Inst_Counter/temp<10>/CLKINV  (
    .I(clk640),
    .O(\Inst_Counter/temp<10>/CLKINV_1365 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X37Y22" ))
  \Inst_Counter/temp<12>/LOGIC_ZERO  (
    .O(\Inst_Counter/temp<12>/LOGIC_ZERO_1433 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y22" ))
  \Inst_Counter/temp<12>/DXMUX  (
    .I(\Inst_Counter/temp<12>/XORF_1460 ),
    .O(\Inst_Counter/temp<12>/DXMUX_1462 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X37Y22" ))
  \Inst_Counter/temp<12>/XORF  (
    .I0(\Inst_Counter/temp<12>/CYINIT_1459 ),
    .I1(\Inst_Counter/temp<12>/F ),
    .O(\Inst_Counter/temp<12>/XORF_1460 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y22" ))
  \Inst_Counter/temp<12>/CYMUXF  (
    .IA(\Inst_Counter/temp<12>/LOGIC_ZERO_1433 ),
    .IB(\Inst_Counter/temp<12>/CYINIT_1459 ),
    .SEL(\Inst_Counter/temp<12>/CYSELF_1439 ),
    .O(\Inst_Counter/Mcount_temp_cy [12])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y22" ))
  \Inst_Counter/temp<12>/CYMUXF2  (
    .IA(\Inst_Counter/temp<12>/LOGIC_ZERO_1433 ),
    .IB(\Inst_Counter/temp<12>/LOGIC_ZERO_1433 ),
    .SEL(\Inst_Counter/temp<12>/CYSELF_1439 ),
    .O(\Inst_Counter/temp<12>/CYMUXF2_1434 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y22" ))
  \Inst_Counter/temp<12>/CYINIT  (
    .I(\Inst_Counter/Mcount_temp_cy [11]),
    .O(\Inst_Counter/temp<12>/CYINIT_1459 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y22" ))
  \Inst_Counter/temp<12>/CYSELF  (
    .I(\Inst_Counter/temp<12>/F ),
    .O(\Inst_Counter/temp<12>/CYSELF_1439 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y22" ))
  \Inst_Counter/temp<12>/DYMUX  (
    .I(\Inst_Counter/temp<12>/XORG_1441 ),
    .O(\Inst_Counter/temp<12>/DYMUX_1443 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X37Y22" ))
  \Inst_Counter/temp<12>/XORG  (
    .I0(\Inst_Counter/Mcount_temp_cy [12]),
    .I1(\Inst_Counter/temp<12>/G ),
    .O(\Inst_Counter/temp<12>/XORG_1441 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y22" ))
  \Inst_Counter/temp<12>/FASTCARRY  (
    .I(\Inst_Counter/Mcount_temp_cy [11]),
    .O(\Inst_Counter/temp<12>/FASTCARRY_1436 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X37Y22" ))
  \Inst_Counter/temp<12>/CYAND  (
    .I0(\Inst_Counter/temp<12>/CYSELG_1424 ),
    .I1(\Inst_Counter/temp<12>/CYSELF_1439 ),
    .O(\Inst_Counter/temp<12>/CYAND_1437 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y22" ))
  \Inst_Counter/temp<12>/CYMUXFAST  (
    .IA(\Inst_Counter/temp<12>/CYMUXG2_1435 ),
    .IB(\Inst_Counter/temp<12>/FASTCARRY_1436 ),
    .SEL(\Inst_Counter/temp<12>/CYAND_1437 ),
    .O(\Inst_Counter/temp<12>/CYMUXFAST_1438 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X37Y22" ))
  \Inst_Counter/temp<12>/CYMUXG2  (
    .IA(\Inst_Counter/temp<12>/LOGIC_ZERO_1433 ),
    .IB(\Inst_Counter/temp<12>/CYMUXF2_1434 ),
    .SEL(\Inst_Counter/temp<12>/CYSELG_1424 ),
    .O(\Inst_Counter/temp<12>/CYMUXG2_1435 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y22" ))
  \Inst_Counter/temp<12>/CYSELG  (
    .I(\Inst_Counter/temp<12>/G ),
    .O(\Inst_Counter/temp<12>/CYSELG_1424 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y22" ))
  \Inst_Counter/temp<12>/SRINV  (
    .I(\Inst_UControl/clr_timer_673 ),
    .O(\Inst_Counter/temp<12>/SRINV_1422 )
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y22" ))
  \Inst_Counter/temp<12>/CLKINV  (
    .I(clk640),
    .O(\Inst_Counter/temp<12>/CLKINV_1421 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X51Y36" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/LOGIC_ZERO  (
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/LOGIC_ZERO_798 )
  );
  X_ONE #(
    .LOC ( "SLICE_X51Y36" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/LOGIC_ONE  (
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/LOGIC_ONE_820 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y36" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/DXMUX  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_lut [0]),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/DXMUX_822 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y36" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/CYMUXF  (
    .IA(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/LOGIC_ONE_820 ),
    .IB(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/CYINIT_819 ),
    .SEL(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/CYSELF_810 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[0] )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y36" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/CYINIT  (
    .I(GLOBAL_LOGIC0),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/CYINIT_819 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y36" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/CYSELF  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_lut [0]),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/CYSELF_810 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y36" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/DYMUX  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/XORG_801 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/DYMUX_803 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y36" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/XORG  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[0] ),
    .I1(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/G ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/XORG_801 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y36" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/COUTUSED  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/CYMUXG_800 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[1] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y36" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/CYMUXG  (
    .IA(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/LOGIC_ZERO_798 ),
    .IB(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[0] ),
    .SEL(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/CYSELG_789 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/CYMUXG_800 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y36" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/CYSELG  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/G ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/CYSELG_789 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y36" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/SRINV  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000_0 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/SRINV_787 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y36" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/CLKINV  (
    .I(clk640),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/CLKINV_786 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X51Y37" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/LOGIC_ZERO  (
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/LOGIC_ZERO_847 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y37" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/DXMUX  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/XORF_872 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/DXMUX_874 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y37" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/XORF  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYINIT_871 ),
    .I1(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/F ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/XORF_872 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y37" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYMUXF  (
    .IA(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/LOGIC_ZERO_847 ),
    .IB(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYINIT_871 ),
    .SEL(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYSELF_853 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[2] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y37" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYMUXF2  (
    .IA(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/LOGIC_ZERO_847 ),
    .IB(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/LOGIC_ZERO_847 ),
    .SEL(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYSELF_853 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYMUXF2_848 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y37" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYINIT  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[1] ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYINIT_871 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y37" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYSELF  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/F ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYSELF_853 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y37" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/DYMUX  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/XORG_855 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/DYMUX_857 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y37" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/XORG  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[2] ),
    .I1(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/G ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/XORG_855 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y37" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/COUTUSED  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYMUXFAST_852 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[3] )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y37" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/FASTCARRY  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[1] ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/FASTCARRY_850 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X51Y37" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYAND  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYSELG_838 ),
    .I1(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYSELF_853 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYAND_851 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y37" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYMUXFAST  (
    .IA(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYMUXG2_849 ),
    .IB(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/FASTCARRY_850 ),
    .SEL(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYAND_851 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYMUXFAST_852 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y37" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYMUXG2  (
    .IA(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/LOGIC_ZERO_847 ),
    .IB(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYMUXF2_848 ),
    .SEL(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYSELG_838 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYMUXG2_849 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y37" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYSELG  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/G ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CYSELG_838 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y37" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/SRINV  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000_0 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/SRINV_836 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y37" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CLKINV  (
    .I(clk640),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CLKINV_835 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X51Y38" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/LOGIC_ZERO  (
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/LOGIC_ZERO_899 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y38" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/DXMUX  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/XORF_924 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/DXMUX_926 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y38" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/XORF  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYINIT_923 ),
    .I1(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/F ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/XORF_924 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y38" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYMUXF  (
    .IA(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/LOGIC_ZERO_899 ),
    .IB(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYINIT_923 ),
    .SEL(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYSELF_905 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[4] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y38" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYMUXF2  (
    .IA(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/LOGIC_ZERO_899 ),
    .IB(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/LOGIC_ZERO_899 ),
    .SEL(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYSELF_905 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYMUXF2_900 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y38" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYINIT  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[3] ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYINIT_923 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y38" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYSELF  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/F ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYSELF_905 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y38" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/DYMUX  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/XORG_907 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/DYMUX_909 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y38" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/XORG  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[4] ),
    .I1(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/G ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/XORG_907 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y38" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/COUTUSED  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYMUXFAST_904 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[5] )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y38" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/FASTCARRY  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[3] ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/FASTCARRY_902 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X51Y38" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYAND  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYSELG_890 ),
    .I1(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYSELF_905 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYAND_903 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y38" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYMUXFAST  (
    .IA(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYMUXG2_901 ),
    .IB(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/FASTCARRY_902 ),
    .SEL(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYAND_903 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYMUXFAST_904 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y38" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYMUXG2  (
    .IA(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/LOGIC_ZERO_899 ),
    .IB(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYMUXF2_900 ),
    .SEL(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYSELG_890 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYMUXG2_901 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y38" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYSELG  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/G ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CYSELG_890 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y38" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/SRINV  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000_0 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/SRINV_888 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y38" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CLKINV  (
    .I(clk640),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CLKINV_887 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X51Y39" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/LOGIC_ZERO  (
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/LOGIC_ZERO_951 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y39" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/DXMUX  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/XORF_976 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/DXMUX_978 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y39" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/XORF  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYINIT_975 ),
    .I1(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/F ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/XORF_976 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y39" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYMUXF  (
    .IA(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/LOGIC_ZERO_951 ),
    .IB(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYINIT_975 ),
    .SEL(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYSELF_957 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[6] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y39" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYMUXF2  (
    .IA(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/LOGIC_ZERO_951 ),
    .IB(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/LOGIC_ZERO_951 ),
    .SEL(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYSELF_957 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYMUXF2_952 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y39" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYINIT  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[5] ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYINIT_975 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y39" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYSELF  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/F ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYSELF_957 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y39" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/DYMUX  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/XORG_959 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/DYMUX_961 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y39" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/XORG  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[6] ),
    .I1(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/G ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/XORG_959 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y39" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/COUTUSED  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYMUXFAST_956 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[7] )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y39" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/FASTCARRY  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[5] ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/FASTCARRY_954 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X51Y39" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYAND  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYSELG_942 ),
    .I1(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYSELF_957 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYAND_955 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y39" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYMUXFAST  (
    .IA(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYMUXG2_953 ),
    .IB(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/FASTCARRY_954 ),
    .SEL(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYAND_955 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYMUXFAST_956 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y39" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYMUXG2  (
    .IA(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/LOGIC_ZERO_951 ),
    .IB(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYMUXF2_952 ),
    .SEL(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYSELG_942 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYMUXG2_953 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y39" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYSELG  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/G ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CYSELG_942 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y39" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/SRINV  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000_0 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/SRINV_940 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y39" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CLKINV  (
    .I(clk640),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CLKINV_939 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X51Y40" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/LOGIC_ZERO  (
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/LOGIC_ZERO_1003 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y40" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/DXMUX  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/XORF_1028 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/DXMUX_1030 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y40" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/XORF  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYINIT_1027 ),
    .I1(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/F ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/XORF_1028 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y40" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYMUXF  (
    .IA(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/LOGIC_ZERO_1003 ),
    .IB(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYINIT_1027 ),
    .SEL(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYSELF_1009 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[8] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y40" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYMUXF2  (
    .IA(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/LOGIC_ZERO_1003 ),
    .IB(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/LOGIC_ZERO_1003 ),
    .SEL(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYSELF_1009 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYMUXF2_1004 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y40" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYINIT  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[7] ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYINIT_1027 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y40" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYSELF  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/F ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYSELF_1009 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y40" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/DYMUX  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/XORG_1011 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/DYMUX_1013 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y40" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/XORG  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[8] ),
    .I1(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/G ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/XORG_1011 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y40" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/FASTCARRY  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy[7] ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/FASTCARRY_1006 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X51Y40" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYAND  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYSELG_994 ),
    .I1(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYSELF_1009 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYAND_1007 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y40" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYMUXFAST  (
    .IA(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYMUXG2_1005 ),
    .IB(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/FASTCARRY_1006 ),
    .SEL(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYAND_1007 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYMUXFAST_1008 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y40" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYMUXG2  (
    .IA(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/LOGIC_ZERO_1003 ),
    .IB(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYMUXF2_1004 ),
    .SEL(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYSELG_994 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYMUXG2_1005 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y40" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYSELG  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/G ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CYSELG_994 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y40" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/SRINV  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000_0 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/SRINV_992 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y40" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CLKINV  (
    .I(clk640),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CLKINV_991 )
  );
  X_BUF #(
    .LOC ( "SLICE_X58Y10" ))
  \Inst_Interfaz/pb1/DXMUX  (
    .I(pb_int[1]),
    .O(\Inst_Interfaz/pb1/DXMUX_2496 )
  );
  X_BUF #(
    .LOC ( "SLICE_X58Y10" ))
  \Inst_Interfaz/pb1/DYMUX  (
    .I(pb_int[0]),
    .O(\Inst_Interfaz/pb1/DYMUX_2491 )
  );
  X_BUF #(
    .LOC ( "SLICE_X58Y10" ))
  \Inst_Interfaz/pb1/CLKINV  (
    .I(clk640),
    .O(\Inst_Interfaz/pb1/CLKINV_2489 )
  );
  X_BUF #(
    .LOC ( "SLICE_X59Y9" ))
  \Inst_Interfaz/pb3/DXMUX  (
    .I(pb_int[3]),
    .O(\Inst_Interfaz/pb3/DXMUX_2512 )
  );
  X_BUF #(
    .LOC ( "SLICE_X59Y9" ))
  \Inst_Interfaz/pb3/DYMUX  (
    .I(pb_int[2]),
    .O(\Inst_Interfaz/pb3/DYMUX_2507 )
  );
  X_BUF #(
    .LOC ( "SLICE_X59Y9" ))
  \Inst_Interfaz/pb3/CLKINV  (
    .I(clk640),
    .O(\Inst_Interfaz/pb3/CLKINV_2505 )
  );
  X_BUF #(
    .LOC ( "SLICE_X56Y25" ))
  \Inst_Interfaz/rotary_event/DYMUX  (
    .I(GLOBAL_LOGIC1),
    .O(\Inst_Interfaz/rotary_event/DYMUX_2523 )
  );
  X_BUF #(
    .LOC ( "SLICE_X56Y25" ))
  \Inst_Interfaz/rotary_event/SRINV  (
    .I(\Inst_Interfaz/rotary_event_not0001 ),
    .O(\Inst_Interfaz/rotary_event/SRINV_2521 )
  );
  X_BUF #(
    .LOC ( "SLICE_X56Y25" ))
  \Inst_Interfaz/rotary_event/CLKINV  (
    .I(clk640),
    .O(\Inst_Interfaz/rotary_event/CLKINV_2520 )
  );
  X_INV #(
    .LOC ( "SLICE_X58Y24" ))
  \Inst_LEDS/led<2>/DYMUX  (
    .I(\Inst_Interfaz/rotary_left_768 ),
    .O(\Inst_LEDS/led<2>/DYMUX_2535 )
  );
  X_BUF #(
    .LOC ( "SLICE_X58Y24" ))
  \Inst_LEDS/led<2>/CLKINV  (
    .I(clk640),
    .O(\Inst_LEDS/led<2>/CLKINV_2533 )
  );
  X_BUF #(
    .LOC ( "SLICE_X58Y24" ))
  \Inst_LEDS/led<2>/CEINV  (
    .I(\Inst_Interfaz/rotary_event_767 ),
    .O(\Inst_LEDS/led<2>/CEINV_2532 )
  );
  X_BUF #(
    .LOC ( "SLICE_X59Y25" ))
  \Inst_LEDS/led<3>/DYMUX  (
    .I(\Inst_Interfaz/rotary_left_768 ),
    .O(\Inst_LEDS/led<3>/DYMUX_2547 )
  );
  X_BUF #(
    .LOC ( "SLICE_X59Y25" ))
  \Inst_LEDS/led<3>/CLKINV  (
    .I(clk640),
    .O(\Inst_LEDS/led<3>/CLKINV_2545 )
  );
  X_BUF #(
    .LOC ( "SLICE_X59Y25" ))
  \Inst_LEDS/led<3>/CEINV  (
    .I(\Inst_Interfaz/rotary_event_767 ),
    .O(\Inst_LEDS/led<3>/CEINV_2544 )
  );
  X_INV #(
    .LOC ( "SLICE_X38Y14" ))
  \Inst_UControl/clr_timer/DYMUX  (
    .I(\Inst_UControl/state_FSM_FFd5_729 ),
    .O(\Inst_UControl/clr_timer/DYMUX_2559 )
  );
  X_BUF #(
    .LOC ( "SLICE_X38Y14" ))
  \Inst_UControl/clr_timer/CLKINV  (
    .I(clk640),
    .O(\Inst_UControl/clr_timer/CLKINV_2556 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y15" ))
  \Inst_Interfaz/rotatory_press/DYMUX  (
    .I(rot_press_769),
    .O(\Inst_Interfaz/rotatory_press/DYMUX_2571 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y15" ))
  \Inst_Interfaz/rotatory_press/CLKINV  (
    .I(clk640),
    .O(\Inst_Interfaz/rotatory_press/CLKINV_2569 )
  );
  X_INV #(
    .LOC ( "SLICE_X61Y10" ))
  \Inst_Interfaz/Inst_pb2/state_FSM_FFd1/DXMUX  (
    .I(\Inst_Interfaz/pb2_766 ),
    .O(\Inst_Interfaz/Inst_pb2/state_FSM_FFd1/DXMUX_2596 )
  );
  X_BUF #(
    .LOC ( "SLICE_X61Y10" ))
  \Inst_Interfaz/Inst_pb2/state_FSM_FFd1/DYMUX  (
    .I(\Inst_Interfaz/Inst_pb2/state_FSM_FFd2-In ),
    .O(\Inst_Interfaz/Inst_pb2/state_FSM_FFd1/DYMUX_2591 )
  );
  X_BUF #(
    .LOC ( "SLICE_X61Y10" ))
  \Inst_Interfaz/Inst_pb2/state_FSM_FFd1/CLKINV  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_771 ),
    .O(\Inst_Interfaz/Inst_pb2/state_FSM_FFd1/CLKINV_2581 )
  );
  X_LUT4 #(
    .INIT ( 16'h00F0 ),
    .LOC ( "SLICE_X61Y10" ))
  \Inst_Interfaz/Inst_pb2/state_FSM_FFd2-In1  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\Inst_Interfaz/pb2_766 ),
    .ADR3(\Inst_Interfaz/Inst_pb2/state_FSM_FFd1_772 ),
    .O(\Inst_Interfaz/Inst_pb2/state_FSM_FFd2-In )
  );
  X_BUF #(
    .LOC ( "SLICE_X46Y8" ))
  \rot_press/DYMUX  (
    .I(rot_press_in_IBUF_1548),
    .O(\rot_press/DYMUX_2605 )
  );
  X_BUF #(
    .LOC ( "SLICE_X46Y8" ))
  \rot_press/CLKINV  (
    .I(clk640),
    .O(\rot_press/CLKINV_2603 )
  );
  X_BUF #(
    .LOC ( "SLICE_X59Y5" ))
  \pb_int<1>/DXMUX  (
    .I(pb_in_1_IBUF_1602),
    .O(\pb_int<1>/DXMUX_2621 )
  );
  X_BUF #(
    .LOC ( "SLICE_X59Y5" ))
  \pb_int<1>/DYMUX  (
    .I(pb_in_0_IBUF_1595),
    .O(\pb_int<1>/DYMUX_2616 )
  );
  X_BUF #(
    .LOC ( "SLICE_X59Y5" ))
  \pb_int<1>/CLKINV  (
    .I(clk640),
    .O(\pb_int<1>/CLKINV_2614 )
  );
  X_BUF #(
    .LOC ( "SLICE_X59Y4" ))
  \pb_int<3>/DXMUX  (
    .I(pb_in_3_IBUF_1616),
    .O(\pb_int<3>/DXMUX_2637 )
  );
  X_BUF #(
    .LOC ( "SLICE_X59Y4" ))
  \pb_int<3>/DYMUX  (
    .I(pb_in_2_IBUF_1609),
    .O(\pb_int<3>/DYMUX_2632 )
  );
  X_BUF #(
    .LOC ( "SLICE_X59Y4" ))
  \pb_int<3>/CLKINV  (
    .I(clk640),
    .O(\pb_int<3>/CLKINV_2630 )
  );
  X_INV #(
    .LOC ( "SLICE_X58Y12" ))
  \Inst_Interfaz/Inst_pb0/state_FSM_FFd1/DXMUX  (
    .I(\Inst_Interfaz/pb0_762 ),
    .O(\Inst_Interfaz/Inst_pb0/state_FSM_FFd1/DXMUX_2662 )
  );
  X_BUF #(
    .LOC ( "SLICE_X58Y12" ))
  \Inst_Interfaz/Inst_pb0/state_FSM_FFd1/DYMUX  (
    .I(\Inst_Interfaz/Inst_pb0/state_FSM_FFd2-In ),
    .O(\Inst_Interfaz/Inst_pb0/state_FSM_FFd1/DYMUX_2657 )
  );
  X_BUF #(
    .LOC ( "SLICE_X58Y12" ))
  \Inst_Interfaz/Inst_pb0/state_FSM_FFd1/CLKINV  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_771 ),
    .O(\Inst_Interfaz/Inst_pb0/state_FSM_FFd1/CLKINV_2647 )
  );
  X_LUT4 #(
    .INIT ( 16'h3030 ),
    .LOC ( "SLICE_X58Y12" ))
  \Inst_Interfaz/Inst_pb0/state_FSM_FFd2-In1  (
    .ADR0(VCC),
    .ADR1(\Inst_Interfaz/Inst_pb0/state_FSM_FFd1_773 ),
    .ADR2(\Inst_Interfaz/pb0_762 ),
    .ADR3(VCC),
    .O(\Inst_Interfaz/Inst_pb0/state_FSM_FFd2-In )
  );
  X_INV #(
    .LOC ( "SLICE_X53Y18" ))
  \Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1/DXMUX  (
    .I(\Inst_Interfaz/rotatory_press_770 ),
    .O(\Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1/DXMUX_2687 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y18" ))
  \Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1/DYMUX  (
    .I(\Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd2-In ),
    .O(\Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1/DYMUX_2682 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y18" ))
  \Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1/CLKINV  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_771 ),
    .O(\Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1/CLKINV_2672 )
  );
  X_LUT4 #(
    .INIT ( 16'h4444 ),
    .LOC ( "SLICE_X53Y18" ))
  \Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd2-In1  (
    .ADR0(\Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1_774 ),
    .ADR1(\Inst_Interfaz/rotatory_press_770 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd2-In )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y10" ))
  \modo_int/DYMUX  (
    .I(modo_in_IBUF_1709),
    .O(\modo_int/DYMUX_2696 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y10" ))
  \modo_int/CLKINV  (
    .I(clk640),
    .O(\modo_int/CLKINV_2694 )
  );
  X_INV #(
    .LOC ( "SLICE_X60Y10" ))
  \Inst_Interfaz/Inst_pb3/state_FSM_FFd1/DXMUX  (
    .I(\Inst_Interfaz/pb3_765 ),
    .O(\Inst_Interfaz/Inst_pb3/state_FSM_FFd1/DXMUX_2721 )
  );
  X_BUF #(
    .LOC ( "SLICE_X60Y10" ))
  \Inst_Interfaz/Inst_pb3/state_FSM_FFd1/DYMUX  (
    .I(\Inst_Interfaz/Inst_pb3/state_FSM_FFd2-In ),
    .O(\Inst_Interfaz/Inst_pb3/state_FSM_FFd1/DYMUX_2716 )
  );
  X_BUF #(
    .LOC ( "SLICE_X60Y10" ))
  \Inst_Interfaz/Inst_pb3/state_FSM_FFd1/CLKINV  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_771 ),
    .O(\Inst_Interfaz/Inst_pb3/state_FSM_FFd1/CLKINV_2706 )
  );
  X_LUT4 #(
    .INIT ( 16'h00CC ),
    .LOC ( "SLICE_X60Y10" ))
  \Inst_Interfaz/Inst_pb3/state_FSM_FFd2-In1  (
    .ADR0(VCC),
    .ADR1(\Inst_Interfaz/pb3_765 ),
    .ADR2(VCC),
    .ADR3(\Inst_Interfaz/Inst_pb3/state_FSM_FFd1_775 ),
    .O(\Inst_Interfaz/Inst_pb3/state_FSM_FFd2-In )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y13" ))
  \rot<1>/DXMUX  (
    .I(rot_in_1_IBUF_1630),
    .O(\rot<1>/DXMUX_2737 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y13" ))
  \rot<1>/DYMUX  (
    .I(rot_in_0_IBUF_1623),
    .O(\rot<1>/DYMUX_2732 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y13" ))
  \rot<1>/CLKINV  (
    .I(clk640),
    .O(\rot<1>/CLKINV_2730 )
  );
  X_BUF #(
    .LOC ( "SLICE_X57Y24" ))
  \Inst_Interfaz/rotary_left/DYMUX  (
    .I(\Inst_Interfaz/rotary_q2_741 ),
    .O(\Inst_Interfaz/rotary_left/DYMUX_2748 )
  );
  X_BUF #(
    .LOC ( "SLICE_X57Y24" ))
  \Inst_Interfaz/rotary_left/CLKINV  (
    .I(clk640),
    .O(\Inst_Interfaz/rotary_left/CLKINV_2746 )
  );
  X_BUF #(
    .LOC ( "SLICE_X57Y24" ))
  \Inst_Interfaz/rotary_left/CEINV  (
    .I(\Inst_Interfaz/rotary_left_and0000 ),
    .O(\Inst_Interfaz/rotary_left/CEINV_2745 )
  );
  X_LUT4 #(
    .INIT ( 16'hA0A0 ),
    .LOC ( "SLICE_X58Y13" ))
  \Inst_Interfaz/rst_and00001  (
    .ADR0(\Inst_Interfaz/Inst_pb1/state_FSM_FFd2_745 ),
    .ADR1(VCC),
    .ADR2(\Inst_Interfaz/Inst_pb0/state_FSM_FFd2_746 ),
    .ADR3(VCC),
    .O(\Inst_Interfaz/rst_and0000 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y37" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000028/XUSED  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000028_2774 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000028_0 )
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ),
    .LOC ( "SLICE_X50Y37" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000028  (
    .ADR0(\Inst_Interfaz/Inst_divDEBOUNCER/contador [7]),
    .ADR1(\Inst_Interfaz/Inst_divDEBOUNCER/contador [5]),
    .ADR2(\Inst_Interfaz/Inst_divDEBOUNCER/contador [6]),
    .ADR3(\Inst_Interfaz/Inst_divDEBOUNCER/contador [4]),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000028_2774 )
  );
  X_INV #(
    .LOC ( "SLICE_X59Y12" ))
  \Inst_Interfaz/Inst_pb1/state_FSM_FFd1/DXMUX  (
    .I(\Inst_Interfaz/pb1_761 ),
    .O(\Inst_Interfaz/Inst_pb1/state_FSM_FFd1/DXMUX_2798 )
  );
  X_BUF #(
    .LOC ( "SLICE_X59Y12" ))
  \Inst_Interfaz/Inst_pb1/state_FSM_FFd1/DYMUX  (
    .I(\Inst_Interfaz/Inst_pb1/state_FSM_FFd2-In ),
    .O(\Inst_Interfaz/Inst_pb1/state_FSM_FFd1/DYMUX_2793 )
  );
  X_BUF #(
    .LOC ( "SLICE_X59Y12" ))
  \Inst_Interfaz/Inst_pb1/state_FSM_FFd1/CLKINV  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_771 ),
    .O(\Inst_Interfaz/Inst_pb1/state_FSM_FFd1/CLKINV_2783 )
  );
  X_LUT4 #(
    .INIT ( 16'h5500 ),
    .LOC ( "SLICE_X59Y12" ))
  \Inst_Interfaz/Inst_pb1/state_FSM_FFd2-In1  (
    .ADR0(\Inst_Interfaz/Inst_pb1/state_FSM_FFd1_777 ),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\Inst_Interfaz/pb1_761 ),
    .O(\Inst_Interfaz/Inst_pb1/state_FSM_FFd2-In )
  );
  X_BUF #(
    .LOC ( "SLICE_X56Y13" ))
  \Inst_Interfaz/rst_n/DYMUX  (
    .I(GLOBAL_LOGIC1),
    .O(\Inst_Interfaz/rst_n/DYMUX_2809 )
  );
  X_BUF #(
    .LOC ( "SLICE_X56Y13" ))
  \Inst_Interfaz/rst_n/SRINV  (
    .I(\Inst_Interfaz/rst_and0000 ),
    .O(\Inst_Interfaz/rst_n/SRINV_2807 )
  );
  X_BUF #(
    .LOC ( "SLICE_X56Y13" ))
  \Inst_Interfaz/rst_n/CLKINV  (
    .I(clk640),
    .O(\Inst_Interfaz/rst_n/CLKINV_2806 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y36" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/clk10ms/DYMUX  (
    .I(GLOBAL_LOGIC1),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms/DYMUX_2821 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y36" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/clk10ms/SRINV  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_not0001 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms/SRINV_2819 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y36" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/clk10ms/CLKINV  (
    .I(clk640),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms/CLKINV_2818 )
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y41" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_11  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/DYMUX_1056 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/CLKINV_1042 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/SRINV_1043 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador [11])
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X51Y41" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<11>_rt  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\Inst_Interfaz/Inst_divDEBOUNCER/contador [11]),
    .ADR3(VCC),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<11>_rt_1051 )
  );
  X_FF #(
    .LOC ( "SLICE_X36Y18" ),
    .INIT ( 1'b0 ))
  \Inst_Counter/tic  (
    .I(\Inst_Counter/tic/DXMUX_1775 ),
    .CE(VCC),
    .CLK(\Inst_Counter/tic/CLKINV_1757 ),
    .SET(GND),
    .RST(GND),
    .O(\Inst_Counter/tic_727 )
  );
  X_LUT4 #(
    .INIT ( 16'h5554 ),
    .LOC ( "SLICE_X39Y8" ))
  \Inst_UControl/state_FSM_Out2  (
    .ADR0(\Inst_UControl/state_FSM_FFd5_729 ),
    .ADR1(\Inst_UControl/state_FSM_FFd3_731 ),
    .ADR2(\Inst_UControl/state_FSM_Out2_SW0/O ),
    .ADR3(\Inst_UControl/state_FSM_FFd4_730 ),
    .O(\Inst_UControl/_mux0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X39Y8" ),
    .INIT ( 1'b0 ))
  \Inst_UControl/LCD_E  (
    .I(\Inst_UControl/LCD_E/DXMUX_1807 ),
    .CE(VCC),
    .CLK(\Inst_UControl/LCD_E/CLKINV_1789 ),
    .SET(GND),
    .RST(\Inst_UControl/LCD_E/FFX/RSTAND_1812 ),
    .O(\Inst_UControl/LCD_E_697 )
  );
  X_INV #(
    .LOC ( "SLICE_X39Y8" ))
  \Inst_UControl/LCD_E/FFX/RSTAND  (
    .I(\Inst_Interfaz/rst_n_728 ),
    .O(\Inst_UControl/LCD_E/FFX/RSTAND_1812 )
  );
  X_LUT4 #(
    .INIT ( 16'h55FF ),
    .LOC ( "SLICE_X38Y15" ))
  \Inst_UControl/state_FSM_FFd5-In1  (
    .ADR0(\Inst_Counter/tic_727 ),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\Inst_UControl/state_FSM_FFd5_729 ),
    .O(\Inst_UControl/state_FSM_FFd5-In )
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ),
    .LOC ( "SLICE_X56Y20" ))
  \Mshreg_leds_out_0/SRL16E  (
    .A0(GLOBAL_LOGIC1),
    .A1(GLOBAL_LOGIC0),
    .A2(GLOBAL_LOGIC0),
    .A3(GLOBAL_LOGIC0),
    .D(\leds_out_1/DIG_MUX_2404 ),
    .CE(\leds_out_1/SRINV_2396 ),
    .CLK(\leds_out_1/CLKINV_2402 ),
    .Q(Mshreg_leds_out_0),
    .Q15(\NLW_Mshreg_leds_out_0/SRL16E_Q15_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y36" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_1  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/DYMUX_803 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/CLKINV_786 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/SRINV_787 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador [1])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ),
    .LOC ( "SLICE_X51Y36" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_lut<0>_INV_0  (
    .ADR0(\Inst_Interfaz/Inst_divDEBOUNCER/contador [0]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_lut [0])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y36" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_0  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/DXMUX_822 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/CLKINV_786 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/SRINV_787 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador [0])
  );
  X_LUT4 #(
    .INIT ( 16'hEE44 ),
    .LOC ( "SLICE_X36Y18" ))
  \Inst_Counter/Mmux_tic_mux0001_3  (
    .ADR0(\Inst_UControl/tiempo [0]),
    .ADR1(\Inst_Counter/temp [12]),
    .ADR2(VCC),
    .ADR3(\Inst_Counter/temp [14]),
    .O(\Inst_Counter/Mmux_tic_mux0001_3_1771 )
  );
  X_LUT4 #(
    .INIT ( 16'hAE55 ),
    .LOC ( "SLICE_X39Y12" ))
  \Inst_UControl/state_FSM_FFd3-In_SW1  (
    .ADR0(\Inst_UControl/state_FSM_FFd3_731 ),
    .ADR1(\Inst_UControl/state_FSM_FFd1_734 ),
    .ADR2(\Inst_UControl/state_FSM_FFd2_733 ),
    .ADR3(\Inst_Counter/tic_727 ),
    .O(\Inst_UControl/state_FSM_FFd3-In_SW1/O_pack_1 )
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ),
    .LOC ( "SLICE_X60Y12" ))
  \Mshreg_leds_out_4/SRL16E  (
    .A0(GLOBAL_LOGIC1),
    .A1(GLOBAL_LOGIC0),
    .A2(GLOBAL_LOGIC0),
    .A3(GLOBAL_LOGIC0),
    .D(\leds_out_5/DIG_MUX_1988 ),
    .CE(\leds_out_5/SRINV_1980 ),
    .CLK(\leds_out_5/CLKINV_1986 ),
    .Q(Mshreg_leds_out_4),
    .Q15(\NLW_Mshreg_leds_out_4/SRL16E_Q15_UNCONNECTED )
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ),
    .LOC ( "SLICE_X60Y11" ))
  \Mshreg_leds_out_6/SRL16E  (
    .A0(GLOBAL_LOGIC1),
    .A1(GLOBAL_LOGIC0),
    .A2(GLOBAL_LOGIC0),
    .A3(GLOBAL_LOGIC0),
    .D(\leds_out_7/DIG_MUX_2041 ),
    .CE(\leds_out_7/SRINV_2033 ),
    .CLK(\leds_out_7/CLKINV_2039 ),
    .Q(Mshreg_leds_out_6),
    .Q15(\NLW_Mshreg_leds_out_6/SRL16E_Q15_UNCONNECTED )
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ),
    .LOC ( "SLICE_X52Y15" ))
  \Inst_Interfaz/Mshreg_rotary_in_0/SRL16E  (
    .A0(GLOBAL_LOGIC0),
    .A1(GLOBAL_LOGIC0),
    .A2(GLOBAL_LOGIC0),
    .A3(GLOBAL_LOGIC0),
    .D(\Inst_Interfaz/rotary_in<1>/DIG_MUX_2094 ),
    .CE(\Inst_Interfaz/rotary_in<1>/SRINV_2086 ),
    .CLK(\Inst_Interfaz/rotary_in<1>/CLKINV_2092 ),
    .Q(\Inst_Interfaz/Mshreg_rotary_in_0 ),
    .Q15(\NLW_Inst_Interfaz/Mshreg_rotary_in_0/SRL16E_Q15_UNCONNECTED )
  );
  X_LUT4 #(
    .INIT ( 16'h4F54 ),
    .LOC ( "SLICE_X40Y5" ))
  \Inst_UControl/state_Out91  (
    .ADR0(\Inst_UControl/state_FSM_FFd2_733 ),
    .ADR1(\Inst_UControl/state_FSM_FFd3_731 ),
    .ADR2(\Inst_UControl/state_FSM_FFd4_730 ),
    .ADR3(\Inst_UControl/state_FSM_FFd1_734 ),
    .O(\Inst_UControl/state_index0004 )
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y37" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_3  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/DYMUX_857 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CLKINV_835 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/SRINV_836 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador [3])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y37" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_2  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/DXMUX_874 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/CLKINV_835 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/SRINV_836 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador [2])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y38" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_5  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/DYMUX_909 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CLKINV_887 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/SRINV_888 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador [5])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y38" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_4  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/DXMUX_926 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/CLKINV_887 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/SRINV_888 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador [4])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y39" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_7  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/DYMUX_961 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CLKINV_939 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/SRINV_940 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador [7])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y39" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_6  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/DXMUX_978 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/CLKINV_939 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/SRINV_940 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador [6])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y40" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_9  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/DYMUX_1013 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CLKINV_991 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/SRINV_992 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador [9])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y40" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_8  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/DXMUX_1030 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/CLKINV_991 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/SRINV_992 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador [8])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y41" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_10  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/DXMUX_1075 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/CLKINV_1042 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/SRINV_1043 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador [10])
  );
  X_FF #(
    .LOC ( "SLICE_X37Y16" ),
    .INIT ( 1'b0 ))
  \Inst_Counter/temp_1  (
    .I(\Inst_Counter/temp<0>/DYMUX_1105 ),
    .CE(VCC),
    .CLK(\Inst_Counter/temp<0>/CLKINV_1088 ),
    .SET(GND),
    .RST(\Inst_Counter/temp<0>/SRINV_1089 ),
    .O(\Inst_Counter/temp [1])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ),
    .LOC ( "SLICE_X37Y16" ))
  \Inst_Counter/Mcount_temp_lut<0>_INV_0  (
    .ADR0(\Inst_Counter/temp [0]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Inst_Counter/Mcount_temp_lut [0])
  );
  X_FF #(
    .LOC ( "SLICE_X37Y16" ),
    .INIT ( 1'b0 ))
  \Inst_Counter/temp_0  (
    .I(\Inst_Counter/temp<0>/DXMUX_1126 ),
    .CE(VCC),
    .CLK(\Inst_Counter/temp<0>/CLKINV_1088 ),
    .SET(GND),
    .RST(\Inst_Counter/temp<0>/SRINV_1089 ),
    .O(\Inst_Counter/temp [0])
  );
  X_FF #(
    .LOC ( "SLICE_X37Y21" ),
    .INIT ( 1'b0 ))
  \Inst_Counter/temp_10  (
    .I(\Inst_Counter/temp<10>/DXMUX_1406 ),
    .CE(VCC),
    .CLK(\Inst_Counter/temp<10>/CLKINV_1365 ),
    .SET(GND),
    .RST(\Inst_Counter/temp<10>/SRINV_1366 ),
    .O(\Inst_Counter/temp [10])
  );
  X_FF #(
    .LOC ( "SLICE_X37Y22" ),
    .INIT ( 1'b0 ))
  \Inst_Counter/temp_13  (
    .I(\Inst_Counter/temp<12>/DYMUX_1443 ),
    .CE(VCC),
    .CLK(\Inst_Counter/temp<12>/CLKINV_1421 ),
    .SET(GND),
    .RST(\Inst_Counter/temp<12>/SRINV_1422 ),
    .O(\Inst_Counter/temp [13])
  );
  X_FF #(
    .LOC ( "SLICE_X37Y22" ),
    .INIT ( 1'b0 ))
  \Inst_Counter/temp_12  (
    .I(\Inst_Counter/temp<12>/DXMUX_1462 ),
    .CE(VCC),
    .CLK(\Inst_Counter/temp<12>/CLKINV_1421 ),
    .SET(GND),
    .RST(\Inst_Counter/temp<12>/SRINV_1422 ),
    .O(\Inst_Counter/temp [12])
  );
  X_FF #(
    .LOC ( "SLICE_X37Y23" ),
    .INIT ( 1'b0 ))
  \Inst_Counter/temp_14  (
    .I(\Inst_Counter/temp<14>/DXMUX_1488 ),
    .CE(VCC),
    .CLK(\Inst_Counter/temp<14>/CLKINV_1474 ),
    .SET(GND),
    .RST(\Inst_Counter/temp<14>/FFX/RSTAND_1493 ),
    .O(\Inst_Counter/temp [14])
  );
  X_BUF #(
    .LOC ( "SLICE_X37Y23" ))
  \Inst_Counter/temp<14>/FFX/RSTAND  (
    .I(\Inst_UControl/clr_timer_673 ),
    .O(\Inst_Counter/temp<14>/FFX/RSTAND_1493 )
  );
  X_LUT4 #(
    .INIT ( 16'h5FFF ),
    .LOC ( "SLICE_X50Y38" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_not00011  (
    .ADR0(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000028_0 ),
    .ADR1(VCC),
    .ADR2(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000011_735 ),
    .ADR3(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000016_736 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'hC6CC ),
    .LOC ( "SLICE_X38Y11" ))
  \Inst_UControl/state_FSM_FFd2-In  (
    .ADR0(\Inst_UControl/state_FSM_FFd4_730 ),
    .ADR1(\Inst_UControl/state_FSM_FFd2_733 ),
    .ADR2(\Inst_UControl/state_FSM_FFd2-In_SW2/O ),
    .ADR3(\Inst_UControl/state_FSM_FFd5_729 ),
    .O(\Inst_UControl/state_FSM_FFd2-In_1863 )
  );
  X_FF #(
    .LOC ( "SLICE_X38Y11" ),
    .INIT ( 1'b0 ))
  \Inst_UControl/state_FSM_FFd2  (
    .I(\Inst_UControl/state_FSM_FFd2/DXMUX_1866 ),
    .CE(VCC),
    .CLK(\Inst_UControl/state_FSM_FFd2/CLKINV_1848 ),
    .SET(GND),
    .RST(\Inst_UControl/state_FSM_FFd2/FFX/RSTAND_1871 ),
    .O(\Inst_UControl/state_FSM_FFd2_733 )
  );
  X_INV #(
    .LOC ( "SLICE_X38Y11" ))
  \Inst_UControl/state_FSM_FFd2/FFX/RSTAND  (
    .I(\Inst_Interfaz/rst_n_728 ),
    .O(\Inst_UControl/state_FSM_FFd2/FFX/RSTAND_1871 )
  );
  X_LUT4 #(
    .INIT ( 16'hA000 ),
    .LOC ( "SLICE_X50Y39" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000039  (
    .ADR0(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000028_0 ),
    .ADR1(VCC),
    .ADR2(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000011_735 ),
    .ADR3(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000016_736 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h4ECC ),
    .LOC ( "SLICE_X39Y12" ))
  \Inst_UControl/state_FSM_FFd3-In  (
    .ADR0(\Inst_UControl/state_FSM_FFd5_729 ),
    .ADR1(\Inst_UControl/state_FSM_FFd3_731 ),
    .ADR2(\Inst_UControl/state_FSM_FFd3-In_SW1/O ),
    .ADR3(\Inst_UControl/state_FSM_FFd4_730 ),
    .O(\Inst_UControl/state_FSM_FFd3-In_1922 )
  );
  X_FF #(
    .LOC ( "SLICE_X39Y12" ),
    .INIT ( 1'b0 ))
  \Inst_UControl/state_FSM_FFd3  (
    .I(\Inst_UControl/state_FSM_FFd3/DXMUX_1925 ),
    .CE(VCC),
    .CLK(\Inst_UControl/state_FSM_FFd3/CLKINV_1909 ),
    .SET(GND),
    .RST(\Inst_UControl/state_FSM_FFd3/FFX/RSTAND_1930 ),
    .O(\Inst_UControl/state_FSM_FFd3_731 )
  );
  X_INV #(
    .LOC ( "SLICE_X39Y12" ))
  \Inst_UControl/state_FSM_FFd3/FFX/RSTAND  (
    .I(\Inst_Interfaz/rst_n_728 ),
    .O(\Inst_UControl/state_FSM_FFd3/FFX/RSTAND_1930 )
  );
  X_FF #(
    .LOC ( "SLICE_X54Y19" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/rotary_q1  (
    .I(\Inst_Interfaz/rotary_q2/DYMUX_1950 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/rotary_q2/CLKINV_1941 ),
    .SET(GND),
    .RST(GND),
    .O(\Inst_Interfaz/rotary_q1_744 )
  );
  X_LUT4 #(
    .INIT ( 16'hBB22 ),
    .LOC ( "SLICE_X54Y19" ))
  \Inst_Interfaz/Mmux_rotary_q2_mux000011  (
    .ADR0(\Inst_Interfaz/rotary_in [1]),
    .ADR1(\Inst_Interfaz/rotary_in [0]),
    .ADR2(VCC),
    .ADR3(\Inst_Interfaz/rotary_q2_741 ),
    .O(\Inst_Interfaz/rotary_q2_mux0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X54Y19" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/rotary_q2  (
    .I(\Inst_Interfaz/rotary_q2/DXMUX_1962 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/rotary_q2/CLKINV_1941 ),
    .SET(GND),
    .RST(GND),
    .O(\Inst_Interfaz/rotary_q2_741 )
  );
  X_FF #(
    .LOC ( "SLICE_X60Y12" ),
    .INIT ( 1'b0 ))
  leds_out_4 (
    .I(\leds_out_5/DYMUX_1999 ),
    .CE(VCC),
    .CLK(\leds_out_5/CLKINV_1986 ),
    .SET(GND),
    .RST(GND),
    .O(leds_out_4_704)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ),
    .LOC ( "SLICE_X60Y12" ))
  \Mshreg_leds_out_5/SRL16E  (
    .A0(GLOBAL_LOGIC1),
    .A1(GLOBAL_LOGIC0),
    .A2(GLOBAL_LOGIC0),
    .A3(GLOBAL_LOGIC0),
    .D(\leds_out_5/DIF_MUX_2004 ),
    .CE(\leds_out_5/SRINV_1980 ),
    .CLK(\leds_out_5/CLKINV_1986 ),
    .Q(Mshreg_leds_out_5),
    .Q15(\NLW_Mshreg_leds_out_5/SRL16E_Q15_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X37Y17" ),
    .INIT ( 1'b0 ))
  \Inst_Counter/temp_3  (
    .I(\Inst_Counter/temp<2>/DYMUX_1163 ),
    .CE(VCC),
    .CLK(\Inst_Counter/temp<2>/CLKINV_1141 ),
    .SET(GND),
    .RST(\Inst_Counter/temp<2>/SRINV_1142 ),
    .O(\Inst_Counter/temp [3])
  );
  X_FF #(
    .LOC ( "SLICE_X37Y17" ),
    .INIT ( 1'b0 ))
  \Inst_Counter/temp_2  (
    .I(\Inst_Counter/temp<2>/DXMUX_1182 ),
    .CE(VCC),
    .CLK(\Inst_Counter/temp<2>/CLKINV_1141 ),
    .SET(GND),
    .RST(\Inst_Counter/temp<2>/SRINV_1142 ),
    .O(\Inst_Counter/temp [2])
  );
  X_FF #(
    .LOC ( "SLICE_X37Y18" ),
    .INIT ( 1'b0 ))
  \Inst_Counter/temp_5  (
    .I(\Inst_Counter/temp<4>/DYMUX_1219 ),
    .CE(VCC),
    .CLK(\Inst_Counter/temp<4>/CLKINV_1197 ),
    .SET(GND),
    .RST(\Inst_Counter/temp<4>/SRINV_1198 ),
    .O(\Inst_Counter/temp [5])
  );
  X_FF #(
    .LOC ( "SLICE_X37Y18" ),
    .INIT ( 1'b0 ))
  \Inst_Counter/temp_4  (
    .I(\Inst_Counter/temp<4>/DXMUX_1238 ),
    .CE(VCC),
    .CLK(\Inst_Counter/temp<4>/CLKINV_1197 ),
    .SET(GND),
    .RST(\Inst_Counter/temp<4>/SRINV_1198 ),
    .O(\Inst_Counter/temp [4])
  );
  X_FF #(
    .LOC ( "SLICE_X37Y19" ),
    .INIT ( 1'b0 ))
  \Inst_Counter/temp_7  (
    .I(\Inst_Counter/temp<6>/DYMUX_1275 ),
    .CE(VCC),
    .CLK(\Inst_Counter/temp<6>/CLKINV_1253 ),
    .SET(GND),
    .RST(\Inst_Counter/temp<6>/SRINV_1254 ),
    .O(\Inst_Counter/temp [7])
  );
  X_FF #(
    .LOC ( "SLICE_X37Y19" ),
    .INIT ( 1'b0 ))
  \Inst_Counter/temp_6  (
    .I(\Inst_Counter/temp<6>/DXMUX_1294 ),
    .CE(VCC),
    .CLK(\Inst_Counter/temp<6>/CLKINV_1253 ),
    .SET(GND),
    .RST(\Inst_Counter/temp<6>/SRINV_1254 ),
    .O(\Inst_Counter/temp [6])
  );
  X_FF #(
    .LOC ( "SLICE_X37Y20" ),
    .INIT ( 1'b0 ))
  \Inst_Counter/temp_9  (
    .I(\Inst_Counter/temp<8>/DYMUX_1331 ),
    .CE(VCC),
    .CLK(\Inst_Counter/temp<8>/CLKINV_1309 ),
    .SET(GND),
    .RST(\Inst_Counter/temp<8>/SRINV_1310 ),
    .O(\Inst_Counter/temp [9])
  );
  X_FF #(
    .LOC ( "SLICE_X37Y20" ),
    .INIT ( 1'b0 ))
  \Inst_Counter/temp_8  (
    .I(\Inst_Counter/temp<8>/DXMUX_1350 ),
    .CE(VCC),
    .CLK(\Inst_Counter/temp<8>/CLKINV_1309 ),
    .SET(GND),
    .RST(\Inst_Counter/temp<8>/SRINV_1310 ),
    .O(\Inst_Counter/temp [8])
  );
  X_FF #(
    .LOC ( "SLICE_X37Y21" ),
    .INIT ( 1'b0 ))
  \Inst_Counter/temp_11  (
    .I(\Inst_Counter/temp<10>/DYMUX_1387 ),
    .CE(VCC),
    .CLK(\Inst_Counter/temp<10>/CLKINV_1365 ),
    .SET(GND),
    .RST(\Inst_Counter/temp<10>/SRINV_1366 ),
    .O(\Inst_Counter/temp [11])
  );
  X_FF #(
    .LOC ( "SLICE_X43Y5" ),
    .INIT ( 1'b0 ))
  \Inst_UControl/LCD_DB_1  (
    .I(\Inst_UControl/LCD_DB<1>/DXMUX_2202 ),
    .CE(VCC),
    .CLK(\Inst_UControl/LCD_DB<1>/CLKINV_2178 ),
    .SET(GND),
    .RST(\Inst_UControl/LCD_DB<1>/SRINVNOT ),
    .O(\Inst_UControl/LCD_DB[1] )
  );
  X_FF #(
    .LOC ( "SLICE_X41Y4" ),
    .INIT ( 1'b0 ))
  \Inst_UControl/LCD_DB_2  (
    .I(\Inst_UControl/LCD_DB<3>/DYMUX_2230 ),
    .CE(VCC),
    .CLK(\Inst_UControl/LCD_DB<3>/CLKINV_2219 ),
    .SET(GND),
    .RST(\Inst_UControl/LCD_DB<3>/SRINVNOT ),
    .O(\Inst_UControl/LCD_DB[2] )
  );
  X_LUT4 #(
    .INIT ( 16'h44AE ),
    .LOC ( "SLICE_X41Y4" ))
  \Inst_UControl/state_FSM_Out101  (
    .ADR0(\Inst_UControl/state_FSM_FFd3_731 ),
    .ADR1(\Inst_UControl/state_FSM_FFd4_730 ),
    .ADR2(\Inst_UControl/state_FSM_FFd1_734 ),
    .ADR3(\Inst_UControl/state_FSM_FFd2_733 ),
    .O(\Inst_UControl/state_index0006 )
  );
  X_FF #(
    .LOC ( "SLICE_X41Y4" ),
    .INIT ( 1'b0 ))
  \Inst_UControl/LCD_DB_3  (
    .I(\Inst_UControl/LCD_DB<3>/DXMUX_2244 ),
    .CE(VCC),
    .CLK(\Inst_UControl/LCD_DB<3>/CLKINV_2219 ),
    .SET(GND),
    .RST(\Inst_UControl/LCD_DB<3>/SRINVNOT ),
    .O(\Inst_UControl/LCD_DB[3] )
  );
  X_FF #(
    .LOC ( "SLICE_X40Y5" ),
    .INIT ( 1'b0 ))
  \Inst_UControl/LCD_DB_5  (
    .I(\Inst_UControl/LCD_DB<5>/DYMUX_2267 ),
    .CE(VCC),
    .CLK(\Inst_UControl/LCD_DB<5>/CLKINV_2258 ),
    .SET(GND),
    .RST(\Inst_UControl/LCD_DB<5>/FFY/RSTAND_2272 ),
    .O(\Inst_UControl/LCD_DB[5] )
  );
  X_INV #(
    .LOC ( "SLICE_X40Y5" ))
  \Inst_UControl/LCD_DB<5>/FFY/RSTAND  (
    .I(\Inst_Interfaz/rst_n_728 ),
    .O(\Inst_UControl/LCD_DB<5>/FFY/RSTAND_2272 )
  );
  X_FF #(
    .LOC ( "SLICE_X41Y8" ),
    .INIT ( 1'b0 ))
  \Inst_UControl/LCD_DB_7  (
    .I(\Inst_UControl/state_FSM_FFd1/DYMUX_2296 ),
    .CE(VCC),
    .CLK(\Inst_UControl/state_FSM_FFd1/CLKINV_2286 ),
    .SET(GND),
    .RST(\Inst_UControl/state_FSM_FFd1/SRINVNOT ),
    .O(\Inst_UControl/LCD_DB[7] )
  );
  X_LUT4 #(
    .INIT ( 16'hFF80 ),
    .LOC ( "SLICE_X41Y8" ))
  \Inst_UControl/state_FSM_FFd1-In  (
    .ADR0(\Inst_UControl/state_FSM_FFd5_729 ),
    .ADR1(\Inst_Counter/tic_727 ),
    .ADR2(\Inst_UControl/state_index0002 ),
    .ADR3(\Inst_UControl/state_FSM_FFd1_734 ),
    .O(\Inst_UControl/state_FSM_FFd1-In_2307 )
  );
  X_FF #(
    .LOC ( "SLICE_X41Y8" ),
    .INIT ( 1'b0 ))
  \Inst_UControl/state_FSM_FFd1  (
    .I(\Inst_UControl/state_FSM_FFd1/DXMUX_2310 ),
    .CE(VCC),
    .CLK(\Inst_UControl/state_FSM_FFd1/CLKINV_2286 ),
    .SET(GND),
    .RST(\Inst_UControl/state_FSM_FFd1/SRINVNOT ),
    .O(\Inst_UControl/state_FSM_FFd1_734 )
  );
  X_FF #(
    .LOC ( "SLICE_X38Y15" ),
    .INIT ( 1'b0 ))
  \Inst_UControl/state_FSM_FFd5  (
    .I(\Inst_UControl/state_FSM_FFd5/DYMUX_2333 ),
    .CE(VCC),
    .CLK(\Inst_UControl/state_FSM_FFd5/CLKINV_2322 ),
    .SET(GND),
    .RST(\Inst_UControl/state_FSM_FFd5/FFY/RSTAND_2338 ),
    .O(\Inst_UControl/state_FSM_FFd5_729 )
  );
  X_INV #(
    .LOC ( "SLICE_X38Y15" ))
  \Inst_UControl/state_FSM_FFd5/FFY/RSTAND  (
    .I(\Inst_Interfaz/rst_n_728 ),
    .O(\Inst_UControl/state_FSM_FFd5/FFY/RSTAND_2338 )
  );
  X_FF #(
    .LOC ( "SLICE_X59Y5" ),
    .INIT ( 1'b0 ))
  pb_int_1 (
    .I(\pb_int<1>/DXMUX_2621 ),
    .CE(VCC),
    .CLK(\pb_int<1>/CLKINV_2614 ),
    .SET(GND),
    .RST(GND),
    .O(pb_int[1])
  );
  X_FF #(
    .LOC ( "SLICE_X59Y4" ),
    .INIT ( 1'b0 ))
  pb_int_2 (
    .I(\pb_int<3>/DYMUX_2632 ),
    .CE(VCC),
    .CLK(\pb_int<3>/CLKINV_2630 ),
    .SET(GND),
    .RST(GND),
    .O(pb_int[2])
  );
  X_FF #(
    .LOC ( "SLICE_X59Y4" ),
    .INIT ( 1'b0 ))
  pb_int_3 (
    .I(\pb_int<3>/DXMUX_2637 ),
    .CE(VCC),
    .CLK(\pb_int<3>/CLKINV_2630 ),
    .SET(GND),
    .RST(GND),
    .O(pb_int[3])
  );
  X_FF #(
    .LOC ( "SLICE_X58Y12" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_pb0/state_FSM_FFd2  (
    .I(\Inst_Interfaz/Inst_pb0/state_FSM_FFd1/DYMUX_2657 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/Inst_pb0/state_FSM_FFd1/CLKINV_2647 ),
    .SET(GND),
    .RST(GND),
    .O(\Inst_Interfaz/Inst_pb0/state_FSM_FFd2_746 )
  );
  X_FF #(
    .LOC ( "SLICE_X58Y12" ),
    .INIT ( 1'b1 ))
  \Inst_Interfaz/Inst_pb0/state_FSM_FFd1  (
    .I(\Inst_Interfaz/Inst_pb0/state_FSM_FFd1/DXMUX_2662 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/Inst_pb0/state_FSM_FFd1/CLKINV_2647 ),
    .SET(GND),
    .RST(GND),
    .O(\Inst_Interfaz/Inst_pb0/state_FSM_FFd1_773 )
  );
  X_FF #(
    .LOC ( "SLICE_X53Y18" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd2  (
    .I(\Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1/DYMUX_2682 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1/CLKINV_2672 ),
    .SET(GND),
    .RST(GND),
    .O(\Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd2_752 )
  );
  X_FF #(
    .LOC ( "SLICE_X53Y18" ),
    .INIT ( 1'b1 ))
  \Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1  (
    .I(\Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1/DXMUX_2687 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1/CLKINV_2672 ),
    .SET(GND),
    .RST(GND),
    .O(\Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1_774 )
  );
  X_FF #(
    .LOC ( "SLICE_X30Y10" ),
    .INIT ( 1'b0 ))
  modo_int (
    .I(\modo_int/DYMUX_2696 ),
    .CE(VCC),
    .CLK(\modo_int/CLKINV_2694 ),
    .SET(GND),
    .RST(GND),
    .O(modo_int_753)
  );
  X_FF #(
    .LOC ( "SLICE_X60Y10" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_pb3/state_FSM_FFd2  (
    .I(\Inst_Interfaz/Inst_pb3/state_FSM_FFd1/DYMUX_2716 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/Inst_pb3/state_FSM_FFd1/CLKINV_2706 ),
    .SET(GND),
    .RST(GND),
    .O(\Inst_Interfaz/Inst_pb3/state_FSM_FFd2_747 )
  );
  X_FF #(
    .LOC ( "SLICE_X60Y10" ),
    .INIT ( 1'b1 ))
  \Inst_Interfaz/Inst_pb3/state_FSM_FFd1  (
    .I(\Inst_Interfaz/Inst_pb3/state_FSM_FFd1/DXMUX_2721 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/Inst_pb3/state_FSM_FFd1/CLKINV_2706 ),
    .SET(GND),
    .RST(GND),
    .O(\Inst_Interfaz/Inst_pb3/state_FSM_FFd1_775 )
  );
  X_FF #(
    .LOC ( "SLICE_X53Y13" ),
    .INIT ( 1'b0 ))
  rot_0 (
    .I(\rot<1>/DYMUX_2732 ),
    .CE(VCC),
    .CLK(\rot<1>/CLKINV_2730 ),
    .SET(GND),
    .RST(GND),
    .O(rot[0])
  );
  X_FF #(
    .LOC ( "SLICE_X53Y13" ),
    .INIT ( 1'b0 ))
  rot_1 (
    .I(\rot<1>/DXMUX_2737 ),
    .CE(VCC),
    .CLK(\rot<1>/CLKINV_2730 ),
    .SET(GND),
    .RST(GND),
    .O(rot[1])
  );
  X_FF #(
    .LOC ( "SLICE_X58Y10" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/pb1  (
    .I(\Inst_Interfaz/pb1/DXMUX_2496 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/pb1/CLKINV_2489 ),
    .SET(GND),
    .RST(GND),
    .O(\Inst_Interfaz/pb1_761 )
  );
  X_FF #(
    .LOC ( "SLICE_X59Y9" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/pb2  (
    .I(\Inst_Interfaz/pb3/DYMUX_2507 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/pb3/CLKINV_2505 ),
    .SET(GND),
    .RST(GND),
    .O(\Inst_Interfaz/pb2_766 )
  );
  X_FF #(
    .LOC ( "SLICE_X59Y9" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/pb3  (
    .I(\Inst_Interfaz/pb3/DXMUX_2512 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/pb3/CLKINV_2505 ),
    .SET(GND),
    .RST(GND),
    .O(\Inst_Interfaz/pb3_765 )
  );
  X_SFF #(
    .LOC ( "SLICE_X56Y25" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/rotary_event  (
    .I(\Inst_Interfaz/rotary_event/DYMUX_2523 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/rotary_event/CLKINV_2520 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\Inst_Interfaz/rotary_event/SRINV_2521 ),
    .O(\Inst_Interfaz/rotary_event_767 )
  );
  X_FF #(
    .LOC ( "SLICE_X58Y24" ),
    .INIT ( 1'b0 ))
  \Inst_LEDS/led_2  (
    .I(\Inst_LEDS/led<2>/DYMUX_2535 ),
    .CE(\Inst_LEDS/led<2>/CEINV_2532 ),
    .CLK(\Inst_LEDS/led<2>/CLKINV_2533 ),
    .SET(GND),
    .RST(GND),
    .O(\Inst_LEDS/led [2])
  );
  X_FF #(
    .LOC ( "SLICE_X59Y25" ),
    .INIT ( 1'b0 ))
  \Inst_LEDS/led_3  (
    .I(\Inst_LEDS/led<3>/DYMUX_2547 ),
    .CE(\Inst_LEDS/led<3>/CEINV_2544 ),
    .CLK(\Inst_LEDS/led<3>/CLKINV_2545 ),
    .SET(GND),
    .RST(GND),
    .O(\Inst_LEDS/led [3])
  );
  X_FF #(
    .LOC ( "SLICE_X38Y14" ),
    .INIT ( 1'b0 ))
  \Inst_UControl/clr_timer  (
    .I(\Inst_UControl/clr_timer/DYMUX_2559 ),
    .CE(VCC),
    .CLK(\Inst_UControl/clr_timer/CLKINV_2556 ),
    .SET(GND),
    .RST(\Inst_UControl/clr_timer/FFY/RSTAND_2564 ),
    .O(\Inst_UControl/clr_timer_673 )
  );
  X_INV #(
    .LOC ( "SLICE_X38Y14" ))
  \Inst_UControl/clr_timer/FFY/RSTAND  (
    .I(\Inst_Interfaz/rst_n_728 ),
    .O(\Inst_UControl/clr_timer/FFY/RSTAND_2564 )
  );
  X_FF #(
    .LOC ( "SLICE_X50Y15" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/rotatory_press  (
    .I(\Inst_Interfaz/rotatory_press/DYMUX_2571 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/rotatory_press/CLKINV_2569 ),
    .SET(GND),
    .RST(GND),
    .O(\Inst_Interfaz/rotatory_press_770 )
  );
  X_FF #(
    .LOC ( "SLICE_X61Y10" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_pb2/state_FSM_FFd2  (
    .I(\Inst_Interfaz/Inst_pb2/state_FSM_FFd1/DYMUX_2591 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/Inst_pb2/state_FSM_FFd1/CLKINV_2581 ),
    .SET(GND),
    .RST(GND),
    .O(\Inst_Interfaz/Inst_pb2/state_FSM_FFd2_748 )
  );
  X_FF #(
    .LOC ( "SLICE_X61Y10" ),
    .INIT ( 1'b1 ))
  \Inst_Interfaz/Inst_pb2/state_FSM_FFd1  (
    .I(\Inst_Interfaz/Inst_pb2/state_FSM_FFd1/DXMUX_2596 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/Inst_pb2/state_FSM_FFd1/CLKINV_2581 ),
    .SET(GND),
    .RST(GND),
    .O(\Inst_Interfaz/Inst_pb2/state_FSM_FFd1_772 )
  );
  X_FF #(
    .LOC ( "SLICE_X46Y8" ),
    .INIT ( 1'b0 ))
  rot_press (
    .I(\rot_press/DYMUX_2605 ),
    .CE(VCC),
    .CLK(\rot_press/CLKINV_2603 ),
    .SET(GND),
    .RST(GND),
    .O(rot_press_769)
  );
  X_FF #(
    .LOC ( "SLICE_X59Y5" ),
    .INIT ( 1'b0 ))
  pb_int_0 (
    .I(\pb_int<1>/DYMUX_2616 ),
    .CE(VCC),
    .CLK(\pb_int<1>/CLKINV_2614 ),
    .SET(GND),
    .RST(GND),
    .O(pb_int[0])
  );
  X_FF #(
    .LOC ( "SLICE_X60Y12" ),
    .INIT ( 1'b0 ))
  leds_out_5 (
    .I(\leds_out_5/DXMUX_2015 ),
    .CE(VCC),
    .CLK(\leds_out_5/CLKINV_1986 ),
    .SET(GND),
    .RST(GND),
    .O(leds_out_5_705)
  );
  X_FF #(
    .LOC ( "SLICE_X60Y11" ),
    .INIT ( 1'b0 ))
  leds_out_6 (
    .I(\leds_out_7/DYMUX_2052 ),
    .CE(VCC),
    .CLK(\leds_out_7/CLKINV_2039 ),
    .SET(GND),
    .RST(GND),
    .O(leds_out_6_706)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ),
    .LOC ( "SLICE_X60Y11" ))
  \Mshreg_leds_out_7/SRL16E  (
    .A0(GLOBAL_LOGIC1),
    .A1(GLOBAL_LOGIC0),
    .A2(GLOBAL_LOGIC0),
    .A3(GLOBAL_LOGIC0),
    .D(\leds_out_7/DIF_MUX_2057 ),
    .CE(\leds_out_7/SRINV_2033 ),
    .CLK(\leds_out_7/CLKINV_2039 ),
    .Q(Mshreg_leds_out_7),
    .Q15(\NLW_Mshreg_leds_out_7/SRL16E_Q15_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X60Y11" ),
    .INIT ( 1'b0 ))
  leds_out_7 (
    .I(\leds_out_7/DXMUX_2068 ),
    .CE(VCC),
    .CLK(\leds_out_7/CLKINV_2039 ),
    .SET(GND),
    .RST(GND),
    .O(leds_out_7_707)
  );
  X_FF #(
    .LOC ( "SLICE_X52Y15" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/rotary_in_0  (
    .I(\Inst_Interfaz/rotary_in<1>/DYMUX_2105 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/rotary_in<1>/CLKINV_2092 ),
    .SET(GND),
    .RST(GND),
    .O(\Inst_Interfaz/rotary_in [0])
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ),
    .LOC ( "SLICE_X52Y15" ))
  \Inst_Interfaz/Mshreg_rotary_in_1/SRL16E  (
    .A0(GLOBAL_LOGIC0),
    .A1(GLOBAL_LOGIC0),
    .A2(GLOBAL_LOGIC0),
    .A3(GLOBAL_LOGIC0),
    .D(\Inst_Interfaz/rotary_in<1>/DIF_MUX_2110 ),
    .CE(\Inst_Interfaz/rotary_in<1>/SRINV_2086 ),
    .CLK(\Inst_Interfaz/rotary_in<1>/CLKINV_2092 ),
    .Q(\Inst_Interfaz/Mshreg_rotary_in_1 ),
    .Q15(\NLW_Inst_Interfaz/Mshreg_rotary_in_1/SRL16E_Q15_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y15" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/rotary_in_1  (
    .I(\Inst_Interfaz/rotary_in<1>/DXMUX_2121 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/rotary_in<1>/CLKINV_2092 ),
    .SET(GND),
    .RST(GND),
    .O(\Inst_Interfaz/rotary_in [1])
  );
  X_FF #(
    .LOC ( "SLICE_X40Y8" ),
    .INIT ( 1'b0 ))
  \Inst_UControl/LCD_RS  (
    .I(\Inst_UControl/state_FSM_FFd4/DYMUX_2146 ),
    .CE(VCC),
    .CLK(\Inst_UControl/state_FSM_FFd4/CLKINV_2136 ),
    .SET(GND),
    .RST(\Inst_UControl/state_FSM_FFd4/SRINVNOT ),
    .O(\Inst_UControl/LCD_RS_698 )
  );
  X_LUT4 #(
    .INIT ( 16'hBCCC ),
    .LOC ( "SLICE_X40Y8" ))
  \Inst_UControl/state_FSM_FFd4-In1  (
    .ADR0(\Inst_UControl/state_FSM_FFd1_734 ),
    .ADR1(\Inst_UControl/state_FSM_FFd4_730 ),
    .ADR2(\Inst_Counter/tic_727 ),
    .ADR3(\Inst_UControl/state_FSM_FFd5_729 ),
    .O(\Inst_UControl/state_FSM_FFd4-In )
  );
  X_FF #(
    .LOC ( "SLICE_X40Y8" ),
    .INIT ( 1'b0 ))
  \Inst_UControl/state_FSM_FFd4  (
    .I(\Inst_UControl/state_FSM_FFd4/DXMUX_2160 ),
    .CE(VCC),
    .CLK(\Inst_UControl/state_FSM_FFd4/CLKINV_2136 ),
    .SET(GND),
    .RST(\Inst_UControl/state_FSM_FFd4/SRINVNOT ),
    .O(\Inst_UControl/state_FSM_FFd4_730 )
  );
  X_FF #(
    .LOC ( "SLICE_X43Y5" ),
    .INIT ( 1'b0 ))
  \Inst_UControl/LCD_DB_0  (
    .I(\Inst_UControl/LCD_DB<1>/DYMUX_2187 ),
    .CE(VCC),
    .CLK(\Inst_UControl/LCD_DB<1>/CLKINV_2178 ),
    .SET(GND),
    .RST(\Inst_UControl/LCD_DB<1>/SRINVNOT ),
    .O(\Inst_UControl/LCD_DB[0] )
  );
  X_LUT4 #(
    .INIT ( 16'h0044 ),
    .LOC ( "SLICE_X43Y5" ))
  \Inst_UControl/state_FSM_Out121  (
    .ADR0(\Inst_UControl/state_FSM_FFd3_731 ),
    .ADR1(\Inst_UControl/state_FSM_FFd2_733 ),
    .ADR2(VCC),
    .ADR3(\Inst_UControl/state_FSM_FFd4_730 ),
    .O(\Inst_UControl/state_index0008 )
  );
  X_FF #(
    .LOC ( "SLICE_X38Y12" ),
    .INIT ( 1'b0 ))
  \Inst_UControl/tiempo_0  (
    .I(\Inst_UControl/tiempo<1>/DYMUX_2361 ),
    .CE(VCC),
    .CLK(\Inst_UControl/tiempo<1>/CLKINV_2352 ),
    .SET(GND),
    .RST(\Inst_UControl/tiempo<1>/SRINVNOT ),
    .O(\Inst_UControl/tiempo [0])
  );
  X_LUT4 #(
    .INIT ( 16'hB88D ),
    .LOC ( "SLICE_X38Y12" ))
  \Inst_UControl/state_FSM_Out31  (
    .ADR0(\Inst_UControl/state_FSM_FFd1_734 ),
    .ADR1(\Inst_UControl/state_FSM_FFd4_730 ),
    .ADR2(\Inst_UControl/state_FSM_FFd2_733 ),
    .ADR3(\Inst_UControl/state_FSM_FFd3_731 ),
    .O(\Inst_UControl/state_index0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X38Y12" ),
    .INIT ( 1'b0 ))
  \Inst_UControl/tiempo_1  (
    .I(\Inst_UControl/tiempo<1>/DXMUX_2375 ),
    .CE(VCC),
    .CLK(\Inst_UControl/tiempo<1>/CLKINV_2352 ),
    .SET(GND),
    .RST(\Inst_UControl/tiempo<1>/SRINVNOT ),
    .O(\Inst_UControl/tiempo [1])
  );
  X_FF #(
    .LOC ( "SLICE_X56Y20" ),
    .INIT ( 1'b0 ))
  leds_out_0 (
    .I(\leds_out_1/DYMUX_2415 ),
    .CE(VCC),
    .CLK(\leds_out_1/CLKINV_2402 ),
    .SET(GND),
    .RST(GND),
    .O(leds_out_0_699)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ),
    .LOC ( "SLICE_X56Y20" ))
  \Mshreg_leds_out_1/SRL16E  (
    .A0(GLOBAL_LOGIC1),
    .A1(GLOBAL_LOGIC0),
    .A2(GLOBAL_LOGIC0),
    .A3(GLOBAL_LOGIC0),
    .D(\leds_out_1/DIF_MUX_2420 ),
    .CE(\leds_out_1/SRINV_2396 ),
    .CLK(\leds_out_1/CLKINV_2402 ),
    .Q(Mshreg_leds_out_1),
    .Q15(\NLW_Mshreg_leds_out_1/SRL16E_Q15_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X56Y20" ),
    .INIT ( 1'b0 ))
  leds_out_1 (
    .I(\leds_out_1/DXMUX_2431 ),
    .CE(VCC),
    .CLK(\leds_out_1/CLKINV_2402 ),
    .SET(GND),
    .RST(GND),
    .O(leds_out_1_700)
  );
  X_FF #(
    .LOC ( "SLICE_X60Y22" ),
    .INIT ( 1'b0 ))
  leds_out_2 (
    .I(\leds_out_3/DYMUX_2442 ),
    .CE(VCC),
    .CLK(\leds_out_3/CLKINV_2440 ),
    .SET(GND),
    .RST(GND),
    .O(leds_out_2_701)
  );
  X_FF #(
    .LOC ( "SLICE_X60Y22" ),
    .INIT ( 1'b0 ))
  leds_out_3 (
    .I(\leds_out_3/DXMUX_2447 ),
    .CE(VCC),
    .CLK(\leds_out_3/CLKINV_2440 ),
    .SET(GND),
    .RST(GND),
    .O(leds_out_3_703)
  );
  X_LUT4 #(
    .INIT ( 16'h00CC ),
    .LOC ( "SLICE_X56Y24" ))
  \Inst_Interfaz/rotary_left_and00001  (
    .ADR0(VCC),
    .ADR1(\Inst_Interfaz/rotary_q1_744 ),
    .ADR2(VCC),
    .ADR3(\Inst_Interfaz/delay_rotary_q1_756 ),
    .O(\Inst_Interfaz/rotary_left_and0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X57Y25" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/delay_rotary_q1  (
    .I(\Inst_Interfaz/delay_rotary_q1/DYMUX_2480 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/delay_rotary_q1/CLKINV_2478 ),
    .SET(GND),
    .RST(GND),
    .O(\Inst_Interfaz/delay_rotary_q1_756 )
  );
  X_FF #(
    .LOC ( "SLICE_X58Y10" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/pb0  (
    .I(\Inst_Interfaz/pb1/DYMUX_2491 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/pb1/CLKINV_2489 ),
    .SET(GND),
    .RST(GND),
    .O(\Inst_Interfaz/pb0_762 )
  );
  X_FF #(
    .LOC ( "SLICE_X57Y24" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/rotary_left  (
    .I(\Inst_Interfaz/rotary_left/DYMUX_2748 ),
    .CE(\Inst_Interfaz/rotary_left/CEINV_2745 ),
    .CLK(\Inst_Interfaz/rotary_left/CLKINV_2746 ),
    .SET(GND),
    .RST(GND),
    .O(\Inst_Interfaz/rotary_left_768 )
  );
  X_FF #(
    .LOC ( "SLICE_X59Y12" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_pb1/state_FSM_FFd2  (
    .I(\Inst_Interfaz/Inst_pb1/state_FSM_FFd1/DYMUX_2793 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/Inst_pb1/state_FSM_FFd1/CLKINV_2783 ),
    .SET(GND),
    .RST(GND),
    .O(\Inst_Interfaz/Inst_pb1/state_FSM_FFd2_745 )
  );
  X_FF #(
    .LOC ( "SLICE_X59Y12" ),
    .INIT ( 1'b1 ))
  \Inst_Interfaz/Inst_pb1/state_FSM_FFd1  (
    .I(\Inst_Interfaz/Inst_pb1/state_FSM_FFd1/DXMUX_2798 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/Inst_pb1/state_FSM_FFd1/CLKINV_2783 ),
    .SET(GND),
    .RST(GND),
    .O(\Inst_Interfaz/Inst_pb1/state_FSM_FFd1_777 )
  );
  X_SFF #(
    .LOC ( "SLICE_X56Y13" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/rst_n  (
    .I(\Inst_Interfaz/rst_n/DYMUX_2809 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/rst_n/CLKINV_2806 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\Inst_Interfaz/rst_n/SRINV_2807 ),
    .O(\Inst_Interfaz/rst_n_728 )
  );
  X_SFF #(
    .LOC ( "SLICE_X50Y36" ),
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/clk10ms  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms/DYMUX_2821 ),
    .CE(VCC),
    .CLK(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms/CLKINV_2818 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms/SRINV_2819 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_771 )
  );
  X_ZERO   GLOBAL_LOGIC0_GND (
    .O(GLOBAL_LOGIC0)
  );
  X_ONE   GLOBAL_LOGIC1_VCC (
    .O(GLOBAL_LOGIC1)
  );
  X_BUF #(
    .LOC ( "PAD240" ))
  \lcd_data_out<0>/OUTPUT/OFF/OMUX  (
    .I(\Inst_UControl/LCD_DB[0] ),
    .O(\lcd_data_out<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD220" ))
  \lcd_data_out<1>/OUTPUT/OFF/OMUX  (
    .I(\Inst_UControl/LCD_DB[1] ),
    .O(\lcd_data_out<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD221" ))
  \lcd_data_out<2>/OUTPUT/OFF/OMUX  (
    .I(\Inst_UControl/LCD_DB[2] ),
    .O(\lcd_data_out<2>/O )
  );
  X_ZERO   \lcd_rw_out/OUTPUT/O1_GND  (
    .O(GLOBAL_LOGIC0)
  );
  X_ZERO   \lcd_rw_out/OUTPUT/OFF/O1_GND  (
    .O(GLOBAL_LOGIC0)
  );
  X_BUF #(
    .LOC ( "PAD236" ))
  \lcd_rw_out/OUTPUT/OFF/OMUX  (
    .I(GLOBAL_LOGIC0),
    .O(\lcd_rw_out/O )
  );
  X_BUF #(
    .LOC ( "PAD245" ))
  \lcd_data_out<3>/OUTPUT/OFF/OMUX  (
    .I(\Inst_UControl/LCD_DB[3] ),
    .O(\lcd_data_out<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD246" ))
  \lcd_data_out<4>/OUTPUT/OFF/OMUX  (
    .I(\Inst_UControl/LCD_DB[5] ),
    .O(\lcd_data_out<4>/O )
  );
  X_BUF #(
    .LOC ( "PAD225" ))
  \lcd_data_out<5>/OUTPUT/OFF/OMUX  (
    .I(\Inst_UControl/LCD_DB[5] ),
    .O(\lcd_data_out<5>/O )
  );
  X_BUF #(
    .LOC ( "PAD226" ))
  \lcd_data_out<6>/OUTPUT/OFF/OMUX  (
    .I(\Inst_UControl/LCD_DB[7] ),
    .O(\lcd_data_out<6>/O )
  );
  X_BUF #(
    .LOC ( "PAD230" ))
  \lcd_data_out<7>/OUTPUT/OFF/OMUX  (
    .I(\Inst_UControl/LCD_DB[7] ),
    .O(\lcd_data_out<7>/O )
  );
  X_BUF #(
    .LOC ( "PAD278" ))
  \lcd_e_out/OUTPUT/OFF/OMUX  (
    .I(\Inst_UControl/LCD_E_697 ),
    .O(\lcd_e_out/O )
  );
  X_BUF #(
    .LOC ( "PAD235" ))
  \lcd_rs_out/OUTPUT/OFF/OMUX  (
    .I(\Inst_UControl/LCD_RS_698 ),
    .O(\lcd_rs_out/O )
  );
  X_BUF #(
    .LOC ( "PAD172" ))
  \leds_out<0>/OUTPUT/OFF/OMUX  (
    .I(leds_out_0_699),
    .O(\leds_out<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD171" ))
  \leds_out<1>/OUTPUT/OFF/OMUX  (
    .I(leds_out_1_700),
    .O(\leds_out<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD178" ))
  \leds_out<2>/OUTPUT/OFF/OMUX  (
    .I(leds_out_2_701),
    .O(\leds_out<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD177" ))
  \leds_out<3>/OUTPUT/OFF/OMUX  (
    .I(leds_out_3_703),
    .O(\leds_out<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD186" ))
  \leds_out<4>/OUTPUT/OFF/OMUX  (
    .I(leds_out_4_704),
    .O(\leds_out<4>/O )
  );
  X_BUF #(
    .LOC ( "PAD185" ))
  \leds_out<5>/OUTPUT/OFF/OMUX  (
    .I(leds_out_5_705),
    .O(\leds_out<5>/O )
  );
  X_BUF #(
    .LOC ( "PAD188" ))
  \leds_out<6>/OUTPUT/OFF/OMUX  (
    .I(leds_out_6_706),
    .O(\leds_out<6>/O )
  );
  X_BUF #(
    .LOC ( "PAD187" ))
  \leds_out<7>/OUTPUT/OFF/OMUX  (
    .I(leds_out_7_707),
    .O(\leds_out<7>/O )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X51Y41" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\Inst_Interfaz/Inst_divDEBOUNCER/contador [10]),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<10>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X37Y16" ))
  \Inst_Counter/temp<0>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\Inst_Counter/temp [1]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Inst_Counter/temp<0>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X37Y17" ))
  \Inst_Counter/temp<2>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\Inst_Counter/temp [2]),
    .ADR3(VCC),
    .O(\Inst_Counter/temp<2>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X37Y17" ))
  \Inst_Counter/temp<2>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\Inst_Counter/temp [3]),
    .O(\Inst_Counter/temp<2>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X37Y18" ))
  \Inst_Counter/temp<4>/F/X_LUT4  (
    .ADR0(\Inst_Counter/temp [4]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Inst_Counter/temp<4>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X37Y18" ))
  \Inst_Counter/temp<4>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\Inst_Counter/temp [5]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Inst_Counter/temp<4>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X37Y19" ))
  \Inst_Counter/temp<6>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\Inst_Counter/temp [6]),
    .O(\Inst_Counter/temp<6>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X37Y19" ))
  \Inst_Counter/temp<6>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\Inst_Counter/temp [7]),
    .ADR3(VCC),
    .O(\Inst_Counter/temp<6>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X37Y20" ))
  \Inst_Counter/temp<8>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\Inst_Counter/temp [8]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Inst_Counter/temp<8>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X37Y20" ))
  \Inst_Counter/temp<8>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\Inst_Counter/temp [9]),
    .ADR3(VCC),
    .O(\Inst_Counter/temp<8>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X37Y21" ))
  \Inst_Counter/temp<10>/F/X_LUT4  (
    .ADR0(\Inst_Counter/temp [10]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Inst_Counter/temp<10>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X37Y21" ))
  \Inst_Counter/temp<10>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\Inst_Counter/temp [11]),
    .O(\Inst_Counter/temp<10>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X37Y22" ))
  \Inst_Counter/temp<12>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\Inst_Counter/temp [12]),
    .O(\Inst_Counter/temp<12>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X37Y22" ))
  \Inst_Counter/temp<12>/G/X_LUT4  (
    .ADR0(\Inst_Counter/temp [13]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Inst_Counter/temp<12>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X51Y36" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\Inst_Interfaz/Inst_divDEBOUNCER/contador [1]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<0>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X51Y37" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\Inst_Interfaz/Inst_divDEBOUNCER/contador [2]),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X51Y37" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\Inst_Interfaz/Inst_divDEBOUNCER/contador [3]),
    .ADR3(VCC),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<2>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X51Y38" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\Inst_Interfaz/Inst_divDEBOUNCER/contador [4]),
    .ADR3(VCC),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X51Y38" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\Inst_Interfaz/Inst_divDEBOUNCER/contador [5]),
    .ADR3(VCC),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<4>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X51Y39" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\Inst_Interfaz/Inst_divDEBOUNCER/contador [6]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X51Y39" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\Inst_Interfaz/Inst_divDEBOUNCER/contador [7]),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<6>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X51Y40" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\Inst_Interfaz/Inst_divDEBOUNCER/contador [8]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X51Y40" ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/G/X_LUT4  (
    .ADR0(\Inst_Interfaz/Inst_divDEBOUNCER/contador [9]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador<8>/G )
  );
  X_ONE   NlwBlock_ModuloLCD_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_ModuloLCD_GND (
    .O(GND)
  );
endmodule


`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire PRLD;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

