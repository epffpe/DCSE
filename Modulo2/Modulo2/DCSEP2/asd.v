////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: K.39
//  \   \         Application: netgen
//  /   /         Filename: asd.v
// /___/   /\     Timestamp: Fri Dec 05 21:40:15 2008
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog D:\Designs\DCSE\Modulo2\Modulo2\DCSEP2\tmp\_cg\asd.ngc D:\Designs\DCSE\Modulo2\Modulo2\DCSEP2\tmp\_cg\asd.v 
// Device	: 3s1000ft256-5
// Input file	: D:/Designs/DCSE/Modulo2/Modulo2/DCSEP2/tmp/_cg/asd.ngc
// Output file	: D:/Designs/DCSE/Modulo2/Modulo2/DCSEP2/tmp/_cg/asd.v
// # of Modules	: 1
// Design Name	: asd
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

module asd (
  sclr, ce, rfd, rdy, clk, we, data, cosine
);
  input sclr;
  input ce;
  output rfd;
  output rdy;
  input clk;
  input we;
  input [26 : 0] data;
  output [6 : 0] cosine;
  
  // synthesis translate_off
  
  wire \BU2/U0/pre_rdy ;
  wire \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<1>_mand1 ;
  wire \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<0>_mand1 ;
  wire \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<0>_mand_471 ;
  wire \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<1>_mand_466 ;
  wire \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<1>_x_B_2<0>_mand1 ;
  wire \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<1>_x_B_2<0>_mand_464 ;
  wire \BU2/U0/mutant_x_op_not0001 ;
  wire NLW_VCC_P_UNCONNECTED;
  wire NLW_GND_G_UNCONNECTED;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOPA<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOPB<0>_UNCONNECTED ;
  wire [26 : 0] data_2;
  wire [6 : 0] cosine_3;
  wire [0 : 0] \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<0>_x_B_2 ;
  wire [5 : 3] \BU2/U0/i_comp_eff.i_eff/radian_error ;
  wire [2 : 2] \BU2/U0/i_comp_eff.i_eff/d1_eff_phase_error ;
  wire [6 : 0] \BU2/U0/i_rom/sin_RAM_op ;
  wire [6 : 0] \BU2/U0/i_rom/cos_RAM_op ;
  wire [32 : 26] \BU2/U0/final_cos ;
  wire [27 : 0] \BU2/U0/acc_phase ;
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
  wire [26 : 0] \BU2/U0/i_accum/acc_phase_b ;
  wire [26 : 0] \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut ;
  wire [26 : 0] \BU2/U0/i_accum/phase_inc ;
  wire [25 : 0] \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy ;
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
    .I(\BU2/U0/acc_phase [20]),
    .O(\BU2/U0/i_comp_eff.i_eff/d1_eff_phase_error [2])
  );
  INV   \BU2/U0/Mcount_mutant_x_op_xor<0>11_INV_0  (
    .I(\BU2/U0/mutant_x_op [0]),
    .O(\BU2/Result [0])
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \BU2/U0/mutant_x_op_not00011  (
    .I0(ce),
    .I1(\BU2/U0/mutant_x_op [0]),
    .I2(\BU2/U0/mutant_x_op [1]),
    .I3(\BU2/U0/mutant_x_op [2]),
    .O(\BU2/U0/mutant_x_op_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \BU2/U0/pre_rdy1  (
    .I0(sclr),
    .I1(\BU2/U0/mutant_x_op [2]),
    .I2(\BU2/U0/mutant_x_op [1]),
    .I3(\BU2/U0/mutant_x_op [0]),
    .O(\BU2/U0/pre_rdy )
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
    .I0(\BU2/U0/mutant_x_op [0]),
    .I1(\BU2/U0/mutant_x_op [1]),
    .O(\BU2/Result [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<0>_x_B_2<0>1  (
    .I0(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/A_2 [0]),
    .I1(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<1>_x_B_2<0>_mand_464 ),
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
    .DI(\BU2/U0/acc_phase [19]),
    .S(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_lut [4]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_lut<4>  (
    .I0(\BU2/U0/acc_phase [19]),
    .I1(\BU2/U0/i_comp_eff.i_eff/d1_eff_phase_error [2]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_lut [4])
  );
  MUXCY   \BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_cy<3>  (
    .CI(\BU2/U0/i_rom/mod_sin_addr [6]),
    .DI(\BU2/U0/acc_phase [18]),
    .S(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_lut [3]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_lower_lut<3>  (
    .I0(\BU2/U0/acc_phase [18]),
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
    .DI(\BU2/U0/acc_phase [19]),
    .S(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_lut [2]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_lut<2>  (
    .I0(\BU2/U0/acc_phase [19]),
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
    .DI(\BU2/U0/acc_phase [18]),
    .S(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_lut [1]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_lut<1>  (
    .I0(\BU2/U0/acc_phase [18]),
    .I1(\BU2/U0/acc_phase [19]),
    .O(\BU2/U0/i_comp_eff.i_eff/Madd_pre_partial_upper_lut [1])
  );
  XORCY   \BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_xor<7>  (
    .CI(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_cy [6]),
    .LI(\BU2/U0/i_comp_eff.i_eff/Msub_off_pre_final_cos_lut [7]),
    .O(\BU2/U0/final_cos [32])
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
    .O(\BU2/U0/final_cos [31])
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
    .O(\BU2/U0/final_cos [30])
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
    .O(\BU2/U0/final_cos [29])
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
    .O(\BU2/U0/final_cos [28])
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
    .O(\BU2/U0/final_cos [27])
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
    .O(\BU2/U0/final_cos [26])
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
  XORCY   \BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_xor<26>  (
    .CI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_cy [25]),
    .LI(\BU2/U0/i_accum/i_fabric.i_one_channel.i_accum/Madd_temp_lut [26]),
    .O(\BU2/U0/i_accum/acc_phase_b [26])
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
    .I0(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<1>_x_B_2<0>_mand_464 ),
    .I1(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<1>_mand_466 ),
    .I2(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<0>_mand_471 ),
    .O(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_lut [3])
  );
  MULT_AND   \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<1>_mand  (
    .I0(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<0>_mand_471 ),
    .I1(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<1>_mand_466 ),
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
    .I0(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<1>_mand_466 ),
    .I1(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<0>_mand_471 ),
    .I2(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/A_2 [1]),
    .I3(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<1>_x_B_2<0>_mand_464 ),
    .O(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_lut [2])
  );
  MULT_AND   \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<0>_mand  (
    .I0(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<1>_x_B_2<0>_mand_464 ),
    .I1(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<0>_mand_471 ),
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
    .I0(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<1>_mand_466 ),
    .I1(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<1>_x_B_2<0>_mand_464 ),
    .I2(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/A_2 [0]),
    .I3(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/A_2 [1]),
    .O(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_Madd_lut [1])
  );
  MULT_AND   \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<1>_x_B_2<0>_mand  (
    .I0(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/A_2 [1]),
    .I1(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<1>_x_B_2<0>_mand_464 ),
    .LO(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<1>_x_B_2<0>_mand1 )
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/mutant_x_op_2  (
    .C(clk),
    .CE(\BU2/U0/mutant_x_op_not0001 ),
    .D(\BU2/Result [2]),
    .S(sclr),
    .Q(\BU2/U0/mutant_x_op [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/mutant_x_op_1  (
    .C(clk),
    .CE(\BU2/U0/mutant_x_op_not0001 ),
    .D(\BU2/Result [1]),
    .R(sclr),
    .Q(\BU2/U0/mutant_x_op [1])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/mutant_x_op_0  (
    .C(clk),
    .CE(\BU2/U0/mutant_x_op_not0001 ),
    .D(\BU2/Result [0]),
    .S(sclr),
    .Q(\BU2/U0/mutant_x_op [0])
  );
  RAMB16_S9_S9 #(
    .INIT_A ( 9'h000 ),
    .INIT_B ( 9'h000 ),
    .INIT_00 ( 256'h03090F151B20252A2E3235383A3C3D3E3E3D3C3A3835322E2A25201B150F0903 ),
    .INIT_01 ( 256'h7D77716B65605B56524E4B484644434242434446484B4E52565B60656B71777D ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INIT_02 ( 256'h42434446484B4E52565B60656B71777D03090F151B20252A2E3235383A3C3D3E ),
    .WRITE_MODE_A ( "READ_FIRST" ),
    .INIT_03 ( 256'h3E3D3C3A3835322E2A25201B150F09037D77716B65605B56524E4B4846444342 ))
  \BU2/U0/i_rom/Mram_sin_cos_lut  (
    .CLKA(clk),
    .CLKB(clk),
    .ENA(ce),
    .ENB(ce),
    .SSRA(\BU2/U0/i_rom/mod_sin_addr [6]),
    .SSRB(\BU2/U0/i_rom/mod_sin_addr [6]),
    .WEA(\BU2/U0/i_rom/mod_sin_addr [6]),
    .WEB(\BU2/U0/i_rom/mod_sin_addr [6]),
    .ADDRA({\BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], 
\BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/acc_phase [26], \BU2/U0/acc_phase [25], \BU2/U0/acc_phase [24], \BU2/U0/acc_phase [23], \BU2/U0/acc_phase [22]
, \BU2/U0/acc_phase [21]}),
    .ADDRB({\BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], 
\NlwRenamedSig_OI_BU2/U0/i_rom/mod_cos_addr [6], \BU2/U0/acc_phase [26], \BU2/U0/acc_phase [25], \BU2/U0/acc_phase [24], \BU2/U0/acc_phase [23], 
\BU2/U0/acc_phase [22], \BU2/U0/acc_phase [21]}),
    .DIA({\BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], 
\BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6], \BU2/U0/i_rom/mod_sin_addr [6]}),
    .DIB({\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<7>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<6>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<5>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<4>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<3>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<2>_UNCONNECTED , 
\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<1>_UNCONNECTED , \NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DIB<0>_UNCONNECTED }),
    .DIPA({\BU2/U0/i_rom/mod_sin_addr [6]}),
    .DIPB({\BU2/U0/i_rom/mod_sin_addr [6]}),
    .DOA({\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOA<7>_UNCONNECTED , \BU2/U0/i_rom/pre_asyn_sin_RAM_op [6], \BU2/U0/i_rom/pre_asyn_sin_RAM_op [5], 
\BU2/U0/i_rom/pre_asyn_sin_RAM_op [4], \BU2/U0/i_rom/pre_asyn_sin_RAM_op [3], \BU2/U0/i_rom/pre_asyn_sin_RAM_op [2], 
\BU2/U0/i_rom/pre_asyn_sin_RAM_op [1], \BU2/U0/i_rom/pre_asyn_sin_RAM_op [0]}),
    .DOPA({\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOPA<0>_UNCONNECTED }),
    .DOB({\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOB<7>_UNCONNECTED , \BU2/U0/i_rom/pre_asyn_cos_RAM_op [6], \BU2/U0/i_rom/pre_asyn_cos_RAM_op [5], 
\BU2/U0/i_rom/pre_asyn_cos_RAM_op [4], \BU2/U0/i_rom/pre_asyn_cos_RAM_op [3], \BU2/U0/i_rom/pre_asyn_cos_RAM_op [2], 
\BU2/U0/i_rom/pre_asyn_cos_RAM_op [1], \BU2/U0/i_rom/pre_asyn_cos_RAM_op [0]}),
    .DOPB({\NLW_BU2/U0/i_rom/Mram_sin_cos_lut_DOPB<0>_UNCONNECTED })
  );
  VCC   \BU2/XST_VCC  (
    .P(\NlwRenamedSig_OI_BU2/U0/i_rom/mod_cos_addr [6])
  );
  GND   \BU2/XST_GND  (
    .G(\BU2/U0/i_rom/mod_sin_addr [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/pipe_2_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [7]),
    .Q(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/pipe_2_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [6]),
    .Q(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/pipe_2_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [5]),
    .Q(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/pipe_2_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [4]),
    .Q(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/pipe_2_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [3]),
    .Q(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/pipe_2_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [2]),
    .Q(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/pipe_2_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [1]),
    .Q(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/pipe_2_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [0]),
    .Q(\BU2/U0/i_comp_eff.i_eff/shifted_cos_x [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q_8  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_rom/mod_sin_addr [6]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_rom/cos_RAM_op [6]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_rom/cos_RAM_op [5]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_rom/cos_RAM_op [4]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_rom/cos_RAM_op [3]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_rom/cos_RAM_op [2]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_rom/cos_RAM_op [1]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_rom/cos_RAM_op [0]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q_0  (
    .C(clk),
    .CE(ce),
    .D(\NlwRenamedSig_OI_BU2/U0/i_rom/mod_cos_addr [6]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_shift_cos_pipe/first_q [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_rdy.i_single_channel.i_non_trivial_lat.i_rdy/opt_has_reg.i_reg/fd/output_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/pre_rdy ),
    .R(sclr),
    .Q(rdy)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_has_cosine.i_cos_op/opt_has_reg.i_reg/fd/output_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/final_cos [32]),
    .R(\BU2/U0/i_rom/mod_sin_addr [6]),
    .Q(cosine_3[6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_has_cosine.i_cos_op/opt_has_reg.i_reg/fd/output_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/final_cos [31]),
    .R(\BU2/U0/i_rom/mod_sin_addr [6]),
    .Q(cosine_3[5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_has_cosine.i_cos_op/opt_has_reg.i_reg/fd/output_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/final_cos [30]),
    .R(\BU2/U0/i_rom/mod_sin_addr [6]),
    .Q(cosine_3[4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_has_cosine.i_cos_op/opt_has_reg.i_reg/fd/output_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/final_cos [29]),
    .R(\BU2/U0/i_rom/mod_sin_addr [6]),
    .Q(cosine_3[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_has_cosine.i_cos_op/opt_has_reg.i_reg/fd/output_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/final_cos [28]),
    .R(\BU2/U0/i_rom/mod_sin_addr [6]),
    .Q(cosine_3[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_has_cosine.i_cos_op/opt_has_reg.i_reg/fd/output_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/final_cos [27]),
    .R(\BU2/U0/i_rom/mod_sin_addr [6]),
    .Q(cosine_3[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_has_cosine.i_cos_op/opt_has_reg.i_reg/fd/output_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/final_cos [26]),
    .R(\BU2/U0/i_rom/mod_sin_addr [6]),
    .Q(cosine_3[0])
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
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_26  (
    .C(clk),
    .CE(we),
    .D(data_2[25]),
    .Q(\BU2/U0/i_accum/phase_inc [25])
  );
  FDE #(
    .INIT ( 1'b1 ))
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
    .INIT ( 1'b1 ))
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
    .INIT ( 1'b1 ))
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
    .INIT ( 1'b0 ))
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
    .INIT ( 1'b1 ))
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
    .INIT ( 1'b0 ))
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
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_10  (
    .C(clk),
    .CE(we),
    .D(data_2[9]),
    .Q(\BU2/U0/i_accum/phase_inc [9])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_9  (
    .C(clk),
    .CE(we),
    .D(data_2[8]),
    .Q(\BU2/U0/i_accum/phase_inc [8])
  );
  FDE #(
    .INIT ( 1'b1 ))
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
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_5  (
    .C(clk),
    .CE(we),
    .D(data_2[4]),
    .Q(\BU2/U0/i_accum/phase_inc [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_4  (
    .C(clk),
    .CE(we),
    .D(data_2[3]),
    .Q(\BU2/U0/i_accum/phase_inc [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_3  (
    .C(clk),
    .CE(we),
    .D(data_2[2]),
    .Q(\BU2/U0/i_accum/phase_inc [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_2  (
    .C(clk),
    .CE(we),
    .D(data_2[1]),
    .Q(\BU2/U0/i_accum/phase_inc [1])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_accum/i_common.i_phase_inc_solo.i_prog_freq.i_prog_freq/opt_has_reg.i_reg/fd/output_1  (
    .C(clk),
    .CE(we),
    .D(data_2[0]),
    .Q(\BU2/U0/i_accum/phase_inc [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_27  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [26]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [26])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_26  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [25]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [25])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_25  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [24]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [24])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_24  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [23]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [23])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_23  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [22]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [22])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_22  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [21]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [21])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_21  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [20]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [20])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_20  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [19]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [19])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_19  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [18]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [18])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_18  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [17]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [17])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_17  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [16]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [16])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_16  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [15]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [15])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_15  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [14]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [14])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_14  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [13]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [13])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_13  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [12]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [12])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_12  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [11]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [11])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_11  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [10]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [10])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_10  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [9]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [9])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_9  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [8]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [8])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_8  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [7]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [6]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [5]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [4]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [3]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [2]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [1]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_accum/i_fabric.i_common.i_phase_acc/opt_has_reg.i_reg/fd/output_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_accum/acc_phase_b [0]),
    .R(sclr),
    .Q(\BU2/U0/acc_phase [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_rom/i_rtl.i_double_table.i_rom_reg_b/opt_has_reg.i_reg/fd/output_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_rom/pre_asyn_cos_RAM_op [6]),
    .Q(\BU2/U0/i_rom/cos_RAM_op [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_rom/i_rtl.i_double_table.i_rom_reg_b/opt_has_reg.i_reg/fd/output_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_rom/pre_asyn_cos_RAM_op [5]),
    .Q(\BU2/U0/i_rom/cos_RAM_op [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_rom/i_rtl.i_double_table.i_rom_reg_b/opt_has_reg.i_reg/fd/output_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_rom/pre_asyn_cos_RAM_op [4]),
    .Q(\BU2/U0/i_rom/cos_RAM_op [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_rom/i_rtl.i_double_table.i_rom_reg_b/opt_has_reg.i_reg/fd/output_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_rom/pre_asyn_cos_RAM_op [3]),
    .Q(\BU2/U0/i_rom/cos_RAM_op [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_rom/i_rtl.i_double_table.i_rom_reg_b/opt_has_reg.i_reg/fd/output_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_rom/pre_asyn_cos_RAM_op [2]),
    .Q(\BU2/U0/i_rom/cos_RAM_op [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_rom/i_rtl.i_double_table.i_rom_reg_b/opt_has_reg.i_reg/fd/output_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_rom/pre_asyn_cos_RAM_op [1]),
    .Q(\BU2/U0/i_rom/cos_RAM_op [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_rom/i_rtl.i_double_table.i_rom_reg_b/opt_has_reg.i_reg/fd/output_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_rom/pre_asyn_cos_RAM_op [0]),
    .Q(\BU2/U0/i_rom/cos_RAM_op [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_rom/i_rtl.i_double_table.i_rom_reg_a/opt_has_reg.i_reg/fd/output_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_rom/pre_asyn_sin_RAM_op [6]),
    .Q(\BU2/U0/i_rom/sin_RAM_op [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_rom/i_rtl.i_double_table.i_rom_reg_a/opt_has_reg.i_reg/fd/output_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_rom/pre_asyn_sin_RAM_op [5]),
    .Q(\BU2/U0/i_rom/sin_RAM_op [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_ccm.i_by_hand.i_partial_lower/opt_has_reg.i_reg/fd/output_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_comp_eff.i_eff/pre_partial_lower [6]),
    .Q(\BU2/U0/i_comp_eff.i_eff/partial_lower [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_ccm.i_by_hand.i_partial_upper/opt_has_reg.i_reg/fd/output_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_comp_eff.i_eff/pre_partial_upper [4]),
    .Q(\BU2/U0/i_comp_eff.i_eff/partial_upper [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_ccm.i_by_hand.i_partial_upper/opt_has_reg.i_reg/fd/output_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_comp_eff.i_eff/pre_partial_upper [3]),
    .Q(\BU2/U0/i_comp_eff.i_eff/partial_upper [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_ccm.i_by_hand.i_partial_upper/opt_has_reg.i_reg/fd/output_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_comp_eff.i_eff/pre_partial_upper [2]),
    .Q(\BU2/U0/i_comp_eff.i_eff/partial_upper [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_ccm.i_by_hand.i_partial_upper/opt_has_reg.i_reg/fd/output_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_comp_eff.i_eff/pre_partial_upper [1]),
    .Q(\BU2/U0/i_comp_eff.i_eff/partial_upper [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_ccm.i_by_hand.i_partial_upper/opt_has_reg.i_reg/fd/output_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/acc_phase [18]),
    .Q(\BU2/U0/i_comp_eff.i_eff/partial_upper [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_ccm.i_by_hand.i_not_dsp48a.i_complete/opt_has_reg.i_reg/fd/output_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_comp_eff.i_eff/pre_complete [10]),
    .Q(\BU2/U0/i_comp_eff.i_eff/radian_error [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_ccm.i_by_hand.i_not_dsp48a.i_complete/opt_has_reg.i_reg/fd/output_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_comp_eff.i_eff/pre_complete [9]),
    .Q(\BU2/U0/i_comp_eff.i_eff/radian_error [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_ccm.i_by_hand.i_not_dsp48a.i_complete/opt_has_reg.i_reg/fd/output_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_comp_eff.i_eff/pre_complete [8]),
    .Q(\BU2/U0/i_comp_eff.i_eff/radian_error [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/i_input_a_reg/opt_has_reg.i_reg/fd/output_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_comp_eff.i_eff/radian_error [5]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<0>_mand_471 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/i_input_a_reg/opt_has_reg.i_reg/fd/output_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_comp_eff.i_eff/radian_error [4]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/A_2 [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/i_input_a_reg/opt_has_reg.i_reg/fd/output_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_comp_eff.i_eff/radian_error [3]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/A_2 [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/i_input_b_reg/opt_has_reg.i_reg/fd/output_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_rom/sin_RAM_op [6]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<2>_x_B_2<1>_mand_466 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/i_input_b_reg/opt_has_reg.i_reg/fd/output_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_rom/sin_RAM_op [5]),
    .Q(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/Mmult_result_A_2<1>_x_B_2<0>_mand_464 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/i_output_reg/opt_has_reg.i_reg/fd/output_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/result [4]),
    .Q(\BU2/U0/i_comp_eff.i_eff/cos_mult_adj [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/i_output_reg/opt_has_reg.i_reg/fd/output_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/result [3]),
    .Q(\BU2/U0/i_comp_eff.i_eff/cos_mult_adj [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/i_output_reg/opt_has_reg.i_reg/fd/output_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/result [2]),
    .Q(\BU2/U0/i_comp_eff.i_eff/cos_mult_adj [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/i_output_reg/opt_has_reg.i_reg/fd/output_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/result [1]),
    .Q(\BU2/U0/i_comp_eff.i_eff/cos_mult_adj [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_comp_eff.i_eff/i_legacy.i_cos_adj/i_output_reg/opt_has_reg.i_reg/fd/output_1  (
    .C(clk),
    .CE(ce),
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
