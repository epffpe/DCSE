//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2006 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /   Vendor:        Xilinx
// \   \   \/    Version:       1.0.0
//  \   \        Filename:      picouser.v
//  /   /        Date Created:  December 25, 2006
// /___/   /\    Last Modified: December 25, 2006
// \   \  /  \
//  \___\/\___\
//
// Devices:   Spartan-3 Generation FPGA
// Purpose:   Switch, button, and rotary knob
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

module picouser
  (
  input  wire        BTN_EAST,
  input  wire        BTN_NORTH,
  input  wire        BTN_SOUTH,
  input  wire        BTN_WEST,

  input  wire  [3:0] SW,

  input  wire        ROT_A,
  input  wire        ROT_B,
  input  wire        ROT_CENTER,

  input  wire        rot_clr,
  input  wire        clk,

  output wire  [3:0] btn_out,
  output wire  [3:0] sws_out,
  output reg   [3:0] rot_out
  );

  //******************************************************************//
  // Let them eat synchronizer!                                       //
  //******************************************************************//

  synchro #(.INITIALIZE("LOGIC0"))
  synchro_sws_3 (.async(SW[3]),.sync(sws_out[3]),.clk(clk));

  synchro #(.INITIALIZE("LOGIC0"))
  synchro_sws_2 (.async(SW[2]),.sync(sws_out[2]),.clk(clk));

  synchro #(.INITIALIZE("LOGIC0"))
  synchro_sws_1 (.async(SW[1]),.sync(sws_out[1]),.clk(clk));

  synchro #(.INITIALIZE("LOGIC0"))
  synchro_sws_0 (.async(SW[0]),.sync(sws_out[0]),.clk(clk));

  //******************************************************************//
  // Have another piece!                                              //
  //******************************************************************//

  synchro #(.INITIALIZE("LOGIC0"))
  synchro_btn_n (.async(BTN_NORTH),.sync(btn_out[3]),.clk(clk));

  synchro #(.INITIALIZE("LOGIC0"))
  synchro_btn_s (.async(BTN_EAST ),.sync(btn_out[2]),.clk(clk));

  synchro #(.INITIALIZE("LOGIC0"))
  synchro_btn_e (.async(BTN_SOUTH),.sync(btn_out[1]),.clk(clk));

  synchro #(.INITIALIZE("LOGIC0"))
  synchro_btn_w (.async(BTN_WEST ),.sync(btn_out[0]),.clk(clk));

  //******************************************************************//
  // This is making my head spin!                                     //
  //******************************************************************//

  wire        sync_rot_c;
  synchro #(.INITIALIZE("LOGIC0"))
  synchro_rot_c (.async(ROT_CENTER),.sync(sync_rot_c),.clk(clk));

  wire        sync_rot_b;
  synchro #(.INITIALIZE("LOGIC1"))
  synchro_rot_b (.async(ROT_B),.sync(sync_rot_b),.clk(clk));

  wire        sync_rot_a;
  synchro #(.INITIALIZE("LOGIC1"))
  synchro_rot_a (.async(ROT_A),.sync(sync_rot_a),.clk(clk));

  //******************************************************************//
  // Implement rotary knob processing (borrowed from KC/PA design).   //
  //******************************************************************//

  wire        event_rot_c_on;
  wire        event_rot_c_off;
  wire        event_rot_l_one;
  wire        event_rot_r_one;

  spinner spinner_inst (
    .sync_rot_a(sync_rot_a),
    .sync_rot_b(sync_rot_b),
    .event_rot_l(event_rot_l_one),
    .event_rot_r(event_rot_r_one),
    .clk(clk));

  debnce debnce_rot_c (
    .sync(sync_rot_c),
    .event_on(event_rot_c_on),
    .event_off(event_rot_c_off),
    .clk(clk));

  always @(posedge clk)
  begin : status_log
    if (event_rot_c_off) rot_out[3] <= 1'b1;
    else if (rot_clr) rot_out[3] <= 1'b0;
    if (event_rot_c_on) rot_out[2] <= 1'b1;
    else if (rot_clr) rot_out[2] <= 1'b0;
    if (event_rot_l_one) rot_out[1] <= 1'b1;
    else if (rot_clr) rot_out[1] <= 1'b0;
    if (event_rot_r_one) rot_out[0] <= 1'b1;
    else if (rot_clr) rot_out[0] <= 1'b0;
  end

  //******************************************************************//
  //                                                                  //
  //******************************************************************//

endmodule