//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2006 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /   Vendor:        Xilinx
// \   \   \/    Version:       1.0.0
//  \   \        Filename:      buffer.v
//  /   /        Date Created:  December 25, 2006
// /___/   /\    Last Modified: December 25, 2006
// \   \  /  \
//  \___\/\___\
//
// Devices:   Spartan-3 Generation FPGA
// Purpose:   Dual-ported display buffer with 8x8 font
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

module buffer
  (
  input  wire [11:0] gfx_addr,
  output wire  [7:0] gfx_data,

  input  wire [11:0] view_access_a,
  output wire  [7:0] view_access_i,
  input  wire  [7:0] view_access_o,
  input  wire        view_access_w,

  input  wire        clk
  );

  //******************************************************************//
  // Structural BlockRAM description.  The picotext design will work  //
  // with only a single BlockRAM.  This example, however, uses two    //
  // BlockRAMs to provide more storage.  This RAM contains a font,    //
  // strings to be displayed, and a display list.  The use of a mux   //
  // to expand the RAM depth is not optimal, but makes data entry of  //
  // init strings very simple.                                        //
  //******************************************************************//

  wire  [7:0] gfx_data0;
  wire  [7:0] view_access_i0;

  RAMB16_S9_S9 #(
    // CONSTANT xtend_XTL        , 00    ; xtend code (shadow-x, top left)
    // CONSTANT xtend_XTM        , 01    ; xtend code (shadow-x, top middle)
    // CONSTANT xtend_XBL        , 02    ; xtend code (shadow-x, bot left)
    // CONSTANT xtend_XBM        , 03    ; xtend code (shadow-x, bot middle)
    // CONSTANT xtend_ARROWUP    , 04    ; xtend code (up arrow)
    // CONSTANT xtend_ARROWDN    , 05    ; xtend code (dn arrow)
    // CONSTANT xtend_ARROWLT    , 06    ; xtend code (rt arrow)
    // CONSTANT xtend_ARROWRT    , 07    ; xtend code (lt arrow)
    // CONSTANT xtend_COL2SLH    , 08    ; xtend code (colon, two slashes)
    // CONSTANT xtend_FWDSLSH    , 09    ; xtend code (steep fwd slash)
    // CONSTANT xtend_XTR        , 0A    ; xtend code (shadow-x, top right)
    // CONSTANT xtend_XBR        , 0B    ; xtend code (shadow-x, bot right)
    // CONSTANT xtend_ISLSH      , 0C    ; xtend code (compress I, slash)
    // CONSTANT xtend_SLSHO      , 0D    ; xtend code (slash, compress O)
    // CONSTANT xtend_BULLET     , 0E    ; xtend code (bullet)
    // CONSTANT xtend_RSVD       , 0F    ; xtend code (reserved)
    // start of xtend characters, ballantyne font
    .INIT_00 (256'hFCF8702000000001F87C3E1F3E7CF8F0010000002070F8FCF0F87C3E1F3E7CF8),
    .INIT_01 (256'h00102040FF40201000080402FF02040810385492101010101010101092543810),
    .INIT_02 (256'h0100000000000000000000000000000100080810101020200024254848499090),
    .INIT_03 (256'h0000000000000000000060F0F0600000001C22222222221C002E24444444848E),
    // second set of custom characters, currently not used for anything
    .INIT_04 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    // start of ascii printable, ballantyne font
    .INIT_08 (256'h0014143e143e1414000000000014141400080000080808080000000000000000),
    .INIT_09 (256'h000000000004080c002c122a040a120c006062040810260600081e281c0a3c08),
    .INIT_0A (256'h000008083e0808000000082a1c2a080000040810101008040010080404040810),
    .INIT_0B (256'h0000020408102000000c0c0000000000000000003e00000004080c0000000000),
    .INIT_0C (256'h001c22201008103e003e04081020221c001c080808080c08001c22262a32221c),
    .INIT_0D (256'h000404040810203e001c22221e020418001c2220201e023e0010103e12141810),
    .INIT_0E (256'h04080c00000c0c00000c0c00000c0c00000c10203c22221c001c22221c22221c),
    .INIT_0F (256'h000800081020221c00040810201008040000003e003e00000010080402040810),
    .INIT_10 (256'h001c22020202221c001e22221e22221e0022223e2222221c001c2a2a2c20221c),
    .INIT_11 (256'h003c22223a02221c000202021e02023e003e02021e02023e000e12222222120e),
    .INIT_12 (256'h0022120a060a1222000c121010101038001c08080808081c002222223e222222),
    .INIT_13 (256'h001c22222222221c002222322a262222002222222a2a3622003e020202020202),
    .INIT_14 (256'h001e20201c02023c0022120a1e22221e002c122a2222221c000202021e22221e),
    .INIT_15 (256'h00142a2a2a2222220008142222222222001c222222222222000808080808083e),
    .INIT_16 (256'h001c04040404041c003e02040810203e00080808142222220022221408142222),
    .INIT_17 (256'h003e0000000000000000000000221408001c10101010101c0000201008040200),
    .INIT_18 (256'h001c2202021c0000001e2222261a0202003c223c201c00000000000000100804),
    .INIT_19 (256'h1c203c22223c0000000404040e042418001c023e221c0000003c2222322c2020),
    .INIT_1A (256'h00120a060a1202020c12101018001000001c0808080c000800222222261a0202),
    .INIT_1B (256'h001c2222221c000000222222261a00000022222a2a160000001c08080808080c),
    .INIT_1C (256'h001e201c021c000000020202261a000020203c32322c000002021e22221e0000),
    .INIT_1D (256'h00142a2a222200000008142222220000002c32222222000000182404040e0404),
    .INIT_1E (256'h0010080804080810003e0408103e00001c203c22222200000022140814220000),
    .INIT_1F (256'h55aa55aa55aa55aa000000304906000000040808100808040008080808080808),
    // text string 0, 32x2 starting at 0x0400
    .INIT_20 (256'h202620294d542841332d6e6174726170532029522820584e494c49580A010020),
    .INIT_21 (256'h2074694b207265747261745320294d54284e41332d6e6174726170530B030220),
    // text string 1, 32x1 starting at 0x0440
    .INIT_22 (256'h207341475046204e41332d6e61747261705320262041332d6e61747261705320),
    // text string 2, 32x7 starting at 0x0460
    .INIT_23 (256'h20797469727563655320676e696e6f6c432d69746e4120747375626f52200e20),
    .INIT_24 (256'h202020202079746976697463656e6e6f432074736f4320747365776f4c200e20),
    .INIT_25 (256'h20202020746e656d6567616e614d207265776f5020656c626978656c46200e20),
    .INIT_26 (256'h206e6f697463656c655320647261646e617453200d0c20747365646957200e20),
    .INIT_27 (256'h202020676e696d69542079616c6544207475706e492063696d616e7944200e20),
    .INIT_28 (256'h2020202020202074656b72614d206f7420656d69542074736574736146200e20),
    .INIT_29 (256'h206e6f69746172756769666e6f432073756f6963736e6f432d74736f43200e20),
    // text string 3, 32x2 starting at 0x0540
    .INIT_2A (256'h20203a746973697620657361656c70202c6f666e692065726f6d20726f462020),
    .INIT_2B (256'h202020202020206d6f632e786e696c69782e7777770870747468202020202020),
    // text string 4, 32x6 starting at 0x0580
    .INIT_2C (256'h202074696b20746e656d706f6c65766564206574656c706d6f63207369685420),
    .INIT_2D (256'h20656874206f742073736563636120746e6174736e692073656469766f727020),
    .INIT_2E (256'h2020332d6e6174726170532065687420666f2073656974696c69626170616320),
    .INIT_2F (256'h2020736564756c636e692074696b2065685420202e6e6f69746172656e654720),
    .INIT_30 (256'h202020425355202c796c70707573207265776f70202c6472616f622065687420),
    .INIT_31 (256'h202e6572617774666f73206e6f697461756c61766520646e6120656c62616320),
    // text string 5, 32x3 starting at 0x0640
    .INIT_32 (256'h20202020202020202e6567616d49206c6c6f726353203a736e6f747475422020),
    .INIT_33 (256'h20202020202020202e6567616d4920657461746f52203a6e69705320626f6e4b),
    .INIT_34 (256'h2020202020202e2e2e736e6f6974704f2065726f4d203a6873755020626f6e4b),
    // text string 6, 32x3 starting at 0x06A0
    .INIT_35 (256'h20202020202020202e6567616d49206c6c6f726353203a736e6f747475422020),
    .INIT_36 (256'h2020202020202020202e6567616d4920656c616353203a6e69705320626f6e4b),
    .INIT_37 (256'h2020202020202e2e2e736e6f6974704f2065726f4d203a6873755020626f6e4b),
    // text string 7, 32x3 starting at 0x0700
    .INIT_38 (256'h2020202e746f6c69506f7475412074726174736552203a736e6f747475422020),
    .INIT_39 (256'h202020202020202e656d756c6f56207473756a6441203a6e69705320626f6e4b),
    .INIT_3A (256'h2020202020202e2e2e736e6f6974704f2065726f4d203a6873755020626f6e4b),
    // text string 8, 32x3 starting at 0x0760
    .INIT_3B (256'h2e23206e6f69746172756769666e6f432064616f4c203a736e6f747475422020),
    .INIT_3C (256'h2e6e6f69746172756769666e6f43207463656c6553203a6e69705320626f6e4b),
    .INIT_3D (256'h2020202020202e2e2e736e6f6974704f2065726f4d203a6873755020626f6e4b),
    // text string 9, 32x6 starting at 0x07C0 (continued in next instance)
    .INIT_3E (256'h2020207365646f4d206e6f69746172756769666e6f4320796576727553200e20),
    .INIT_3F (256'h202020207974697275636553206d616572747374694220737365737341200e20),
    // unused parity
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .SIM_COLLISION_CHECK("NONE"))
  ram_inst0 (
    .ADDRA(gfx_addr[10:0]),
    .DIA(8'h00),
    .DOA(gfx_data0),
    .WEA(1'b0),
    .DOPA(),
    .DIPA(1'b0),
    .SSRA(1'b0),
    .ENA(1'b1),
    .CLKA(clk),
    .ADDRB(view_access_a[10:0]),
    .DIB(view_access_o),
    .DOB(view_access_i0),
    .WEB((view_access_w && !view_access_a[11])),
    .DOPB(),
    .DIPB(1'b0),
    .SSRB(1'b0),
    .ENB(1'b1),
    .CLKB(clk));

  wire  [7:0] gfx_data1;
  wire  [7:0] view_access_i1;

  RAMB16_S9_S9 #(
    // text string 9, 32x6 starting at 0x07C0 (continued from last instance)
    .INIT_00 (256'h20202020746e656d6567616e614d207265776f5020657461756c617645200e20),
    .INIT_01 (256'h202020200d0c2073756f6e6f7268636e795320656372756f5320797254200e20),
    .INIT_02 (256'h20202073656361667265746e49204d4152445320325244442074736554200e20),
    .INIT_03 (256'h2020796c64697061522073616564492077654e20657079746f746f7250200e20),
    // unused starting at 0x0880
    .INIT_04 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26 (256'h0000000000000000000000000000000000000000000000000000000000000000),
    // serial port message, 0x0320 bytes, starting at 0x0CE0
    .INIT_27 (256'h202620294d542841332d6e6174726170532029522820584e494c49580d0d0d0d),
    .INIT_28 (256'h6968540d0d74694b207265747261745320294d54284e41332d6e617472617053),
    .INIT_29 (256'h69766f72702074696b20746e656d706f6c65766564206574656c706d6f632073),
    .INIT_2A (256'h6962617061630d656874206f742073736563636120746e6174736e6920736564),
    .INIT_2B (256'h69746172656e654720332d6e6174726170532065687420666f2073656974696c),
    .INIT_2C (256'h72616f62206568740d2020736564756c636e692074696b2065685420202e6e6f),
    .INIT_2D (256'h6520646e6120656c62616320425355202c796c70707573207265776f70202c64),
    .INIT_2E (256'h2041332d6e6174726170530d0d2e6572617774666f73206e6f697461756c6176),
    .INIT_2F (256'h4120747375626f52202a0d0d207341475046204e41332d6e6174726170532026),
    .INIT_30 (256'h6f4320747365776f4c202a0d797469727563655320676e696e6f6c432d69746e),
    .INIT_31 (256'h7265776f5020656c626978656c46202a0d79746976697463656e6e6f43207473),
    .INIT_32 (256'h7261646e617453204f2f4920747365646957202a0d746e656d6567616e614d20),
    .INIT_33 (256'h616c6544207475706e492063696d616e7944202a0d6e6f697463656c65532064),
    .INIT_34 (256'h656b72614d206f7420656d69542074736574736146202a0d676e696d69542079),
    .INIT_35 (256'h6e6f69746172756769666e6f432073756f6963736e6f432d74736f43202a0d74),
    .INIT_36 (256'h20203a746973697620657361656c70202c6f666e692065726f6d20726f460d0d),
    .INIT_37 (256'h4d2079616d20756f590d0d6d6f632e786e696c69782e7777772f2f3a70747468),
    .INIT_38 (256'h756769666e6f63204147504620726568746f6e61206f7420746f6f4269746c75),
    .INIT_39 (256'h2079656b207265626d756e0d6120676e697373657270207962206e6f69746172),
    .INIT_3A (256'h656420656874206574616369646e69206f74202934206867756f726874203128),
    .INIT_3B (256'h20202020202020202020200d2e6e6f69746172756769666e6f63206465726973),
    .INIT_3C (256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_3D (256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_3E (256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_3F (256'h2020202020202020202020202020202020202020202020202020202020202020),
    // unused parity
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .SIM_COLLISION_CHECK("NONE"))
  ram_inst1 (
    .ADDRA(gfx_addr[10:0]),
    .DIA(8'h00),
    .DOA(gfx_data1),
    .WEA(1'b0),
    .DOPA(),
    .DIPA(1'b0),
    .SSRA(1'b0),
    .ENA(1'b1),
    .CLKA(clk),
    .ADDRB(view_access_a[10:0]),
    .DIB(view_access_o),
    .DOB(view_access_i1),
    .WEB((view_access_w && view_access_a[11])),
    .DOPB(),
    .DIPB(1'b0),
    .SSRB(1'b0),
    .ENB(1'b1),
    .CLKB(clk));

  //******************************************************************//
  // Output multiplexer.                                              //
  //******************************************************************//

  reg         gfx_muxsel;
  reg         view_muxsel;

  always @(posedge clk) gfx_muxsel <= gfx_addr[11];
  always @(posedge clk) view_muxsel <= view_access_a[11];

  assign gfx_data = gfx_muxsel ? gfx_data1 : gfx_data0;
  assign view_access_i = view_muxsel ? view_access_i1 : view_access_i0;
 
  //******************************************************************//
  //                                                                  //
  //******************************************************************//

endmodule