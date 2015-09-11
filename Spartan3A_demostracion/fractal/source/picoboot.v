//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2006 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /   Vendor:        Xilinx
// \   \   \/    Version:       1.0.0
//  \   \        Filename:      picoboot.v
//  /   /        Date Created:  December 25, 2006
// /___/   /\    Last Modified: December 25, 2006
// \   \  /  \
//  \___\/\___\
//
// Devices:   Spartan-3 Generation FPGA
// Purpose:   MultiBoot rebooter module
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

module picoboot
  (
  input  wire [31:0] internal_addr,
  input  wire  [2:0] internal_mode,
  input  wire  [2:0] internal_vsel,
  input  wire        internal_use,
  input  wire        reboot,
  input  wire        clk
  );

  //******************************************************************//
  // Instantiate the ICAP primitive.                                  //
  //******************************************************************//

  wire    [7:0] data;
  wire          write;
  wire          ce;

  ICAP_SPARTAN3A icap_inst (
    .I(data),
    .O(),
    .WRITE(write),
    .BUSY(),
    .CLK(clk),
    .CE(ce));

  //******************************************************************//
  // Simple write-only FSM.                                           //
  //******************************************************************//

  parameter [4:0] DONE = 21;

  reg     [4:0] state;

  always @(posedge clk)
  begin
    if (state == 0) state <= reboot ? 1 : 0;
    else if (state == DONE) state <= state;
    else state <= state + 1;
  end

  //******************************************************************//
  // Control ICAP based on FSM state.                                 //
  //******************************************************************//

  reg           icap_ce;
  reg     [7:0] icap_data;
  wire    [7:0] new_mode_reg;

  assign new_mode_reg = {1'b0, internal_use, internal_mode, internal_vsel};

  always @*
  begin
    case (state)
       1: {icap_ce, icap_data} = {1'b0, 8'b1010_1010};         // sync H
       2: {icap_ce, icap_data} = {1'b0, 8'b1001_1001};         // sync L
       3: {icap_ce, icap_data} = {1'b0, 8'b0011_0010};         // t1w gen1 H
       4: {icap_ce, icap_data} = {1'b0, 8'b0110_0001};         // t1w gen1 L
       5: {icap_ce, icap_data} = {1'b0, internal_addr[15: 8]}; // user addr
       6: {icap_ce, icap_data} = {1'b0, internal_addr[ 7: 0]}; // user addr
       7: {icap_ce, icap_data} = {1'b0, 8'b0011_0010};         // t1w gen2 H
       8: {icap_ce, icap_data} = {1'b0, 8'b1000_0001};         // t1w gen2 L
       9: {icap_ce, icap_data} = {1'b0, internal_addr[31:24]}; // user addr
      10: {icap_ce, icap_data} = {1'b0, internal_addr[23:16]}; // user addr
      11: {icap_ce, icap_data} = {1'b0, 8'b0011_0010};         // t1w mode H
      12: {icap_ce, icap_data} = {1'b0, 8'b1010_0001};         // t1w mode L
      13: {icap_ce, icap_data} = {1'b0, 8'b0000_0000};         // reserved
      14: {icap_ce, icap_data} = {1'b0, new_mode_reg};         // user mode
      15: {icap_ce, icap_data} = {1'b0, 8'b0011_0000};         // t1w cmd H
      16: {icap_ce, icap_data} = {1'b0, 8'b1010_0001};         // t1w cmd L
      17: {icap_ce, icap_data} = {1'b0, 8'b0000_0000};         // reboot H
      18: {icap_ce, icap_data} = {1'b0, 8'b0000_1110};         // reboot L
      19: {icap_ce, icap_data} = {1'b0, 8'b0010_0000};         // noop H
      20: {icap_ce, icap_data} = {1'b0, 8'b0000_0000};         // noop L
      default: {icap_ce, icap_data} = {1'b1, 8'b0000_0000};    // idle
    endcase
  end

  assign ce = icap_ce; // active low
  assign data[0] = icap_data[7]; // swizzled
  assign data[1] = icap_data[6]; // swizzled
  assign data[2] = icap_data[5]; // swizzled
  assign data[3] = icap_data[4]; // swizzled
  assign data[4] = icap_data[3]; // swizzled
  assign data[5] = icap_data[2]; // swizzled
  assign data[6] = icap_data[1]; // swizzled
  assign data[7] = icap_data[0]; // swizzled
  assign write = 1'b0; // active low

  //******************************************************************//
  //                                                                  //
  //******************************************************************//

endmodule
