//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2006 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /   Vendor:        Xilinx
// \   \   \/    Version:       1.0.0
//  \   \        Filename:      colorlut.v
//  /   /        Date Created:  December 25, 2006
// /___/   /\    Last Modified: December 25, 2006
// \   \  /  \
//  \___\/\___\
//
// Devices:   Spartan-3 Generation FPGA
// Purpose:   Non-programmable color look-up table
// Contact:   crabill@xilinx.com
// Reference: None
//
// Revision History:
//   Rev 1.0.0 - (crabill) First created December 25, 2006.
//
//////////////////////////////////////////////////////////////////////////////
//
// LIMITED WARRANTY AND DISCLAIMER. These designs are provided to you "as is".
// Xilinx and its licensors make and you receive no warranties or conditions,
// express, implied, statutory or otherwise, and Xilinx specifically disclaims
// any implied warranties of merchantability, non-infringement, or fitness for
// a particular purpose. Xilinx does not warrant that the functions contained
// in these designs will meet your requirements, or that the operation of
// these designs will be uninterrupted or error free, or that defects in the
// designs will be corrected. Furthermore, Xilinx does not warrant or make any
// representations regarding use or the results of the use of the designs in
// terms of correctness, accuracy, reliability, or otherwise.
//
// LIMITATION OF LIABILITY. In no event will Xilinx or its licensors be liable
// for any loss of data, lost profits, cost or procurement of substitute goods
// or services, or for any special, incidental, consequential, or indirect
// damages arising from the use or operation of the designs or accompanying
// documentation, however caused and on any theory of liability. This
// limitation will apply even if Xilinx has been advised of the possibility
// of such damage. This limitation shall apply not-withstanding the failure
// of the essential purpose of any limited remedies herein.
//
//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2006 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////

