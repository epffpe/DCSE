//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2006 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /   Vendor:        Xilinx
// \   \   \/    Version:       1.0.0
//  \   \        Filename:      picotune.v
//  /   /        Date Created:  December 25, 2006
// /___/   /\    Last Modified: December 25, 2006
// \   \  /  \
//  \___\/\___\
//
// Devices:   Spartan-3 Generation FPGA
// Purpose:   Audio playback from SPI serial flash device
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

module picotune
  (
  input  wire  [2:0] audio_loop,
  input  wire        audio_enable,
  input  wire        start_prefetch,
  output wire        audio_prefetch,
  output wire  [7:0] signed_data,
  output wire        overflow,
  output wire        underflow,
  output reg         sclk,
  output reg         cs_b,
  output reg         mosi,
  input  wire        miso,
  input  wire        clk
  );

  //******************************************************************//
  // This implementation will fetch 250 audio samples every display   //
  // frame during the vertical blank.  This approach is required as   //
  // the external data sources are not available during most of the   //
  // active display time, as they are busy with graphics data fetch.  //
  // A display frame is 800*525 clock cycles, each clock is 40 ns.    //
  // The samples are output from this module at a rate of 1 sample    //
  // per 1680 clock cycles (800*525 div 250).  The corresponding      //
  // sample rate is roughly 14881 Hz.  Also note that all the data    //
  // has been formatted to fit in integer multiples of 250 bytes,     //
  // so that during any given fetch, the 250 bytes are contiguous.    //
  //******************************************************************//

  reg           start_delayed;
  wire          start_event;

  always @(posedge clk)
  begin : simple_delay
    start_delayed <= start_prefetch;
  end

  assign start_event = start_prefetch && !start_delayed;

  //******************************************************************//
  // Instantiate the data fifo and implement the periodic reads.      //
  //******************************************************************//

  wire          rd_en;
  wire          wr_en;
  wire          empty;

  pcm_fifo pcm_fifo_inst (
    .rst(!audio_enable),
    .rd_clk(clk),
    .wr_clk(clk),
    .wr_en(wr_en),
    .din(miso),
    .rd_en(rd_en),
    .dout(signed_data),
    .empty(empty),
    .full(),
    .overflow(overflow),
    .underflow(underflow));

  reg    [11:0] period_cnt;

  always @(posedge clk)
  begin : sample_period_counter
    if (rd_en || empty) period_cnt <= 12'h000;
    else period_cnt <= period_cnt + 12'h001;
  end

  assign rd_en = (period_cnt == 12'd1679);

  //******************************************************************//
  // Implement the high level control fsm for bursty data read.       //
  //******************************************************************//

  parameter [1:0] IDLE = 2'b00;
  parameter [1:0] LOOP = 2'b01;
  parameter [1:0] ADDR = 2'b10;
  parameter [1:0] DATA = 2'b11;

  reg     [1:0] state;
  wire          data_done;
  wire          loop_done;

  initial state <= IDLE;

  always @(posedge clk)
  begin : main_fsm
    case (state)
      IDLE: if (!audio_enable) state <= IDLE;
            else if (!start_event) state <= IDLE;
            else if (!loop_done) state <= ADDR;
            else state <= LOOP;
      LOOP: state <= DATA;
      ADDR: state <= DATA;
      DATA: if (data_done) state <= IDLE;
            else state <= DATA;
      default: state <= IDLE;
    endcase
  end

  assign audio_prefetch = (state == DATA);

  //******************************************************************//
  // Keep track of current offset information.  This is only updated  //
  // after exiting IDLE state with loop_done deasserted, or after     //
  // exiting LOOP state.                                              //
  //******************************************************************//

  parameter [23:0] PARK = 24'hff_ff_ff;
  parameter [23:0] STEP = 250;

  parameter [23:0] S_1A = 24'h00_00_00;
  parameter [23:0] E_1A = 24'h00_00_00 + 216000 - 1;
  parameter [23:0] S_1B = 24'h04_00_00;
  parameter [23:0] E_1B = 24'h04_00_00 + 216000 - 1;
  parameter [23:0] S_2A = 24'h08_00_00;
  parameter [23:0] E_2A = 24'h08_00_00 + 121000 - 1;
  parameter [23:0] S_2B = 24'h0c_00_00;
  parameter [23:0] E_2B = 24'h0c_00_00 + 242000 - 1;
  parameter [23:0] S_3  = 24'h10_00_00;
  parameter [23:0] E_3  = 24'h10_00_00 + 972000 - 1;

  reg    [23:0] cur_offset;

  initial cur_offset <= PARK;

  always @(posedge clk)
  begin : offset_logic
    if ((state == IDLE) && !audio_enable) cur_offset <= PARK;
    else if (state == ADDR) cur_offset <= cur_offset + STEP;
    else if (state == LOOP)
    begin
      case (audio_loop)
        0: cur_offset <= S_1A;
        1: cur_offset <= S_1B;
        2: cur_offset <= S_2A;
        3: cur_offset <= S_2B;
        4: cur_offset <= S_3;
        default: cur_offset <= PARK;
      endcase
    end
  end

  // Indiscriminant checking for the ending cur_offset value
  // of all four loops; this assumes no loops are overlapping.

  assign loop_done = (cur_offset == (E_1A - STEP + 1)) ||
                     (cur_offset == (E_1B - STEP + 1)) ||
                     (cur_offset == (E_2A - STEP + 1)) ||
                     (cur_offset == (E_2B - STEP + 1)) ||
                     (cur_offset == (E_3  - STEP + 1)) ||
                     (cur_offset == PARK);

  //******************************************************************//
  // Brute force interface to serial memory device.  Essentially a    //
  // waveform playback to generate outputs that will cause the spi    //
  // device to send back data starting from cur_offset.  This will    //
  // read out 250 bytes and then terminate by way of deasserting the  //
  // spi device chip select.  Note that this will only work with a    //
  // spi device that has linear addressing.                           //
  //******************************************************************//

  parameter [11:0] STARTWEN = 12'b00000100_000_0; // when fifo wr starts
  parameter [11:0] FINISHED = 12'b11111110_001_1; // end of read burst

  reg    [11:0] data_fsm;
  reg     [7:0] cmds_addr;
  wire    [7:0] data_byte;
  wire    [2:0] data_step;
  wire          data_sclk;

  always @(posedge clk)
  begin : spi_sequencer
    if (state == DATA) data_fsm <= data_fsm + 1;
    else data_fsm <= 0;
  end

  always @*
  begin
    case (data_byte[1:0])
      1: cmds_addr <= cur_offset[23:16];
      2: cmds_addr <= cur_offset[15:8];
      3: cmds_addr <= cur_offset[7:0];
      default: cmds_addr <= 8'h03;
    endcase
  end

  assign data_byte = data_fsm[11:4];
  assign data_step = data_fsm[3:1];
  assign data_sclk = data_fsm[0];

  always @(posedge clk)
  begin : io_flops
    sclk <= data_sclk;
    cs_b <= (state != DATA);
    mosi <= cmds_addr[~data_step];
  end

  assign data_done = (data_fsm == FINISHED);

  assign wr_en = (data_fsm[11:1] > STARTWEN[11:1]) &&
                 (data_fsm[11:1] < FINISHED[11:1]) &&
                 !data_fsm[0];

  //******************************************************************//
  //                                                                  //
  //******************************************************************//

endmodule