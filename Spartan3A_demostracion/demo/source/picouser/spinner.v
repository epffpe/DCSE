//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2006 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /   Vendor:        Xilinx
// \   \   \/    Version:       1.0.0
//  \   \        Filename:      spinner.v
//  /   /        Date Created:  December 25, 2006
// /___/   /\    Last Modified: December 25, 2006
// \   \  /  \
//  \___\/\___\
//
// Devices:   Spartan-3 Generation FPGA
// Purpose:   Rotary knob decoder
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

module spinner
  (
  input  wire        sync_rot_a,
  input  wire        sync_rot_b,
  input  wire        clk,
  output reg         event_rot_l,
  output reg         event_rot_r 
  );

  //******************************************************************//
  // Implement rotary knob processing (borrowed from KC/PA design).   //
  //******************************************************************//

  reg                rotary_q1;
  reg                rotary_q2;
  reg                rotary_q1_dly;
  reg                rotary_q2_dly;

  always @(posedge clk)
  begin : filter
    case ({sync_rot_b, sync_rot_a})
      0: rotary_q1 <= 1'b0;
      1: rotary_q2 <= 1'b0;
      2: rotary_q2 <= 1'b1;
      3: rotary_q1 <= 1'b1;
    endcase
    rotary_q1_dly <= rotary_q1;
    rotary_q2_dly <= rotary_q2;
    event_rot_l <=  rotary_q2_dly && !rotary_q1_dly && rotary_q1;
    event_rot_r <= !rotary_q2_dly && !rotary_q1_dly && rotary_q1;
  end

  //******************************************************************//
  //                                                                  //
  //******************************************************************//

endmodule