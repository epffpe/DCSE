////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: K.39
//  \   \         Application: netgen
//  /   /         Filename: DDS.v
// /___/   /\     Timestamp: Fri Dec 05 21:48:57 2008
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog D:\Designs\DCSE\Modulo2\Modulo2\DCSEP2\tmp\_cg\DDS.ngc D:\Designs\DCSE\Modulo2\Modulo2\DCSEP2\tmp\_cg\DDS.v 
// Device	: 3s700afg484-4
// Input file	: D:/Designs/DCSE/Modulo2/Modulo2/DCSEP2/tmp/_cg/DDS.ngc
// Output file	: D:/Designs/DCSE/Modulo2/Modulo2/DCSEP2/tmp/_cg/DDS.v
// # of Modules	: 1
// Design Name	: DDS
// Xilinx        : D:\Xilinx\10.1\ISE
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

module DDS (
  rfd, rdy, clk, we, data, cosine
);
  output rfd;
  output rdy;
  input clk;
  input we;
  input [28 : 0] data;
  output [6 : 0] cosine;
  
  // synthesis translate_off
  
  wire \BU2/U0/pre_rdy ;
  wire \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<1>_mand1 ;
  wire \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<0>_mand1 ;
  wire \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<0>_mand_473 ;
  wire \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<1>_mand_468 ;
  wire \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<1>_x_B_2<0>_mand1 ;
  wire \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<1>_x_B_2<0>_mand_466 ;
  wire \BU2/U0/mutant_x_op_not0001 ;
  wire NLW_VCC_P_UNCONNECTED;
  wire NLW_GND_G_UNCONNECTED;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_ADDRA<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_ADDRA<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_ADDRA<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_ADDRB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_ADDRB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_ADDRB<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<26>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<25>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<24>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<23>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<22>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<21>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<20>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<19>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<18>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<17>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<16>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<8>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<26>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<25>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<24>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<23>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<22>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<21>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<20>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<19>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<18>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<17>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<16>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<8>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIPA<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIPA<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIPA<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIPB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIPB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIPB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<26>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<25>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<24>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<23>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<22>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<21>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<20>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<19>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<18>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<17>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<16>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<8>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<26>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<25>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<24>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<23>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<22>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<21>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<20>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<19>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<18>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<17>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<16>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<8>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOPA<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOPA<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOPA<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOPA<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOPB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOPB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOPB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOPB<0>_UNCONNECTED ;
  wire [28 : 0] data_2;
  wire [6 : 0] cosine_3;
  wire [0 : 0] \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<0>_x_B_2 ;
  wire [5 : 3] \BU2/U0/i_comp_eff.i_eff/radian_error ;
  wire [2 : 2] \BU2/U0/i_comp_eff.i_eff/d1_eff_phase_error ;
  wire [6 : 0] \BU2/U0/i_rom/sin_RAM_op ;
  wire [6 : 0] \BU2/U0/i_rom/cos_RAM_op ;
  wire [34 : 28] \BU2/U0/final_cos ;
  wire [29 : 0] \BU2/U0/acc_phase ;
  wire [10 : 8] \BU2/U0/i_comp_eff.i_eff/pre_complete ;
  wire [10 : 6] \BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_lut ;
  wire [4 : 0] \BU2/U0/i_comp_eff.i_eff/partial_upper ;
  wire [9 : 6] \BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_cy ;
  wire [6 : 6] \BU2/U0/i_comp_eff.i_eff/partial_lower ;
  wire [6 : 6] \BU2/U0/i_comp_eff.i_eff/pre_partial_lower ;
  wire [5 : 3] \BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_cy ;
  wire [4 : 3] \BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_lut ;
  wire [4 : 1] \BU2/U0/i_comp_eff.i_eff/pre_partial_upper ;
  wire [3 : 1] \BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_cy ;
  wire [2 : 1] \BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_lut ;
  wire [7 : 0] \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut ;
  wire [7 : 0] \BU2/U0/i_comp_eff.i_eff/shifted_cos_x ;
  wire [6 : 0] \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy ;
  wire [4 : 0] \BU2/U0/i_comp_eff.i_eff/cos_mult_adj ;
  wire [28 : 0] \BU2/U0/i_accum/acc_phase_b ;
  wire [28 : 0] \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut ;
  wire [28 : 0] \BU2/U0/i_accum/phase_inc ;
  wire [27 : 0] \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy ;
  wire [4 : 1] \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/result ;
  wire [3 : 1] \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_cy ;
  wire [3 : 1] \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_lut ;
  wire [1 : 0] \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/A_2 ;
  wire [2 : 0] \BU2/U0/mutant_x_op ;
  wire [2 : 0] \BU2/Result ;
  wire [6 : 0] \BU2/U0/i_rom/pre_asyn_cos_RAM_op ;
  wire [6 : 0] \BU2/U0/i_rom/pre_asyn_sin_RAM_op ;
  wire [6 : 6] \NlwRenamedSig_OI_BU2/U0/i_rom/mod_cos_addr ;
  wire [6 : 6] \BU2/U0/i_rom/mod_sin_addr ;
  wire [8 : 0] \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q ;
  assign
    data_2[28] = data[28],
    data_2[27] = data[27],
    data_2[26] = data[26],
    data_2[25] = data[25],
    data_2[24] = data[24],
    data_2[23] = data[23],
    data_2[22] = data[22],
    data_2[21] = data[21],
    data_2[20] = data[20],
    data_2[19] = data[19],
    data_2[18] = data[18],
    data_2[17] = data[17],
    data_2[16] = data[16],
    data_2[15] = data[15],
    data_2[14] = data[14],
    data_2[13] = data[13],
    data_2[12] = data[12],
    data_2[11] = data[11],
    data_2[10] = data[10],
    data_2[9] = data[9],
    data_2[8] = data[8],
    data_2[7] = data[7],
    data_2[6] = data[6],
    data_2[5] = data[5],
    data_2[4] = data[4],
    data_2[3] = data[3],
    data_2[2] = data[2],
    data_2[1] = data[1],
    data_2[0] = data[0],
    rfd = \NlwRenamedSig_OI_BU2/U0/i_rom/mod_cos_addr [6],
    cosine[6] = cosine_3[6],
    cosine[5] = cosine_3[5],
    cosine[4] = cosine_3[4],
    cosine[3] = cosine_3[3],
    cosine[2] = cosine_3[2],
    cosine[1] = cosine_3[1],
    cosine[0] = cosine_3[0];
  VCC   VCC_0 (
    .P(NLW_VCC_P_UNCONNECTED)
  );
  GND   GND_1 (
    .G(NLW_GND_G_UNCONNECTED)
  );
  INV   \BU2/U0/i_comp_eff.i_eff/phase_error_not00011_INV_0  (
    .I(\BU2/U0/acc_phase [22]),
    .O(\BU2/U0/i_comp_eff.i_eff/d1_eff_phase_error [2])
  );
  INV   \BU2/U0/Mcount_mutant_x_op_xor<0>11_INV_0  (
    .I(\BU2/U0/mutant_x_op [0]),
    .O(\BU2/Result [0])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \BU2/U0/mutant_x_op_cmp_eq00001  (
    .I0(\BU2/U0/mutant_x_op [1]),
    .I1(\BU2/U0/mutant_x_op [2]),
    .I2(\BU2/U0/mutant_x_op [0]),
    .O(\BU2/U0/pre_rdy )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \BU2/U0/mutant_x_op_not00011  (
    .I0(\BU2/U0/mutant_x_op [1]),
    .I1(\BU2/U0/mutant_x_op [2]),
    .I2(\BU2/U0/mutant_x_op [0]),
    .O(\BU2/U0/mutant_x_op_not0001 )
  );
  LUT3 #(
    .INIT ( 8'hC9 ))
  \BU2/U0/Mcount_mutant_x_op_xor<2>11  (
    .I0(\BU2/U0/mutant_x_op [0]),
    .I1(\BU2/U0/mutant_x_op [2]),
    .I2(\BU2/U0/mutant_x_op [1]),
    .O(\BU2/Result [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/Mcount_mutant_x_op_xor<1>11  (
    .I0(\BU2/U0/mutant_x_op [1]),
    .I1(\BU2/U0/mutant_x_op [0]),
    .O(\BU2/Result [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<0>_x_B_2<0>1  (
    .I0(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/A_2 [0]),
    .I1(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<1>_x_B_2<0>_mand_466 ),
    .O(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<0>_x_B_2 [0])
  );
  XORCY   \BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_xor<10>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_cy [9]),
    .LI(\BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_lut [10]),
    .O(\BU2/U0/i_comp_eff.i_eff/pre_complete [10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_lut<10>  (
    .I0(\BU2/U0/i_comp_eff.i_eff/partial_upper [4]),
    .I1(\BU2/U0/i_comp_eff.i_eff/partial_lower [6]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_lut [10])
  );
  XORCY   \BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_xor<9>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_cy [8]),
    .LI(\BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_lut [9]),
    .O(\BU2/U0/i_comp_eff.i_eff/pre_complete [9])
  );
  MUXCY   \BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_cy<9>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_cy [8]),
    .DI(\BU2/U0/i_comp_eff.i_eff/partial_upper [3]),
    .S(\BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_lut [9]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_cy [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_lut<9>  (
    .I0(\BU2/U0/i_comp_eff.i_eff/partial_upper [3]),
    .I1(\BU2/U0/i_comp_eff.i_eff/partial_lower [6]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_lut [9])
  );
  XORCY   \BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_xor<8>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_cy [7]),
    .LI(\BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_lut [8]),
    .O(\BU2/U0/i_comp_eff.i_eff/pre_complete [8])
  );
  MUXCY   \BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_cy<8>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_cy [7]),
    .DI(\BU2/U0/i_comp_eff.i_eff/partial_upper [2]),
    .S(\BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_lut [8]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_cy [8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_lut<8>  (
    .I0(\BU2/U0/i_comp_eff.i_eff/partial_upper [2]),
    .I1(\BU2/U0/i_comp_eff.i_eff/partial_lower [6]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_lut [8])
  );
  MUXCY   \BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_cy<7>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_cy [6]),
    .DI(\BU2/U0/i_comp_eff.i_eff/partial_upper [1]),
    .S(\BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_lut [7]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_cy [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_lut<7>  (
    .I0(\BU2/U0/i_comp_eff.i_eff/partial_upper [1]),
    .I1(\BU2/U0/i_comp_eff.i_eff/partial_lower [6]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_lut [7])
  );
  MUXCY   \BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_cy<6>  (
    .CI(\BU2/U0/i_rom/mod_sin_addr [6]),
    .DI(\BU2/U0/i_comp_eff.i_eff/partial_upper [0]),
    .S(\BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_lut [6]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_lut<6>  (
    .I0(\BU2/U0/i_comp_eff.i_eff/partial_upper [0]),
    .I1(\BU2/U0/i_comp_eff.i_eff/partial_lower [6]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_complete_lut [6])
  );
  XORCY   \BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_xor<6>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_cy [5]),
    .LI(\BU2/U0/i_rom/mod_sin_addr [6]),
    .O(\BU2/U0/i_comp_eff.i_eff/pre_partial_lower [6])
  );
  MUXCY   \BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_cy<5>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_cy [4]),
    .DI(\BU2/U0/i_comp_eff.i_eff/d1_eff_phase_error [2]),
    .S(\BU2/U0/i_rom/mod_sin_addr [6]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_cy [5])
  );
  MUXCY   \BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_cy<4>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_cy [3]),
    .DI(\BU2/U0/acc_phase [21]),
    .S(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_lut [4]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_lut<4>  (
    .I0(\BU2/U0/acc_phase [21]),
    .I1(\BU2/U0/i_comp_eff.i_eff/d1_eff_phase_error [2]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_lut [4])
  );
  MUXCY   \BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_cy<3>  (
    .CI(\BU2/U0/i_rom/mod_sin_addr [6]),
    .DI(\BU2/U0/acc_phase [20]),
    .S(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_lut [3]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_lut<3>  (
    .I0(\BU2/U0/acc_phase [20]),
    .I1(\BU2/U0/i_comp_eff.i_eff/d1_eff_phase_error [2]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_lut [3])
  );
  XORCY   \BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_xor<4>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_cy [3]),
    .LI(\BU2/U0/i_rom/mod_sin_addr [6]),
    .O(\BU2/U0/i_comp_eff.i_eff/pre_partial_upper [4])
  );
  XORCY   \BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_xor<3>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_cy [2]),
    .LI(\BU2/U0/i_rom/mod_sin_addr [6]),
    .O(\BU2/U0/i_comp_eff.i_eff/pre_partial_upper [3])
  );
  MUXCY   \BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_cy<3>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_cy [2]),
    .DI(\BU2/U0/i_comp_eff.i_eff/d1_eff_phase_error [2]),
    .S(\BU2/U0/i_rom/mod_sin_addr [6]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_cy [3])
  );
  XORCY   \BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_xor<2>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_cy [1]),
    .LI(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_lut [2]),
    .O(\BU2/U0/i_comp_eff.i_eff/pre_partial_upper [2])
  );
  MUXCY   \BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_cy<2>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_cy [1]),
    .DI(\BU2/U0/acc_phase [21]),
    .S(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_lut [2]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_lut<2>  (
    .I0(\BU2/U0/acc_phase [21]),
    .I1(\BU2/U0/i_comp_eff.i_eff/d1_eff_phase_error [2]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_lut [2])
  );
  XORCY   \BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_xor<1>  (
    .CI(\BU2/U0/i_rom/mod_sin_addr [6]),
    .LI(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_lut [1]),
    .O(\BU2/U0/i_comp_eff.i_eff/pre_partial_upper [1])
  );
  MUXCY   \BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_cy<1>  (
    .CI(\BU2/U0/i_rom/mod_sin_addr [6]),
    .DI(\BU2/U0/acc_phase [20]),
    .S(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_lut [1]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_lut<1>  (
    .I0(\BU2/U0/acc_phase [20]),
    .I1(\BU2/U0/acc_phase [21]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_lut [1])
  );
  XORCY   \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_xor<7>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy [6]),
    .LI(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut [7]),
    .O(\BU2/U0/final_cos [34])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut<7>  (
    .I0(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [7]),
    .I1(\BU2/U0/i_comp_eff.i_eff/cos_mult_adj [4]),
    .O(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut [7])
  );
  XORCY   \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_xor<6>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy [5]),
    .LI(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut [6]),
    .O(\BU2/U0/final_cos [33])
  );
  MUXCY   \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy<6>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy [5]),
    .DI(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [6]),
    .S(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut [6]),
    .O(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut<6>  (
    .I0(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [6]),
    .I1(\BU2/U0/i_comp_eff.i_eff/cos_mult_adj [4]),
    .O(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut [6])
  );
  XORCY   \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_xor<5>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy [4]),
    .LI(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut [5]),
    .O(\BU2/U0/final_cos [32])
  );
  MUXCY   \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy<5>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy [4]),
    .DI(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [5]),
    .S(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut [5]),
    .O(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut<5>  (
    .I0(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [5]),
    .I1(\BU2/U0/i_comp_eff.i_eff/cos_mult_adj [4]),
    .O(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut [5])
  );
  XORCY   \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_xor<4>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy [3]),
    .LI(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut [4]),
    .O(\BU2/U0/final_cos [31])
  );
  MUXCY   \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy<4>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy [3]),
    .DI(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [4]),
    .S(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut [4]),
    .O(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut<4>  (
    .I0(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [4]),
    .I1(\BU2/U0/i_comp_eff.i_eff/cos_mult_adj [4]),
    .O(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut [4])
  );
  XORCY   \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_xor<3>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy [2]),
    .LI(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut [3]),
    .O(\BU2/U0/final_cos [30])
  );
  MUXCY   \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy<3>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy [2]),
    .DI(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [3]),
    .S(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut [3]),
    .O(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut<3>  (
    .I0(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [3]),
    .I1(\BU2/U0/i_comp_eff.i_eff/cos_mult_adj [3]),
    .O(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut [3])
  );
  XORCY   \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_xor<2>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy [1]),
    .LI(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut [2]),
    .O(\BU2/U0/final_cos [29])
  );
  MUXCY   \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy<2>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy [1]),
    .DI(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [2]),
    .S(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut [2]),
    .O(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut<2>  (
    .I0(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [2]),
    .I1(\BU2/U0/i_comp_eff.i_eff/cos_mult_adj [2]),
    .O(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut [2])
  );
  XORCY   \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_xor<1>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy [0]),
    .LI(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut [1]),
    .O(\BU2/U0/final_cos [28])
  );
  MUXCY   \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy<1>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy [0]),
    .DI(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [1]),
    .S(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut [1]),
    .O(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut<1>  (
    .I0(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [1]),
    .I1(\BU2/U0/i_comp_eff.i_eff/cos_mult_adj [1]),
    .O(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut [1])
  );
  MUXCY   \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy<0>  (
    .CI(\NlwRenamedSig_OI_BU2/U0/i_rom/mod_cos_addr [6]),
    .DI(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [0]),
    .S(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut [0]),
    .O(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut<0>  (
    .I0(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [0]),
    .I1(\BU2/U0/i_comp_eff.i_eff/cos_mult_adj [0]),
    .O(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut [0])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<28>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [27]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [28]),
    .O(\BU2/U0/i_accum/acc_phase_b [28])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<28>  (
    .I0(\BU2/U0/acc_phase [28]),
    .I1(\BU2/U0/i_accum/phase_inc [28]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [28])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<27>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [26]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [27]),
    .O(\BU2/U0/i_accum/acc_phase_b [27])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<27>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [26]),
    .DI(\BU2/U0/acc_phase [27]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [27]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [27])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<27>  (
    .I0(\BU2/U0/acc_phase [27]),
    .I1(\BU2/U0/i_accum/phase_inc [27]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [27])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<26>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [25]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [26]),
    .O(\BU2/U0/i_accum/acc_phase_b [26])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<26>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [25]),
    .DI(\BU2/U0/acc_phase [26]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [26]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [26])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<26>  (
    .I0(\BU2/U0/acc_phase [26]),
    .I1(\BU2/U0/i_accum/phase_inc [26]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [26])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<25>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [24]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [25]),
    .O(\BU2/U0/i_accum/acc_phase_b [25])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<25>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [24]),
    .DI(\BU2/U0/acc_phase [25]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [25]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [25])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<25>  (
    .I0(\BU2/U0/acc_phase [25]),
    .I1(\BU2/U0/i_accum/phase_inc [25]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [25])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<24>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [23]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [24]),
    .O(\BU2/U0/i_accum/acc_phase_b [24])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<24>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [23]),
    .DI(\BU2/U0/acc_phase [24]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [24]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [24])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<24>  (
    .I0(\BU2/U0/acc_phase [24]),
    .I1(\BU2/U0/i_accum/phase_inc [24]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [24])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<23>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [22]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [23]),
    .O(\BU2/U0/i_accum/acc_phase_b [23])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<23>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [22]),
    .DI(\BU2/U0/acc_phase [23]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [23]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [23])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<23>  (
    .I0(\BU2/U0/acc_phase [23]),
    .I1(\BU2/U0/i_accum/phase_inc [23]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [23])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<22>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [21]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [22]),
    .O(\BU2/U0/i_accum/acc_phase_b [22])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<22>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [21]),
    .DI(\BU2/U0/acc_phase [22]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [22]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [22])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<22>  (
    .I0(\BU2/U0/acc_phase [22]),
    .I1(\BU2/U0/i_accum/phase_inc [22]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [22])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<21>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [20]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [21]),
    .O(\BU2/U0/i_accum/acc_phase_b [21])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<21>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [20]),
    .DI(\BU2/U0/acc_phase [21]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [21]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [21])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<21>  (
    .I0(\BU2/U0/acc_phase [21]),
    .I1(\BU2/U0/i_accum/phase_inc [21]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [21])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<20>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [19]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [20]),
    .O(\BU2/U0/i_accum/acc_phase_b [20])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<20>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [19]),
    .DI(\BU2/U0/acc_phase [20]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [20]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [20])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<20>  (
    .I0(\BU2/U0/acc_phase [20]),
    .I1(\BU2/U0/i_accum/phase_inc [20]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [20])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<19>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [18]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [19]),
    .O(\BU2/U0/i_accum/acc_phase_b [19])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<19>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [18]),
    .DI(\BU2/U0/acc_phase [19]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [19]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [19])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<19>  (
    .I0(\BU2/U0/acc_phase [19]),
    .I1(\BU2/U0/i_accum/phase_inc [19]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [19])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<18>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [17]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [18]),
    .O(\BU2/U0/i_accum/acc_phase_b [18])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<18>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [17]),
    .DI(\BU2/U0/acc_phase [18]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [18]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [18])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<18>  (
    .I0(\BU2/U0/acc_phase [18]),
    .I1(\BU2/U0/i_accum/phase_inc [18]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [18])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<17>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [16]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [17]),
    .O(\BU2/U0/i_accum/acc_phase_b [17])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<17>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [16]),
    .DI(\BU2/U0/acc_phase [17]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [17]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [17])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<17>  (
    .I0(\BU2/U0/acc_phase [17]),
    .I1(\BU2/U0/i_accum/phase_inc [17]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [17])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<16>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [15]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [16]),
    .O(\BU2/U0/i_accum/acc_phase_b [16])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<16>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [15]),
    .DI(\BU2/U0/acc_phase [16]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [16]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [16])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<16>  (
    .I0(\BU2/U0/acc_phase [16]),
    .I1(\BU2/U0/i_accum/phase_inc [16]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [16])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<15>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [14]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [15]),
    .O(\BU2/U0/i_accum/acc_phase_b [15])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<15>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [14]),
    .DI(\BU2/U0/acc_phase [15]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [15]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [15])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<15>  (
    .I0(\BU2/U0/acc_phase [15]),
    .I1(\BU2/U0/i_accum/phase_inc [15]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [15])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<14>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [13]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [14]),
    .O(\BU2/U0/i_accum/acc_phase_b [14])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<14>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [13]),
    .DI(\BU2/U0/acc_phase [14]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [14]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [14])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<14>  (
    .I0(\BU2/U0/acc_phase [14]),
    .I1(\BU2/U0/i_accum/phase_inc [14]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [14])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<13>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [12]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [13]),
    .O(\BU2/U0/i_accum/acc_phase_b [13])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<13>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [12]),
    .DI(\BU2/U0/acc_phase [13]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [13]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [13])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<13>  (
    .I0(\BU2/U0/acc_phase [13]),
    .I1(\BU2/U0/i_accum/phase_inc [13]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [13])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<12>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [11]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [12]),
    .O(\BU2/U0/i_accum/acc_phase_b [12])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<12>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [11]),
    .DI(\BU2/U0/acc_phase [12]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [12]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [12])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<12>  (
    .I0(\BU2/U0/acc_phase [12]),
    .I1(\BU2/U0/i_accum/phase_inc [12]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [12])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<11>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [10]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [11]),
    .O(\BU2/U0/i_accum/acc_phase_b [11])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<11>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [10]),
    .DI(\BU2/U0/acc_phase [11]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [11]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [11])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<11>  (
    .I0(\BU2/U0/acc_phase [11]),
    .I1(\BU2/U0/i_accum/phase_inc [11]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [11])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<10>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [9]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [10]),
    .O(\BU2/U0/i_accum/acc_phase_b [10])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<10>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [9]),
    .DI(\BU2/U0/acc_phase [10]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [10]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<10>  (
    .I0(\BU2/U0/acc_phase [10]),
    .I1(\BU2/U0/i_accum/phase_inc [10]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [10])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<9>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [8]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [9]),
    .O(\BU2/U0/i_accum/acc_phase_b [9])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<9>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [8]),
    .DI(\BU2/U0/acc_phase [9]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [9]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<9>  (
    .I0(\BU2/U0/acc_phase [9]),
    .I1(\BU2/U0/i_accum/phase_inc [9]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [9])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<8>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [7]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [8]),
    .O(\BU2/U0/i_accum/acc_phase_b [8])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<8>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [7]),
    .DI(\BU2/U0/acc_phase [8]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [8]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<8>  (
    .I0(\BU2/U0/acc_phase [8]),
    .I1(\BU2/U0/i_accum/phase_inc [8]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [8])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<7>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [6]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [7]),
    .O(\BU2/U0/i_accum/acc_phase_b [7])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<7>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [6]),
    .DI(\BU2/U0/acc_phase [7]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [7]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<7>  (
    .I0(\BU2/U0/acc_phase [7]),
    .I1(\BU2/U0/i_accum/phase_inc [7]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [7])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<6>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [5]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [6]),
    .O(\BU2/U0/i_accum/acc_phase_b [6])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<6>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [5]),
    .DI(\BU2/U0/acc_phase [6]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [6]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<6>  (
    .I0(\BU2/U0/acc_phase [6]),
    .I1(\BU2/U0/i_accum/phase_inc [6]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [6])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<5>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [4]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [5]),
    .O(\BU2/U0/i_accum/acc_phase_b [5])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<5>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [4]),
    .DI(\BU2/U0/acc_phase [5]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [5]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<5>  (
    .I0(\BU2/U0/acc_phase [5]),
    .I1(\BU2/U0/i_accum/phase_inc [5]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [5])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<4>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [3]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [4]),
    .O(\BU2/U0/i_accum/acc_phase_b [4])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<4>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [3]),
    .DI(\BU2/U0/acc_phase [4]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [4]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<4>  (
    .I0(\BU2/U0/acc_phase [4]),
    .I1(\BU2/U0/i_accum/phase_inc [4]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [4])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<3>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [2]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [3]),
    .O(\BU2/U0/i_accum/acc_phase_b [3])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<3>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [2]),
    .DI(\BU2/U0/acc_phase [3]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [3]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<3>  (
    .I0(\BU2/U0/acc_phase [3]),
    .I1(\BU2/U0/i_accum/phase_inc [3]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [3])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<2>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [1]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [2]),
    .O(\BU2/U0/i_accum/acc_phase_b [2])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<2>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [1]),
    .DI(\BU2/U0/acc_phase [2]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [2]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<2>  (
    .I0(\BU2/U0/acc_phase [2]),
    .I1(\BU2/U0/i_accum/phase_inc [2]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [2])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<1>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [0]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [1]),
    .O(\BU2/U0/i_accum/acc_phase_b [1])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<1>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [0]),
    .DI(\BU2/U0/acc_phase [1]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [1]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<1>  (
    .I0(\BU2/U0/acc_phase [1]),
    .I1(\BU2/U0/i_accum/phase_inc [1]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [1])
  );
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<0>  (
    .CI(\BU2/U0/i_rom/mod_sin_addr [6]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [0]),
    .O(\BU2/U0/i_accum/acc_phase_b [0])
  );
  MUXCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy<0>  (
    .CI(\BU2/U0/i_rom/mod_sin_addr [6]),
    .DI(\BU2/U0/acc_phase [0]),
    .S(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [0]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut<0>  (
    .I0(\BU2/U0/acc_phase [0]),
    .I1(\BU2/U0/i_accum/phase_inc [0]),
    .O(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [0])
  );
  XORCY   \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_xor<4>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_cy [3]),
    .LI(\NlwRenamedSig_OI_BU2/U0/i_rom/mod_cos_addr [6]),
    .O(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/result [4])
  );
  XORCY   \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_xor<3>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_cy [2]),
    .LI(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_lut [3]),
    .O(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/result [3])
  );
  MUXCY   \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_cy<3>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_cy [2]),
    .DI(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<1>_mand1 ),
    .S(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_lut [3]),
    .O(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_cy [3])
  );
  LUT3 #(
    .INIT ( 8'h9F ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_lut<3>  (
    .I0(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<1>_x_B_2<0>_mand_466 ),
    .I1(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<1>_mand_468 ),
    .I2(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<0>_mand_473 ),
    .O(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_lut [3])
  );
  MULT_AND   \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<1>_mand  (
    .I0(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<0>_mand_473 ),
    .I1(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<1>_mand_468 ),
    .LO(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<1>_mand1 )
  );
  XORCY   \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_xor<2>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_cy [1]),
    .LI(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_lut [2]),
    .O(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/result [2])
  );
  MUXCY   \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_cy<2>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_cy [1]),
    .DI(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<0>_mand1 ),
    .S(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_lut [2]),
    .O(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h935F ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_lut<2>  (
    .I0(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<1>_mand_468 ),
    .I1(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<0>_mand_473 ),
    .I2(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/A_2 [1]),
    .I3(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<1>_x_B_2<0>_mand_466 ),
    .O(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_lut [2])
  );
  MULT_AND   \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<0>_mand  (
    .I0(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<1>_x_B_2<0>_mand_466 ),
    .I1(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<0>_mand_473 ),
    .LO(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<0>_mand1 )
  );
  XORCY   \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_xor<1>  (
    .CI(\NlwRenamedSig_OI_BU2/U0/i_rom/mod_cos_addr [6]),
    .LI(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_lut [1]),
    .O(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/result [1])
  );
  MUXCY   \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_cy<1>  (
    .CI(\NlwRenamedSig_OI_BU2/U0/i_rom/mod_cos_addr [6]),
    .DI(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<1>_x_B_2<0>_mand1 ),
    .S(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_lut [1]),
    .O(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h935F ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_lut<1>  (
    .I0(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<1>_mand_468 ),
    .I1(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<1>_x_B_2<0>_mand_466 ),
    .I2(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/A_2 [0]),
    .I3(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/A_2 [1]),
    .O(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_lut [1])
  );
  MULT_AND   \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<1>_x_B_2<0>_mand  (
    .I0(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/A_2 [1]),
    .I1(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<1>_x_B_2<0>_mand_466 ),
    .LO(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<1>_x_B_2<0>_mand1 )
  );
  FDE #(
    .INIT ( 1'b1 ))
  \BU2/U0/mutant_x_op_2  (
    .C(clk),
    .CE(\BU2/U0/mutant_x_op_not0001 ),
    .D(\BU2/Result [2]),
    .Q(\BU2/U0/mutant_x_op [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/mutant_x_op_1  (
    .C(clk),
    .CE(\BU2/U0/mutant_x_op_not0001 ),
    .D(\BU2/Result [1]),
    .Q(\BU2/U0/mutant_x_op [1])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \BU2/U0/mutant_x_op_0  (
    .C(clk),
    .CE(\BU2/U0/mutant_x_op_not0001 ),
    .D(\BU2/Result [0]),
    .Q(\BU2/U0/mutant_x_op [0])
  );
  RAMB16BWE #(
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SRVAL_A ( 36'h000000000 ),
    .INIT_00 ( 256'h03090F151B20252A2E3235383A3C3D3E3E3D3C3A3835322E2A25201B150F0903 ),
    .INIT_01 ( 256'h7D77716B65605B56524E4B484644434242434446484B4E52565B60656B71777D ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_A ( "READ_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 9 ),
    .DATA_WIDTH_B ( 9 ),
    .INIT_02 ( 256'h42434446484B4E52565B60656B71777D03090F151B20252A2E3235383A3C3D3E ),
    .INIT_03 ( 256'h3E3D3C3A3835322E2A25201B150F09037D77716B65605B56524E4B4846444342 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_B ( 36'h000000000 ))
  \BU2/U0/i_rom/Mram_sin_cos_lut  (
    .CLKA(clk),
    .CLKB(clk),
    .ENA(\NlwRenamedSig_OI_BU2/U0/i_rom/mod_cos_addr [6]),
    .ENB(\NlwRenamedSig_OI_BU2/U0/i_rom/mod_cos_addr [6]),
    .SSRA(\BU2/U0/i_rom/mod_sin_addr [6]),
    .SSRB(\BU2/U0/i_rom/mod_sin_addr [6]),
    .ADDRA({\BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], 
\BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/acc_phase [28], \BU2/U0/acc_phase [27], \BU2/U0/acc_phase [26], \BU2/U0/acc_phase [25], \BU2/U0/acc_phase [24]
, \BU2/U0/acc_phase [23], \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_ADDRA<2>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_ADDRA<1>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_ADDRA<0>_UNCONNECTED }),
    .ADDRB({\BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], 
\NlwRenamedSig_OI_BU2/U0/i_rom/mod_cos_addr [6], \BU2/U0/acc_phase [28], \BU2/U0/acc_phase [27], \BU2/U0/acc_phase [26], \BU2/U0/acc_phase [25], 
\BU2/U0/acc_phase [24], \BU2/U0/acc_phase [23], \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_ADDRB<2>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_ADDRB<1>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_ADDRB<0>_UNCONNECTED }),
    .DIA({\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<31>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<30>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<29>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<28>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<27>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<26>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<25>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<24>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<23>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<22>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<21>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<20>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<19>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<18>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<17>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<16>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<15>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<14>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<13>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<12>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<11>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<10>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<9>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIA<8>_UNCONNECTED , \BU2/U0/i_rom/mod_sin_addr [6], 
\BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], 
\BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6]}),
    .DIB({\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<31>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<30>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<29>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<28>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<27>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<26>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<25>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<24>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<23>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<22>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<21>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<20>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<19>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<18>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<17>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<16>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<15>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<14>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<13>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<12>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<11>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<10>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<9>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<8>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<7>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<6>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<5>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<4>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<3>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<2>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<1>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<0>_UNCONNECTED }),
    .DIPA({\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIPA<3>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIPA<2>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIPA<1>_UNCONNECTED , \BU2/U0/i_rom/mod_sin_addr [6]}),
    .DIPB({\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIPB<3>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIPB<2>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIPB<1>_UNCONNECTED , \BU2/U0/i_rom/mod_sin_addr [6]}),
    .WEA({\BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6]}),
    .WEB({\BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6]}),
    .DOA({\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<31>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<30>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<29>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<28>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<27>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<26>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<25>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<24>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<23>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<22>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<21>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<20>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<19>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<18>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<17>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<16>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<15>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<14>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<13>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<12>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<11>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<10>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<9>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<8>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<7>_UNCONNECTED , \BU2/U0/i_rom/pre_asyn_sin_RAM_op [6], \BU2/U0/i_rom/pre_asyn_sin_RAM_op [5], 
\BU2/U0/i_rom/pre_asyn_sin_RAM_op [4], \BU2/U0/i_rom/pre_asyn_sin_RAM_op [3], \BU2/U0/i_rom/pre_asyn_sin_RAM_op [2], 
\BU2/U0/i_rom/pre_asyn_sin_RAM_op [1], \BU2/U0/i_rom/pre_asyn_sin_RAM_op [0]}),
    .DOB({\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<31>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<30>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<29>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<28>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<27>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<26>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<25>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<24>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<23>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<22>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<21>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<20>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<19>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<18>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<17>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<16>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<15>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<14>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<13>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<12>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<11>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<10>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<9>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<8>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<7>_UNCONNECTED , \BU2/U0/i_rom/pre_asyn_cos_RAM_op [6], \BU2/U0/i_rom/pre_asyn_cos_RAM_op [5], 
\BU2/U0/i_rom/pre_asyn_cos_RAM_op [4], \BU2/U0/i_rom/pre_asyn_cos_RAM_op [3], \BU2/U0/i_rom/pre_asyn_cos_RAM_op [2], 
\BU2/U0/i_rom/pre_asyn_cos_RAM_op [1], \BU2/U0/i_rom/pre_asyn_cos_RAM_op [0]}),
    .DOPA({\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOPA<3>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOPA<2>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOPA<1>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOPA<0>_UNCONNECTED }),
    .DOPB({\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOPB<3>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOPB<2>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOPB<1>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOPB<0>_UNCONNECTED })
  );
  VCC   \BU2/XST_VCC  (
    .P(\NlwRenamedSig_OI_BU2/U0/i_rom/mod_cos_addr [6])
  );
  GND   \BU2/XST_GND  (
    .G(\BU2/U0/i_rom/mod_sin_addr [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/pipe_2_7  (
    .C(clk),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [7]),
    .Q(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/pipe_2_6  (
    .C(clk),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [6]),
    .Q(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/pipe_2_5  (
    .C(clk),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [5]),
    .Q(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/pipe_2_4  (
    .C(clk),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [4]),
    .Q(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/pipe_2_3  (
    .C(clk),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [3]),
    .Q(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/pipe_2_2  (
    .C(clk),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [2]),
    .Q(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/pipe_2_1  (
    .C(clk),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [1]),
    .Q(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/pipe_2_0  (
    .C(clk),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [0]),
    .Q(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q_8  (
    .C(clk),
    .D(\BU2/U0/i_rom/mod_sin_addr [6]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q_7  (
    .C(clk),
    .D(\BU2/U0/i_rom/cos_RAM_op [6]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q_6  (
    .C(clk),
    .D(\BU2/U0/i_rom/cos_RAM_op [5]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q_5  (
    .C(clk),
    .D(\BU2/U0/i_rom/cos_RAM_op [4]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q_4  (
    .C(clk),
    .D(\BU2/U0/i_rom/cos_RAM_op [3]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q_3  (
    .C(clk),
    .D(\BU2/U0/i_rom/cos_RAM_op [2]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q_2  (
    .C(clk),
    .D(\BU2/U0/i_rom/cos_RAM_op [1]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q_1  (
    .C(clk),
    .D(\BU2/U0/i_rom/cos_RAM_op [0]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q_0  (
    .C(clk),
    .D(\NlwRenamedSig_OI_BU2/U0/i_rom/mod_cos_addr [6]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_rdy.i_single_channel.i_non_trivial_lat.i_rdy/opt_has_reg.i_reg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/pre_rdy ),
    .Q(rdy)
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_has_cosine.i_cos_op/opt_has_reg.i_reg/fd/output_7  (
    .C(clk),
    .D(\BU2/U0/final_cos [34]),
    .R(\BU2/U0/i_rom/mod_sin_addr [6]),
    .Q(cosine_3[6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_has_cosine.i_cos_op/opt_has_reg.i_reg/fd/output_6  (
    .C(clk),
    .D(\BU2/U0/final_cos [33]),
    .R(\BU2/U0/i_rom/mod_sin_addr [6]),
    .Q(cosine_3[5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_has_cosine.i_cos_op/opt_has_reg.i_reg/fd/output_5  (
    .C(clk),
    .D(\BU2/U0/final_cos [32]),
    .R(\BU2/U0/i_rom/mod_sin_addr [6]),
    .Q(cosine_3[4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_has_cosine.i_cos_op/opt_has_reg.i_reg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/final_cos [31]),
    .R(\BU2/U0/i_rom/mod_sin_addr [6]),
    .Q(cosine_3[3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_has_cosine.i_cos_op/opt_has_reg.i_reg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/final_cos [30]),
    .R(\BU2/U0/i_rom/mod_sin_addr [6]),
    .Q(cosine_3[2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_has_cosine.i_cos_op/opt_has_reg.i_reg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/final_cos [29]),
    .R(\BU2/U0/i_rom/mod_sin_addr [6]),
    .Q(cosine_3[1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_has_cosine.i_cos_op/opt_has_reg.i_reg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/final_cos [28]),
    .R(\BU2/U0/i_rom/mod_sin_addr [6]),
    .Q(cosine_3[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_29  (
    .C(clk),
    .CE(we),
    .D(data_2[28]),
    .Q(\BU2/U0/i_accum/phase_inc [28])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_28  (
    .C(clk),
    .CE(we),
    .D(data_2[27]),
    .Q(\BU2/U0/i_accum/phase_inc [27])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_27  (
    .C(clk),
    .CE(we),
    .D(data_2[26]),
    .Q(\BU2/U0/i_accum/phase_inc [26])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_26  (
    .C(clk),
    .CE(we),
    .D(data_2[25]),
    .Q(\BU2/U0/i_accum/phase_inc [25])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_25  (
    .C(clk),
    .CE(we),
    .D(data_2[24]),
    .Q(\BU2/U0/i_accum/phase_inc [24])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_24  (
    .C(clk),
    .CE(we),
    .D(data_2[23]),
    .Q(\BU2/U0/i_accum/phase_inc [23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_23  (
    .C(clk),
    .CE(we),
    .D(data_2[22]),
    .Q(\BU2/U0/i_accum/phase_inc [22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_22  (
    .C(clk),
    .CE(we),
    .D(data_2[21]),
    .Q(\BU2/U0/i_accum/phase_inc [21])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_21  (
    .C(clk),
    .CE(we),
    .D(data_2[20]),
    .Q(\BU2/U0/i_accum/phase_inc [20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_20  (
    .C(clk),
    .CE(we),
    .D(data_2[19]),
    .Q(\BU2/U0/i_accum/phase_inc [19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_19  (
    .C(clk),
    .CE(we),
    .D(data_2[18]),
    .Q(\BU2/U0/i_accum/phase_inc [18])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_18  (
    .C(clk),
    .CE(we),
    .D(data_2[17]),
    .Q(\BU2/U0/i_accum/phase_inc [17])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_17  (
    .C(clk),
    .CE(we),
    .D(data_2[16]),
    .Q(\BU2/U0/i_accum/phase_inc [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_16  (
    .C(clk),
    .CE(we),
    .D(data_2[15]),
    .Q(\BU2/U0/i_accum/phase_inc [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_15  (
    .C(clk),
    .CE(we),
    .D(data_2[14]),
    .Q(\BU2/U0/i_accum/phase_inc [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_14  (
    .C(clk),
    .CE(we),
    .D(data_2[13]),
    .Q(\BU2/U0/i_accum/phase_inc [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_13  (
    .C(clk),
    .CE(we),
    .D(data_2[12]),
    .Q(\BU2/U0/i_accum/phase_inc [12])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_12  (
    .C(clk),
    .CE(we),
    .D(data_2[11]),
    .Q(\BU2/U0/i_accum/phase_inc [11])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_11  (
    .C(clk),
    .CE(we),
    .D(data_2[10]),
    .Q(\BU2/U0/i_accum/phase_inc [10])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_10  (
    .C(clk),
    .CE(we),
    .D(data_2[9]),
    .Q(\BU2/U0/i_accum/phase_inc [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_9  (
    .C(clk),
    .CE(we),
    .D(data_2[8]),
    .Q(\BU2/U0/i_accum/phase_inc [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_8  (
    .C(clk),
    .CE(we),
    .D(data_2[7]),
    .Q(\BU2/U0/i_accum/phase_inc [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_7  (
    .C(clk),
    .CE(we),
    .D(data_2[6]),
    .Q(\BU2/U0/i_accum/phase_inc [6])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_6  (
    .C(clk),
    .CE(we),
    .D(data_2[5]),
    .Q(\BU2/U0/i_accum/phase_inc [5])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_5  (
    .C(clk),
    .CE(we),
    .D(data_2[4]),
    .Q(\BU2/U0/i_accum/phase_inc [4])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_4  (
    .C(clk),
    .CE(we),
    .D(data_2[3]),
    .Q(\BU2/U0/i_accum/phase_inc [3])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_3  (
    .C(clk),
    .CE(we),
    .D(data_2[2]),
    .Q(\BU2/U0/i_accum/phase_inc [2])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_2  (
    .C(clk),
    .CE(we),
    .D(data_2[1]),
    .Q(\BU2/U0/i_accum/phase_inc [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_1  (
    .C(clk),
    .CE(we),
    .D(data_2[0]),
    .Q(\BU2/U0/i_accum/phase_inc [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_29  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [28]),
    .Q(\BU2/U0/acc_phase [28])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_28  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [27]),
    .Q(\BU2/U0/acc_phase [27])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_27  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [26]),
    .Q(\BU2/U0/acc_phase [26])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_26  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [25]),
    .Q(\BU2/U0/acc_phase [25])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_25  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [24]),
    .Q(\BU2/U0/acc_phase [24])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_24  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [23]),
    .Q(\BU2/U0/acc_phase [23])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_23  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [22]),
    .Q(\BU2/U0/acc_phase [22])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_22  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [21]),
    .Q(\BU2/U0/acc_phase [21])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_21  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [20]),
    .Q(\BU2/U0/acc_phase [20])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_20  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [19]),
    .Q(\BU2/U0/acc_phase [19])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_19  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [18]),
    .Q(\BU2/U0/acc_phase [18])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_18  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [17]),
    .Q(\BU2/U0/acc_phase [17])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_17  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [16]),
    .Q(\BU2/U0/acc_phase [16])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_16  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [15]),
    .Q(\BU2/U0/acc_phase [15])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_15  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [14]),
    .Q(\BU2/U0/acc_phase [14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_14  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [13]),
    .Q(\BU2/U0/acc_phase [13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_13  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [12]),
    .Q(\BU2/U0/acc_phase [12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_12  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [11]),
    .Q(\BU2/U0/acc_phase [11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_11  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [10]),
    .Q(\BU2/U0/acc_phase [10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_10  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [9]),
    .Q(\BU2/U0/acc_phase [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_9  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [8]),
    .Q(\BU2/U0/acc_phase [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_8  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [7]),
    .Q(\BU2/U0/acc_phase [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_7  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [6]),
    .Q(\BU2/U0/acc_phase [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_6  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [5]),
    .Q(\BU2/U0/acc_phase [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_5  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [4]),
    .Q(\BU2/U0/acc_phase [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [3]),
    .Q(\BU2/U0/acc_phase [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [2]),
    .Q(\BU2/U0/acc_phase [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [1]),
    .Q(\BU2/U0/acc_phase [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_accum/acc_phase_b [0]),
    .Q(\BU2/U0/acc_phase [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_rom/i_rtl.i_double_table.i_rom_reg_b/opt_has_reg.i_reg/fd/output_7  (
    .C(clk),
    .D(\BU2/U0/i_rom/pre_asyn_cos_RAM_op [6]),
    .Q(\BU2/U0/i_rom/cos_RAM_op [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_rom/i_rtl.i_double_table.i_rom_reg_b/opt_has_reg.i_reg/fd/output_6  (
    .C(clk),
    .D(\BU2/U0/i_rom/pre_asyn_cos_RAM_op [5]),
    .Q(\BU2/U0/i_rom/cos_RAM_op [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_rom/i_rtl.i_double_table.i_rom_reg_b/opt_has_reg.i_reg/fd/output_5  (
    .C(clk),
    .D(\BU2/U0/i_rom/pre_asyn_cos_RAM_op [4]),
    .Q(\BU2/U0/i_rom/cos_RAM_op [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_rom/i_rtl.i_double_table.i_rom_reg_b/opt_has_reg.i_reg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/i_rom/pre_asyn_cos_RAM_op [3]),
    .Q(\BU2/U0/i_rom/cos_RAM_op [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_rom/i_rtl.i_double_table.i_rom_reg_b/opt_has_reg.i_reg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_rom/pre_asyn_cos_RAM_op [2]),
    .Q(\BU2/U0/i_rom/cos_RAM_op [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_rom/i_rtl.i_double_table.i_rom_reg_b/opt_has_reg.i_reg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_rom/pre_asyn_cos_RAM_op [1]),
    .Q(\BU2/U0/i_rom/cos_RAM_op [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_rom/i_rtl.i_double_table.i_rom_reg_b/opt_has_reg.i_reg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_rom/pre_asyn_cos_RAM_op [0]),
    .Q(\BU2/U0/i_rom/cos_RAM_op [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_rom/i_rtl.i_double_table.i_rom_reg_a/opt_has_reg.i_reg/fd/output_7  (
    .C(clk),
    .D(\BU2/U0/i_rom/pre_asyn_sin_RAM_op [6]),
    .Q(\BU2/U0/i_rom/sin_RAM_op [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_rom/i_rtl.i_double_table.i_rom_reg_a/opt_has_reg.i_reg/fd/output_6  (
    .C(clk),
    .D(\BU2/U0/i_rom/pre_asyn_sin_RAM_op [5]),
    .Q(\BU2/U0/i_rom/sin_RAM_op [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_ccm.i_by_hand.i_partial_lower/opt_has_reg.i_reg/fd/output_7  (
    .C(clk),
    .D(\BU2/U0/i_comp_eff.i_eff/pre_partial_lower [6]),
    .Q(\BU2/U0/i_comp_eff.i_eff/partial_lower [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_ccm.i_by_hand.i_partial_upper/opt_has_reg.i_reg/fd/output_5  (
    .C(clk),
    .D(\BU2/U0/i_comp_eff.i_eff/pre_partial_upper [4]),
    .Q(\BU2/U0/i_comp_eff.i_eff/partial_upper [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_ccm.i_by_hand.i_partial_upper/opt_has_reg.i_reg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/i_comp_eff.i_eff/pre_partial_upper [3]),
    .Q(\BU2/U0/i_comp_eff.i_eff/partial_upper [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_ccm.i_by_hand.i_partial_upper/opt_has_reg.i_reg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_comp_eff.i_eff/pre_partial_upper [2]),
    .Q(\BU2/U0/i_comp_eff.i_eff/partial_upper [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_ccm.i_by_hand.i_partial_upper/opt_has_reg.i_reg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_comp_eff.i_eff/pre_partial_upper [1]),
    .Q(\BU2/U0/i_comp_eff.i_eff/partial_upper [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_ccm.i_by_hand.i_partial_upper/opt_has_reg.i_reg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/acc_phase [20]),
    .Q(\BU2/U0/i_comp_eff.i_eff/partial_upper [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_ccm.i_by_hand.i_not_dsp48a.i_complete/opt_has_reg.i_reg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_comp_eff.i_eff/pre_complete [10]),
    .Q(\BU2/U0/i_comp_eff.i_eff/radian_error [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_ccm.i_by_hand.i_not_dsp48a.i_complete/opt_has_reg.i_reg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_comp_eff.i_eff/pre_complete [9]),
    .Q(\BU2/U0/i_comp_eff.i_eff/radian_error [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_ccm.i_by_hand.i_not_dsp48a.i_complete/opt_has_reg.i_reg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_comp_eff.i_eff/pre_complete [8]),
    .Q(\BU2/U0/i_comp_eff.i_eff/radian_error [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/i_input_a_reg/opt_has_reg.i_reg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_comp_eff.i_eff/radian_error [5]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<0>_mand_473 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/i_input_a_reg/opt_has_reg.i_reg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_comp_eff.i_eff/radian_error [4]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/A_2 [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/i_input_a_reg/opt_has_reg.i_reg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_comp_eff.i_eff/radian_error [3]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/A_2 [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/i_input_b_reg/opt_has_reg.i_reg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_rom/sin_RAM_op [6]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<1>_mand_468 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/i_input_b_reg/opt_has_reg.i_reg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_rom/sin_RAM_op [5]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<1>_x_B_2<0>_mand_466 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/i_output_reg/opt_has_reg.i_reg/fd/output_5  (
    .C(clk),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/result [4]),
    .Q(\BU2/U0/i_comp_eff.i_eff/cos_mult_adj [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/i_output_reg/opt_has_reg.i_reg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/result [3]),
    .Q(\BU2/U0/i_comp_eff.i_eff/cos_mult_adj [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/i_output_reg/opt_has_reg.i_reg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/result [2]),
    .Q(\BU2/U0/i_comp_eff.i_eff/cos_mult_adj [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/i_output_reg/opt_has_reg.i_reg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/result [1]),
    .Q(\BU2/U0/i_comp_eff.i_eff/cos_mult_adj [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/i_output_reg/opt_has_reg.i_reg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<0>_x_B_2 [0]),
    .Q(\BU2/U0/i_comp_eff.i_eff/cos_mult_adj [0])
  );

// synthesis translate_on

endmodule

// synthesis translate_off

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

// synthesis translate_on
