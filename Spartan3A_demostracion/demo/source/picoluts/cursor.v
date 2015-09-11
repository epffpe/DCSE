//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2006 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /   Vendor:        Xilinx
// \   \   \/    Version:       1.0.0
//  \   \        Filename:      cursor.v
//  /   /        Date Created:  December 25, 2006
// /___/   /\    Last Modified: December 25, 2006
// \   \  /  \
//  \___\/\___\
//
// Devices:   Spartan-3 Generation FPGA
// Purpose:   Cursor data storage
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

module cursor
  (
  input  wire  [3:0] xpos,
  input  wire  [3:0] ypos,
  output reg   [3:0] data,
  input  wire        clk
  );

  //******************************************************************//
  // Behavioral RAM description.  At each x,y coordinate, the memory  //
  // contains a 4-bit data to select one of 16 values for the cursor. //
  //******************************************************************//

  reg  [63:0] scandata;

  always @*
  begin
    case (ypos)
      // The data is represented here as
      // it is intended to be displayed,
      // left to right, top to bottom.
      0:  scandata = 64'hfffffb8668afffff;
      1:  scandata = 64'hfffa54434446afff;
      2:  scandata = 64'hff932344332448ff;
      3:  scandata = 64'hf93224554311338f;
      4:  scandata = 64'hf43213332211023f;
      5:  scandata = 64'h9233111000681019;
      6:  scandata = 64'h63222211105a7114;
      7:  scandata = 64'h5433222111186123;
      8:  scandata = 64'h7643321112222244;
      9:  scandata = 64'h9754432123323356;
      10: scandata = 64'hca7654433444567a;
      11: scandata = 64'hfca876555557899f;
      12: scandata = 64'hfddca9877789bbbf;
      13: scandata = 64'hffddedcccccdcbff;
      14: scandata = 64'hfffdddeddddccfff;
      15: scandata = 64'hfffffddcccdfffff;
      default: scandata = 0;
    endcase
  end

  always @(posedge clk)
  begin
    case (xpos)
      // The higher index data needs to
      // be output at low xpos value.
      0:  data <= scandata[63:60];
      1:  data <= scandata[59:56];
      2:  data <= scandata[55:52];
      3:  data <= scandata[51:48];
      4:  data <= scandata[47:44];
      5:  data <= scandata[43:40];
      6:  data <= scandata[39:36];
      7:  data <= scandata[35:32];
      8:  data <= scandata[31:28];
      9:  data <= scandata[27:24];
      10: data <= scandata[23:20];
      11: data <= scandata[19:16];
      12: data <= scandata[15:12];
      13: data <= scandata[11: 8];
      14: data <= scandata[ 7: 4];
      15: data <= scandata[ 3: 0];
      default: data <= 0;
    endcase
  end

  //******************************************************************//
  //                                                                  //
  //******************************************************************//

endmodule