//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2006 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /   Vendor:        Xilinx
// \   \   \/    Version:       1.0.0
//  \   \        Filename:      regfile.v
//  /   /        Date Created:  December 25, 2006
// /___/   /\    Last Modified: December 25, 2006
// \   \  /  \
//  \___\/\___\
//
// Devices:   Spartan-3 Generation FPGA
// Purpose:   Register file for control of picotext
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

module regfile

  #(
  parameter          PT_IS_WRITABLE = "TRUE",
  parameter          PT_IS_READABLE = "TRUE",
  parameter          PT_HAS_AUTOINC = "TRUE",
  parameter   [15:0] INITIAL_MASTER_CTRL = 16'h0000,
  parameter   [10:0] INITIAL_MATCH_VAL = 11'd0,
  parameter    [7:0] INITIAL_VIEW_X_APOS = 8'h00,
  parameter    [7:0] INITIAL_VIEW_Y_APOS = 8'h00,
  parameter    [7:0] INITIAL_VIEW_PARAMS = 8'h00,
  parameter          VIEW_EQUATION_FORM = "ORIGINAL_2D",

  parameter          VP_IS_WRITABLE = "TRUE",
  parameter          VP_IS_READABLE = "TRUE",
  parameter    [7:0] INITIAL_X_ORIG = 8'h00,
  parameter    [7:0] INITIAL_X_SIZE = 8'h00,
  parameter    [7:0] INITIAL_Y_ORIG = 8'h00,
  parameter    [7:0] INITIAL_Y_SIZE = 8'h00,
  parameter   [15:0] INITIAL_CPTR = 16'h0000,
  parameter   [15:0] INITIAL_FPTR = 16'h0000,

  parameter          TC_IS_WRITABLE = "TRUE",
  parameter          TC_IS_READABLE = "TRUE",
  parameter   [10:0] INITIAL_HSBLNK = 11'd0,
  parameter   [10:0] INITIAL_HSSYNC = 11'd0,
  parameter   [10:0] INITIAL_HESYNC = 11'd0,
  parameter   [10:0] INITIAL_HEBLNK = 11'd0,
  parameter   [10:0] INITIAL_VSBLNK = 11'd0,
  parameter   [10:0] INITIAL_VSSYNC = 11'd0,
  parameter   [10:0] INITIAL_VESYNC = 11'd0,
  parameter   [10:0] INITIAL_VEBLNK = 11'd0
  )

  (
  output reg   [7:0] in_port,

  input  wire  [4:0] port_id,
  input  wire  [7:0] out_port,
  input  wire        write_strobe,
  input  wire        read_strobe,
  input  wire        select,
  input  wire        reset,
  input  wire        clk,

  output reg  [15:0] master_ctrl,
  input  wire        pm_intr_set,
  input  wire        vb_intr_set,
  input  wire        hb_intr_set,
  output reg  [10:0] match_val,
  input  wire [10:0] hcount,
  input  wire [10:0] vcount,

  output reg   [7:0] view_x_apos,
  output reg   [7:0] view_y_apos,
  output reg   [7:0] view_access_o,
  input  wire  [7:0] view_access_i,
  output reg         view_access_w,
  output reg   [7:0] view_params,

  output reg   [7:0] view_x_orig,
  output reg   [7:0] view_x_size,
  output reg   [7:0] view_y_orig,
  output reg   [7:0] view_y_size,
  output reg  [15:0] view_cptr,
  output reg  [15:0] view_fptr,

  output reg  [10:0] tc_hsblnk,
  output reg  [10:0] tc_hssync,
  output reg  [10:0] tc_hesync,
  output reg  [10:0] tc_heblnk,
  output reg  [10:0] tc_vsblnk,
  output reg  [10:0] tc_vssync,
  output reg  [10:0] tc_vesync,
  output reg  [10:0] tc_veblnk
  );

  //******************************************************************//
  // master_ctrl_l 8-bit master control register lo-byte              //
  //               master_ctrl[7]  = disable display                  //
  //               master_ctrl[6]  = vs polarity active low           //
  //               master_ctrl[5]  = hs polarity active low           //
  //               master_ctrl[4]  = beam pos on match_val reads      //
  //               master_ctrl[3]  = beam pos read select (0=H, 1=V)  //
  //               master_ctrl[2]  = red (background)                 //
  //               master_ctrl[1]  = grn (background)                 //
  //               master_ctrl[0]  = blu (background)                 //
  // master_ctrl_h 8-bit master control register hi-byte              //
  //               master_ctrl[15] = enable auto increment            //
  //               master_ctrl[14] = value match select (0=H, 1=V)    //
  //               master_ctrl[13] = enable value match intr          //
  //               master_ctrl[12] = enable vblank intr               //
  //               master_ctrl[11] = enable hblank intr               //
  //               master_ctrl[10] = value match intr pending (rwc)   //
  //               master_ctrl[9]  = vblank intr pending (rwc)        //
  //               master_ctrl[8]  = hblank intr pending (rwc)        //
  // match_val_l   8-bit interrupt timing match value lo-byte         //
  // match_val_h   3-bit interrupt timing match value hi-byte         //
  // view_x_apos   8-bit viewport access x-position, in characters    //
  // view_y_apos   8-bit viewport access y-position, in characters    //
  // view_access   8-bit viewport data port                           //
  // view_params   8-bit viewport display parameters                  //
  //               view_params[7] = flip all character y              //
  //               view_params[6] = flip all character x              //
  //               view_params[5] = red (char color 1)                //
  //               view_params[4] = grn (char color 1)                //
  //               view_params[3] = blu (char color 1)                //
  //               view_params[2] = red (char color 0)                //
  //               view_params[1] = grn (char color 0)                //
  //               view_params[0] = blu (char color 0)                //
  //                                                                  //
  // view_x_orig   8-bit viewport x-origin, in characters             //
  // view_x_size   8-bit viewport x-size, in (characters - 1)         //
  // view_y_orig   8-bit viewport y-origin, in characters             //
  // view_y_size   8-bit viewport y-size, in (characters - 1)         //
  // view_cptr_l   8-bit viewport ptr to char data lo-byte            //
  // view_cptr_h   8-bit viewport ptr to char data hi-byte            //
  // view_fptr_l   8-bit viewport ptr to font data lo-byte            //
  // view_fptr_h   8-bit viewport ptr to font data hi-byte            //
  //                                                                  //
  // tc_hsblnk_l   8-bit timing control hsblnk lo-byte (pixels)       //
  // tc_hsblnk_h   3-bit timing control hsblnk hi-byte (pixels)       //
  // tc_hssync_l   8-bit timing control hssync lo-byte (pixels)       //
  // tc_hssync_h   3-bit timing control hssync hi-byte (pixels)       //
  // tc_hesync_l   8-bit timing control hesync lo-byte (pixels)       //
  // tc_hesync_h   3-bit timing control hesync hi-byte (pixels)       //
  // tc_heblnk_l   8-bit timing control heblnk lo-byte (pixels)       //
  // tc_heblnk_h   3-bit timing control heblnk hi-byte (pixels)       //
  // tc_vsblnk_l   8-bit timing control vsblnk lo-byte (lines)        //
  // tc_vsblnk_h   3-bit timing control vsblnk hi-byte (lines)        //
  // tc_vssync_l   8-bit timing control vssync lo-byte (lines)        //
  // tc_vssync_h   3-bit timing control vssync hi-byte (lines)        //
  // tc_vesync_l   8-bit timing control vesync lo-byte (lines)        //
  // tc_vesync_h   3-bit timing control vesync hi-byte (lines)        //
  // tc_veblnk_l   8-bit timing control veblnk lo-byte (lines)        //
  // tc_veblnk_h   3-bit timing control veblnk hi-byte (lines)        //
  //******************************************************************//

  reg   [7:0] pt_read;
  reg   [7:0] vp_read;
  reg   [7:0] tc_read;

  //******************************************************************//
  // This logic implements the auto increment "next state" for the    //
  // view_x_apos and view_y_apos registers.  If auto increment is on, //
  // these registers will advance every time the buffer is accessed.  //
  //******************************************************************//

  reg         autoinc_rd;
  reg         autoinc_wr;
  wire  [7:0] next_x_apos;
  wire  [7:0] next_y_apos;

  generate
    if (PT_HAS_AUTOINC == "TRUE")
    begin : autoinc_enable
      always @* autoinc_rd = read_strobe && master_ctrl[15] &&
        select && (port_id == 5'b00110);
      always @(posedge clk) autoinc_wr <= write_strobe &&
        master_ctrl[15] && select && (port_id == 5'b00110);
    end
    else
    begin : autoinc_disable
      initial autoinc_rd <= 1'b0;
      initial autoinc_wr <= 1'b0;
    end
  endgenerate

  generate
    if ((VIEW_EQUATION_FORM == "ALT_EXPR_2D") ||
        (VIEW_EQUATION_FORM == "ORIGINAL_2D"))
    begin : pt_autoinc_2d
      // this will auto-correct when out of bounds
      // use equality if auto-correct is not desired
      assign next_x_apos =
        (view_x_apos >= view_x_size) ?
        (8'h00) : (view_x_apos + 8'h01);
      assign next_y_apos =
        (view_x_apos >= view_x_size) ?
        ((view_y_apos >= view_y_size) ?
        (8'h00) : (view_y_apos + 8'h01)) :
        view_y_apos ;
    end
    else if (VIEW_EQUATION_FORM == "LINEAR")
    begin : pt_autoinc_1d
      assign {next_y_apos,next_x_apos} =
        {view_y_apos,view_x_apos} + 16'h0001;
    end
    else
    begin : pt_autoinc_incorrect
      assign next_x_apos = 8'h00;
      assign next_y_apos = 8'h00;
    end
  endgenerate

  //******************************************************************//
  // Here, the "registers" are implemented.  If a particular bank of  //
  // registers is marked as not writable, registers are replaced with //
  // constant values.                                                 //
  //******************************************************************//

  generate
    if (PT_IS_WRITABLE == "TRUE")
    begin : pt_registers
      always @(posedge clk)
      begin
        view_access_o <= out_port[7:0];
        view_access_w <= write_strobe && select && (port_id == 5'b00110);
        if (reset)
        begin
          master_ctrl[10] <= INITIAL_MASTER_CTRL[10];
          master_ctrl[9]  <= INITIAL_MASTER_CTRL[9];
          master_ctrl[8]  <= INITIAL_MASTER_CTRL[8];
        end
        else
        begin
          if (write_strobe && select && out_port[2] && (port_id == 5'b00001))
            master_ctrl[10] <= 1'b0;
          else if (pm_intr_set) master_ctrl[10] <= 1'b1;
          if (write_strobe && select && out_port[1] && (port_id == 5'b00001))
            master_ctrl[9]  <= 1'b0;
          else if (vb_intr_set) master_ctrl[9]  <= 1'b1;
          if (write_strobe && select && out_port[0] && (port_id == 5'b00001))
            master_ctrl[8]  <= 1'b0;
          else if (hb_intr_set) master_ctrl[8]  <= 1'b1;
        end
        if (reset)
        begin
          master_ctrl[7:0] <= INITIAL_MASTER_CTRL[7:0];
          master_ctrl[15:11] <= INITIAL_MASTER_CTRL[15:11];
          match_val <= INITIAL_MATCH_VAL;
          view_params <= INITIAL_VIEW_PARAMS;
        end
        else if (write_strobe && select)
        begin
          case (port_id)
            5'b00000: master_ctrl[7:0] <= out_port[7:0];
            5'b00001: master_ctrl[15:11] <= out_port[7:3];
            5'b00010: match_val [7:0] <= out_port[7:0];
            5'b00011: match_val[10:8] <= out_port[2:0];
            5'b00111: view_params <= out_port[7:0];
          endcase
        end
        if (reset)
        begin
          view_x_apos <= INITIAL_VIEW_X_APOS;
          view_y_apos <= INITIAL_VIEW_Y_APOS;
        end
        else if (write_strobe && select)
        begin
          case (port_id)
            5'b00100: view_x_apos <= out_port[7:0];
            5'b00101: view_y_apos <= out_port[7:0];
          endcase
        end
        else if (autoinc_rd || autoinc_wr)
        begin
          view_x_apos <= next_x_apos;
          view_y_apos <= next_y_apos;
        end
      end
    end
    else
    begin : pt_constants
      initial
      begin
        view_access_o <= 8'h00;
        view_access_w <= 1'b0;
        master_ctrl <= INITIAL_MASTER_CTRL;
        match_val <= INITIAL_MATCH_VAL;
        view_x_apos <= INITIAL_VIEW_X_APOS;
        view_y_apos <= INITIAL_VIEW_Y_APOS;
        view_params <= INITIAL_VIEW_PARAMS;
      end
    end
  endgenerate

  generate
    if (VP_IS_WRITABLE == "TRUE")
    begin : vp_registers
      always @(posedge clk)
      begin
        if (reset)
        begin
          view_x_orig <= INITIAL_X_ORIG;
          view_x_size <= INITIAL_X_SIZE;
          view_y_orig <= INITIAL_Y_ORIG;
          view_y_size <= INITIAL_Y_SIZE;
          view_cptr <= INITIAL_CPTR;
          view_fptr <= INITIAL_FPTR;
        end
        else if (write_strobe && select)
        begin
          case (port_id)
            5'b01000: view_x_orig <= out_port[7:0];
            5'b01001: view_x_size <= out_port[7:0];
            5'b01010: view_y_orig <= out_port[7:0];
            5'b01011: view_y_size <= out_port[7:0];
            5'b01100: view_cptr [7:0] <= out_port[7:0];
            5'b01101: view_cptr[15:8] <= out_port[7:0];
            5'b01110: view_fptr [7:0] <= out_port[7:0];
            5'b01111: view_fptr[15:8] <= out_port[7:0];
          endcase
        end
      end
    end
    else
    begin : vp_constants
      initial
      begin
        view_x_orig <= INITIAL_X_ORIG;
        view_x_size <= INITIAL_X_SIZE;
        view_y_orig <= INITIAL_Y_ORIG;
        view_y_size <= INITIAL_Y_SIZE;
        view_cptr <= INITIAL_CPTR;
        view_fptr <= INITIAL_FPTR;
      end
    end
  endgenerate

  generate
    if (TC_IS_WRITABLE == "TRUE")
    begin : tc_registers
      always @(posedge clk)
      begin
        if (reset)
        begin
          tc_hsblnk <= INITIAL_HSBLNK;
          tc_hssync <= INITIAL_HSSYNC;
          tc_hesync <= INITIAL_HESYNC;
          tc_heblnk <= INITIAL_HEBLNK;
          tc_vsblnk <= INITIAL_VSBLNK;
          tc_vssync <= INITIAL_VSSYNC;
          tc_vesync <= INITIAL_VESYNC;
          tc_veblnk <= INITIAL_VEBLNK;
        end
        else if (write_strobe && select)
        begin
          case (port_id)
            5'b10000: tc_hsblnk [7:0] <= out_port[7:0];
            5'b10001: tc_hsblnk[10:8] <= out_port[2:0];
            5'b10010: tc_hssync [7:0] <= out_port[7:0];
            5'b10011: tc_hssync[10:8] <= out_port[2:0];
            5'b10100: tc_hesync [7:0] <= out_port[7:0];
            5'b10101: tc_hesync[10:8] <= out_port[2:0];
            5'b10110: tc_heblnk [7:0] <= out_port[7:0];
            5'b10111: tc_heblnk[10:8] <= out_port[2:0];
            5'b11000: tc_vsblnk [7:0] <= out_port[7:0];
            5'b11001: tc_vsblnk[10:8] <= out_port[2:0];
            5'b11010: tc_vssync [7:0] <= out_port[7:0];
            5'b11011: tc_vssync[10:8] <= out_port[2:0];
            5'b11100: tc_vesync [7:0] <= out_port[7:0];
            5'b11101: tc_vesync[10:8] <= out_port[2:0];
            5'b11110: tc_veblnk [7:0] <= out_port[7:0];
            5'b11111: tc_veblnk[10:8] <= out_port[2:0];
          endcase
        end
      end
    end
    else
    begin : tc_constants
      initial
      begin
        tc_hsblnk <= INITIAL_HSBLNK;
        tc_hssync <= INITIAL_HSSYNC;
        tc_hesync <= INITIAL_HESYNC;
        tc_heblnk <= INITIAL_HEBLNK;
        tc_vsblnk <= INITIAL_VSBLNK;
        tc_vssync <= INITIAL_VSSYNC;
        tc_vesync <= INITIAL_VESYNC;
        tc_veblnk <= INITIAL_VEBLNK;
      end
    end
  endgenerate

  //******************************************************************//
  // Here, the "registers" are multiplexed for the read port.  If a   //
  // particular bank of registers is marked as not readable, zero is  //
  // returned on reads.                                               //
  //******************************************************************//

  generate
    if (PT_IS_READABLE == "TRUE")
    begin : pt_readmux
      reg [7:0] pt_temp;
      always @(posedge clk)
      begin
        case (port_id[2:0])
          3'b000: pt_temp <= master_ctrl[7:0];
          3'b001: pt_temp <= master_ctrl[15:8];
          3'b010: begin
                    if (!master_ctrl[4])
                      pt_temp <= match_val [7:0];
                    else pt_temp <= master_ctrl[3] ?
                      vcount[7:0] : hcount[7:0];
                  end
          3'b011: begin
                    if (!master_ctrl[4])
                      pt_temp <= {5'b00000, match_val[10:8]};
                    else pt_temp <= master_ctrl[3] ?
                      {5'b00000, vcount[10:8]} :
                      {5'b00000, hcount[10:8]} ;
                  end
          3'b100: pt_temp <= view_x_apos;
          3'b101: pt_temp <= view_y_apos;
          3'b111: pt_temp <= view_params;
          default: pt_temp <= 8'h00;
        endcase
      end
      always @* pt_read = (port_id[2:0] == 3'b110) ? view_access_i : pt_temp;
    end
    else
    begin : pt_readless
      initial pt_read <= 8'h00;
    end
  endgenerate

  generate
    if (VP_IS_READABLE == "TRUE")
    begin : vp_readmux
      always @(posedge clk)
      begin
        case (port_id[2:0])
          3'b000: vp_read <= view_x_orig;
          3'b001: vp_read <= view_x_size;
          3'b010: vp_read <= view_y_orig;
          3'b011: vp_read <= view_y_size;
          3'b100: vp_read <= view_cptr [7:0];
          3'b101: vp_read <= view_cptr[15:8];
          3'b110: vp_read <= view_fptr [7:0];
          3'b111: vp_read <= view_fptr[15:8];
          default: vp_read <= 8'h00;
        endcase
      end
    end
    else
    begin : vp_readless
      initial vp_read <= 8'h00;
    end
  endgenerate

  generate
    if (TC_IS_READABLE == "TRUE")
    begin : tc_readmux
      always @(posedge clk)
      begin
        case (port_id[3:0])
          4'b0000: tc_read <= tc_hsblnk [7:0];
          4'b0001: tc_read <= {5'b00000, tc_hsblnk[10:8]};
          4'b0010: tc_read <= tc_hssync [7:0];
          4'b0011: tc_read <= {5'b00000, tc_hssync[10:8]};
          4'b0100: tc_read <= tc_hesync [7:0];
          4'b0101: tc_read <= {5'b00000, tc_hesync[10:8]};
          4'b0110: tc_read <= tc_heblnk [7:0];
          4'b0111: tc_read <= {5'b00000, tc_heblnk[10:8]};
          4'b1000: tc_read <= tc_vsblnk [7:0];
          4'b1001: tc_read <= {5'b00000, tc_vsblnk[10:8]};
          4'b1010: tc_read <= tc_vssync [7:0];
          4'b1011: tc_read <= {5'b00000, tc_vssync[10:8]};
          4'b1100: tc_read <= tc_vesync [7:0];
          4'b1101: tc_read <= {5'b00000, tc_vesync[10:8]};
          4'b1110: tc_read <= tc_veblnk [7:0];
          4'b1111: tc_read <= {5'b00000, tc_veblnk[10:8]};
          default: tc_read <= 8'h00;
        endcase
      end
    end
    else
    begin : tc_readless
      initial tc_read <= 8'h00;
    end
  endgenerate

  always @*
  begin
    case (port_id[4:3])
      2'b00: in_port = pt_read;
      2'b01: in_port = vp_read;
      default: in_port = tc_read;
    endcase
  end

  //******************************************************************//
  //                                                                  //
  //******************************************************************//

endmodule