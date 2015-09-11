////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: K.31
//  \   \         Application: netgen
//  /   /         Filename: ModuloLCD_synthesis.v
// /___/   /\     Timestamp: Sat Feb 07 02:12:54 2009
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim ModuloLCD.ngc ModuloLCD_synthesis.v 
// Device	: xc3s700a-4-fg484
// Input file	: ModuloLCD.ngc
// Output file	: D:\Desings\DCSE\PracticaLCD\netgen\synthesis\ModuloLCD_synthesis.v
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
  wire \Inst_Clock1562/CLK0_BUF ;
  wire \Inst_Clock1562/CLK0_OUT ;
  wire \Inst_Clock1562/CLKDV_BUF ;
  wire \Inst_Clock1562/CLKIN_IBUFG_OUT ;
  wire \Inst_Counter/Mcount_temp_cy<10>_rt_6 ;
  wire \Inst_Counter/Mcount_temp_cy<11>_rt_8 ;
  wire \Inst_Counter/Mcount_temp_cy<12>_rt_10 ;
  wire \Inst_Counter/Mcount_temp_cy<13>_rt_12 ;
  wire \Inst_Counter/Mcount_temp_cy<1>_rt_14 ;
  wire \Inst_Counter/Mcount_temp_cy<2>_rt_16 ;
  wire \Inst_Counter/Mcount_temp_cy<3>_rt_18 ;
  wire \Inst_Counter/Mcount_temp_cy<4>_rt_20 ;
  wire \Inst_Counter/Mcount_temp_cy<5>_rt_22 ;
  wire \Inst_Counter/Mcount_temp_cy<6>_rt_24 ;
  wire \Inst_Counter/Mcount_temp_cy<7>_rt_26 ;
  wire \Inst_Counter/Mcount_temp_cy<8>_rt_28 ;
  wire \Inst_Counter/Mcount_temp_cy<9>_rt_30 ;
  wire \Inst_Counter/Mcount_temp_xor<14>_rt_32 ;
  wire \Inst_Counter/Mmux_tic_mux0001_3_33 ;
  wire \Inst_Counter/Mmux_tic_mux0001_4_34 ;
  wire \Inst_Counter/tic_50 ;
  wire \Inst_Counter/tic_mux0001 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<10>_rt_54 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<1>_rt_56 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<2>_rt_58 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<3>_rt_60 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<4>_rt_62 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<5>_rt_64 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<6>_rt_66 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<7>_rt_68 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<8>_rt_70 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<9>_rt_72 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_xor<11>_rt_74 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_75 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_not0001 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000011_90 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000016_91 ;
  wire \Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000028_92 ;
  wire \Inst_Interfaz/Inst_pb0/state_FSM_FFd1_93 ;
  wire \Inst_Interfaz/Inst_pb0/state_FSM_FFd1-In ;
  wire \Inst_Interfaz/Inst_pb0/state_FSM_FFd2_95 ;
  wire \Inst_Interfaz/Inst_pb0/state_FSM_FFd2-In ;
  wire \Inst_Interfaz/Inst_pb1/state_FSM_FFd1_97 ;
  wire \Inst_Interfaz/Inst_pb1/state_FSM_FFd1-In ;
  wire \Inst_Interfaz/Inst_pb1/state_FSM_FFd2_99 ;
  wire \Inst_Interfaz/Inst_pb1/state_FSM_FFd2-In ;
  wire \Inst_Interfaz/Inst_pb2/state_FSM_FFd1_101 ;
  wire \Inst_Interfaz/Inst_pb2/state_FSM_FFd1-In ;
  wire \Inst_Interfaz/Inst_pb2/state_FSM_FFd2_103 ;
  wire \Inst_Interfaz/Inst_pb2/state_FSM_FFd2-In ;
  wire \Inst_Interfaz/Inst_pb3/state_FSM_FFd1_105 ;
  wire \Inst_Interfaz/Inst_pb3/state_FSM_FFd1-In ;
  wire \Inst_Interfaz/Inst_pb3/state_FSM_FFd2_107 ;
  wire \Inst_Interfaz/Inst_pb3/state_FSM_FFd2-In ;
  wire \Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1_109 ;
  wire \Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1-In ;
  wire \Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd2_111 ;
  wire \Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd2-In ;
  wire \Inst_Interfaz/Mshreg_rotary_in_0_113 ;
  wire \Inst_Interfaz/Mshreg_rotary_in_1_114 ;
  wire \Inst_Interfaz/delay_rotary_q1_126 ;
  wire \Inst_Interfaz/pb0_127 ;
  wire \Inst_Interfaz/pb1_128 ;
  wire \Inst_Interfaz/pb2_129 ;
  wire \Inst_Interfaz/pb3_130 ;
  wire \Inst_Interfaz/rotary_event_131 ;
  wire \Inst_Interfaz/rotary_event_not0001 ;
  wire \Inst_Interfaz/rotary_left_135 ;
  wire \Inst_Interfaz/rotary_left_and0000 ;
  wire \Inst_Interfaz/rotary_q1_137 ;
  wire \Inst_Interfaz/rotary_q1_mux0000 ;
  wire \Inst_Interfaz/rotary_q2_139 ;
  wire \Inst_Interfaz/rotary_q2_mux0000 ;
  wire \Inst_Interfaz/rotatory_press_141 ;
  wire \Inst_Interfaz/rst_and0000 ;
  wire \Inst_Interfaz/rst_n_143 ;
  wire \Inst_LEDS/led_2_mux0001 ;
  wire \Inst_UControl/LCD_DB[0] ;
  wire \Inst_UControl/LCD_DB[1] ;
  wire \Inst_UControl/LCD_DB[2] ;
  wire \Inst_UControl/LCD_DB[3] ;
  wire \Inst_UControl/LCD_DB[5] ;
  wire \Inst_UControl/LCD_DB[7] ;
  wire \Inst_UControl/LCD_E_153 ;
  wire \Inst_UControl/LCD_RS_154 ;
  wire \Inst_UControl/_mux0000 ;
  wire \Inst_UControl/_mux0005 ;
  wire \Inst_UControl/clr_timer_157 ;
  wire \Inst_UControl/rst_n_inv ;
  wire \Inst_UControl/state_FSM_FFd1_159 ;
  wire \Inst_UControl/state_FSM_FFd1-In_160 ;
  wire \Inst_UControl/state_FSM_FFd2_161 ;
  wire \Inst_UControl/state_FSM_FFd2-In_162 ;
  wire \Inst_UControl/state_FSM_FFd3_163 ;
  wire \Inst_UControl/state_FSM_FFd3-In_164 ;
  wire \Inst_UControl/state_FSM_FFd4_165 ;
  wire \Inst_UControl/state_FSM_FFd4-In ;
  wire \Inst_UControl/state_FSM_FFd5_167 ;
  wire \Inst_UControl/state_FSM_FFd5-In ;
  wire \Inst_UControl/state_cmp_eq0016 ;
  wire \Inst_UControl/state_index0000 ;
  wire \Inst_UControl/state_index0001 ;
  wire \Inst_UControl/state_index0002 ;
  wire \Inst_UControl/state_index0004 ;
  wire \Inst_UControl/state_index0006 ;
  wire \Inst_UControl/state_index0007 ;
  wire \Inst_UControl/state_index0008 ;
  wire \Inst_UControl/state_index0009 ;
  wire Mshreg_leds_out_0_180;
  wire Mshreg_leds_out_1_181;
  wire Mshreg_leds_out_4_182;
  wire Mshreg_leds_out_5_183;
  wire Mshreg_leds_out_6_184;
  wire Mshreg_leds_out_7_185;
  wire N10;
  wire N19;
  wire N2;
  wire N21;
  wire N23;
  wire N24;
  wire clk640;
  wire lcd_rw_out_OBUF_219;
  wire leds_out_0_228;
  wire leds_out_1_229;
  wire leds_out_2_230;
  wire leds_out_3_231;
  wire leds_out_4_232;
  wire leds_out_5_233;
  wire leds_out_6_234;
  wire leds_out_7_235;
  wire modo_in_IBUF_237;
  wire modo_int_238;
  wire pb_in_0_IBUF_243;
  wire pb_in_1_IBUF_244;
  wire pb_in_2_IBUF_245;
  wire pb_in_3_IBUF_246;
  wire rot_in_0_IBUF_255;
  wire rot_in_1_IBUF_256;
  wire rot_press_257;
  wire rot_press_in_IBUF_259;
  wire \NLW_Inst_Clock1562/DCM_SP_INST_CLK90_UNCONNECTED ;
  wire \NLW_Inst_Clock1562/DCM_SP_INST_CLK180_UNCONNECTED ;
  wire \NLW_Inst_Clock1562/DCM_SP_INST_CLK270_UNCONNECTED ;
  wire \NLW_Inst_Clock1562/DCM_SP_INST_CLK2X_UNCONNECTED ;
  wire \NLW_Inst_Clock1562/DCM_SP_INST_CLK2X180_UNCONNECTED ;
  wire \NLW_Inst_Clock1562/DCM_SP_INST_CLKFX_UNCONNECTED ;
  wire \NLW_Inst_Clock1562/DCM_SP_INST_CLKFX180_UNCONNECTED ;
  wire \NLW_Inst_Clock1562/DCM_SP_INST_LOCKED_UNCONNECTED ;
  wire \NLW_Inst_Clock1562/DCM_SP_INST_PSDONE_UNCONNECTED ;
  wire \NLW_Inst_Clock1562/DCM_SP_INST_STATUS<7>_UNCONNECTED ;
  wire \NLW_Inst_Clock1562/DCM_SP_INST_STATUS<6>_UNCONNECTED ;
  wire \NLW_Inst_Clock1562/DCM_SP_INST_STATUS<5>_UNCONNECTED ;
  wire \NLW_Inst_Clock1562/DCM_SP_INST_STATUS<4>_UNCONNECTED ;
  wire \NLW_Inst_Clock1562/DCM_SP_INST_STATUS<3>_UNCONNECTED ;
  wire \NLW_Inst_Clock1562/DCM_SP_INST_STATUS<2>_UNCONNECTED ;
  wire \NLW_Inst_Clock1562/DCM_SP_INST_STATUS<1>_UNCONNECTED ;
  wire \NLW_Inst_Clock1562/DCM_SP_INST_STATUS<0>_UNCONNECTED ;
  wire [13 : 0] \Inst_Counter/Mcount_temp_cy ;
  wire [0 : 0] \Inst_Counter/Mcount_temp_lut ;
  wire [14 : 0] \Inst_Counter/temp ;
  wire [10 : 0] \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy ;
  wire [0 : 0] \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_lut ;
  wire [11 : 0] \Inst_Interfaz/Inst_divDEBOUNCER/contador ;
  wire [11 : 1] \Inst_Interfaz/Result ;
  wire [1 : 0] \Inst_Interfaz/rotary_in ;
  wire [3 : 2] \Inst_LEDS/led ;
  wire [1 : 0] \Inst_UControl/tiempo ;
  wire [14 : 1] Result;
  wire [3 : 0] pb_int;
  wire [1 : 0] rot;
  GND   XST_GND (
    .G(lcd_rw_out_OBUF_219)
  );
  FD   rot_0 (
    .C(clk640),
    .D(rot_in_0_IBUF_255),
    .Q(rot[0])
  );
  FD   rot_1 (
    .C(clk640),
    .D(rot_in_1_IBUF_256),
    .Q(rot[1])
  );
  FD   modo_int (
    .C(clk640),
    .D(modo_in_IBUF_237),
    .Q(modo_int_238)
  );
  FD   pb_int_0 (
    .C(clk640),
    .D(pb_in_0_IBUF_243),
    .Q(pb_int[0])
  );
  FD   pb_int_1 (
    .C(clk640),
    .D(pb_in_1_IBUF_244),
    .Q(pb_int[1])
  );
  FD   pb_int_2 (
    .C(clk640),
    .D(pb_in_2_IBUF_245),
    .Q(pb_int[2])
  );
  FD   pb_int_3 (
    .C(clk640),
    .D(pb_in_3_IBUF_246),
    .Q(pb_int[3])
  );
  FD   rot_press (
    .C(clk640),
    .D(rot_press_in_IBUF_259),
    .Q(rot_press_257)
  );
  FD   leds_out_2 (
    .C(clk640),
    .D(\Inst_LEDS/led [2]),
    .Q(leds_out_2_230)
  );
  FD   leds_out_3 (
    .C(clk640),
    .D(\Inst_LEDS/led [3]),
    .Q(leds_out_3_231)
  );
  VCC   XST_VCC (
    .P(N2)
  );
  FD   \Inst_Counter/tic  (
    .C(clk640),
    .D(\Inst_Counter/tic_mux0001 ),
    .Q(\Inst_Counter/tic_50 )
  );
  FDC   \Inst_UControl/LCD_DB_7  (
    .C(clk640),
    .CLR(\Inst_UControl/rst_n_inv ),
    .D(\Inst_UControl/state_index0002 ),
    .Q(\Inst_UControl/LCD_DB[7] )
  );
  FDC   \Inst_UControl/LCD_DB_5  (
    .C(clk640),
    .CLR(\Inst_UControl/rst_n_inv ),
    .D(\Inst_UControl/state_index0004 ),
    .Q(\Inst_UControl/LCD_DB[5] )
  );
  FDC   \Inst_UControl/LCD_DB_3  (
    .C(clk640),
    .CLR(\Inst_UControl/rst_n_inv ),
    .D(\Inst_UControl/state_index0006 ),
    .Q(\Inst_UControl/LCD_DB[3] )
  );
  FDC   \Inst_UControl/LCD_DB_2  (
    .C(clk640),
    .CLR(\Inst_UControl/rst_n_inv ),
    .D(\Inst_UControl/state_index0007 ),
    .Q(\Inst_UControl/LCD_DB[2] )
  );
  FDC   \Inst_UControl/LCD_DB_1  (
    .C(clk640),
    .CLR(\Inst_UControl/rst_n_inv ),
    .D(\Inst_UControl/state_index0008 ),
    .Q(\Inst_UControl/LCD_DB[1] )
  );
  FDC   \Inst_UControl/LCD_DB_0  (
    .C(clk640),
    .CLR(\Inst_UControl/rst_n_inv ),
    .D(\Inst_UControl/state_index0009 ),
    .Q(\Inst_UControl/LCD_DB[0] )
  );
  FDC   \Inst_UControl/clr_timer  (
    .C(clk640),
    .CLR(\Inst_UControl/rst_n_inv ),
    .D(\Inst_UControl/_mux0005 ),
    .Q(\Inst_UControl/clr_timer_157 )
  );
  FDC   \Inst_UControl/LCD_RS  (
    .C(clk640),
    .CLR(\Inst_UControl/rst_n_inv ),
    .D(\Inst_UControl/state_cmp_eq0016 ),
    .Q(\Inst_UControl/LCD_RS_154 )
  );
  FDC   \Inst_UControl/tiempo_1  (
    .C(clk640),
    .CLR(\Inst_UControl/rst_n_inv ),
    .D(\Inst_UControl/state_index0000 ),
    .Q(\Inst_UControl/tiempo [1])
  );
  FDC   \Inst_UControl/tiempo_0  (
    .C(clk640),
    .CLR(\Inst_UControl/rst_n_inv ),
    .D(\Inst_UControl/state_index0001 ),
    .Q(\Inst_UControl/tiempo [0])
  );
  FDC   \Inst_UControl/LCD_E  (
    .C(clk640),
    .CLR(\Inst_UControl/rst_n_inv ),
    .D(\Inst_UControl/_mux0000 ),
    .Q(\Inst_UControl/LCD_E_153 )
  );
  FDE   \Inst_LEDS/led_3  (
    .C(clk640),
    .CE(\Inst_Interfaz/rotary_event_131 ),
    .D(\Inst_Interfaz/rotary_left_135 ),
    .Q(\Inst_LEDS/led [3])
  );
  FDE   \Inst_LEDS/led_2  (
    .C(clk640),
    .CE(\Inst_Interfaz/rotary_event_131 ),
    .D(\Inst_LEDS/led_2_mux0001 ),
    .Q(\Inst_LEDS/led [2])
  );
  FDC   \Inst_Counter/temp_0  (
    .C(clk640),
    .CLR(\Inst_UControl/clr_timer_157 ),
    .D(\Inst_Counter/Mcount_temp_lut [0]),
    .Q(\Inst_Counter/temp [0])
  );
  FDC   \Inst_Counter/temp_1  (
    .C(clk640),
    .CLR(\Inst_UControl/clr_timer_157 ),
    .D(Result[1]),
    .Q(\Inst_Counter/temp [1])
  );
  FDC   \Inst_Counter/temp_2  (
    .C(clk640),
    .CLR(\Inst_UControl/clr_timer_157 ),
    .D(Result[2]),
    .Q(\Inst_Counter/temp [2])
  );
  FDC   \Inst_Counter/temp_3  (
    .C(clk640),
    .CLR(\Inst_UControl/clr_timer_157 ),
    .D(Result[3]),
    .Q(\Inst_Counter/temp [3])
  );
  FDC   \Inst_Counter/temp_4  (
    .C(clk640),
    .CLR(\Inst_UControl/clr_timer_157 ),
    .D(Result[4]),
    .Q(\Inst_Counter/temp [4])
  );
  FDC   \Inst_Counter/temp_5  (
    .C(clk640),
    .CLR(\Inst_UControl/clr_timer_157 ),
    .D(Result[5]),
    .Q(\Inst_Counter/temp [5])
  );
  FDC   \Inst_Counter/temp_6  (
    .C(clk640),
    .CLR(\Inst_UControl/clr_timer_157 ),
    .D(Result[6]),
    .Q(\Inst_Counter/temp [6])
  );
  FDC   \Inst_Counter/temp_7  (
    .C(clk640),
    .CLR(\Inst_UControl/clr_timer_157 ),
    .D(Result[7]),
    .Q(\Inst_Counter/temp [7])
  );
  FDC   \Inst_Counter/temp_8  (
    .C(clk640),
    .CLR(\Inst_UControl/clr_timer_157 ),
    .D(Result[8]),
    .Q(\Inst_Counter/temp [8])
  );
  FDC   \Inst_Counter/temp_9  (
    .C(clk640),
    .CLR(\Inst_UControl/clr_timer_157 ),
    .D(Result[9]),
    .Q(\Inst_Counter/temp [9])
  );
  FDC   \Inst_Counter/temp_10  (
    .C(clk640),
    .CLR(\Inst_UControl/clr_timer_157 ),
    .D(Result[10]),
    .Q(\Inst_Counter/temp [10])
  );
  FDC   \Inst_Counter/temp_11  (
    .C(clk640),
    .CLR(\Inst_UControl/clr_timer_157 ),
    .D(Result[11]),
    .Q(\Inst_Counter/temp [11])
  );
  FDC   \Inst_Counter/temp_12  (
    .C(clk640),
    .CLR(\Inst_UControl/clr_timer_157 ),
    .D(Result[12]),
    .Q(\Inst_Counter/temp [12])
  );
  FDC   \Inst_Counter/temp_13  (
    .C(clk640),
    .CLR(\Inst_UControl/clr_timer_157 ),
    .D(Result[13]),
    .Q(\Inst_Counter/temp [13])
  );
  FDC   \Inst_Counter/temp_14  (
    .C(clk640),
    .CLR(\Inst_UControl/clr_timer_157 ),
    .D(Result[14]),
    .Q(\Inst_Counter/temp [14])
  );
  MUXF5   \Inst_Counter/Mmux_tic_mux0001_2_f5  (
    .I0(\Inst_Counter/Mmux_tic_mux0001_4_34 ),
    .I1(\Inst_Counter/Mmux_tic_mux0001_3_33 ),
    .S(\Inst_UControl/tiempo [1]),
    .O(\Inst_Counter/tic_mux0001 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Inst_Counter/Mmux_tic_mux0001_4  (
    .I0(\Inst_UControl/tiempo [0]),
    .I1(\Inst_Counter/temp [5]),
    .I2(\Inst_Counter/temp [7]),
    .O(\Inst_Counter/Mmux_tic_mux0001_4_34 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Inst_Counter/Mmux_tic_mux0001_3  (
    .I0(\Inst_UControl/tiempo [0]),
    .I1(\Inst_Counter/temp [12]),
    .I2(\Inst_Counter/temp [14]),
    .O(\Inst_Counter/Mmux_tic_mux0001_3_33 )
  );
  MUXCY   \Inst_Counter/Mcount_temp_cy<0>  (
    .CI(lcd_rw_out_OBUF_219),
    .DI(N2),
    .S(\Inst_Counter/Mcount_temp_lut [0]),
    .O(\Inst_Counter/Mcount_temp_cy [0])
  );
  MUXCY   \Inst_Counter/Mcount_temp_cy<1>  (
    .CI(\Inst_Counter/Mcount_temp_cy [0]),
    .DI(lcd_rw_out_OBUF_219),
    .S(\Inst_Counter/Mcount_temp_cy<1>_rt_14 ),
    .O(\Inst_Counter/Mcount_temp_cy [1])
  );
  XORCY   \Inst_Counter/Mcount_temp_xor<1>  (
    .CI(\Inst_Counter/Mcount_temp_cy [0]),
    .LI(\Inst_Counter/Mcount_temp_cy<1>_rt_14 ),
    .O(Result[1])
  );
  MUXCY   \Inst_Counter/Mcount_temp_cy<2>  (
    .CI(\Inst_Counter/Mcount_temp_cy [1]),
    .DI(lcd_rw_out_OBUF_219),
    .S(\Inst_Counter/Mcount_temp_cy<2>_rt_16 ),
    .O(\Inst_Counter/Mcount_temp_cy [2])
  );
  XORCY   \Inst_Counter/Mcount_temp_xor<2>  (
    .CI(\Inst_Counter/Mcount_temp_cy [1]),
    .LI(\Inst_Counter/Mcount_temp_cy<2>_rt_16 ),
    .O(Result[2])
  );
  MUXCY   \Inst_Counter/Mcount_temp_cy<3>  (
    .CI(\Inst_Counter/Mcount_temp_cy [2]),
    .DI(lcd_rw_out_OBUF_219),
    .S(\Inst_Counter/Mcount_temp_cy<3>_rt_18 ),
    .O(\Inst_Counter/Mcount_temp_cy [3])
  );
  XORCY   \Inst_Counter/Mcount_temp_xor<3>  (
    .CI(\Inst_Counter/Mcount_temp_cy [2]),
    .LI(\Inst_Counter/Mcount_temp_cy<3>_rt_18 ),
    .O(Result[3])
  );
  MUXCY   \Inst_Counter/Mcount_temp_cy<4>  (
    .CI(\Inst_Counter/Mcount_temp_cy [3]),
    .DI(lcd_rw_out_OBUF_219),
    .S(\Inst_Counter/Mcount_temp_cy<4>_rt_20 ),
    .O(\Inst_Counter/Mcount_temp_cy [4])
  );
  XORCY   \Inst_Counter/Mcount_temp_xor<4>  (
    .CI(\Inst_Counter/Mcount_temp_cy [3]),
    .LI(\Inst_Counter/Mcount_temp_cy<4>_rt_20 ),
    .O(Result[4])
  );
  MUXCY   \Inst_Counter/Mcount_temp_cy<5>  (
    .CI(\Inst_Counter/Mcount_temp_cy [4]),
    .DI(lcd_rw_out_OBUF_219),
    .S(\Inst_Counter/Mcount_temp_cy<5>_rt_22 ),
    .O(\Inst_Counter/Mcount_temp_cy [5])
  );
  XORCY   \Inst_Counter/Mcount_temp_xor<5>  (
    .CI(\Inst_Counter/Mcount_temp_cy [4]),
    .LI(\Inst_Counter/Mcount_temp_cy<5>_rt_22 ),
    .O(Result[5])
  );
  MUXCY   \Inst_Counter/Mcount_temp_cy<6>  (
    .CI(\Inst_Counter/Mcount_temp_cy [5]),
    .DI(lcd_rw_out_OBUF_219),
    .S(\Inst_Counter/Mcount_temp_cy<6>_rt_24 ),
    .O(\Inst_Counter/Mcount_temp_cy [6])
  );
  XORCY   \Inst_Counter/Mcount_temp_xor<6>  (
    .CI(\Inst_Counter/Mcount_temp_cy [5]),
    .LI(\Inst_Counter/Mcount_temp_cy<6>_rt_24 ),
    .O(Result[6])
  );
  MUXCY   \Inst_Counter/Mcount_temp_cy<7>  (
    .CI(\Inst_Counter/Mcount_temp_cy [6]),
    .DI(lcd_rw_out_OBUF_219),
    .S(\Inst_Counter/Mcount_temp_cy<7>_rt_26 ),
    .O(\Inst_Counter/Mcount_temp_cy [7])
  );
  XORCY   \Inst_Counter/Mcount_temp_xor<7>  (
    .CI(\Inst_Counter/Mcount_temp_cy [6]),
    .LI(\Inst_Counter/Mcount_temp_cy<7>_rt_26 ),
    .O(Result[7])
  );
  MUXCY   \Inst_Counter/Mcount_temp_cy<8>  (
    .CI(\Inst_Counter/Mcount_temp_cy [7]),
    .DI(lcd_rw_out_OBUF_219),
    .S(\Inst_Counter/Mcount_temp_cy<8>_rt_28 ),
    .O(\Inst_Counter/Mcount_temp_cy [8])
  );
  XORCY   \Inst_Counter/Mcount_temp_xor<8>  (
    .CI(\Inst_Counter/Mcount_temp_cy [7]),
    .LI(\Inst_Counter/Mcount_temp_cy<8>_rt_28 ),
    .O(Result[8])
  );
  MUXCY   \Inst_Counter/Mcount_temp_cy<9>  (
    .CI(\Inst_Counter/Mcount_temp_cy [8]),
    .DI(lcd_rw_out_OBUF_219),
    .S(\Inst_Counter/Mcount_temp_cy<9>_rt_30 ),
    .O(\Inst_Counter/Mcount_temp_cy [9])
  );
  XORCY   \Inst_Counter/Mcount_temp_xor<9>  (
    .CI(\Inst_Counter/Mcount_temp_cy [8]),
    .LI(\Inst_Counter/Mcount_temp_cy<9>_rt_30 ),
    .O(Result[9])
  );
  MUXCY   \Inst_Counter/Mcount_temp_cy<10>  (
    .CI(\Inst_Counter/Mcount_temp_cy [9]),
    .DI(lcd_rw_out_OBUF_219),
    .S(\Inst_Counter/Mcount_temp_cy<10>_rt_6 ),
    .O(\Inst_Counter/Mcount_temp_cy [10])
  );
  XORCY   \Inst_Counter/Mcount_temp_xor<10>  (
    .CI(\Inst_Counter/Mcount_temp_cy [9]),
    .LI(\Inst_Counter/Mcount_temp_cy<10>_rt_6 ),
    .O(Result[10])
  );
  MUXCY   \Inst_Counter/Mcount_temp_cy<11>  (
    .CI(\Inst_Counter/Mcount_temp_cy [10]),
    .DI(lcd_rw_out_OBUF_219),
    .S(\Inst_Counter/Mcount_temp_cy<11>_rt_8 ),
    .O(\Inst_Counter/Mcount_temp_cy [11])
  );
  XORCY   \Inst_Counter/Mcount_temp_xor<11>  (
    .CI(\Inst_Counter/Mcount_temp_cy [10]),
    .LI(\Inst_Counter/Mcount_temp_cy<11>_rt_8 ),
    .O(Result[11])
  );
  MUXCY   \Inst_Counter/Mcount_temp_cy<12>  (
    .CI(\Inst_Counter/Mcount_temp_cy [11]),
    .DI(lcd_rw_out_OBUF_219),
    .S(\Inst_Counter/Mcount_temp_cy<12>_rt_10 ),
    .O(\Inst_Counter/Mcount_temp_cy [12])
  );
  XORCY   \Inst_Counter/Mcount_temp_xor<12>  (
    .CI(\Inst_Counter/Mcount_temp_cy [11]),
    .LI(\Inst_Counter/Mcount_temp_cy<12>_rt_10 ),
    .O(Result[12])
  );
  MUXCY   \Inst_Counter/Mcount_temp_cy<13>  (
    .CI(\Inst_Counter/Mcount_temp_cy [12]),
    .DI(lcd_rw_out_OBUF_219),
    .S(\Inst_Counter/Mcount_temp_cy<13>_rt_12 ),
    .O(\Inst_Counter/Mcount_temp_cy [13])
  );
  XORCY   \Inst_Counter/Mcount_temp_xor<13>  (
    .CI(\Inst_Counter/Mcount_temp_cy [12]),
    .LI(\Inst_Counter/Mcount_temp_cy<13>_rt_12 ),
    .O(Result[13])
  );
  XORCY   \Inst_Counter/Mcount_temp_xor<14>  (
    .CI(\Inst_Counter/Mcount_temp_cy [13]),
    .LI(\Inst_Counter/Mcount_temp_xor<14>_rt_32 ),
    .O(Result[14])
  );
  DCM_SP #(
    .CLKDV_DIVIDE ( 16.000000 ),
    .CLKFX_DIVIDE ( 1 ),
    .CLKFX_MULTIPLY ( 4 ),
    .CLKIN_DIVIDE_BY_2 ( "TRUE" ),
    .CLKIN_PERIOD ( 40.0000000000000000 ),
    .CLKOUT_PHASE_SHIFT ( "NONE" ),
    .CLK_FEEDBACK ( "1X" ),
    .DESKEW_ADJUST ( "SYSTEM_SYNCHRONOUS" ),
    .DFS_FREQUENCY_MODE ( "LOW" ),
    .DLL_FREQUENCY_MODE ( "LOW" ),
    .DSS_MODE ( "NONE" ),
    .DUTY_CYCLE_CORRECTION ( "TRUE" ),
    .PHASE_SHIFT ( 0 ),
    .STARTUP_WAIT ( "FALSE" ),
    .FACTORY_JF ( 16'hC080 ))
  \Inst_Clock1562/DCM_SP_INST  (
    .CLKIN(\Inst_Clock1562/CLKIN_IBUFG_OUT ),
    .CLKFB(\Inst_Clock1562/CLK0_OUT ),
    .RST(lcd_rw_out_OBUF_219),
    .DSSEN(lcd_rw_out_OBUF_219),
    .PSINCDEC(lcd_rw_out_OBUF_219),
    .PSEN(lcd_rw_out_OBUF_219),
    .PSCLK(lcd_rw_out_OBUF_219),
    .CLK0(\Inst_Clock1562/CLK0_BUF ),
    .CLK90(\NLW_Inst_Clock1562/DCM_SP_INST_CLK90_UNCONNECTED ),
    .CLK180(\NLW_Inst_Clock1562/DCM_SP_INST_CLK180_UNCONNECTED ),
    .CLK270(\NLW_Inst_Clock1562/DCM_SP_INST_CLK270_UNCONNECTED ),
    .CLK2X(\NLW_Inst_Clock1562/DCM_SP_INST_CLK2X_UNCONNECTED ),
    .CLK2X180(\NLW_Inst_Clock1562/DCM_SP_INST_CLK2X180_UNCONNECTED ),
    .CLKDV(\Inst_Clock1562/CLKDV_BUF ),
    .CLKFX(\NLW_Inst_Clock1562/DCM_SP_INST_CLKFX_UNCONNECTED ),
    .CLKFX180(\NLW_Inst_Clock1562/DCM_SP_INST_CLKFX180_UNCONNECTED ),
    .LOCKED(\NLW_Inst_Clock1562/DCM_SP_INST_LOCKED_UNCONNECTED ),
    .PSDONE(\NLW_Inst_Clock1562/DCM_SP_INST_PSDONE_UNCONNECTED ),
    .STATUS({\NLW_Inst_Clock1562/DCM_SP_INST_STATUS<7>_UNCONNECTED , \NLW_Inst_Clock1562/DCM_SP_INST_STATUS<6>_UNCONNECTED , 
\NLW_Inst_Clock1562/DCM_SP_INST_STATUS<5>_UNCONNECTED , \NLW_Inst_Clock1562/DCM_SP_INST_STATUS<4>_UNCONNECTED , 
\NLW_Inst_Clock1562/DCM_SP_INST_STATUS<3>_UNCONNECTED , \NLW_Inst_Clock1562/DCM_SP_INST_STATUS<2>_UNCONNECTED , 
\NLW_Inst_Clock1562/DCM_SP_INST_STATUS<1>_UNCONNECTED , \NLW_Inst_Clock1562/DCM_SP_INST_STATUS<0>_UNCONNECTED })
  );
  BUFG   \Inst_Clock1562/CLK0_BUFG_INST  (
    .I(\Inst_Clock1562/CLK0_BUF ),
    .O(\Inst_Clock1562/CLK0_OUT )
  );
  IBUFG #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IOSTANDARD ( "DEFAULT" ))
  \Inst_Clock1562/CLKIN_IBUFG_INST  (
    .I(clk50),
    .O(\Inst_Clock1562/CLKIN_IBUFG_OUT )
  );
  BUFG   \Inst_Clock1562/CLKDV_BUFG_INST  (
    .I(\Inst_Clock1562/CLKDV_BUF ),
    .O(clk640)
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Inst_UControl/state_FSM_FFd3  (
    .C(clk640),
    .CLR(\Inst_UControl/rst_n_inv ),
    .D(\Inst_UControl/state_FSM_FFd3-In_164 ),
    .Q(\Inst_UControl/state_FSM_FFd3_163 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Inst_UControl/state_FSM_FFd1  (
    .C(clk640),
    .CLR(\Inst_UControl/rst_n_inv ),
    .D(\Inst_UControl/state_FSM_FFd1-In_160 ),
    .Q(\Inst_UControl/state_FSM_FFd1_159 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Inst_UControl/state_FSM_FFd2  (
    .C(clk640),
    .CLR(\Inst_UControl/rst_n_inv ),
    .D(\Inst_UControl/state_FSM_FFd2-In_162 ),
    .Q(\Inst_UControl/state_FSM_FFd2_161 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Inst_UControl/state_FSM_FFd4  (
    .C(clk640),
    .CLR(\Inst_UControl/rst_n_inv ),
    .D(\Inst_UControl/state_FSM_FFd4-In ),
    .Q(\Inst_UControl/state_FSM_FFd4_165 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Inst_UControl/state_FSM_FFd5  (
    .C(clk640),
    .CLR(\Inst_UControl/rst_n_inv ),
    .D(\Inst_UControl/state_FSM_FFd5-In ),
    .Q(\Inst_UControl/state_FSM_FFd5_167 )
  );
  XORCY   \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_xor<11>  (
    .CI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [10]),
    .LI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_xor<11>_rt_74 ),
    .O(\Inst_Interfaz/Result [11])
  );
  XORCY   \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_xor<10>  (
    .CI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [9]),
    .LI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<10>_rt_54 ),
    .O(\Inst_Interfaz/Result [10])
  );
  MUXCY   \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<10>  (
    .CI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [9]),
    .DI(lcd_rw_out_OBUF_219),
    .S(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<10>_rt_54 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [10])
  );
  XORCY   \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_xor<9>  (
    .CI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [8]),
    .LI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<9>_rt_72 ),
    .O(\Inst_Interfaz/Result [9])
  );
  MUXCY   \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<9>  (
    .CI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [8]),
    .DI(lcd_rw_out_OBUF_219),
    .S(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<9>_rt_72 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [9])
  );
  XORCY   \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_xor<8>  (
    .CI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [7]),
    .LI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<8>_rt_70 ),
    .O(\Inst_Interfaz/Result [8])
  );
  MUXCY   \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<8>  (
    .CI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [7]),
    .DI(lcd_rw_out_OBUF_219),
    .S(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<8>_rt_70 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [8])
  );
  XORCY   \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_xor<7>  (
    .CI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [6]),
    .LI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<7>_rt_68 ),
    .O(\Inst_Interfaz/Result [7])
  );
  MUXCY   \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<7>  (
    .CI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [6]),
    .DI(lcd_rw_out_OBUF_219),
    .S(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<7>_rt_68 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [7])
  );
  XORCY   \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_xor<6>  (
    .CI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [5]),
    .LI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<6>_rt_66 ),
    .O(\Inst_Interfaz/Result [6])
  );
  MUXCY   \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<6>  (
    .CI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [5]),
    .DI(lcd_rw_out_OBUF_219),
    .S(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<6>_rt_66 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [6])
  );
  XORCY   \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_xor<5>  (
    .CI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [4]),
    .LI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<5>_rt_64 ),
    .O(\Inst_Interfaz/Result [5])
  );
  MUXCY   \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<5>  (
    .CI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [4]),
    .DI(lcd_rw_out_OBUF_219),
    .S(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<5>_rt_64 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [5])
  );
  XORCY   \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_xor<4>  (
    .CI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [3]),
    .LI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<4>_rt_62 ),
    .O(\Inst_Interfaz/Result [4])
  );
  MUXCY   \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<4>  (
    .CI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [3]),
    .DI(lcd_rw_out_OBUF_219),
    .S(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<4>_rt_62 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [4])
  );
  XORCY   \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_xor<3>  (
    .CI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [2]),
    .LI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<3>_rt_60 ),
    .O(\Inst_Interfaz/Result [3])
  );
  MUXCY   \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<3>  (
    .CI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [2]),
    .DI(lcd_rw_out_OBUF_219),
    .S(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<3>_rt_60 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [3])
  );
  XORCY   \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_xor<2>  (
    .CI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [1]),
    .LI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<2>_rt_58 ),
    .O(\Inst_Interfaz/Result [2])
  );
  MUXCY   \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<2>  (
    .CI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [1]),
    .DI(lcd_rw_out_OBUF_219),
    .S(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<2>_rt_58 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [2])
  );
  XORCY   \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_xor<1>  (
    .CI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [0]),
    .LI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<1>_rt_56 ),
    .O(\Inst_Interfaz/Result [1])
  );
  MUXCY   \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<1>  (
    .CI(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [0]),
    .DI(lcd_rw_out_OBUF_219),
    .S(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<1>_rt_56 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [1])
  );
  MUXCY   \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<0>  (
    .CI(lcd_rw_out_OBUF_219),
    .DI(N2),
    .S(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_lut [0]),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_11  (
    .C(clk640),
    .D(\Inst_Interfaz/Result [11]),
    .R(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000 ),
    .Q(\Inst_Interfaz/Inst_divDEBOUNCER/contador [11])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_10  (
    .C(clk640),
    .D(\Inst_Interfaz/Result [10]),
    .R(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000 ),
    .Q(\Inst_Interfaz/Inst_divDEBOUNCER/contador [10])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_9  (
    .C(clk640),
    .D(\Inst_Interfaz/Result [9]),
    .R(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000 ),
    .Q(\Inst_Interfaz/Inst_divDEBOUNCER/contador [9])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_8  (
    .C(clk640),
    .D(\Inst_Interfaz/Result [8]),
    .R(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000 ),
    .Q(\Inst_Interfaz/Inst_divDEBOUNCER/contador [8])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_7  (
    .C(clk640),
    .D(\Inst_Interfaz/Result [7]),
    .R(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000 ),
    .Q(\Inst_Interfaz/Inst_divDEBOUNCER/contador [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_6  (
    .C(clk640),
    .D(\Inst_Interfaz/Result [6]),
    .R(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000 ),
    .Q(\Inst_Interfaz/Inst_divDEBOUNCER/contador [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_5  (
    .C(clk640),
    .D(\Inst_Interfaz/Result [5]),
    .R(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000 ),
    .Q(\Inst_Interfaz/Inst_divDEBOUNCER/contador [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_4  (
    .C(clk640),
    .D(\Inst_Interfaz/Result [4]),
    .R(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000 ),
    .Q(\Inst_Interfaz/Inst_divDEBOUNCER/contador [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_3  (
    .C(clk640),
    .D(\Inst_Interfaz/Result [3]),
    .R(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000 ),
    .Q(\Inst_Interfaz/Inst_divDEBOUNCER/contador [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_2  (
    .C(clk640),
    .D(\Inst_Interfaz/Result [2]),
    .R(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000 ),
    .Q(\Inst_Interfaz/Inst_divDEBOUNCER/contador [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_1  (
    .C(clk640),
    .D(\Inst_Interfaz/Result [1]),
    .R(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000 ),
    .Q(\Inst_Interfaz/Inst_divDEBOUNCER/contador [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_0  (
    .C(clk640),
    .D(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_lut [0]),
    .R(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000 ),
    .Q(\Inst_Interfaz/Inst_divDEBOUNCER/contador [0])
  );
  FDP #(
    .INIT ( 1'b1 ))
  \Inst_Interfaz/Inst_pb0/state_FSM_FFd1  (
    .C(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_75 ),
    .D(\Inst_Interfaz/Inst_pb0/state_FSM_FFd1-In ),
    .PRE(lcd_rw_out_OBUF_219),
    .Q(\Inst_Interfaz/Inst_pb0/state_FSM_FFd1_93 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_pb0/state_FSM_FFd2  (
    .C(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_75 ),
    .CLR(lcd_rw_out_OBUF_219),
    .D(\Inst_Interfaz/Inst_pb0/state_FSM_FFd2-In ),
    .Q(\Inst_Interfaz/Inst_pb0/state_FSM_FFd2_95 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \Inst_Interfaz/Inst_pb1/state_FSM_FFd1  (
    .C(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_75 ),
    .D(\Inst_Interfaz/Inst_pb1/state_FSM_FFd1-In ),
    .PRE(lcd_rw_out_OBUF_219),
    .Q(\Inst_Interfaz/Inst_pb1/state_FSM_FFd1_97 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_pb1/state_FSM_FFd2  (
    .C(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_75 ),
    .CLR(lcd_rw_out_OBUF_219),
    .D(\Inst_Interfaz/Inst_pb1/state_FSM_FFd2-In ),
    .Q(\Inst_Interfaz/Inst_pb1/state_FSM_FFd2_99 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \Inst_Interfaz/Inst_pb2/state_FSM_FFd1  (
    .C(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_75 ),
    .D(\Inst_Interfaz/Inst_pb2/state_FSM_FFd1-In ),
    .PRE(lcd_rw_out_OBUF_219),
    .Q(\Inst_Interfaz/Inst_pb2/state_FSM_FFd1_101 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_pb2/state_FSM_FFd2  (
    .C(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_75 ),
    .CLR(lcd_rw_out_OBUF_219),
    .D(\Inst_Interfaz/Inst_pb2/state_FSM_FFd2-In ),
    .Q(\Inst_Interfaz/Inst_pb2/state_FSM_FFd2_103 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \Inst_Interfaz/Inst_pb3/state_FSM_FFd1  (
    .C(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_75 ),
    .D(\Inst_Interfaz/Inst_pb3/state_FSM_FFd1-In ),
    .PRE(lcd_rw_out_OBUF_219),
    .Q(\Inst_Interfaz/Inst_pb3/state_FSM_FFd1_105 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_pb3/state_FSM_FFd2  (
    .C(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_75 ),
    .CLR(lcd_rw_out_OBUF_219),
    .D(\Inst_Interfaz/Inst_pb3/state_FSM_FFd2-In ),
    .Q(\Inst_Interfaz/Inst_pb3/state_FSM_FFd2_107 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1  (
    .C(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_75 ),
    .D(\Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1-In ),
    .PRE(lcd_rw_out_OBUF_219),
    .Q(\Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1_109 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd2  (
    .C(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_75 ),
    .CLR(lcd_rw_out_OBUF_219),
    .D(\Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd2-In ),
    .Q(\Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd2_111 )
  );
  FDR   \Inst_Interfaz/Inst_divDEBOUNCER/clk10ms  (
    .C(clk640),
    .D(N2),
    .R(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_not0001 ),
    .Q(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_75 )
  );
  FD   \Inst_Interfaz/delay_rotary_q1  (
    .C(clk640),
    .D(\Inst_Interfaz/rotary_q1_137 ),
    .Q(\Inst_Interfaz/delay_rotary_q1_126 )
  );
  FDE   \Inst_Interfaz/rotary_left  (
    .C(clk640),
    .CE(\Inst_Interfaz/rotary_left_and0000 ),
    .D(\Inst_Interfaz/rotary_q2_139 ),
    .Q(\Inst_Interfaz/rotary_left_135 )
  );
  FD   \Inst_Interfaz/rotary_q2  (
    .C(clk640),
    .D(\Inst_Interfaz/rotary_q2_mux0000 ),
    .Q(\Inst_Interfaz/rotary_q2_139 )
  );
  FD   \Inst_Interfaz/rotary_q1  (
    .C(clk640),
    .D(\Inst_Interfaz/rotary_q1_mux0000 ),
    .Q(\Inst_Interfaz/rotary_q1_137 )
  );
  FDR   \Inst_Interfaz/rst_n  (
    .C(clk640),
    .D(N2),
    .R(\Inst_Interfaz/rst_and0000 ),
    .Q(\Inst_Interfaz/rst_n_143 )
  );
  FD   \Inst_Interfaz/pb3  (
    .C(clk640),
    .D(pb_int[3]),
    .Q(\Inst_Interfaz/pb3_130 )
  );
  FD   \Inst_Interfaz/pb2  (
    .C(clk640),
    .D(pb_int[2]),
    .Q(\Inst_Interfaz/pb2_129 )
  );
  FD   \Inst_Interfaz/pb1  (
    .C(clk640),
    .D(pb_int[1]),
    .Q(\Inst_Interfaz/pb1_128 )
  );
  FD   \Inst_Interfaz/pb0  (
    .C(clk640),
    .D(pb_int[0]),
    .Q(\Inst_Interfaz/pb0_127 )
  );
  FD   \Inst_Interfaz/rotatory_press  (
    .C(clk640),
    .D(rot_press_257),
    .Q(\Inst_Interfaz/rotatory_press_141 )
  );
  FDR   \Inst_Interfaz/rotary_event  (
    .C(clk640),
    .D(N2),
    .R(\Inst_Interfaz/rotary_event_not0001 ),
    .Q(\Inst_Interfaz/rotary_event_131 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Inst_Interfaz/rst_and00001  (
    .I0(\Inst_Interfaz/Inst_pb1/state_FSM_FFd2_99 ),
    .I1(\Inst_Interfaz/Inst_pb0/state_FSM_FFd2_95 ),
    .O(\Inst_Interfaz/rst_and0000 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd2-In1  (
    .I0(\Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1_109 ),
    .I1(\Inst_Interfaz/rotatory_press_141 ),
    .O(\Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd2-In )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \Inst_Interfaz/Inst_pb3/state_FSM_FFd2-In1  (
    .I0(\Inst_Interfaz/Inst_pb3/state_FSM_FFd1_105 ),
    .I1(\Inst_Interfaz/pb3_130 ),
    .O(\Inst_Interfaz/Inst_pb3/state_FSM_FFd2-In )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \Inst_Interfaz/Inst_pb2/state_FSM_FFd2-In1  (
    .I0(\Inst_Interfaz/Inst_pb2/state_FSM_FFd1_101 ),
    .I1(\Inst_Interfaz/pb2_129 ),
    .O(\Inst_Interfaz/Inst_pb2/state_FSM_FFd2-In )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \Inst_Interfaz/Inst_pb1/state_FSM_FFd2-In1  (
    .I0(\Inst_Interfaz/Inst_pb1/state_FSM_FFd1_97 ),
    .I1(\Inst_Interfaz/pb1_128 ),
    .O(\Inst_Interfaz/Inst_pb1/state_FSM_FFd2-In )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \Inst_Interfaz/Inst_pb0/state_FSM_FFd2-In1  (
    .I0(\Inst_Interfaz/Inst_pb0/state_FSM_FFd1_93 ),
    .I1(\Inst_Interfaz/pb0_127 ),
    .O(\Inst_Interfaz/Inst_pb0/state_FSM_FFd2-In )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Inst_UControl/state_Out71  (
    .I0(\Inst_UControl/state_FSM_FFd2_161 ),
    .I1(\Inst_UControl/state_FSM_FFd3_163 ),
    .I2(\Inst_UControl/state_FSM_FFd4_165 ),
    .O(\Inst_UControl/state_index0002 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \Inst_UControl/state_FSM_Out01  (
    .I0(\Inst_UControl/state_FSM_FFd1_159 ),
    .I1(\Inst_UControl/state_FSM_FFd4_165 ),
    .I2(\Inst_UControl/state_FSM_FFd5_167 ),
    .O(\Inst_UControl/state_cmp_eq0016 )
  );
  LUT3 #(
    .INIT ( 8'hB2 ))
  \Inst_Interfaz/Mmux_rotary_q2_mux000011  (
    .I0(\Inst_Interfaz/rotary_q2_139 ),
    .I1(\Inst_Interfaz/rotary_in [0]),
    .I2(\Inst_Interfaz/rotary_in [1]),
    .O(\Inst_Interfaz/rotary_q2_mux0000 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \Inst_Interfaz/Mmux_rotary_q1_mux000011  (
    .I0(\Inst_Interfaz/rotary_in [1]),
    .I1(\Inst_Interfaz/rotary_q1_137 ),
    .I2(\Inst_Interfaz/rotary_in [0]),
    .O(\Inst_Interfaz/rotary_q1_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h0301 ))
  \Inst_UControl/state_FSM_Out41  (
    .I0(\Inst_UControl/state_FSM_FFd1_159 ),
    .I1(\Inst_UControl/state_FSM_FFd2_161 ),
    .I2(\Inst_UControl/state_FSM_FFd4_165 ),
    .I3(\Inst_UControl/state_FSM_FFd3_163 ),
    .O(\Inst_UControl/state_index0001 )
  );
  LUT4 #(
    .INIT ( 16'h45F4 ))
  \Inst_UControl/state_Out91  (
    .I0(\Inst_UControl/state_FSM_FFd2_161 ),
    .I1(\Inst_UControl/state_FSM_FFd3_163 ),
    .I2(\Inst_UControl/state_FSM_FFd1_159 ),
    .I3(\Inst_UControl/state_FSM_FFd4_165 ),
    .O(\Inst_UControl/state_index0004 )
  );
  LUT4 #(
    .INIT ( 16'h6272 ))
  \Inst_UControl/state_FSM_Out101  (
    .I0(\Inst_UControl/state_FSM_FFd3_163 ),
    .I1(\Inst_UControl/state_FSM_FFd2_161 ),
    .I2(\Inst_UControl/state_FSM_FFd4_165 ),
    .I3(\Inst_UControl/state_FSM_FFd1_159 ),
    .O(\Inst_UControl/state_index0006 )
  );
  LUT4 #(
    .INIT ( 16'h5554 ))
  \Inst_UControl/state_FSM_Out2  (
    .I0(\Inst_UControl/state_FSM_FFd5_167 ),
    .I1(\Inst_UControl/state_FSM_FFd4_165 ),
    .I2(\Inst_UControl/state_FSM_FFd3_163 ),
    .I3(N10),
    .O(\Inst_UControl/_mux0000 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \Inst_UControl/state_FSM_Out1021  (
    .I0(\Inst_UControl/state_FSM_FFd3_163 ),
    .I1(\Inst_UControl/state_FSM_FFd2_161 ),
    .O(\Inst_UControl/state_index0007 )
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \Inst_UControl/state_FSM_Out131  (
    .I0(\Inst_UControl/state_FSM_FFd4_165 ),
    .I1(\Inst_UControl/state_FSM_FFd2_161 ),
    .I2(\Inst_UControl/state_FSM_FFd3_163 ),
    .I3(\Inst_UControl/state_FSM_FFd1_159 ),
    .O(\Inst_UControl/state_index0009 )
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \Inst_UControl/state_FSM_FFd1-In  (
    .I0(\Inst_Counter/tic_50 ),
    .I1(\Inst_UControl/state_FSM_FFd5_167 ),
    .I2(\Inst_UControl/state_index0002 ),
    .I3(\Inst_UControl/state_FSM_FFd1_159 ),
    .O(\Inst_UControl/state_FSM_FFd1-In_160 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \Inst_UControl/state_FSM_FFd5-In1  (
    .I0(\Inst_UControl/state_FSM_FFd5_167 ),
    .I1(\Inst_Counter/tic_50 ),
    .O(\Inst_UControl/state_FSM_FFd5-In )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \Inst_Interfaz/rotary_left_and00001  (
    .I0(\Inst_Interfaz/delay_rotary_q1_126 ),
    .I1(\Inst_Interfaz/rotary_q1_137 ),
    .O(\Inst_Interfaz/rotary_left_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000028  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/contador [6]),
    .I1(\Inst_Interfaz/Inst_divDEBOUNCER/contador [7]),
    .I2(\Inst_Interfaz/Inst_divDEBOUNCER/contador [4]),
    .I3(\Inst_Interfaz/Inst_divDEBOUNCER/contador [5]),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000028_92 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000039  (
    .I0(N23),
    .I1(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000016_91 ),
    .I2(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000028_92 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq0000 )
  );
  IBUF   rot_press_in_IBUF (
    .I(rot_press_in),
    .O(rot_press_in_IBUF_259)
  );
  IBUF   modo_in_IBUF (
    .I(modo_in),
    .O(modo_in_IBUF_237)
  );
  IBUF   pb_in_3_IBUF (
    .I(pb_in[3]),
    .O(pb_in_3_IBUF_246)
  );
  IBUF   pb_in_2_IBUF (
    .I(pb_in[2]),
    .O(pb_in_2_IBUF_245)
  );
  IBUF   pb_in_1_IBUF (
    .I(pb_in[1]),
    .O(pb_in_1_IBUF_244)
  );
  IBUF   pb_in_0_IBUF (
    .I(pb_in[0]),
    .O(pb_in_0_IBUF_243)
  );
  IBUF   rot_in_1_IBUF (
    .I(rot_in[1]),
    .O(rot_in_1_IBUF_256)
  );
  IBUF   rot_in_0_IBUF (
    .I(rot_in[0]),
    .O(rot_in_0_IBUF_255)
  );
  OBUF   lcd_e_out_OBUF (
    .I(\Inst_UControl/LCD_E_153 ),
    .O(lcd_e_out)
  );
  OBUF   lcd_rw_out_OBUF (
    .I(lcd_rw_out_OBUF_219),
    .O(lcd_rw_out)
  );
  OBUF   lcd_rs_out_OBUF (
    .I(\Inst_UControl/LCD_RS_154 ),
    .O(lcd_rs_out)
  );
  OBUF   lcd_data_out_7_OBUF (
    .I(\Inst_UControl/LCD_DB[7] ),
    .O(lcd_data_out[7])
  );
  OBUF   lcd_data_out_6_OBUF (
    .I(\Inst_UControl/LCD_DB[7] ),
    .O(lcd_data_out[6])
  );
  OBUF   lcd_data_out_5_OBUF (
    .I(\Inst_UControl/LCD_DB[5] ),
    .O(lcd_data_out[5])
  );
  OBUF   lcd_data_out_4_OBUF (
    .I(\Inst_UControl/LCD_DB[5] ),
    .O(lcd_data_out[4])
  );
  OBUF   lcd_data_out_3_OBUF (
    .I(\Inst_UControl/LCD_DB[3] ),
    .O(lcd_data_out[3])
  );
  OBUF   lcd_data_out_2_OBUF (
    .I(\Inst_UControl/LCD_DB[2] ),
    .O(lcd_data_out[2])
  );
  OBUF   lcd_data_out_1_OBUF (
    .I(\Inst_UControl/LCD_DB[1] ),
    .O(lcd_data_out[1])
  );
  OBUF   lcd_data_out_0_OBUF (
    .I(\Inst_UControl/LCD_DB[0] ),
    .O(lcd_data_out[0])
  );
  OBUF   leds_out_7_OBUF (
    .I(leds_out_7_235),
    .O(leds_out[7])
  );
  OBUF   leds_out_6_OBUF (
    .I(leds_out_6_234),
    .O(leds_out[6])
  );
  OBUF   leds_out_5_OBUF (
    .I(leds_out_5_233),
    .O(leds_out[5])
  );
  OBUF   leds_out_4_OBUF (
    .I(leds_out_4_232),
    .O(leds_out[4])
  );
  OBUF   leds_out_3_OBUF (
    .I(leds_out_3_231),
    .O(leds_out[3])
  );
  OBUF   leds_out_2_OBUF (
    .I(leds_out_2_230),
    .O(leds_out[2])
  );
  OBUF   leds_out_1_OBUF (
    .I(leds_out_1_229),
    .O(leds_out[1])
  );
  OBUF   leds_out_0_OBUF (
    .I(leds_out_0_228),
    .O(leds_out[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Counter/Mcount_temp_cy<1>_rt  (
    .I0(\Inst_Counter/temp [1]),
    .O(\Inst_Counter/Mcount_temp_cy<1>_rt_14 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Counter/Mcount_temp_cy<2>_rt  (
    .I0(\Inst_Counter/temp [2]),
    .O(\Inst_Counter/Mcount_temp_cy<2>_rt_16 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Counter/Mcount_temp_cy<3>_rt  (
    .I0(\Inst_Counter/temp [3]),
    .O(\Inst_Counter/Mcount_temp_cy<3>_rt_18 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Counter/Mcount_temp_cy<4>_rt  (
    .I0(\Inst_Counter/temp [4]),
    .O(\Inst_Counter/Mcount_temp_cy<4>_rt_20 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Counter/Mcount_temp_cy<5>_rt  (
    .I0(\Inst_Counter/temp [5]),
    .O(\Inst_Counter/Mcount_temp_cy<5>_rt_22 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Counter/Mcount_temp_cy<6>_rt  (
    .I0(\Inst_Counter/temp [6]),
    .O(\Inst_Counter/Mcount_temp_cy<6>_rt_24 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Counter/Mcount_temp_cy<7>_rt  (
    .I0(\Inst_Counter/temp [7]),
    .O(\Inst_Counter/Mcount_temp_cy<7>_rt_26 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Counter/Mcount_temp_cy<8>_rt  (
    .I0(\Inst_Counter/temp [8]),
    .O(\Inst_Counter/Mcount_temp_cy<8>_rt_28 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Counter/Mcount_temp_cy<9>_rt  (
    .I0(\Inst_Counter/temp [9]),
    .O(\Inst_Counter/Mcount_temp_cy<9>_rt_30 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Counter/Mcount_temp_cy<10>_rt  (
    .I0(\Inst_Counter/temp [10]),
    .O(\Inst_Counter/Mcount_temp_cy<10>_rt_6 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Counter/Mcount_temp_cy<11>_rt  (
    .I0(\Inst_Counter/temp [11]),
    .O(\Inst_Counter/Mcount_temp_cy<11>_rt_8 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Counter/Mcount_temp_cy<12>_rt  (
    .I0(\Inst_Counter/temp [12]),
    .O(\Inst_Counter/Mcount_temp_cy<12>_rt_10 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Counter/Mcount_temp_cy<13>_rt  (
    .I0(\Inst_Counter/temp [13]),
    .O(\Inst_Counter/Mcount_temp_cy<13>_rt_12 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<10>_rt  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/contador [10]),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<10>_rt_54 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<9>_rt  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/contador [9]),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<9>_rt_72 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<8>_rt  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/contador [8]),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<8>_rt_70 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<7>_rt  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/contador [7]),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<7>_rt_68 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<6>_rt  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/contador [6]),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<6>_rt_66 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<5>_rt  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/contador [5]),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<5>_rt_64 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<4>_rt  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/contador [4]),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<4>_rt_62 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<3>_rt  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/contador [3]),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<3>_rt_60 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<2>_rt  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/contador [2]),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<2>_rt_58 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<1>_rt  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/contador [1]),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_cy<1>_rt_56 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Counter/Mcount_temp_xor<14>_rt  (
    .I0(\Inst_Counter/temp [14]),
    .O(\Inst_Counter/Mcount_temp_xor<14>_rt_32 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_xor<11>_rt  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/contador [11]),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_xor<11>_rt_74 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_not00011  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000011_90 ),
    .I1(N24),
    .I2(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000028_92 ),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/clk10ms_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hCC6C ))
  \Inst_UControl/state_FSM_FFd2-In  (
    .I0(\Inst_UControl/state_FSM_FFd5_167 ),
    .I1(\Inst_UControl/state_FSM_FFd2_161 ),
    .I2(\Inst_UControl/state_FSM_FFd4_165 ),
    .I3(N19),
    .O(\Inst_UControl/state_FSM_FFd2-In_162 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \Inst_Interfaz/rotary_event_not00011  (
    .I0(\Inst_Interfaz/rotary_q1_137 ),
    .I1(\Inst_Interfaz/delay_rotary_q1_126 ),
    .O(\Inst_Interfaz/rotary_event_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hF819 ))
  \Inst_UControl/state_FSM_Out31  (
    .I0(\Inst_UControl/state_FSM_FFd2_161 ),
    .I1(\Inst_UControl/state_FSM_FFd3_163 ),
    .I2(\Inst_UControl/state_FSM_FFd4_165 ),
    .I3(\Inst_UControl/state_FSM_FFd1_159 ),
    .O(\Inst_UControl/state_index0000 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \Inst_UControl/state_FSM_Out121  (
    .I0(\Inst_UControl/state_FSM_FFd2_161 ),
    .I1(\Inst_UControl/state_FSM_FFd4_165 ),
    .I2(\Inst_UControl/state_FSM_FFd3_163 ),
    .O(\Inst_UControl/state_index0008 )
  );
  LUT4 #(
    .INIT ( 16'hEA6A ))
  \Inst_UControl/state_FSM_FFd4-In1  (
    .I0(\Inst_UControl/state_FSM_FFd4_165 ),
    .I1(\Inst_UControl/state_FSM_FFd5_167 ),
    .I2(\Inst_Counter/tic_50 ),
    .I3(\Inst_UControl/state_FSM_FFd1_159 ),
    .O(\Inst_UControl/state_FSM_FFd4-In )
  );
  LUT4 #(
    .INIT ( 16'h4CEC ))
  \Inst_UControl/state_FSM_FFd3-In  (
    .I0(\Inst_UControl/state_FSM_FFd5_167 ),
    .I1(\Inst_UControl/state_FSM_FFd3_163 ),
    .I2(\Inst_UControl/state_FSM_FFd4_165 ),
    .I3(N21),
    .O(\Inst_UControl/state_FSM_FFd3-In_164 )
  );
  INV   \Inst_Counter/Mcount_temp_lut<0>_INV_0  (
    .I(\Inst_Counter/temp [0]),
    .O(\Inst_Counter/Mcount_temp_lut [0])
  );
  INV   \Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_lut<0>_INV_0  (
    .I(\Inst_Interfaz/Inst_divDEBOUNCER/contador [0]),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/Mcount_contador_lut [0])
  );
  INV   \Inst_UControl/rst_n_inv1_INV_0  (
    .I(\Inst_Interfaz/rst_n_143 ),
    .O(\Inst_UControl/rst_n_inv )
  );
  INV   \Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1-In1_INV_0  (
    .I(\Inst_Interfaz/rotatory_press_141 ),
    .O(\Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd1-In )
  );
  INV   \Inst_Interfaz/Inst_pb3/state_FSM_FFd1-In1_INV_0  (
    .I(\Inst_Interfaz/pb3_130 ),
    .O(\Inst_Interfaz/Inst_pb3/state_FSM_FFd1-In )
  );
  INV   \Inst_Interfaz/Inst_pb2/state_FSM_FFd1-In1_INV_0  (
    .I(\Inst_Interfaz/pb2_129 ),
    .O(\Inst_Interfaz/Inst_pb2/state_FSM_FFd1-In )
  );
  INV   \Inst_Interfaz/Inst_pb1/state_FSM_FFd1-In1_INV_0  (
    .I(\Inst_Interfaz/pb1_128 ),
    .O(\Inst_Interfaz/Inst_pb1/state_FSM_FFd1-In )
  );
  INV   \Inst_Interfaz/Inst_pb0/state_FSM_FFd1-In1_INV_0  (
    .I(\Inst_Interfaz/pb0_127 ),
    .O(\Inst_Interfaz/Inst_pb0/state_FSM_FFd1-In )
  );
  INV   \Inst_UControl/state_FSM_Out51_INV_0  (
    .I(\Inst_UControl/state_FSM_FFd5_167 ),
    .O(\Inst_UControl/_mux0005 )
  );
  INV   \Inst_LEDS/led_2_mux00011_INV_0  (
    .I(\Inst_Interfaz/rotary_left_135 ),
    .O(\Inst_LEDS/led_2_mux0001 )
  );
  LUT2_L #(
    .INIT ( 4'hE ))
  \Inst_UControl/state_FSM_Out2_SW0  (
    .I0(\Inst_UControl/state_FSM_FFd2_161 ),
    .I1(\Inst_UControl/state_FSM_FFd1_159 ),
    .LO(N10)
  );
  LUT4_D #(
    .INIT ( 16'h0002 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000011  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/contador [1]),
    .I1(\Inst_Interfaz/Inst_divDEBOUNCER/contador [0]),
    .I2(\Inst_Interfaz/Inst_divDEBOUNCER/contador [2]),
    .I3(\Inst_Interfaz/Inst_divDEBOUNCER/contador [3]),
    .LO(N23),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000011_90 )
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  \Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000016  (
    .I0(\Inst_Interfaz/Inst_divDEBOUNCER/contador [8]),
    .I1(\Inst_Interfaz/Inst_divDEBOUNCER/contador [9]),
    .I2(\Inst_Interfaz/Inst_divDEBOUNCER/contador [10]),
    .I3(\Inst_Interfaz/Inst_divDEBOUNCER/contador [11]),
    .LO(N24),
    .O(\Inst_Interfaz/Inst_divDEBOUNCER/contador_cmp_eq000016_91 )
  );
  LUT2_L #(
    .INIT ( 4'h7 ))
  \Inst_UControl/state_FSM_FFd2-In_SW2  (
    .I0(\Inst_UControl/state_FSM_FFd3_163 ),
    .I1(\Inst_Counter/tic_50 ),
    .LO(N19)
  );
  LUT4_L #(
    .INIT ( 16'h9D99 ))
  \Inst_UControl/state_FSM_FFd3-In_SW1  (
    .I0(\Inst_UControl/state_FSM_FFd3_163 ),
    .I1(\Inst_Counter/tic_50 ),
    .I2(\Inst_UControl/state_FSM_FFd2_161 ),
    .I3(\Inst_UControl/state_FSM_FFd1_159 ),
    .LO(N21)
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  Mshreg_leds_out_0 (
    .A0(N2),
    .A1(lcd_rw_out_OBUF_219),
    .A2(lcd_rw_out_OBUF_219),
    .A3(lcd_rw_out_OBUF_219),
    .CLK(clk640),
    .D(modo_int_238),
    .Q(Mshreg_leds_out_0_180)
  );
  FD   leds_out_0 (
    .C(clk640),
    .D(Mshreg_leds_out_0_180),
    .Q(leds_out_0_228)
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  Mshreg_leds_out_1 (
    .A0(N2),
    .A1(lcd_rw_out_OBUF_219),
    .A2(lcd_rw_out_OBUF_219),
    .A3(lcd_rw_out_OBUF_219),
    .CLK(clk640),
    .D(\Inst_Interfaz/Inst_rotatory_press/state_FSM_FFd2_111 ),
    .Q(Mshreg_leds_out_1_181)
  );
  FD   leds_out_1 (
    .C(clk640),
    .D(Mshreg_leds_out_1_181),
    .Q(leds_out_1_229)
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  Mshreg_leds_out_4 (
    .A0(N2),
    .A1(lcd_rw_out_OBUF_219),
    .A2(lcd_rw_out_OBUF_219),
    .A3(lcd_rw_out_OBUF_219),
    .CLK(clk640),
    .D(\Inst_Interfaz/Inst_pb0/state_FSM_FFd2_95 ),
    .Q(Mshreg_leds_out_4_182)
  );
  FD   leds_out_4 (
    .C(clk640),
    .D(Mshreg_leds_out_4_182),
    .Q(leds_out_4_232)
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  Mshreg_leds_out_5 (
    .A0(N2),
    .A1(lcd_rw_out_OBUF_219),
    .A2(lcd_rw_out_OBUF_219),
    .A3(lcd_rw_out_OBUF_219),
    .CLK(clk640),
    .D(\Inst_Interfaz/Inst_pb1/state_FSM_FFd2_99 ),
    .Q(Mshreg_leds_out_5_183)
  );
  FD   leds_out_5 (
    .C(clk640),
    .D(Mshreg_leds_out_5_183),
    .Q(leds_out_5_233)
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  Mshreg_leds_out_6 (
    .A0(N2),
    .A1(lcd_rw_out_OBUF_219),
    .A2(lcd_rw_out_OBUF_219),
    .A3(lcd_rw_out_OBUF_219),
    .CLK(clk640),
    .D(\Inst_Interfaz/Inst_pb2/state_FSM_FFd2_103 ),
    .Q(Mshreg_leds_out_6_184)
  );
  FD   leds_out_6 (
    .C(clk640),
    .D(Mshreg_leds_out_6_184),
    .Q(leds_out_6_234)
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  Mshreg_leds_out_7 (
    .A0(N2),
    .A1(lcd_rw_out_OBUF_219),
    .A2(lcd_rw_out_OBUF_219),
    .A3(lcd_rw_out_OBUF_219),
    .CLK(clk640),
    .D(\Inst_Interfaz/Inst_pb3/state_FSM_FFd2_107 ),
    .Q(Mshreg_leds_out_7_185)
  );
  FD   leds_out_7 (
    .C(clk640),
    .D(Mshreg_leds_out_7_185),
    .Q(leds_out_7_235)
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \Inst_Interfaz/Mshreg_rotary_in_1  (
    .A0(lcd_rw_out_OBUF_219),
    .A1(lcd_rw_out_OBUF_219),
    .A2(lcd_rw_out_OBUF_219),
    .A3(lcd_rw_out_OBUF_219),
    .CLK(clk640),
    .D(rot[1]),
    .Q(\Inst_Interfaz/Mshreg_rotary_in_1_114 )
  );
  FD   \Inst_Interfaz/rotary_in_1  (
    .C(clk640),
    .D(\Inst_Interfaz/Mshreg_rotary_in_1_114 ),
    .Q(\Inst_Interfaz/rotary_in [1])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \Inst_Interfaz/Mshreg_rotary_in_0  (
    .A0(lcd_rw_out_OBUF_219),
    .A1(lcd_rw_out_OBUF_219),
    .A2(lcd_rw_out_OBUF_219),
    .A3(lcd_rw_out_OBUF_219),
    .CLK(clk640),
    .D(rot[0]),
    .Q(\Inst_Interfaz/Mshreg_rotary_in_0_113 )
  );
  FD   \Inst_Interfaz/rotary_in_0  (
    .C(clk640),
    .D(\Inst_Interfaz/Mshreg_rotary_in_0_113 ),
    .Q(\Inst_Interfaz/rotary_in [0])
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

