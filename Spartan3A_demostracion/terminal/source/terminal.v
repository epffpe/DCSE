//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2006 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /   Vendor:        Xilinx
// \   \   \/    Version:       1.0.0
//  \   \        Filename:      terminal.v
//  /   /        Date Created:  December 25, 2006
// /___/   /\    Last Modified: December 25, 2006
// \   \  /  \
//  \___\/\___\
//
// Devices:   Spartan-3 Generation FPGA
// Purpose:   Dumber than Dumb Terminal
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

module terminal
  (
  input  wire        ROT_CENTER,
  input  wire  [3:0] SW,
  input  wire        RS232_DCE_RXD,
  output wire        RS232_DCE_TXD,
  output wire        AUD_L,
  output wire        AUD_R,
  input  wire        PS2_CLK1,
  input  wire        PS2_DATA1,
  output wire  [3:0] VGA_R,
  output wire  [3:0] VGA_G,
  output wire  [3:0] VGA_B,
  output wire        VGA_HSYNC,
  output wire        VGA_VSYNC,
  output wire        FPGA_INIT_B,
  input  wire        CLK_50M
  );

  //******************************************************************//
  // Create global clock and synchronous system reset.                //
  //******************************************************************//

  wire          clk;
  wire          clknub;
  wire          cdv;
  wire          cdvnub;
  wire          locked;
  wire          reset;

  DCM_SP #(
    .CLKDV_DIVIDE(2),
    .CLKIN_PERIOD(20.000))
  DCM_SP_INST (
    .CLKIN(CLK_50M),
    .CLKFB(clk),
    .RST(1'b0),
    .PSEN(1'b0),
    .PSINCDEC(1'b0),
    .PSCLK(1'b0),
    .DSSEN(1'b0),
    .CLK0(clknub),
    .CLK90(),
    .CLK180(),
    .CLK270(),
    .CLKDV(cdvnub),
    .CLK2X(),
    .CLK2X180(),
    .CLKFX(),
    .CLKFX180(),
    .STATUS(),
    .LOCKED(locked),
    .PSDONE());

  BUFG BG0 (.I(clknub), .O(clk));
  BUFG BG1 (.I(cdvnub), .O(cdv));

  synchro #(.INITIALIZE("LOGIC1"))
  synchro_reset (.async(!locked),.sync(reset),.clk(clk));

  assign FPGA_INIT_B = 1'b0;

  //******************************************************************//
  // Instantiate multiboot module so this design can return to menu.  //
  //******************************************************************//

  picoboot picoboot_inst (
    .internal_addr(32'h03000000),
    .internal_mode(3'b001),
    .internal_vsel(3'b111),
    .internal_use(1'b0),
    .reboot(ROT_CENTER),
    .clk(cdv));

  //******************************************************************//
  // Instantiate PicoBlaze and the Program ROM.                       // 
  //******************************************************************//

  wire    [9:0] address;
  wire   [17:0] instruction;
  wire    [7:0] port_id;
  wire    [7:0] out_port;
  reg     [7:0] in_port;
  wire          write_strobe;
  wire          read_strobe;
  wire          interrupt;

  kcpsm3 kcpsm3_inst (
    .address(address),
    .instruction(instruction),
    .port_id(port_id),
    .write_strobe(write_strobe),
    .out_port(out_port),
    .read_strobe(read_strobe),
    .in_port(in_port),
    .interrupt(interrupt),
    .interrupt_ack(),
    .reset(reset),
    .clk(clk)
    );

  picocode picocode_inst (
    .address(address),
    .instruction(instruction),
    .clk(clk)
    );

  //******************************************************************//
  // Instantiate picotext using parameter defaults.  Locate the ports //
  // starting from port_id 0x00 up to and including port_id 0x1F.     //
  //******************************************************************//

  wire          pt_select;
  wire    [7:0] pt_in_port;

  assign pt_select = (port_id[7:5] == 3'b000);

  picotext #(
    .PT_IS_WRITABLE("TRUE"),
    .PT_IS_READABLE("TRUE"),
    .PT_HAS_AUTOINC("FALSE"),
    .PT_USE_EXTBGND("FALSE"),
    .INITIAL_MASTER_CTRL(16'h0060),
    .INITIAL_MATCH_VAL(11'd0),
    .INITIAL_VIEW_X_APOS(8'h00),
    .INITIAL_VIEW_Y_APOS(8'h00),
    .INITIAL_VIEW_PARAMS(8'h38),
    .VIEW_EQUATION_FORM("ORIGINAL_2D"),
    .CHAR_EQUATION_FORM("ORIGINAL_2D"),
    .HB_INTERRUPTS("TRUE"),
    .VB_INTERRUPTS("TRUE"),
    .PM_INTERRUPTS("TRUE"),
    .VP_IS_WRITABLE("TRUE"),
    .VP_IS_READABLE("TRUE"),
    .INITIAL_X_ORIG(8'h00),
    .INITIAL_X_SIZE(8'h63),
    .INITIAL_Y_ORIG(8'h00),
    .INITIAL_Y_SIZE(8'h4a),
    .INITIAL_CPTR(16'h0400),
    .INITIAL_FPTR(16'h0000),
    .VIEW_CLIPPING("TRUE"),
    .TC_IS_WRITABLE("TRUE"),
    .TC_IS_READABLE("TRUE"),
    .INITIAL_HSBLNK(11'd799),
    .INITIAL_HSSYNC(11'd855),
    .INITIAL_HESYNC(11'd975),
    .INITIAL_HEBLNK(11'd1039),
    .INITIAL_VSBLNK(11'd599),
    .INITIAL_VSSYNC(11'd636),
    .INITIAL_VESYNC(11'd642),
    .INITIAL_VEBLNK(11'd665))
  picotext_inst (
    .r(VGA_R),
    .g(VGA_G),
    .b(VGA_B),
    .hs(VGA_HSYNC),
    .vs(VGA_VSYNC),
    .de(),
    .bgnd_hcount(),
    .bgnd_hsync(),
    .bgnd_hblnk(),
    .bgnd_vcount(),
    .bgnd_vsync(),
    .bgnd_vblnk(),
    .bgnd_red(4'h0),
    .bgnd_grn(4'h0),
    .bgnd_blu(4'h0),
    .in_port(pt_in_port),
    .interrupt(interrupt),
    .port_id(port_id[4:0]),
    .out_port(out_port),
    .write_strobe(write_strobe),
    .read_strobe(read_strobe),
    .select(pt_select),
    .reset(reset),
    .clk(clk));

  //******************************************************************//
  // Generate bit time enable for serial ports to run at 115200 bps.  //
  //******************************************************************//

  reg     [8:0] en_16_x_cntr;
  wire          en_16_x_baud;

  assign en_16_x_baud = (en_16_x_cntr == 26);

  always @(posedge clk)
  begin
    if (en_16_x_baud) en_16_x_cntr <= 0;
    else en_16_x_cntr <= en_16_x_cntr + 1;
  end

  //******************************************************************//
  // Implement miscellaneous output ports.                            //
  //******************************************************************//

  wire          write_to_uart;
  wire          write_to_bell;
  wire          uart_buffer_full;
  reg    [22:0] tone_count;

  assign write_to_uart = write_strobe & (port_id == 8'h21);
  assign write_to_bell = write_strobe & (port_id == 8'h24);

  uart_tx transmit (
    .data_in(out_port), 
    .write_buffer(write_to_uart),
    .reset_buffer(reset),
    .en_16_x_baud(en_16_x_baud),
    .serial_out(RS232_DCE_TXD),
    .buffer_full(uart_buffer_full),
    .buffer_half_full(),
    .clk(clk)
    );

  always @(posedge clk)
  begin
    if (write_to_bell) tone_count <= -1;
    else if (tone_count != 0) tone_count <= tone_count - 1;
  end

  assign AUD_L = tone_count[16];
  assign AUD_R = tone_count[16];

  //******************************************************************//
  // Implement miscellaneous input ports.                             //
  //******************************************************************//

  reg           read_from_uart;
  reg           read_from_kbrd;
  wire    [7:0] uart_rx_data;
  wire    [7:0] kbrd_rx_data;
  wire          uart_data_present;
  wire          kbrd_data_present;

  uart_rx receive (
    .serial_in(RS232_DCE_RXD),
    .data_out(uart_rx_data),
    .read_buffer(read_from_uart),
    .reset_buffer(reset),
    .en_16_x_baud(en_16_x_baud),
    .buffer_data_present(uart_data_present),
    .buffer_full(),
    .buffer_half_full(),
    .clk(clk)
    );  

  keyboard keyboard_inst(
    .ps2_clk(PS2_CLK1), 
    .ps2_dat(PS2_DATA1),
    .rd_kbrd(read_from_kbrd),
    .rd_data(kbrd_rx_data),
    .data_present(kbrd_data_present),
    .reset(reset),
    .clk(clk)
    );

  always @(posedge clk)
  begin
    read_from_uart <= read_strobe & (port_id == 8'h21);
    read_from_kbrd <= read_strobe & (port_id == 8'h25);
  end

  //******************************************************************//
  // Implement input port logic.                                      //
  //******************************************************************//

  always @*
  begin
    casez (port_id)
      8'h0?: in_port <= pt_in_port;
      8'h1?: in_port <= pt_in_port;
      8'h20: in_port <= {4'h0,SW};
      8'h21: in_port <= uart_rx_data;
      8'h22: in_port <= {7'b0000000, uart_buffer_full};
      8'h23: in_port <= {7'b0000000, uart_data_present};
      8'h25: in_port <= kbrd_rx_data;
      8'h26: in_port <= {7'b0000000, kbrd_data_present};
      default: in_port <= 8'h00;
    endcase
  end

  //******************************************************************//
  //                                                                  //
  //******************************************************************//

endmodule