//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2006, 2007 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /   Vendor:        Xilinx
// \   \   \/    Version:       1.0.1
//  \   \        Filename:      boarddemo.v
//  /   /        Date Created:  December 25, 2006
// /___/   /\    Last Modified: April 1, 2007
// \   \  /  \
//  \___\/\___\
//
// Devices:   Spartan-3 Generation FPGA
// Purpose:   Board demo top level
// Contact:   crabill@xilinx.com
// Reference: None
//
// Revision History:
//   Rev 1.0.0 - (crabill) First created December 25, 2006.
//   Rev 1.0.1 - (crabill) Modified April 1, 2007 to mention revision D
//                         of the PCB and applicability to Spartan-3AN.
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
// Copyright (c) 2006, 2007 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////

`timescale 1 ns / 1 ps

module boarddemo
  (
  input  wire        CLK_50M,

  output wire  [3:0] VGA_R,
  output wire  [3:0] VGA_G,
  output wire  [3:0] VGA_B,
  output wire        VGA_HSYNC,
  output wire        VGA_VSYNC,

  output wire        AUD_L,
  output wire        AUD_R,

  input  wire        RS232_DCE_RXD,
  output wire        RS232_DCE_TXD,

  output reg         LCD_E,
  output reg         LCD_RS,
  output reg         LCD_RW,
  output reg   [7:0] LCD_DB,

  input  wire        BTN_EAST,
  input  wire        BTN_NORTH,
  input  wire        BTN_SOUTH,
  input  wire        BTN_WEST,
  input  wire  [3:0] SW,
  input  wire        ROT_A,
  input  wire        ROT_B,
  input  wire        ROT_CENTER,

  output reg         NF_CE,
  output reg  [21:0] NF_A,
  output reg         NF_BYTE,
  input  wire  [7:1] NF_D,
  output reg         NF_OE,
  output reg         NF_WE,
  output reg         NF_RP,
  output reg         NF_WP,

  input  wire        SPI_MISO,
  output wire        SPI_MOSI,
  output wire        SPI_SCK,
  output wire        ALT_SS_B,

  output wire        SPI_SS_B,
  output wire        DATAFLASH_RST,
  output wire        DATAFLASH_WP,
  output wire        FPGA_INIT_B,
  output wire        ST_SPI_WP,
  output wire        AMP_SHDN,
  output wire        AD_CONV,
  output wire        DAC_CLR,
  output wire        AMP_CS,
  output wire        DAC_CS,

  output wire  [7:0] LED
  );

  //******************************************************************//
  // Create global clock and synchronous system reset.                //
  //******************************************************************//

  wire          clk;
  wire          clknub;
  wire          locked;
  wire          reset;

  DCM_SP #(
    .CLKIN_DIVIDE_BY_2("TRUE"),
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
    .CLKDV(),
    .CLK2X(),
    .CLK2X180(),
    .CLKFX(),
    .CLKFX180(),
    .STATUS(),
    .LOCKED(locked),
    .PSDONE());

  BUFG BG (.I(clknub), .O(clk));

  synchro #(.INITIALIZE("LOGIC1"))
  synchro_reset (.async(!locked),.sync(reset),.clk(clk));

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
    .clk(clk));

  picocode picocode_inst (
    .address(address),
    .instruction(instruction),
    .clk(clk));

  //******************************************************************//
  // Instantiate picotext using parameter defaults.  Locate the ports //
  // starting from port_id 0x00 up to and including port_id 0x1F.     //
  //******************************************************************//

  wire          pt_select;
  wire    [7:0] pt_in_port;

  // Signals for external background
  // image generation (rotozoomer).

  wire   [10:0] bgnd_hcount;
  wire          bgnd_hsync;
  wire          bgnd_hblnk;
  wire   [10:0] bgnd_vcount;
  wire          bgnd_vsync;
  wire          bgnd_vblnk;
  wire    [3:0] bgnd_red;
  wire    [3:0] bgnd_grn;
  wire    [3:0] bgnd_blu;

  assign pt_select = (port_id[7:5] == 3'b000);

  picotext #(
    .PT_IS_WRITABLE("TRUE"),
    .PT_IS_READABLE("TRUE"),
    .PT_HAS_AUTOINC("TRUE"),
    .PT_USE_EXTBGND("TRUE"),
    .INITIAL_MASTER_CTRL(16'h00E0),
    .INITIAL_MATCH_VAL(11'd0),
    .INITIAL_VIEW_X_APOS(8'h00),
    .INITIAL_VIEW_Y_APOS(8'h00),
    .INITIAL_VIEW_PARAMS(8'h00),
    .VIEW_EQUATION_FORM("ORIGINAL_2D"),
    .CHAR_EQUATION_FORM("ORIGINAL_2D"),
    .HB_INTERRUPTS("TRUE"),
    .VB_INTERRUPTS("TRUE"),
    .PM_INTERRUPTS("TRUE"),
    .VP_IS_WRITABLE("TRUE"),
    .VP_IS_READABLE("TRUE"),
    .INITIAL_X_ORIG(8'h00),
    .INITIAL_X_SIZE(8'h00),
    .INITIAL_Y_ORIG(8'h00),
    .INITIAL_Y_SIZE(8'h00),
    .INITIAL_CPTR(16'h0000),
    .INITIAL_FPTR(16'h0000),
    .VIEW_CLIPPING("TRUE"),
    .TC_IS_WRITABLE("TRUE"),
    .TC_IS_READABLE("TRUE"),
    .INITIAL_HSBLNK(11'd639),
    .INITIAL_HSSYNC(11'd655),
    .INITIAL_HESYNC(11'd751),
    .INITIAL_HEBLNK(11'd799),
    .INITIAL_VSBLNK(11'd479),
    .INITIAL_VSSYNC(11'd490),
    .INITIAL_VESYNC(11'd492),
    .INITIAL_VEBLNK(11'd524))
  picotext_inst (
    .r(VGA_R),
    .g(VGA_G),
    .b(VGA_B),
    .hs(VGA_HSYNC),
    .vs(VGA_VSYNC),
    .de(),
    .bgnd_hcount(bgnd_hcount),
    .bgnd_hsync(bgnd_hsync),
    .bgnd_hblnk(bgnd_hblnk),
    .bgnd_vcount(bgnd_vcount),
    .bgnd_vsync(bgnd_vsync),
    .bgnd_vblnk(bgnd_vblnk),
    .bgnd_red(bgnd_red),
    .bgnd_grn(bgnd_grn),
    .bgnd_blu(bgnd_blu),
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
  // Implement DCE serial port, 115200-8N1.                           //
  // 20h rd = rx data                                                 //
  // 20h wr = tx data                                                 //
  // 21h rd = status                                                  //
  //          bit 7 -- tx buffer data present                         //
  //          bit 4 -- tx buffer full                                 //
  //          bit 3 -- rx buffer full                                 //
  //          bit 0 -- rx buffer data present                         //
  //          others not implemented                                  //
  // 21h wr = not implemented                                         //
  //******************************************************************//

  reg     [7:0] en_16_x_cntr;
  wire          en_16_x_baud;
  wire          en_16_x_hack;
  wire          dce_wr;
  reg           dce_rd;
  wire          dce_tx_full;
  wire          dce_tx_pres;
  wire          dce_rx_full;
  wire          dce_rx_pres;
  wire    [7:0] dce_rx_data;
  wire    [3:0] dce_rx_info;
  wire    [3:0] dce_tx_info;

  always @(posedge clk)
  begin
    if (en_16_x_baud) en_16_x_cntr <= 0;
    else en_16_x_cntr <= en_16_x_cntr + 1;
    dce_rd <= read_strobe && (port_id == 8'h20);
  end

  assign en_16_x_baud = (en_16_x_cntr == 26);
  assign en_16_x_hack = (en_16_x_cntr == 26) || (en_16_x_cntr == 13);
  assign dce_wr = write_strobe && (port_id == 8'h20);

  uart_tx_plus uart_tx_dce (
    .en_16_x_baud(en_16_x_hack),
    .serial_out(RS232_DCE_TXD),
    .reset_buffer(reset),
    .write_buffer(dce_wr),
    .data_in(out_port), 
    .buffer_data_present(dce_tx_pres),
    .buffer_half_full(),
    .buffer_full(dce_tx_full),
    .clk(clk));

  uart_rx uart_rx_dce (
    .en_16_x_baud(en_16_x_hack),
    .serial_in(RS232_DCE_RXD),
    .reset_buffer(reset),
    .read_buffer(dce_rd),
    .data_out(dce_rx_data),
    .buffer_data_present(dce_rx_pres),
    .buffer_half_full(),
    .buffer_full(dce_rx_full),
    .clk(clk));  

  assign dce_rx_info = {dce_rx_full,2'b00,dce_rx_pres};
  assign dce_tx_info = {dce_tx_pres,2'b00,dce_tx_full};

  //******************************************************************//
  // Implement the 8-bit LCD interface.  This is write only...        //
  // 22h rd = not implemented                                         //
  // 22h wr = lcd data out                                            //
  // 23h rd = not implemented                                         //
  // 23h wr = lcd control out                                         //
  //          bit 2 -- lcd rs                                         //
  //          bit 1 -- lcd rw                                         //
  //          bit 0 -- lcd e                                          //
  //          others not implemented                                  //
  //******************************************************************//

  always @(posedge clk)
  begin
    if (write_strobe)
    begin
      if (port_id == 8'h22) {LCD_DB} <= out_port;
      if (port_id == 8'h23) {LCD_RS,LCD_RW,LCD_E} <= out_port[2:0];
    end
  end
 
  //******************************************************************//
  // Instantiate the button processor and LED control.                //
  // 24h rd = switch status [3:0]                                     //
  // 24h wr = not implemented                                         //
  // 25h rd = button status [3:0]                                     //
  // 25h wr = not implemented                                         //
  // 26h rd = knob status [3:0]                                       //
  // 26h wr = clear knob status strobe                                //
  // 27h rd = LED control                                             //
  // 27h wr = LED control                                             //
  //******************************************************************//

  reg   [7:0] led_out;
  wire  [3:0] btn_out;
  wire  [3:0] sws_out;
  wire  [3:0] rot_out;
  wire        rot_clr;

  picouser picouser_inst (
    .BTN_EAST(BTN_EAST),
    .BTN_NORTH(BTN_NORTH),
    .BTN_SOUTH(BTN_SOUTH),
    .BTN_WEST(BTN_WEST),
    .SW(SW),
    .ROT_A(ROT_A),
    .ROT_B(ROT_B),
    .ROT_CENTER(ROT_CENTER),
    .rot_clr(rot_clr),
    .clk(clk),
    .btn_out(btn_out),
    .sws_out(sws_out),
    .rot_out(rot_out));

  assign rot_clr = write_strobe && (port_id == 8'h26);

  always @(posedge clk)
  begin
    if (write_strobe)
    begin
      if (port_id == 8'h27) led_out <= out_port;
    end
  end

  assign LED = led_out;

  //******************************************************************//
  // Implement general control registers and interface to the polar   //
  // to rectangular converter.  The resulting dx and dy values can    //
  // be used to program the rotozoomer, as well as used for increment //
  // values for the position control.                                 //
  // 28h rd/wr = rotozoom enable at bit 0, others unimplemented       //
  // 29h rd/wr = clut mode[  3:  0], others unimplemented             //
  // 2Ah rd/wr = angle[  7:  0] (0 = 0 deg, 128 = 180 deg, etc...)    //
  // 2Bh rd/wr = step [  7:  0] (unsigned 4.4 format)                 //
  // 2Ch rd    = computed dx[ -1: -8] (fraction ms byte)              //
  // 2Dh rd    = computed dx[  7:  0] (integer ls byte)               //
  // 2Eh rd    = computed dy[ -1: -8] (fraction ms byte)              //
  // 2Fh rd    = computed dy[  7:  0] (integer ls byte)               //
  //                                                                  //
  // Implement control registers for rotozoomer.  Items marked with   //
  // asterisks are not currently implemented.  The position and delta //
  // values are interpreted by hardware as signed.                    //
  // 30h rd/wr = src x_position[ -9:-16] (fraction ls byte)   *       //
  // 31h rd/wr = src x_position[ -1: -8] (fraction ms byte)           //
  // 32h rd/wr = src x_position[  7:  0] (integer ls byte)            //
  // 33h rd/wr = src x_position[ 15:  8] (integer ms byte)            //
  // 34h rd/wr = src y_position[ -9:-16] (fraction ls byte)   *       //
  // 35h rd/wr = src y_position[ -1: -8] (fraction ms byte)           //
  // 36h rd/wr = src y_position[  7:  0] (integer ls byte)            //
  // 37h rd/wr = src y_position[ 15:  8] (integer ms byte)            //
  // 38h rd/wr = src x_delta   [ -9:-16] (fraction ls byte)   *       //
  // 39h rd/wr = src x_delta   [ -1: -8] (fraction ms byte)           //
  // 3Ah rd/wr = src x_delta   [  7:  0] (integer ls byte)            //
  // 3Bh rd/wr = src x_delta   [ 15:  8] (integer ms byte)    *       //
  // 3Ch rd/wr = src y_delta   [ -9:-16] (fraction ls byte)   *       //
  // 3Dh rd/wr = src y_delta   [ -1: -8] (fraction ms byte)           //
  // 3Eh rd/wr = src y_delta   [  7:  0] (integer ls byte)            //
  // 3Fh rd/wr = src y_delta   [ 15:  8] (integer ms byte)    *       //
  //******************************************************************//

  reg           rz_enable;
  reg     [2:0] clut_mode;
  reg     [7:0] angle;
  reg     [7:0] step;
  reg    [15:0] x_pos_int, y_pos_int;
  reg    [15:0] x_pos_frc, y_pos_frc;
  reg    [15:0] x_delta_int, y_delta_int;
  reg    [15:0] x_delta_frc, y_delta_frc;

  always @(posedge clk)
  begin
    if (write_strobe)
    begin
      if (port_id == 8'h28) rz_enable <= out_port[0];
      if (port_id == 8'h29) clut_mode <= out_port[2:0];
      if (port_id == 8'h2A) angle <= out_port;
      if (port_id == 8'h2B) step <= out_port;
      if (port_id == 8'h30) x_pos_frc[7:0] <= out_port;
      if (port_id == 8'h31) x_pos_frc[15:8] <= out_port;
      if (port_id == 8'h32) x_pos_int[7:0] <= out_port;
      if (port_id == 8'h33) x_pos_int[15:8] <= out_port;
      if (port_id == 8'h34) y_pos_frc[7:0] <= out_port;
      if (port_id == 8'h35) y_pos_frc[15:8] <= out_port;
      if (port_id == 8'h36) y_pos_int[7:0] <= out_port;
      if (port_id == 8'h37) y_pos_int[15:8] <= out_port;
      if (port_id == 8'h38) x_delta_frc[7:0] <= out_port;
      if (port_id == 8'h39) x_delta_frc[15:8] <= out_port;
      if (port_id == 8'h3a) x_delta_int[7:0] <= out_port;
      if (port_id == 8'h3b) x_delta_int[15:8] <= out_port;
      if (port_id == 8'h3c) y_delta_frc[7:0] <= out_port;
      if (port_id == 8'h3d) y_delta_frc[15:8] <= out_port;
      if (port_id == 8'h3e) y_delta_int[7:0] <= out_port;
      if (port_id == 8'h3f) y_delta_int[15:8] <= out_port;
    end
  end
 
  //******************************************************************//
  // Using angle and step information from the program, generate the  //
  // delta_x and delta_y values for the transformation.  These could  //
  // be fed directly into the rotozoomer, but instead I have them as  //
  // readable results.  This way, the program must copy the values to //
  // the rotozoomer but has flexibility to use other values.  For     //
  // example, using only one of the computed delta values for both of //
  // the transform parameters allows the implementation of diagonal   //
  // shearing.  Programming the deltas on a line-by line basis can    //
  // implement other effects such as perspective.                     //
  //******************************************************************//

  wire   [15:0] delta_x;
  wire   [15:0] delta_y;

  pol2rect pol2rect_inst (
    .angle(angle),
    .step(step),
    .clk(clk),
    .delta_x(delta_x),
    .delta_y(delta_y));

  //******************************************************************//
  // Instantiate the multiboot module.  Of course, multiboot          //
  // could have been implemented completely in software, but this     //
  // provided the opportunity to build a hardware module that could   //
  // be used in other designs -- with or without processors.          //
  // 40h rd = mb_int_addr[ 7: 0]                                      //
  // 40h wr = mb_int_addr[ 7: 0]                                      //
  // 41h rd = mb_int_addr[15: 8]                                      //
  // 41h wr = mb_int_addr[15: 8]                                      //
  // 42h rd = mb_int_addr[23:16]                                      //
  // 42h wr = mb_int_addr[23:16]                                      //
  // 43h rd = mb_int_addr[31:24]                                      //
  // 43h wr = mb_int_addr[31:24]                                      //
  // 44h rd = mb_int_mode[2:0]                                        //
  // 44h wr = mb_int_mode[2:0]                                        //
  // 45h rd = mb_int_vsel[2:0]                                        //
  // 45h wr = mb_int_vsel[2:0]                                        //
  // 46h rd = mb_int_use                                              //
  // 46h wr = mb_int_use                                              //
  // 47h rd = unused                                                  //
  // 47h wr = multiboot strobe                                        //
  //******************************************************************//

  reg    [31:0] mb_int_addr;
  reg     [2:0] mb_int_mode;
  reg     [2:0] mb_int_vsel;
  reg           mb_int_use;
  wire          reboot;

  always @(posedge clk)
  begin
    if (write_strobe)
    begin
      if (port_id == 8'h40) mb_int_addr[7:0] <= out_port;
      if (port_id == 8'h41) mb_int_addr[15:8] <= out_port;
      if (port_id == 8'h42) mb_int_addr[23:16] <= out_port;
      if (port_id == 8'h43) mb_int_addr[31:24] <= out_port;
      if (port_id == 8'h44) mb_int_mode <= out_port[2:0];
      if (port_id == 8'h45) mb_int_vsel <= out_port[2:0];
      if (port_id == 8'h46) mb_int_use <= out_port[0];
    end
  end

  assign reboot = write_strobe && (port_id == 8'h47);

  picoboot picoboot_inst (
    .internal_addr(mb_int_addr),
    .internal_mode(mb_int_mode),
    .internal_vsel(mb_int_vsel),
    .internal_use(mb_int_use),
    .reboot(reboot),
    .clk(clk));

  //******************************************************************//
  // Implement registers to control audio.  The audio hardware simply //
  // plays the selected loop, over and over.  Every time the loop is  //
  // about to end, the hardware checks this loop register to see if   //
  // it should switch to another loop.                                //
  // 48h rd = audio volume                                            //
  // 48h wr = audio volume                                            //
  // 49h rd = audio loop                                              //
  // 49h wr = audio loop                                              //
  // 4Ah rd = audio enable                                            //
  // 4Ah wr = audio enable                                            //
  // 4Bh rd = audio status                                            //
  // 4Bh wr = audio status                                            //
  //******************************************************************//

  wire          audio;
  wire    [7:0] audio_data;
  wire          audio_prefetch;
  reg     [2:0] audio_volume;
  reg     [2:0] audio_loop;
  reg           audio_enable;
  wire          audio_ofl;
  wire          audio_ufl;
  wire          miso;

  always @(posedge clk)
  begin
    if (write_strobe)
    begin
      if (port_id == 8'h48) audio_volume <= out_port[2:0];
      if (port_id == 8'h49) audio_loop <= out_port[2:0];
      if (port_id == 8'h4A) audio_enable <= out_port[0];
    end
  end

  picotune picotune_inst (
    .audio_loop(audio_loop),
    .audio_enable(audio_enable),
    .start_prefetch(bgnd_vblnk),
    .audio_prefetch(audio_prefetch),
    .signed_data(audio_data),
    .overflow(audio_ofl),
    .underflow(audio_ufl),
    .sclk(SPI_SCK),
    .cs_b(ALT_SS_B),
    .mosi(SPI_MOSI),
    .miso(miso),
    .clk(clk));

  mono_dac mono_dac_inst (
    .signed_data(audio_data),
    .volume(audio_volume),
    .audio(audio),
    .clk(clk));

  FD fd_aud_lt_inst (.D(audio),.Q(AUD_L),.C(clk));
  FD fd_aud_rt_inst (.D(audio),.Q(AUD_R),.C(clk));

  // I tossed this in here, because it is used for
  // pseudo-random sequencing of the audio loops.

  reg    [17:1] lfsr;

  initial lfsr <= 17'b1_1111_1111_1111_1111;
  always @ (posedge clk) lfsr <= {lfsr[16:1], (lfsr[17] ^ lfsr[14])};

  // These are driven to static values to prevent
  // any unexpected behavior from taking place.

  assign SPI_SS_B = 1'b1;

  assign DATAFLASH_RST = 1'b1;
  assign DATAFLASH_WP = 1'b1;
  assign FPGA_INIT_B = 1'b0;
  assign ST_SPI_WP = 1'b1;
  assign AMP_SHDN = 1'b1;
  assign AD_CONV = 1'b0;
  assign DAC_CLR = 1'b1;
  assign AMP_CS = 1'b1;
  assign DAC_CS = 1'b1;

  //******************************************************************//
  // Implement registers to interface with a look-up table for the    //
  // demo autopilot.  The flag could be done in software but this is  //
  // easier for me to keep track of.                                  //
  // 4Ch rd = autopilot low address                                   //
  // 4Ch wr = autopilot low address                                   //
  // 4Dh rd = autopilot high address                                  //
  // 4Dh wr = autopilot high address                                  //
  // 4Eh rd = autopilot data                                          //
  // 4Eh wr = not implemented                                         //
  // 4Fh rd = autopilot flag                                          //
  // 4Fh wr = autopilot flag                                          //
  //******************************************************************//

  reg    [10:0] auto_addr;
  reg     [7:0] auto_flag; 
  wire    [7:0] auto_data; 

  always @(posedge clk)
  begin
    if (write_strobe)
    begin
      if (port_id == 8'h4C) auto_addr[7:0] <= out_port;
      if (port_id == 8'h4D) auto_addr[10:8] <= out_port[2:0];
      if (port_id == 8'h4F) auto_flag <= out_port;
    end
  end

  autopilot autopilot_inst (
    .timestep(auto_addr[10:0]),
    .clk(clk),
    .auto_pos(auto_data[7:4]),
    .auto_rot(auto_data[3:2]),
    .auto_scl(auto_data[1:0]));

  //******************************************************************//
  // Implement registers to interface with a hardware cursor.         //
  // 50h rd = cursor low xpos                                         //
  // 50h wr = cursor low xpos                                         //
  // 51h rd = cursor high xpos                                        //
  // 51h wr = cursor high xpos                                        //
  // 52h rd = cursor low ypos                                         //
  // 52h wr = cursor low ypos                                         //
  // 53h rd = cursor high ypos                                        //
  // 53h wr = cursor high ypos                                        //
  //******************************************************************//

  reg    [10:0] cursor_xpos;
  reg    [10:0] cursor_ypos;

  always @(posedge clk)
  begin
    if (write_strobe)
    begin
      if (port_id == 8'h50) cursor_xpos[ 7: 0] <= out_port;
      if (port_id == 8'h51) cursor_xpos[10: 8] <= out_port[2:0];
      if (port_id == 8'h52) cursor_ypos[ 7: 0] <= out_port;
      if (port_id == 8'h53) cursor_ypos[10: 8] <= out_port[2:0];
    end
  end

  //******************************************************************//
  // Implement input port logic.                                      //
  //******************************************************************//

  always @*
  begin
    casez (port_id)
      8'h0?: in_port <= pt_in_port;
      8'h1?: in_port <= pt_in_port;
      8'h20: in_port <= dce_rx_data;
      8'h21: in_port <= {dce_tx_info,dce_rx_info};
      8'h22: in_port <= 8'h00;
      8'h23: in_port <= 8'h00;
      8'h24: in_port <= {4'b0000,sws_out};
      8'h25: in_port <= {4'b0000,btn_out};
      8'h26: in_port <= {4'b0000,rot_out};
      8'h27: in_port <= led_out;
      8'h28: in_port <= {7'b0000000,rz_enable};
      8'h29: in_port <= {5'b00000,clut_mode};
      8'h2a: in_port <= angle; 
      8'h2b: in_port <= step;
      8'h2c: in_port <= delta_x[7:0];
      8'h2d: in_port <= delta_x[15:8];
      8'h2e: in_port <= delta_y[7:0];
      8'h2f: in_port <= delta_y[15:8];
      8'h30: in_port <= x_pos_frc[7:0];
      8'h31: in_port <= x_pos_frc[15:8];
      8'h32: in_port <= x_pos_int[7:0];
      8'h33: in_port <= x_pos_int[15:8];
      8'h34: in_port <= y_pos_frc[7:0];
      8'h35: in_port <= y_pos_frc[15:8];
      8'h36: in_port <= y_pos_int[7:0];
      8'h37: in_port <= y_pos_int[15:8];
      8'h38: in_port <= x_delta_frc[7:0];
      8'h39: in_port <= x_delta_frc[15:8];
      8'h3a: in_port <= x_delta_int[7:0];
      8'h3b: in_port <= x_delta_int[15:8];
      8'h3c: in_port <= y_delta_frc[7:0];
      8'h3d: in_port <= y_delta_frc[15:8];
      8'h3e: in_port <= y_delta_int[7:0];
      8'h3f: in_port <= y_delta_int[15:8];
      8'h40: in_port <= mb_int_addr[7:0];
      8'h41: in_port <= mb_int_addr[15:8];
      8'h42: in_port <= mb_int_addr[23:16];
      8'h43: in_port <= mb_int_addr[31:24];
      8'h44: in_port <= {5'b00000,mb_int_mode};
      8'h45: in_port <= {5'b00000,mb_int_vsel};
      8'h46: in_port <= {7'b0000000,mb_int_use};
      8'h47: in_port <= 8'h00;
      8'h48: in_port <= {5'b00000,audio_volume};
      8'h49: in_port <= {5'b00000,audio_loop};
      8'h4a: in_port <= {7'b0000000,audio_enable};
      8'h4b: in_port <= {1'b0,audio_ofl,audio_ufl,1'b0,lfsr[4:1]};
      8'h4c: in_port <= auto_addr[7:0];
      8'h4d: in_port <= {5'b00000,auto_addr[10:8]};
      8'h4e: in_port <= auto_data;
      8'h4f: in_port <= auto_flag;
      8'h50: in_port <= cursor_xpos[7:0];
      8'h51: in_port <= {5'b00000,cursor_xpos[10:8]};
      8'h52: in_port <= cursor_ypos[7:0];
      8'h53: in_port <= {5'b00000,cursor_ypos[10:8]};
      default: in_port <= 8'h00;
    endcase
  end

  //******************************************************************//
  // Implement rotozoom address generator.  While the equations here  //
  // are nothing new (and available in computer graphics textbooks),  //
  // it is important to note that I referred to a Master's Thesis by  //
  // Robert Norberg, "Real-Time Video Rotation" published February    //
  // 2001.  My implementation done here is brute-force using the      //
  // embedded multipliers because it is expedient.                    //
  //******************************************************************//

  // First, adjust the hcount from the timing controller.
  // The displayed image is going to be 384 pixels wide.
  // The hcount value is shifted right so that one pixel
  // is processed every two clock cycles, to match the
  // access time of the ROM.  The shifted value is then
  // adjusted by -192 so that the result ranges from -192
  // to +191 (from left to right) during the time we are
  // interested in these values.

  wire    [8:0] hcount_adj;
  wire   [17:0] hcount_adj_se;

  assign hcount_adj = (bgnd_hcount[10:1] - 9'd192); // 9.0 sgn
  assign hcount_adj_se = {{9{hcount_adj[8]}}, hcount_adj}; // 18.0 sgn

  // Next, adjust the vcount from the timing controller.
  // The displayed image is going to be 384 pixels high.
  // The vcount value is not shifted.  However, it is
  // negated and adjusted by +191, so that the result
  // ranges from +191 to -192 (from top to bot) during
  // the time we are interested in these values.  The
  // use of a line buffer to store data will introduce
  // a cycle of latency.  To adjust for this, the +191
  // adjustment is reduced by one, and bgnd_vblnk is
  // used to correct for the case where the first line
  // must be processed at the end of vertical blank.
  // This is required as the timing controller starts
  // a new frame with vcount at zero.

  wire    [8:0] vcount_adj;
  wire   [17:0] vcount_adj_se;

  assign vcount_adj = bgnd_vblnk ? 9'd191:(9'd190-bgnd_vcount[10:0]); // 9.0 sgn
  assign vcount_adj_se = {{9{vcount_adj[8]}}, vcount_adj}; // 18.0 sgn

  // Concatenate and then sign extend the two delta
  // values under control of the processor.  For a
  // simple rotate, these would be sin and cos of the
  // angle, and the magintude would be one.  They can
  // be scaled to scale the image.  If they are not
  // geometrically related, or changed on a line by
  // line basis, other transforms are possible.

  wire   [17:0] x_delta_se;
  wire   [17:0] y_delta_se;

  assign x_delta_se = {{2{x_delta_int[7]}}, x_delta_int[7:0],
                      x_delta_frc[15:8]}; // 10.8 signed
  assign y_delta_se = {{2{y_delta_int[7]}}, y_delta_int[7:0],
                      y_delta_frc[15:8]}; // 10.8 signed

  // Compute the desired products for the transform.
  // The transform needs x*deltax, y*deltay, x*deltay,
  // and y*deltax.  The easy way is to use multipliers.
  // Using four is very easy.  This could be improved
  // to use only two by time multiplexing the inputs
  // since we only compute one address every other
  // clock cycle.  And, as discussed in Mr. Norberg's
  // thesis, it can be done without multipliers by
  // using accumulators -- basically performing the
  // multiplications sequentially (because the image
  // is being processed sequentially).

  wire   [35:0] xdx; // Although this is an 18.0 x 10.8 mult
  wire   [35:0] xdy; // the actual data is 9.0 and 8.8, so
  wire   [35:0] ydx; // the interesting part of 28.8 product
  wire   [35:0] ydy; // is lower 25 bits as 17.8 signed.

  MULT18X18 xdx_m (.A(hcount_adj_se),.B(x_delta_se),.P(xdx));
  MULT18X18 xdy_m (.A(hcount_adj_se),.B(y_delta_se),.P(xdy));
  MULT18X18 ydx_m (.A(vcount_adj_se),.B(x_delta_se),.P(ydx));
  MULT18X18 ydy_m (.A(vcount_adj_se),.B(y_delta_se),.P(ydy));

  // The transform also supports translation (scrolling)
  // the image by changing the origin of the transformation
  // in the source image.  When zoomed out very far, it is
  // necessary to use large (>1) changes in the origin to
  // get a usable effect.  Similarly, when zoomed in very
  // close, it is necesary to use small (<1) changes to get
  // a usable effect.

  wire   [23:0] x_origin;
  wire   [23:0] y_origin;

  assign x_origin = {x_pos_int,x_pos_frc[15:8]}; // 16.8 signed
  assign y_origin = {y_pos_int,y_pos_frc[15:8]}; // 16.8 signed

  // Compute the x and y memory addresses, now that all of
  // the pieces are available.  The addresses are fractional
  // and this is resolved by simple truncate (not rounded).
  // The mask indicator is implemented to suppress image
  // aliases if desired (only works for non-translated).

  wire   [26:0] x_addr;
  wire   [26:0] y_addr;

  assign x_addr = x_origin + xdx - ydy; // 19.8 signed
  assign y_addr = y_origin + xdy + ydx; // 19.8 signed

  wire   [10:0] rom_lo_addr;
  wire   [10:0] rom_hi_addr;
  wire          rom_ce_addr;
  wire          rom_lo_msk;
  wire          rom_hi_msk;

  assign rom_lo_addr = 1024 + x_addr[18:8];
  assign rom_hi_addr = 1023 - y_addr[18:8];
  assign rom_ce_addr = bgnd_hcount[0];

  assign rom_lo_msk = !((x_addr[21:18] == 4'h0) || (x_addr[21:18] == 4'hf));
  assign rom_hi_msk = !((y_addr[21:18] == 4'h0) || (y_addr[21:18] == 4'hf));

  //******************************************************************//
  // Implements the flash memory interface.  This is reading a byte   //
  // every two clock cycles.  If desired, the memory can be bypassed  //
  // in favor of a test pattern that is a function of memory address. //
  // During the vertical blank, the audio system will prefetch data   //
  // for the next display frame interval.  The audio data comes from  //
  // the SPI serial flash.  The parallel and serial flash devices are //
  // sharing a data line, so the parallel flash must be disabled when //
  // the audio prefetch is taking place.                              //
  //******************************************************************//

  reg    [21:0] nf_a_shadow;
  reg           nf_a_mask;

  // synthesis attribute equivalent_register_removal of NF_A is "no";
  // synthesis attribute equivalent_register_removal of NF_CE is "no";
  // synthesis attribute equivalent_register_removal of NF_OE is "no";
  // synthesis attribute equivalent_register_removal of nf_a_shadow is "no";

  always @(posedge clk)
  begin
    NF_CE <= audio_prefetch;
    NF_OE <= audio_prefetch;
    if (rom_ce_addr) NF_A <= {rom_hi_addr,rom_lo_addr};
    if (rom_ce_addr) nf_a_shadow <= {rom_hi_addr,rom_lo_addr};
    if (rom_ce_addr) nf_a_mask <= rom_lo_msk || rom_hi_msk;
    NF_BYTE <= 1'b0;
    NF_WE <= 1'b1;
    NF_RP <= 1'b1;
    NF_WP <= 1'b1;
  end

  wire          tst_grid;
  wire    [1:0] tst_quad;
  wire          tst_mode;

  assign tst_grid = nf_a_shadow[16] ^ nf_a_shadow[5];
  assign tst_quad = {nf_a_shadow[21], (nf_a_shadow[21] ^ !nf_a_shadow[10])};
  assign tst_mode = clut_mode[2];

  reg     [7:0] rom_data;
  reg     [2:0] tst_data;
  reg           msk_data;

  always @(posedge clk)
  begin
    if (rom_ce_addr || audio_prefetch)
    begin
      rom_data <= {NF_D, SPI_MISO};
      tst_data <= {tst_grid,tst_quad};
      msk_data <= nf_a_mask;
    end
  end

  assign miso = rom_data[0];

  //******************************************************************//
  // Implement a ping-ping line buffering scheme.  While processing a //
  // given line (based on vcount_adj_se) data is read in at half rate //
  // for the entire line duration, while the previous line's data is  //
  // dumped out full rate but for only a portion of the line.         //
  //******************************************************************//

  wire    [7:0] inbound_data;
  wire    [7:0] linebuf_data;
  wire    [9:0] linebuf_addr;
  wire          linebuf_sel;
  wire          linebuf_msk;

  assign inbound_data = tst_mode ? {5'b0, tst_data} : rom_data;
  assign linebuf_sel = vcount_adj_se[0];

  RAMB16_S9_S9 #(.SIM_COLLISION_CHECK("NONE")) linebuf (
    // A-port used for writing in data at half rate.
    // Useful data begins at address two due to the
    // use of a non-delayed bgnd_hcount for address.
    .ADDRA({linebuf_sel,bgnd_hcount[10:1]}),
    .DIA(inbound_data),
    .DIPA(msk_data),
    .DOA(),
    .DOPA(),
    .WEA(rom_ce_addr),
    .SSRA(1'b0),
    .ENA(1'b1),
    .CLKA(clk),
    // B-port used for reading out data at full rate.
    // This address will need to be adjusted so that
    // data coming out shows up at the appropriate
    // bgnd_hcount value, for display on the screen.
    .ADDRB({!linebuf_sel,linebuf_addr}),
    .DIB(8'h00),
    .DIPB(1'b0),
    .DOB(linebuf_data),
    .DOPB(linebuf_msk),
    .WEB(1'b0),
    .SSRB(1'b0),
    .ENB(1'b1),
    .CLKB(clk));

  // When bgnd_hcount = 256, the display is in the first
  // pixel of the bitmapped region on the display.  Here
  // is how the line buffer read address is computed:
  //
  // add   2 to point at valid linebuf data
  // sub 256 to shift into desired screen area
  // add   1 to compensate for line buffer read
  // add   1 to compensate for color lut read
  // sub   3 to compensare for gfx pipeline

  assign linebuf_addr = bgnd_hcount[9:0] - 10'd255;

  //******************************************************************//
  // Implement cursor.  This is a 16x16, 16-color bitmap.  The data   //
  // is indexed color, but I have used it here as grayscale data and  //
  // also am implemeting color 15 (which happens to be white) as a    //
  // key for transparent.  In this specific implementation, if white  //
  // is a desired non-transparent color, use color 14; it's close.    //
  //******************************************************************//

  reg    [10:0] cxpos;
  reg    [10:0] cypos;
  reg     [3:0] cdata;
  wire    [3:0] rdata;

  reg           xwindow;
  reg           ywindow;
  reg           cwindow;

  always @(posedge clk) cxpos <= bgnd_hcount - cursor_xpos;
  always @(posedge clk) cypos <= bgnd_vcount - cursor_ypos;

  cursor cursor_inst (
    .xpos(cxpos[3:0]),
    .ypos(cypos[3:0]),
    .data(rdata),
    .clk(clk));

  always @(posedge clk) xwindow <= (cxpos[10:4] == 0);
  always @(posedge clk) ywindow <= (cypos[10:4] == 0);

  always @(posedge clk) cdata <= rdata;
  always @(posedge clk) cwindow <= xwindow && ywindow && (rdata != 4'hf);

  //******************************************************************//
  // Implement color look-up scheme.                                  //
  //******************************************************************//


  wire          rz_h_region;
  wire          rz_v_region;
  wire          rz_region;
  wire    [3:0] clut_red;
  wire    [3:0] clut_grn;
  wire    [3:0] clut_blu;

  // This determines when to display the rotozoom result
  // through clut or to generate some default color.  The
  // coordinates are adjusted for gfx delay.

  assign rz_h_region = (bgnd_hcount >= 258) && (bgnd_hcount <= 641);
  assign rz_v_region = (bgnd_vcount >=   0) && (bgnd_vcount <= 383);
  assign rz_region = rz_enable && rz_h_region && rz_v_region;
 
  colorlut colorlut_inst (
    .linebuf_data(linebuf_data),
    .linebuf_msk(linebuf_msk),
    .clut_mode(clut_mode),
    .enable(rz_region),
    .clk(clk),
    .red(clut_red),
    .grn(clut_grn),
    .blu(clut_blu));

  assign bgnd_red = cwindow ? cdata : clut_red;
  assign bgnd_grn = cwindow ? cdata : clut_grn;
  assign bgnd_blu = cwindow ? cdata : clut_blu;

  //******************************************************************//
  //                                                                  //
  //******************************************************************//

endmodule