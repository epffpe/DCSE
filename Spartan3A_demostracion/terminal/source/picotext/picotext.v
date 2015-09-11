//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2006 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /   Vendor:        Xilinx
// \   \   \/    Version:       1.0.0
//  \   \        Filename:      picotext.v
//  /   /        Date Created:  December 25, 2006
// /___/   /\    Last Modified: December 25, 2006
// \   \  /  \
//  \___\/\___\
//
// Devices:   Spartan-3 Generation FPGA
// Purpose:   Top level for picotext character display
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

module picotext

  #(
  parameter          PT_IS_WRITABLE = "TRUE",
  parameter          PT_IS_READABLE = "TRUE",
  parameter          PT_HAS_AUTOINC = "TRUE",
  parameter          PT_USE_EXTBGND = "TRUE",
  parameter   [15:0] INITIAL_MASTER_CTRL = 16'h0000,
  parameter   [10:0] INITIAL_MATCH_VAL = 11'd0,
  parameter    [7:0] INITIAL_VIEW_X_APOS = 8'h00,
  parameter    [7:0] INITIAL_VIEW_Y_APOS = 8'h00,
  parameter    [7:0] INITIAL_VIEW_PARAMS = 8'h00,
  parameter          VIEW_EQUATION_FORM = "ORIGINAL_2D",
  parameter          CHAR_EQUATION_FORM = "ORIGINAL_2D",
  parameter          HB_INTERRUPTS = "TRUE",
  parameter          VB_INTERRUPTS = "TRUE",
  parameter          PM_INTERRUPTS = "TRUE",
  parameter          VP_IS_WRITABLE = "TRUE",
  parameter          VP_IS_READABLE = "TRUE",
  parameter    [7:0] INITIAL_X_ORIG = 8'h00,
  parameter    [7:0] INITIAL_X_SIZE = 8'h00,
  parameter    [7:0] INITIAL_Y_ORIG = 8'h00,
  parameter    [7:0] INITIAL_Y_SIZE = 8'h00,
  parameter   [15:0] INITIAL_CPTR = 16'h0000,
  parameter   [15:0] INITIAL_FPTR = 16'h0000,
  parameter          VIEW_CLIPPING = "TRUE",
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
  output wire  [3:0] r,
  output wire  [3:0] g,
  output wire  [3:0] b,
  output wire        hs,
  output wire        vs,
  output wire        de,

  output wire [10:0] bgnd_hcount,
  output wire        bgnd_hsync,
  output wire        bgnd_hblnk,
  output wire [10:0] bgnd_vcount,
  output wire        bgnd_vsync,
  output wire        bgnd_vblnk,
  input  wire  [3:0] bgnd_red,
  input  wire  [3:0] bgnd_grn,
  input  wire  [3:0] bgnd_blu,
  
  output wire  [7:0] in_port,
  output reg         interrupt,
  input  wire  [4:0] port_id,
  input  wire  [7:0] out_port,
  input  wire        write_strobe,
  input  wire        read_strobe,
  input  wire        select,
  input  wire        reset,
  input  wire        clk
  );

  //******************************************************************//
  // Instantiate the register file.  The outputs from this module are //
  // used to configure and control the video display.                 //
  //******************************************************************//

  wire [15:0] master_ctrl;
  wire        pm_intr_set;
  wire        vb_intr_set;
  wire        hb_intr_set;
  wire [10:0] match_val;
  wire [10:0] hcount;
  wire [10:0] vcount;
  wire  [7:0] view_x_apos;
  wire  [7:0] view_y_apos;
  wire  [7:0] view_access_o;
  wire  [7:0] view_access_i;
  wire        view_access_w;
  wire  [7:0] view_params;
  wire  [7:0] view_x_orig;
  wire  [7:0] view_x_size;
  wire  [7:0] view_y_orig;
  wire  [7:0] view_y_size;
  wire [15:0] view_cptr;
  wire [15:0] view_fptr;
  wire [10:0] tc_hsblnk;
  wire [10:0] tc_hssync;
  wire [10:0] tc_hesync;
  wire [10:0] tc_heblnk;
  wire [10:0] tc_vsblnk;
  wire [10:0] tc_vssync;
  wire [10:0] tc_vesync;
  wire [10:0] tc_veblnk;

  regfile #(
    .PT_IS_WRITABLE(PT_IS_WRITABLE),
    .PT_IS_READABLE(PT_IS_READABLE),
    .PT_HAS_AUTOINC(PT_HAS_AUTOINC),
    .INITIAL_MASTER_CTRL(INITIAL_MASTER_CTRL),
    .INITIAL_MATCH_VAL(INITIAL_MATCH_VAL),
    .INITIAL_VIEW_X_APOS(INITIAL_VIEW_X_APOS),
    .INITIAL_VIEW_Y_APOS(INITIAL_VIEW_Y_APOS),
    .INITIAL_VIEW_PARAMS(INITIAL_VIEW_PARAMS),
    .VIEW_EQUATION_FORM(VIEW_EQUATION_FORM),
    .VP_IS_WRITABLE(VP_IS_WRITABLE),
    .VP_IS_READABLE(VP_IS_READABLE),
    .INITIAL_X_ORIG(INITIAL_X_ORIG),
    .INITIAL_X_SIZE(INITIAL_X_SIZE),
    .INITIAL_Y_ORIG(INITIAL_Y_ORIG),
    .INITIAL_Y_SIZE(INITIAL_Y_SIZE),
    .INITIAL_CPTR(INITIAL_CPTR),
    .INITIAL_FPTR(INITIAL_FPTR),
    .TC_IS_WRITABLE(TC_IS_WRITABLE),
    .TC_IS_READABLE(TC_IS_READABLE),
    .INITIAL_HSBLNK(INITIAL_HSBLNK),
    .INITIAL_HSSYNC(INITIAL_HSSYNC),
    .INITIAL_HESYNC(INITIAL_HESYNC),
    .INITIAL_HEBLNK(INITIAL_HEBLNK),
    .INITIAL_VSBLNK(INITIAL_VSBLNK),
    .INITIAL_VSSYNC(INITIAL_VSSYNC),
    .INITIAL_VESYNC(INITIAL_VESYNC),
    .INITIAL_VEBLNK(INITIAL_VEBLNK))
  regfile_inst (
    .in_port(in_port),
    .port_id(port_id),
    .out_port(out_port),
    .write_strobe(write_strobe),
    .read_strobe(read_strobe),
    .select(select),
    .reset(reset),
    .clk(clk),
    .master_ctrl(master_ctrl),
    .pm_intr_set(pm_intr_set),
    .vb_intr_set(vb_intr_set),
    .hb_intr_set(hb_intr_set),
    .match_val(match_val),
    .hcount(hcount),
    .vcount(vcount),
    .view_x_apos(view_x_apos),
    .view_y_apos(view_y_apos),
    .view_access_o(view_access_o),
    .view_access_i(view_access_i),
    .view_access_w(view_access_w),
    .view_params(view_params),
    .view_x_orig(view_x_orig),
    .view_x_size(view_x_size),
    .view_y_orig(view_y_orig),
    .view_y_size(view_y_size),
    .view_cptr(view_cptr),
    .view_fptr(view_fptr),
    .tc_hsblnk(tc_hsblnk),
    .tc_hssync(tc_hssync),
    .tc_hesync(tc_hesync),
    .tc_heblnk(tc_heblnk),
    .tc_vsblnk(tc_vsblnk),
    .tc_vssync(tc_vssync),
    .tc_vesync(tc_vesync),
    .tc_veblnk(tc_veblnk));

  //******************************************************************//
  // Instantiate the timing controller.  This module takes display    //
  // timing information from the register file and generates beam     //
  // position counters as well as sync and blank signals.             //
  //******************************************************************//

  wire        hsync;
  wire        hblnk;
  wire        vsync;
  wire        vblnk;

  timing timing_inst (
    .tc_hsblnk(tc_hsblnk),
    .tc_hssync(tc_hssync),
    .tc_hesync(tc_hesync),
    .tc_heblnk(tc_heblnk),
    .hcount(hcount),
    .hsync(hsync),
    .hblnk(hblnk),
    .tc_vsblnk(tc_vsblnk),
    .tc_vssync(tc_vssync),
    .tc_vesync(tc_vesync),
    .tc_veblnk(tc_veblnk),
    .vcount(vcount),
    .vsync(vsync),
    .vblnk(vblnk),
    .restart(master_ctrl[7]),
    .clk(clk));

  assign bgnd_hcount = hcount;
  assign bgnd_hsync = hsync;
  assign bgnd_hblnk = hblnk;

  assign bgnd_vcount = vcount;
  assign bgnd_vsync = vsync;
  assign bgnd_vblnk = vblnk;

  //******************************************************************//
  // Instantiate the memory used for the display buffer.  This may be //
  // replaced with a buffer that is larger.  This illustrates the use //
  // of five dual-ported BlockRAM configured as 4Kx8 on both ports,   //
  // so only the low 14 bits of the address are used.                 //
  //******************************************************************//

  wire [15:0] gfx_addr;
  wire  [7:0] gfx_data;
  wire [15:0] view_access_a;

  buffer buffer_inst (
    .gfx_addr(gfx_addr[13:0]),
    .gfx_data(gfx_data),
    .view_access_a(view_access_a[13:0]),
    .view_access_i(view_access_i),
    .view_access_o(view_access_o),
    .view_access_w(view_access_w),
    .clk(clk));

  //******************************************************************//
  // Implement address generators.                                    //
  //                                                                  //
  // view access (twodim)                                             //
  //  = view_cptr + view_x_apos + (view_y_apos)*(view_x_size + 1)     //
  //  = view_cptr + view_x_apos + view_y_apos +                       //
  //    (view_x_size)*(view_y_apos)                                   //
  //                                                                  //
  // view access (linear)                                             //
  // = {view_y_apos,view_x_apos}                                      //
  //                                                                  //
  // char access                                                      //
  // = view_cptr + hcount[10:3] - view_x_orig +                       //
  //   (vcount[10:3] - view_y_orig)*(view_x_size + 1)                 //
  // = view_cptr + hcount[10:3] - view_x_orig + vcount[10:3] -        //
  //   view_y_orig + (view_x_size)*(vcount[10:3] - view_y_orig)       //
  //                                                                  //
  // font access                                                      //
  // = view_fptr + view_params[7] ?                                   //
  //   {gfx_data,~vcount[2:0]} : {gfx_data,vcount[2:0]}               //
  //******************************************************************//

  wire [15:0] char_access;
  wire [15:0] font_access;

  generate
    if (VIEW_EQUATION_FORM == "ORIGINAL_2D")
    begin : original_view_2d
      assign view_access_a =
        view_cptr + view_x_apos + (view_y_apos * (8'h01 + view_x_size));
    end
    else if (VIEW_EQUATION_FORM == "ALT_EXPR_2D")
    begin : expanded_view_2d
      assign view_access_a =
        view_cptr + view_x_apos + view_y_apos + (view_y_apos * view_x_size);
    end
    else if (VIEW_EQUATION_FORM == "LINEAR")
    begin : linear_view_1d
      assign view_access_a = {view_y_apos, view_x_apos};
    end
    else
    begin : incorrect_view
      assign view_access_a = 16'h0000;
    end
  endgenerate

  generate
    if (CHAR_EQUATION_FORM == "ORIGINAL_2D")
    begin : original_char_2d
      assign char_access =
        view_cptr + 
        hcount[10:3] - view_x_orig +
        ((8'h01 + view_x_size) * (vcount[10:3] - view_y_orig));
    end
    else if (CHAR_EQUATION_FORM == "ALT_EXPR_2D")
    begin : expanded_char_2d
      assign char_access =
        view_cptr + 
        hcount[10:3] - view_x_orig +
        vcount[10:3] - view_y_orig +
        (view_x_size * (vcount[10:3] - view_y_orig));
    end
    else
    begin : incorrect_char
      assign char_access = 16'h0000;
    end
  endgenerate

  assign font_access   = view_fptr + (
                         view_params[7] ?
                         {5'b00000,gfx_data,~vcount[2:0]} :
                         {5'b00000,gfx_data, vcount[2:0]});

  assign gfx_addr = hcount[0] ? font_access : char_access;

  //******************************************************************//
  // Implement pipeline for synchronization signals.  There are four  //
  // stages in the video output path; these signals simply get a      //
  // four cycle delay.  The sense of the signals can be inverted by   //
  // settings in the master control register.                         //
  //******************************************************************//

  reg   [3:0] vs_delay;
  reg   [3:0] hs_delay;

  always @(posedge clk)
  begin
    vs_delay <= {vs_delay[2:0],(vsync ^ master_ctrl[6])};
    hs_delay <= {hs_delay[2:0],(hsync ^ master_ctrl[5])};
  end

  assign vs = vs_delay[3];
  assign hs = hs_delay[3];

  //******************************************************************//
  // Implement pipeline for graphics data.  There are four stages in  //
  // the video output path.  The code here implements the first three //
  // stages (two of which are actually in the RAM lookup).  The final //
  // stage is implemented in a separate block.                        //
  //******************************************************************//

  reg   [7:0] gfx_hold;

  always @(posedge clk) if (hcount[2:0] == 3'b010) gfx_hold <= gfx_data;

  //******************************************************************//
  // Implement pipeline for graphics enable.  There are four stages   //
  // in the video output path; these signals are computed and then    //
  // delayed three cycles.  The final stage is in a separate block.   //
  //******************************************************************//

  reg       [2:1] window_delay;

  generate
    if (VIEW_CLIPPING == "TRUE")
    begin : view_lt_active_region
      reg         hwindow_l;
      reg         hwindow_r;
      reg         vwindow_t;
      reg         vwindow_b;
      wire        window;
      always @(posedge clk)
      begin
        hwindow_l <= (hcount[10:3] >= view_x_orig);
        vwindow_t <= (vcount[10:3] >= view_y_orig);
        hwindow_r <= (hcount[10:3] <= (view_x_orig + view_x_size));
        vwindow_b <= (vcount[10:3] <= (view_y_orig + view_y_size));
        window_delay <= {window_delay[1],window};
      end
      assign window = hwindow_l && hwindow_r && vwindow_t && vwindow_b;
    end  
    else
    begin : view_eq_active_region
      initial window_delay <= 2'b11;
    end  
  endgenerate

  reg         active;
  reg   [2:1] active_delay;

  always @(posedge clk) active <= !(hblnk || vblnk || master_ctrl[7]);
  always @(posedge clk) active_delay <= {active_delay[1],active};

  reg   [2:0] hcount_b0;
  reg   [2:0] hcount_b1;
  reg   [2:0] hcount_b2;
  wire  [2:0] hcount_delay2;

  always @(posedge clk)
  begin
    hcount_b0 <= {hcount_b0[1:0], (hcount[0] ^ view_params[6])};
    hcount_b1 <= {hcount_b1[1:0], (hcount[1] ^ view_params[6])};
    hcount_b2 <= {hcount_b2[1:0], (hcount[2] ^ view_params[6])};
  end

  assign hcount_delay2 = {hcount_b2[2], hcount_b1[2], hcount_b0[2]};

  //******************************************************************//
  // This is the final stage where the graphics data and the graphics //
  // enable meet.  The color output information is computed here and  //
  // sent to the outside world, synchronized with the sync signals.   //
  //******************************************************************//

  wire  [3:0] bred;
  wire  [3:0] bgrn;
  wire  [3:0] bblu;

  generate
    if (PT_USE_EXTBGND == "TRUE")
    begin : use_extbgnd
      assign bred = bgnd_red;
      assign bgrn = bgnd_grn;
      assign bblu = bgnd_blu;
    end
    else
    begin : no_extbgnd
      assign bred = {4{master_ctrl[2]}};
      assign bgrn = {4{master_ctrl[1]}};
      assign bblu = {4{master_ctrl[0]}};
    end
  endgenerate

  reg   [3:0] red;
  reg   [3:0] grn;
  reg   [3:0] blu;

  // synthesis attribute equivalent_register_removal of red is "no";
  // synthesis attribute equivalent_register_removal of grn is "no";
  // synthesis attribute equivalent_register_removal of blu is "no";

  reg         data_enable;

  always @(posedge clk)
  begin
    if (active_delay[2]) // viewport or background
    begin
      data_enable <= 1'b1;
      if (window_delay[2]) // viewport is active
      begin
        red <= {4{(gfx_hold[hcount_delay2] ? view_params[5] : view_params[2])}};
        grn <= {4{(gfx_hold[hcount_delay2] ? view_params[4] : view_params[1])}};
        blu <= {4{(gfx_hold[hcount_delay2] ? view_params[3] : view_params[0])}};
      end
      else
      begin
        red <= bred; // background
        grn <= bgrn; // background
        blu <= bblu; // background
      end
    end
    else
    begin
      red <= 4'h0; // blanked
      grn <= 4'h0; // blanked
      blu <= 4'h0; // blanked
      data_enable <= 1'b0;
    end
  end

  assign r = red;
  assign g = grn;
  assign b = blu;

  assign de = data_enable;

  //******************************************************************//
  // This section contains the logic to generate interrupts for the   //
  // blanking periods and the position match.                         //
  //******************************************************************//

  always @(posedge clk) interrupt <= |(master_ctrl[13:11]&master_ctrl[10:8]);

  generate
    if (HB_INTERRUPTS == "TRUE")
    begin : hb_interrupt_gen
      // extra register delay is
      // for timing purposes...
      reg [1:0] hb_delay;
      always @(posedge clk) hb_delay <= {hb_delay[0], hblnk};
      assign hb_intr_set = hb_delay[0] && !hb_delay[1];
    end
    else
    begin : no_hb_interrupt
      assign hb_intr_set = 1'b0;
    end
  endgenerate

  generate
    if (VB_INTERRUPTS == "TRUE")
    begin : vb_interrupt_gen
      // extra register delay is
      // for timing purposes...
      reg [1:0] vb_delay;
      always @(posedge clk) vb_delay <= {vb_delay[0], vblnk};
      assign vb_intr_set = vb_delay[0] && !vb_delay[1];
    end
    else
    begin : no_vb_interrupt
      assign vb_intr_set = 1'b0;
    end
  endgenerate

  generate
    if (PM_INTERRUPTS == "TRUE")
    begin : pm_interrupt_gen
      // extra register delay is
      // for timing purposes...
      reg vmatch;
      reg hmatch;
      always @(posedge clk) vmatch <= (match_val == vcount);
      always @(posedge clk) hmatch <= (match_val == hcount);
      assign pm_intr_set = master_ctrl[14] ? vmatch : hmatch;
    end
    else
    begin : no_pm_interrupt
      assign pm_intr_set = 1'b0;
    end
  endgenerate

  //******************************************************************//
  //                                                                  //
  //******************************************************************//

endmodule