//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2006 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /   Vendor:        Xilinx
// \   \   \/    Version:       1.0.0
//  \   \        Filename:      keyboard.v
//  /   /        Date Created:  December 25, 2006
// /___/   /\    Last Modified: December 25, 2006
// \   \  /  \
//  \___\/\___\
//
// Devices:   Spartan-3 Generation FPGA
// Purpose:   Simple keyboard interface
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

module keyboard
  (
  input  wire        ps2_clk,
  input  wire        ps2_dat,
  input  wire        rd_kbrd,
  output wire  [7:0] rd_data,
  output wire        data_present,
  input  wire        reset,
  input  wire        clk
  );

  //******************************************************************//
  // Synchronize and debounce input signals.                          //
  //******************************************************************//

  wire ps2_data, ps2_edge;
  reg data_d1, data_d2;
  reg edge_d1, edge_d2;
  reg [3:0] edge_ctr;
  reg edge_det;

  always @(posedge clk)
  begin
    if (reset)
    begin
      data_d1 <= 1'b1;
      data_d2 <= 1'b1;
      edge_d1 <= 1'b1;
      edge_d2 <= 1'b1;
      edge_ctr <= 4'h0;
      edge_det <= 1'b0;
    end
    else
    begin
      data_d1 <= ps2_dat;
      data_d2 <= data_d1;
      edge_d1 <= ps2_clk;
      edge_d2 <= edge_d1;
      if (edge_d2)
      begin
        edge_ctr <= 4'h0;
        edge_det <= 1'b0;
      end
      else
      begin
        if (edge_ctr != 4'hf) edge_ctr <= edge_ctr + 4'h1;
        edge_det <= (edge_ctr == 4'he); 
      end
    end
  end

  assign ps2_edge = edge_det;
  assign ps2_data = data_d2;

  //******************************************************************//
  // Implement shifter.                                               //
  //******************************************************************//

  // Implement an 11-bit shift register that has
  // a single shift control and data input.  This
  // shift register also has two outputs; one is
  // the 8-bit received data and the other is a
  // status signal that indicates the start, stop,
  // and parity check out okay.

  reg shift;
  wire okay;
  reg [10:0] shifter;
  wire [7:0] data_in;

  always @(posedge clk) if (shift) shifter <= {ps2_data, shifter[10:1]};
  assign okay = !shifter[0] && shifter[10] && ^shifter[9:1];
  assign data_in = shifter[8:1];

  //******************************************************************//
  // Implement time-out counter.                                      //
  //******************************************************************//

  // Implement a time-out counter.  Each time a bit
  // is shifted, start counting.  After 100 usec or
  // so, signal that the timer has expired.  The
  // expired signal is generated with combinational
  // logic so that in the next cycle after a shift,
  // the expired signal will be deasserted.  This
  // ensures the FSM can start looking at expired
  // immediately after a shift state.  The idea is
  // that the FSM, while waiting for the next bit,
  // can abort if this timer expires.  Hopefully
  // this will handle cases of surprise keyboard
  // removal during a transmission, and cases of
  // controller resets during transmission.

  wire expired;
  reg [11:0] timeout_ctr;

  always @(posedge clk)
  begin
    if (reset) timeout_ctr <= 12'h000;
    else if (shift) timeout_ctr <= 12'h000;
    else if (timeout_ctr != 12'hfff) timeout_ctr <= timeout_ctr + 12'h001;
  end

  assign expired = (timeout_ctr == 12'hffe);

  //******************************************************************//
  // Instantiate the fifo.  This acts as a 16-deep scan code buffer.  //
  //******************************************************************//

  wire write;

  bbfifo_16x8 my_fifo (
    .data_in(data_in),
    .data_out(rd_data),
    .reset(reset),
    .write(write),
    .read(rd_kbrd),
    .full(),
    .half_full(),
    .data_present(data_present),
    .clk(clk));

  //******************************************************************//
  // This might not be the best solution to the datapath controller,  //
  // but it works.  A more elegant implementation would be a counter. //
  //******************************************************************//

  parameter [4:0] IDLE = 0;
  parameter [4:0] SH00 = 1;
  parameter [4:0] WA00 = 2;
  parameter [4:0] SH01 = 3;
  parameter [4:0] WA01 = 4;
  parameter [4:0] SH02 = 5;
  parameter [4:0] WA02 = 6;
  parameter [4:0] SH03 = 7;
  parameter [4:0] WA03 = 8;
  parameter [4:0] SH04 = 9;
  parameter [4:0] WA04 = 10;
  parameter [4:0] SH05 = 11;
  parameter [4:0] WA05 = 12;
  parameter [4:0] SH06 = 13;
  parameter [4:0] WA06 = 14;
  parameter [4:0] SH07 = 15;
  parameter [4:0] WA07 = 16;
  parameter [4:0] SH08 = 17;
  parameter [4:0] WA08 = 18;
  parameter [4:0] SH09 = 19;
  parameter [4:0] WA09 = 20;
  parameter [4:0] SH10 = 21;
  parameter [4:0] DOKY = 22;
  parameter [4:0] FIFO = 23;

  reg [4:0] state;

  always @(posedge clk)
  begin
    if (reset) state <= IDLE;
    else
    begin
      case (state)
        IDLE: state <= ps2_edge ? SH00 : IDLE;
        SH00: state <= WA00;
        WA00: state <= ps2_edge ? SH01 : (expired ? IDLE : WA00);
        SH01: state <= WA01;
        WA01: state <= ps2_edge ? SH02 : (expired ? IDLE : WA01);
        SH02: state <= WA02;
        WA02: state <= ps2_edge ? SH03 : (expired ? IDLE : WA02);
        SH03: state <= WA03;
        WA03: state <= ps2_edge ? SH04 : (expired ? IDLE : WA03);
        SH04: state <= WA04;
        WA04: state <= ps2_edge ? SH05 : (expired ? IDLE : WA04);
        SH05: state <= WA05;
        WA05: state <= ps2_edge ? SH06 : (expired ? IDLE : WA05);
        SH06: state <= WA06;
        WA06: state <= ps2_edge ? SH07 : (expired ? IDLE : WA06);
        SH07: state <= WA07;
        WA07: state <= ps2_edge ? SH08 : (expired ? IDLE : WA07);
        SH08: state <= WA08;
        WA08: state <= ps2_edge ? SH09 : (expired ? IDLE : WA08);
        SH09: state <= WA09;
        WA09: state <= ps2_edge ? SH10 : (expired ? IDLE : WA09);
        SH10: state <= DOKY;
        DOKY: state <= okay ? FIFO : IDLE;
        FIFO: state <= IDLE;
        default: state <= IDLE;
      endcase
    end
  end

  always @*
  begin
    case (state)
      SH00: shift = 1'b1;
      SH01: shift = 1'b1;
      SH02: shift = 1'b1;
      SH03: shift = 1'b1;
      SH04: shift = 1'b1;
      SH05: shift = 1'b1;
      SH06: shift = 1'b1;
      SH07: shift = 1'b1;
      SH08: shift = 1'b1;
      SH09: shift = 1'b1;
      SH10: shift = 1'b1;
      default: shift = 1'b0;
    endcase
  end

  assign write = (state == FIFO);

  //******************************************************************//
  //                                                                  //
  //******************************************************************//

endmodule