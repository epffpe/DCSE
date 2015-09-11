//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2006 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /   Vendor:        Xilinx
// \   \   \/    Version:       1.0.0
//  \   \        Filename:      pol2rect.v
//  /   /        Date Created:  December 25, 2006
// /___/   /\    Last Modified: December 25, 2006
// \   \  /  \
//  \___\/\___\
//
// Devices:   Spartan-3 Generation FPGA
// Purpose:   Convert radian angle and step to rectangular deltas
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

module pol2rect
  (
  input  wire  [7:0] angle,
  input  wire  [7:0] step,
  input  wire        clk,

  output wire [15:0] delta_x,
  output wire [15:0] delta_y
  );

  //******************************************************************//
  // Convert angle in 8.0 unsigned format to sin and cos.  The angle  //
  // is the angle by which the coordinate system is rotated counter   //
  // clockwise (e.g. an angle of 64 generates a coordinate rotate by  //
  // 45 degress, which is in quadrant 0).  When the coordinate system //
  // is rotated counter clock wise, the re-sampled data will move in  //
  // the opposite direction.  That is, clockwise.                     //
  //******************************************************************//

  wire    [8:0] sin;
  wire    [8:0] cos;
  wire   [17:0] sin_se;
  wire   [17:0] cos_se;

  angle_lut angle_inst (.THETA(angle),.SINE(sin),.COSINE(cos),.CLK(clk));

  assign sin_se = {{9{sin[8]}},sin};
  assign cos_se = {{9{cos[8]}},cos};

  //******************************************************************//
  // Scale sin and cos by step in 4.4 unsigned format.  Note that the //
  // step size is the inverse of scale (e.g. a step of 2 generates a  //
  // scale of 0.5)                                                    //
  //******************************************************************//

  wire   [17:0] step_se;

  assign step_se = {10'b0000000000,step};

  wire   [35:0] scaled_sin;
  wire   [35:0] scaled_cos;

  MULT18X18 dy_m (.A(sin_se),.B(step_se),.P(scaled_sin));
  MULT18X18 dx_m (.A(cos_se),.B(step_se),.P(scaled_cos));

  assign delta_x = scaled_cos[18:3]; // 8.8 signed, truncated values
  assign delta_y = scaled_sin[18:3]; // 8.8 signed, truncated values

  //******************************************************************//
  //                                                                  //
  //******************************************************************//

endmodule