`timescale 1 ns / 1 ps

module colorlut
  #(
  // Mode 0, where data[1:0] is used.
  parameter   [11:0] CLM0_COL0 = 12'h0_0_0, // was 00_00_00 as 24bpp
  parameter   [11:0] CLM0_COL1 = 12'hf_f_f, // was ff_ff_ff as 24bpp
  parameter   [11:0] CLM0_COL2 = 12'h9_0_3, // was 9d_02_2e as 24bpp
  parameter   [11:0] CLM0_COL3 = 12'hf_d_2, // was ff_d5_1d as 24bpp
  // Mode 1, where data[3:2] is used.
  parameter   [11:0] CLM1_COL0 = 12'h0_0_0, // was 00_00_00 as 24bpp
  parameter   [11:0] CLM1_COL1 = 12'hf_f_f, // was ff_ff_ff as 24bpp
  parameter   [11:0] CLM1_COL2 = 12'h9_0_3, // was 9d_02_2e as 24bpp
  parameter   [11:0] CLM1_COL3 = 12'hf_d_2, // was ff_d5_1d as 24bpp
  // Mode 2, where data[5:4] is used.
  parameter   [11:0] CLM2_COL0 = 12'hf_f_f,
  parameter   [11:0] CLM2_COL1 = 12'hf_f_f,
  parameter   [11:0] CLM2_COL2 = 12'hf_f_f,
  parameter   [11:0] CLM2_COL3 = 12'hf_f_f,
  // Mode 3, where data[7:6] is used.
  parameter   [11:0] CLM3_COL0 = 12'hf_f_f,
  parameter   [11:0] CLM3_COL1 = 12'h0_0_0,
  parameter   [11:0] CLM3_COL2 = 12'h0_0_0,
  parameter   [11:0] CLM3_COL3 = 12'h0_0_0,
  // Other color values.
  parameter   [11:0] BGND_NORM = 12'hf_f_f,
  parameter   [11:0] BGND_TEST = 12'h8_8_8,
  parameter   [11:0] BGND_DARK = 12'h0_0_0
  )

  (
  input  wire  [7:0] linebuf_data,
  input  wire        linebuf_msk,
  input  wire  [2:0] clut_mode,
  input  wire        enable,
  input  wire        clk,
  output reg   [3:0] red,
  output reg   [3:0] grn,
  output reg   [3:0] blu
  );

  //******************************************************************//
  // Implement color look-up scheme.  This is just a simple hard-code //
  // for what might otherwise be a programmable look-up-table.        //
  //******************************************************************//

  always @(posedge clk)
  begin
    case (clut_mode)
      0: begin
           // This will be 2-bit indexed color based on data[1:0].
           case (linebuf_data[1:0])
             0 : {red, grn, blu} <= enable ? CLM0_COL0 : BGND_NORM;
             1 : {red, grn, blu} <= enable ? CLM0_COL1 : BGND_NORM;
             2 : {red, grn, blu} <= enable ? CLM0_COL2 : BGND_NORM;
             3 : {red, grn, blu} <= enable ? CLM0_COL3 : BGND_NORM;
           endcase
         end
      1: begin
           // This will be 2-bit indexed color based on data[3:2].
           case (linebuf_data[3:2])
             0 : {red, grn, blu} <= enable ? CLM1_COL0 : BGND_NORM;
             1 : {red, grn, blu} <= enable ? CLM1_COL1 : BGND_NORM;
             2 : {red, grn, blu} <= enable ? CLM1_COL2 : BGND_NORM;
             3 : {red, grn, blu} <= enable ? CLM1_COL3 : BGND_NORM;
           endcase
         end
      2: begin
           // This will be 2-bit indexed color based on data[5:4].
           case (linebuf_data[5:4])
             0 : {red, grn, blu} <= enable ? CLM2_COL0 : BGND_NORM;
             1 : {red, grn, blu} <= enable ? CLM2_COL1 : BGND_NORM;
             2 : {red, grn, blu} <= enable ? CLM2_COL2 : BGND_NORM;
             3 : {red, grn, blu} <= enable ? CLM2_COL3 : BGND_NORM;
           endcase
         end
      3: begin
           // This will be 2-bit indexed color based on data[7:6].
           // In this mode, image alias is prohibited.
           case (linebuf_data[7:6])
             0 : {red, grn, blu} <= (enable && !linebuf_msk) ? CLM3_COL0 : BGND_NORM;
             1 : {red, grn, blu} <= (enable && !linebuf_msk) ? CLM3_COL1 : BGND_NORM;
             2 : {red, grn, blu} <= (enable && !linebuf_msk) ? CLM3_COL2 : BGND_NORM;
             3 : {red, grn, blu} <= (enable && !linebuf_msk) ? CLM3_COL3 : BGND_NORM;
           endcase
         end
      default: begin
           // The test pattern is a grid and color-coded by quadrant
           // of the coordinate.  Q0 = W, Q1 = R, Q2 = G, Q3 = B.
           case (linebuf_data[1:0])
             0: begin
                  red <= enable ? {4{linebuf_data[2]}} : BGND_TEST[11: 8];
                  grn <= enable ? {4{linebuf_data[2]}} : BGND_TEST[ 7: 4];
                  blu <= enable ? {4{linebuf_data[2]}} : BGND_TEST[ 3: 0];
                end
             1: begin
                  red <= enable ? {4{linebuf_data[2]}} : BGND_TEST[11: 8];
                  grn <= enable ? BGND_DARK[ 7: 4] : BGND_TEST[ 7: 4];
                  blu <= enable ? BGND_DARK[ 7: 4] : BGND_TEST[ 3: 0];
                end
             2: begin
                  red <= enable ? BGND_DARK[11: 8] : BGND_TEST[11: 8];
                  grn <= enable ? {4{linebuf_data[2]}} : BGND_TEST[ 7: 4];
                  blu <= enable ? BGND_DARK[ 3: 0] : BGND_TEST[ 3: 0];
                end
             3: begin
                  red <= enable ? BGND_DARK[11: 8] : BGND_TEST[11: 8];
                  grn <= enable ? BGND_DARK[ 7: 4] : BGND_TEST[ 7: 4];
                  blu <= enable ? {4{linebuf_data[2]}} : BGND_TEST[ 3: 0];
                end
           endcase
         end
    endcase
  end

  //******************************************************************//
  //                                                                  //
  //******************************************************************//

endmodule