//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2006 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /   Vendor:        Xilinx
// \   \   \/    Version:       1.0.0
//  \   \        Filename:      pcm_fifo.v
//  /   /        Date Created:  December 25, 2006
// /___/   /\    Last Modified: December 25, 2006
// \   \  /  \
//  \___\/\___\
//
// Devices:   Spartan-3 Generation FPGA
// Purpose:   Simulation model for pcm_fifo.ngc
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

module pcm_fifo
  (
  input  wire        rd_en,
  output wire  [7:0] dout,
  input  wire        wr_en,
  input  wire  [0:0] din,
  output wire        full,
  output wire        overflow,
  output wire        empty,
  output wire        underflow,
  input  wire        wr_clk,
  input  wire        rd_clk,
  input  wire        rst
  );

  // synthesis translate_off
  
  wire NlwRenamedSig_OI_empty;
  wire NlwRenamedSig_OI_full;
  wire \BU2/N2 ;
  wire \BU2/almost_empty ;
  wire \BU2/U0/gen_as.fgas/N113 ;
  wire \BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int<0>_0 ;
  wire \BU2/U0/gen_as.fgas/N111 ;
  wire \BU2/U0/gen_as.fgas/N109 ;
  wire \BU2/U0/gen_as.fgas/N105 ;
  wire \BU2/U0/gen_as.fgas/N103 ;
  wire \BU2/U0/gen_as.fgas/N101 ;
  wire \BU2/U0/gen_as.fgas/N68 ;
  wire \BU2/U0/gen_as.fgas/N62 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp_full1 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp_full2 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/FULL_NONREG ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/comp1out ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/comp2out ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/EMPTY_NONREG ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0009 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0010 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0011 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0012 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0013 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0014 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0015 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0016 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0017_2 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0000 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0001 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0002 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0003 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0004 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0005 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0006 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0007 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0008 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0012 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0013 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0014 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0015 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0016 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0017 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0018 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0019_3 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0020_4 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0000 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0001 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0002 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0003 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0004 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0005 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0006 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0007 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0008 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0009 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0010 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0011 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt_5 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt_6 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt_7 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt_8 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt_9 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt_10 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt_11 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt_12 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt_13 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1_1_14 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt_15 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt_16 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt_17 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt_18 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt_19 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt_20 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt_21 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt_22 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt_23 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_12_rt_24 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_11_rt_25 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_10_rt_26 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt_27 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt_28 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt_29 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt_30 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt_31 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt_32 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt_33 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt_34 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt_35 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_1_36 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_12_rt_37 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_11_rt_38 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_10_rt_39 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt_40 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt_41 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt_42 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt_43 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt_44 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt_45 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt_46 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt_47 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt_48 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_49 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_12_rt_50 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_11_rt_51 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_10_rt_52 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt_53 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt_54 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt_55 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt_56 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt_57 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt_58 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt_59 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt_60 ;
  wire \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt_61 ;
  wire \BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_11 ;
  wire \BU2/U0/gen_as.fgas/normgen.olblk/guf.udrflwl/_and0000 ;
  wire \BU2/U0/gen_as.fgas/normgen.olblk/gof.ovrflwl/_and0000 ;
  wire \BU2/U0/gen_as.fgas/normgen.memblk/tmp_ram_rd_en ;
  wire \BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ;
  wire \BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_reg_63 ;
  wire \BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_reg_64 ;
  wire \BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ;
  wire \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/N0 ;
  wire \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/N1 ;
  wire NLW_VCC_P_UNCONNECTED;
  wire NLW_GND_G_UNCONNECTED;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/eqcase.big.mlp[6].mid.mcy_O_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/eqcase.big.mlp[6].mid.mcy_O_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/eqcase.big.mlp[4].mid.mcy_O_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/eqcase.big.mlp[4].mid.mcy_O_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8_DOPB<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8_DOA<0>_UNCONNECTED ;
  wire [0 : 0] din_65;
  wire [7 : 0] dout_66;
  wire [0 : 0] \BU2/data_count ;
  wire [9 : 0] \BU2/prog_empty_thresh ;
  wire [9 : 0] \BU2/prog_empty_thresh_negate ;
  wire [12 : 0] \BU2/prog_full_thresh ;
  wire [12 : 0] \BU2/prog_full_thresh_assert ;
  wire [12 : 0] \BU2/prog_full_thresh_negate ;
  wire [9 : 0] \BU2/prog_empty_thresh_assert ;
  wire [6 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 ;
  wire [5 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/carrynet ;
  wire [6 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 ;
  wire [5 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/carrynet ;
  wire [4 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1 ;
  wire [3 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/carrynet ;
  wire [4 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1 ;
  wire [3 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/carrynet ;
  wire [6 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 ;
  wire [5 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/carrynet ;
  wire [6 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 ;
  wire [5 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/carrynet ;
  wire [4 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1 ;
  wire [3 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/carrynet ;
  wire [4 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1 ;
  wire [3 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/carrynet ;
  wire [9 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 ;
  wire [9 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x ;
  wire [9 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc ;
  wire [12 : 3] \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 ;
  wire [12 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x ;
  wire [12 : 0] \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc ;
  wire [8 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy ;
  wire [9 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result ;
  wire [8 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy ;
  wire [9 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result ;
  wire [11 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy ;
  wire [12 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result ;
  wire [11 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy ;
  wire [12 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result ;
  wire [11 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy ;
  wire [12 : 0] \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result ;
  wire [0 : 0] \BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int ;
  wire [12 : 0] \BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w ;
  wire [12 : 0] \BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w ;
  wire [9 : 0] \BU2/U0/gen_as.fgas/debug_rd_pntr_w ;
  wire [9 : 0] \BU2/U0/gen_as.fgas/DEBUG_RD_PNTR ;
  wire [9 : 0] \BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r ;
  wire [12 : 0] \BU2/U0/gen_as.fgas/DEBUG_WR_PNTR ;
  wire [12 : 3] \BU2/U0/gen_as.fgas/debug_wr_pntr_r ;
  assign
    full = NlwRenamedSig_OI_full,
    empty = NlwRenamedSig_OI_empty,
    dout[7] = dout_66[7],
    dout[6] = dout_66[6],
    dout[5] = dout_66[5],
    dout[4] = dout_66[4],
    dout[3] = dout_66[3],
    dout[2] = dout_66[2],
    dout[1] = dout_66[1],
    dout[0] = dout_66[0],
    din_65[0] = din[0];
  VCC VCC_0 (
    .P(NLW_VCC_P_UNCONNECTED)
  );
  GND GND_1 (
    .G(NLW_GND_G_UNCONNECTED)
  );
  VCC \BU2/XST_VCC  (
    .P(\BU2/N2 )
  );
  GND \BU2/XST_GND  (
    .G(\BU2/data_count [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0020_SW0 .INIT = 16'h6996;
  LUT4_L \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0020_SW0  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [3]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [4]),
    .I2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [5]),
    .I3(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [6]),
    .LO(\BU2/U0/gen_as.fgas/N62 )
  );
  INV \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/_not00001_INV_0  (
    .I(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [9]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [6])
  );
  INV \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/_and00011_INV_0  (
    .I(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [1])
  );
  INV
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_lut<0>_INV_0  (
    .I(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0])
  );
  INV \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_lut<0>_INV_0  (
    .I(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0])
  );
  INV
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_lut<0>_INV_0  (
    .I(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0])
  );
  INV
 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_lut<0>_INV_0  (
    .I(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0])
  );
  INV \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_lut<0>_INV_0  (
    .I(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1_2 .INIT = 4'h2;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1_2  (
    .I0(rd_en),
    .I1(NlwRenamedSig_OI_empty),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1_1_14 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_3 .INIT = 4'h2;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_3  (
    .I0(wr_en),
    .I1(NlwRenamedSig_OI_full),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_11 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_2 .INIT = 4'h2;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_2  (
    .I0(wr_en),
    .I1(NlwRenamedSig_OI_full),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_1_36 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1_1 .INIT = 4'h2;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1_1  (
    .I0(rd_en),
    .I1(NlwRenamedSig_OI_empty),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1 )
  );
  FDP \BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int_0_1  (
    .D(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_reg_64 ),
    .PRE(rst),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int<0>_0 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_1 .INIT = 4'h2;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_1  (
    .I0(wr_en),
    .I1(NlwRenamedSig_OI_full),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_49 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0017 .INIT = 16'h6996;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0017  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [7]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [9]),
    .I2(\BU2/U0/gen_as.fgas/N113 ),
    .I3(\BU2/U0/gen_as.fgas/N101 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0017_2 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0017_SW1 .INIT = 16'h6996;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0017_SW1  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [0]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [1]),
    .I2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [2]),
    .I3(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [5]),
    .O(\BU2/U0/gen_as.fgas/N113 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/tmp_ram_rd_en1 .INIT = 8'hF2;
  LUT3 \BU2/U0/gen_as.fgas/normgen.memblk/tmp_ram_rd_en1  (
    .I0(rd_en),
    .I1(NlwRenamedSig_OI_empty),
    .I2(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int<0>_0 ),
    .O(\BU2/U0/gen_as.fgas/normgen.memblk/tmp_ram_rd_en )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0019 .INIT = 16'h9669;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0019  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [6]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [7]),
    .I2(\BU2/U0/gen_as.fgas/N111 ),
    .I3(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0014 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0019_3 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0019_SW1 .INIT = 8'h69;
  LUT3 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0019_SW1  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [5]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [4]),
    .I2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [8]),
    .O(\BU2/U0/gen_as.fgas/N111 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/EMPTY_NONREG_i1 .INIT = 16'hFF20;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/EMPTY_NONREG_i1  (
    .I0(rd_en),
    .I1(NlwRenamedSig_OI_empty),
    .I2(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/comp2out ),
    .I3(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/comp1out ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/EMPTY_NONREG )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/FULL_NONREG_i1 .INIT = 16'hF2F0;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/FULL_NONREG_i1  (
    .I0(wr_en),
    .I1(NlwRenamedSig_OI_full),
    .I2(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp_full1 ),
    .I3(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp_full2 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/FULL_NONREG )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00181 .INIT = 16'h6996;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00181  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [6]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [8]),
    .I2(\BU2/U0/gen_as.fgas/N109 ),
    .I3(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0014 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0018 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor001611_SW1 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor001611_SW1  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [5]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [7]),
    .O(\BU2/U0/gen_as.fgas/N109 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00161 .INIT = 16'h9669;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00161  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [8]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [9]),
    .I2(\BU2/U0/gen_as.fgas/N105 ),
    .I3(\BU2/U0/gen_as.fgas/N68 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0016 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00151_SW3 .INIT = 16'h6996;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00151_SW3  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [6]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [1]),
    .I2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [4]),
    .I3(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [3]),
    .O(\BU2/U0/gen_as.fgas/N105 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00152 .INIT = 16'h6996;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00152  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [8]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [9]),
    .I2(\BU2/U0/gen_as.fgas/N103 ),
    .I3(\BU2/U0/gen_as.fgas/N68 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0015 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00151_SW2 .INIT = 8'h69;
  LUT3 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00151_SW2  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [6]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [4]),
    .I2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [3]),
    .O(\BU2/U0/gen_as.fgas/N103 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00151_SW1 .INIT = 16'h6996;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00151_SW1  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [3]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [6]),
    .I2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [4]),
    .I3(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [8]),
    .O(\BU2/U0/gen_as.fgas/N101 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00161 .INIT = 8'h96;
  LUT3 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00161  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [7]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [8]),
    .I2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0014 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0016 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00171 .INIT = 16'h6996;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00171  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [6]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [7]),
    .I2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [8]),
    .I3(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0014 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0017 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [9]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt_5 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [9]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt_15 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_12_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_12_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [12]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_12_rt_24 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_12_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_12_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [12]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_12_rt_37 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_12_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_12_rt  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [12]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_12_rt_50 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt_6 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [7]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt_7 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt_8 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [5]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt_9 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt_10 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt_11 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt_12 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt_13 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt_16 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [7]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt_17 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt_18 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [5]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt_19 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt_20 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt_21 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt_22 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt_23 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_11_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_11_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [11]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_11_rt_25 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_10_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_10_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [10]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_10_rt_26 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [9]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt_27 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt_28 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [7]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt_29 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt_30 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [5]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt_31 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt_32 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt_33 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt_34 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt_35 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_11_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_11_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [11]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_11_rt_38 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_10_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_10_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [10]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_10_rt_39 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [9]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt_40 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt_41 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [7]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt_42 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt_43 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [5]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt_44 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt_45 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt_46 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt_47 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt_48 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_11_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_11_rt  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [11]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_11_rt_51 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_10_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_10_rt  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [10]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_10_rt_52 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [9]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt_53 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt_54 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [7]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt_55 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt_56 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [5]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt_57 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt_58 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt_59 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt_60 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt .INIT = 4'h2;
  LUT1 \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt_61 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/_and00001 .INIT = 4'h1;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/_and00001  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [0]),
    .I1(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/_and00001 .INIT = 4'h1;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/_and00001  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [0]),
    .I1(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/_and00011 .INIT = 8'h09;
  LUT3 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/_and00011  (
    .I0(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [0]),
    .I1(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [3]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/_and00011 .INIT = 8'h09;
  LUT3 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/_and00011  (
    .I0(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [0]),
    .I1(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [3]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/_and00021 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/_and00021  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [4]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [1]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [5]),
    .I3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/_and00021 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/_and00021  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [4]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [1]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [5]),
    .I3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/_and00001 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/_and00001  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [3]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [0]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [4]),
    .I3(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1 [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/_and00001 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/_and00001  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [3]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [0]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [4]),
    .I3(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1 [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/_and00031 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/_and00031  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [6]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [3]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [7]),
    .I3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/_and00031 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/_and00031  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [6]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [3]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [7]),
    .I3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/_and00011 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/_and00011  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [5]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [2]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [6]),
    .I3(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1 [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/_and00011 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/_and00011  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [5]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [2]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [6]),
    .I3(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1 [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/_and00041 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/_and00041  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [8]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [5]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [9]),
    .I3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/_and00041 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/_and00041  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [8]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [5]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [9]),
    .I3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/_and00021 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/_and00021  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [7]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [4]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [8]),
    .I3(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [5]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1 [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/_and00021 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/_and00021  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [7]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [4]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [8]),
    .I3(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [5]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1 [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/_and00051 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/_and00051  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [10]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [7]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [11]),
    .I3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 [5])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/_and00051 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/_and00051  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [10]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [7]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [11]),
    .I3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 [5])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/_and00031 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/_and00031  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [9]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [6]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [10]),
    .I3(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [7]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1 [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/_and00031 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/_and00031  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [9]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [6]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [10]),
    .I3(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [7]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1 [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/_and00041 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/_and00041  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [11]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [8]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [12]),
    .I3(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [9]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1 [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/_and00041 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/_and00041  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [11]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [8]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [12]),
    .I3(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [9]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1 [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/_not00001 .INIT = 4'h9;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/_not00001  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [12]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [9]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 [6])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/_not00001 .INIT = 4'h9;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/_not00001  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [12]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [9]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 [6])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00151_SW0 .INIT = 8'h69;
  LUT3 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00151_SW0  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [5]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [7]),
    .I2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [2]),
    .O(\BU2/U0/gen_as.fgas/N68 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0020 .INIT = 16'h6996;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0020  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [7]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [8]),
    .I2(\BU2/U0/gen_as.fgas/N62 ),
    .I3(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0014 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0020_4 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00141 .INIT = 16'h6996;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00141  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [3]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [4]),
    .I2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [5]),
    .I3(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0011 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0014 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00131 .INIT = 8'h96;
  LUT3 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00131  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [4]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [5]),
    .I2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0011 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0013 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00122 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00122  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [5]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0011 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0012 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00152 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00152  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [8]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0014 ),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0015 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1 .INIT = 4'h2;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1  (
    .I0(wr_en),
    .I1(NlwRenamedSig_OI_full),
    .O(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00111 .INIT = 16'h6996;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00111  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [7]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [6]),
    .I2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [8]),
    .I3(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [9]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0011 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00141 .INIT = 16'h6996;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00141  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [9]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [10]),
    .I2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [11]),
    .I3(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [12]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0014 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00101 .INIT = 8'h96;
  LUT3 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00101  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [8]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [9]),
    .I2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [7]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0010 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00131 .INIT = 8'h96;
  LUT3 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00131  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [10]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [11]),
    .I2(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [12]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0013 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00081 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00081  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [1]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0008 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00091 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00091  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [8]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [9]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0009 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00061 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00061  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [2]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0006 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00051 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00051  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [3]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0005 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00071 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00071  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [1]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0007 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00031 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00031  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [5]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0003 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00021 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00021  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [6]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [7]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0002 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00041 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00041  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [4]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [5]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0004 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00001 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00001  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [8]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [9]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0000 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00111 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00111  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [1]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0011 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00011 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor00011  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [7]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0001 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00121 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00121  (
    .I0(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [11]),
    .I1(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [12]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0012 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00081 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00081  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [3]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0008 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00101 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00101  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [1]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0010 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00091 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00091  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [2]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0009 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00051 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00051  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [6]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [7]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0005 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00071 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00071  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [4]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [5]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0007 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00061 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00061  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [5]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0006 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00021 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00021  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [10]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [9]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0002 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00041 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00041  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [7]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0004 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00031 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00031  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [8]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [9]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0003 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00001 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00001  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [11]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [12]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0000 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00011 .INIT = 4'h6;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor00011  (
    .I0(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [10]),
    .I1(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [11]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0001 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.olblk/guf.udrflwl/_and00001 .INIT = 4'h8;
  LUT2 \BU2/U0/gen_as.fgas/normgen.olblk/guf.udrflwl/_and00001  (
    .I0(NlwRenamedSig_OI_empty),
    .I1(rd_en),
    .O(\BU2/U0/gen_as.fgas/normgen.olblk/guf.udrflwl/_and0000 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.olblk/gof.ovrflwl/_and00001 .INIT = 4'h8;
  LUT2 \BU2/U0/gen_as.fgas/normgen.olblk/gof.ovrflwl/_and00001  (
    .I0(NlwRenamedSig_OI_full),
    .I1(wr_en),
    .O(\BU2/U0/gen_as.fgas/normgen.olblk/gof.ovrflwl/_and0000 )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/_and00041 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/_and00041  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [8]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [5]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [9]),
    .I3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/_and00051 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/_and00051  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [10]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [7]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [11]),
    .I3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 [5])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/_and00021 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/_and00021  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [4]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [1]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [5]),
    .I3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/_and00031 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/_and00031  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [6]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [3]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [7]),
    .I3(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/_and00031 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/_and00031  (
    .I0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [6]),
    .I1(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [9]),
    .I2(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [7]),
    .I3(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [10]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1 [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/_and00021 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/_and00021  (
    .I0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [4]),
    .I1(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [7]),
    .I2(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [5]),
    .I3(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1 [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/_and00041 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/_and00041  (
    .I0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [8]),
    .I1(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [11]),
    .I2(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [9]),
    .I3(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [12]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1 [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/_and00001 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/_and00001  (
    .I0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [0]),
    .I1(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [3]),
    .I2(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [1]),
    .I3(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1 [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/_and00011 .INIT = 16'h9009;
  LUT4 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/_and00011  (
    .I0(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [2]),
    .I1(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [5]),
    .I2(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [3]),
    .I3(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1 [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/_and00011 .INIT = 8'h09;
  LUT3 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/_and00011  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [3]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [0]),
    .I2(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/_not00001 .INIT = 4'h9;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/_not00001  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [12]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [9]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 [6])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/_and00051 .INIT = 4'h1;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/_and00051  (
    .I0(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [7]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [5])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/_and00001 .INIT = 4'h1;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/_and00001  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [0]),
    .I1(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/_and00041 .INIT = 4'h1;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/_and00041  (
    .I0(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [5]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/_and00031 .INIT = 4'h1;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/_and00031  (
    .I0(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [3]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/_and00021 .INIT = 4'h1;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/_and00021  (
    .I0(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [1]),
    .I1(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/_and00041 .INIT = 4'h1;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/_and00041  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [11]),
    .I1(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [12]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1 [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/_and00031 .INIT = 4'h1;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/_and00031  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [9]),
    .I1(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [10]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1 [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/_and00021 .INIT = 4'h1;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/_and00021  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [7]),
    .I1(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [8]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1 [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/_and00011 .INIT = 4'h1;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/_and00011  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [5]),
    .I1(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1 [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/_and00001 .INIT = 4'h1;
  LUT2 \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/_and00001  (
    .I0(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [3]),
    .I1(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1 [0])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/eqcase.big.mlp[6].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/carrynet [5]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 [6]),
    .O(\NLW_BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/eqcase.big.mlp[6].mid.mcy_O_UNCONNECTED )
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/eqcase.big.mlp[5].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/carrynet [4]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 [5]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/carrynet [5])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/eqcase.big.mlp[4].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/carrynet [3]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/carrynet [4])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/eqcase.big.mlp[3].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/carrynet [2]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/carrynet [3])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/eqcase.big.mlp[2].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/carrynet [1]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/carrynet [2])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/eqcase.big.mlp[1].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/carrynet [0]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/carrynet [1])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/eqcase.big.mlp[0].fst.mfirst  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [0]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/v1 [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf1/carrynet [0])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/eqcase.big.mlp[6].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/carrynet [5]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [6]),
    .O(\NLW_BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/eqcase.big.mlp[6].mid.mcy_O_UNCONNECTED )
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/eqcase.big.mlp[5].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/carrynet [4]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [5]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/carrynet [5])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/eqcase.big.mlp[4].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/carrynet [3]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/carrynet [4])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/eqcase.big.mlp[3].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/carrynet [2]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/carrynet [3])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/eqcase.big.mlp[2].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/carrynet [1]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/carrynet [2])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/eqcase.big.mlp[1].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/carrynet [0]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/carrynet [1])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/eqcase.big.mlp[0].fst.mfirst  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [0]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/carrynet [0])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/eqcase.big.mlp[4].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/carrynet [3]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1 [4]),
    .O(\NLW_BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/eqcase.big.mlp[4].mid.mcy_O_UNCONNECTED )
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/eqcase.big.mlp[3].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/carrynet [2]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1 [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/carrynet [3])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/eqcase.big.mlp[2].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/carrynet [1]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1 [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/carrynet [2])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/eqcase.big.mlp[1].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/carrynet [0]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1 [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/carrynet [1])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/eqcase.big.mlp[0].fst.mfirst  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [0]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/v1 [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae1/carrynet [0])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/eqcase.big.mlp[4].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/carrynet [3]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1 [4]),
    .O(\NLW_BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/eqcase.big.mlp[4].mid.mcy_O_UNCONNECTED )
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/eqcase.big.mlp[3].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/carrynet [2]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1 [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/carrynet [3])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/eqcase.big.mlp[2].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/carrynet [1]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1 [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/carrynet [2])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/eqcase.big.mlp[1].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/carrynet [0]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1 [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/carrynet [1])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/eqcase.big.mlp[0].fst.mfirst  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [0]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/v1 [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aelogic/cae2/carrynet [0])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/eqcase.big.mlp[6].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/carrynet [5]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp_full1 )
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/eqcase.big.mlp[5].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/carrynet [4]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 [5]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/carrynet [5])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/eqcase.big.mlp[4].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/carrynet [3]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/carrynet [4])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/eqcase.big.mlp[3].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/carrynet [2]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/carrynet [3])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/eqcase.big.mlp[2].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/carrynet [1]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/carrynet [2])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/eqcase.big.mlp[1].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/carrynet [0]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/carrynet [1])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/eqcase.big.mlp[0].fst.mfirst  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [0]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/v1 [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp1/carrynet [0])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/eqcase.big.mlp[6].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/carrynet [5]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 [6]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp_full2 )
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/eqcase.big.mlp[5].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/carrynet [4]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 [5]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/carrynet [5])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/eqcase.big.mlp[4].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/carrynet [3]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/carrynet [4])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/eqcase.big.mlp[3].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/carrynet [2]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/carrynet [3])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/eqcase.big.mlp[2].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/carrynet [1]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/carrynet [2])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/eqcase.big.mlp[1].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/carrynet [0]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/carrynet [1])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/eqcase.big.mlp[0].fst.mfirst  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [0]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/v1 [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/comp2/carrynet [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/RAM_FULL_i .INIT = 1'b1;
  FDP \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/RAM_FULL_i  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/flogic/FULL_NONREG ),
    .PRE(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(NlwRenamedSig_OI_full)
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/eqcase.big.mlp[4].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/carrynet [3]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1 [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/comp1out )
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/eqcase.big.mlp[3].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/carrynet [2]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1 [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/carrynet [3])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/eqcase.big.mlp[2].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/carrynet [1]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1 [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/carrynet [2])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/eqcase.big.mlp[1].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/carrynet [0]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1 [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/carrynet [1])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/eqcase.big.mlp[0].fst.mfirst  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [0]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/v1 [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c1/carrynet [0])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/eqcase.big.mlp[4].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/carrynet [3]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1 [4]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/comp2out )
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/eqcase.big.mlp[3].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/carrynet [2]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1 [3]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/carrynet [3])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/eqcase.big.mlp[2].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/carrynet [1]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1 [2]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/carrynet [2])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/eqcase.big.mlp[1].mid.mcy  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/carrynet [0]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1 [1]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/carrynet [1])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/eqcase.big.mlp[0].fst.mfirst  (
    .CI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [0]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/v1 [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/c2/carrynet [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/RAM_EMPTY_i .INIT = 1'b1;
  FDP \BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/RAM_EMPTY_i  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/elogic/EMPTY_NONREG ),
    .PRE(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(NlwRenamedSig_OI_empty)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_9 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_9  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [9]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [9])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_8 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_8  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0009 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [8])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_7 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_7  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0010 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [7])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_6 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_6  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0011 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [6])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_5 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_5  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0012 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [5])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_4 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_4  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0013 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_3 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_3  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0014 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_2 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_2  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0015 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_1 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_1  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0016 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_0 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/PNTR_B_0  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0017_2 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_rd_pntr_w [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_9 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_9  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [9]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [9])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_8 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_8  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [8]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [8])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_7 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_7  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [7]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [7])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_6 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_6  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [6]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [6])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_5 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_5  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [5]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [5])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_4 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_4  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [4]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_3 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_3  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [3]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_2 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_2  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [2]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_1 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_1  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [1]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_0 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2_0  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [0]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x2 [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_9 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_9  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [9]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [9])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_8 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_8  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [8]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [8])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_7 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_7  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [7]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [7])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_6 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_6  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [6]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [6])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_5 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_5  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [5]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [5])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_4 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_4  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [4]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_3 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_3  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [3]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_2 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_2  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [2]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_1 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_1  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [1]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_0 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x_0  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [0]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_x [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_9 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_9  (
    .D(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [9]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [9])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_8 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_8  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0000 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [8])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_7 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_7  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0001 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [7])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_6 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_6  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0002 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [6])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_5 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_5  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0003 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [5])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_4 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_4  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0004 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_3 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_3  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0005 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_2 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_2  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0006 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_1 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_1  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0007 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_0 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc_0  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/_xor0008 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.rdx/pntr_gc [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_12 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_12  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [12]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [12])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_11 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_11  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0012 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [11])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_10 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_10  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0013 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [10])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_9 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_9  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0014 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [9])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_8 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_8  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0015 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [8])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_7 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_7  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0016 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [7])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_6 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_6  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0017 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [6])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_5 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_5  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0018 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [5])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_4 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_4  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0019_3 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_3 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/PNTR_B_3  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0020_4 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_r [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_12 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_12  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [12]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [12])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_11 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_11  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [11]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [11])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_10 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_10  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [10]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [10])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_9 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_9  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [9]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [9])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_8 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_8  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [8]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [8])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_7 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_7  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [7]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [7])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_6 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_6  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [6]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [6])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_5 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_5  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [5]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [5])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_4 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_4  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [4]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_3 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2_3  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [3]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x2 [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_12 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_12  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [12]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [12])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_11 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_11  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [11]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [11])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_10 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_10  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [10]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [10])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_9 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_9  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [9]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [9])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_8 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_8  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [8]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [8])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_7 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_7  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [7]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [7])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_6 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_6  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [6]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [6])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_5 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_5  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [5]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [5])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_4 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_4  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [4]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_3 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_3  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [3]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_2 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_2  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [2]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_1 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_1  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [1]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_0 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x_0  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [0]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_x [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_12 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_12  (
    .D(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [12]),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [12])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_11 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_11  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0000 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [11])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_10 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_10  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0001 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [10])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_9 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_9  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0002 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [9])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_8 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_8  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0003 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [8])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_7 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_7  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0004 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [7])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_6 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_6  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0005 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [6])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_5 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_5  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0006 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [5])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_4 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_4  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0007 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_3 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_3  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0008 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_2 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_2  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0009 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_1 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_1  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0010 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_0 .INIT = 1'b0;
  FDC \BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc_0  (
    .D(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/_xor0011 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.flblk/clkmod/cx.wrx/pntr_gc [0])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [8]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt_5 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [9])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt_6 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [8])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt_6 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [8])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<7>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt_7 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [7])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt_7 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<6>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt_8 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [6])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt_8 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<5>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt_9 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [5])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt_9 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<4>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt_10 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [4])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt_10 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<3>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt_11 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [3])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt_11 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<2>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt_12 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [2])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt_12 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<1>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt_13 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [1])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt_13 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<0>  (
    .CI(\BU2/almost_empty ),
    .DI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [0]),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [9]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1_1_14 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [9])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [8]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1_1_14 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [8])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [6]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1_1_14 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [6])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [5]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1_1_14 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [5])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [7]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1_1_14 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [7])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [3]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1_1_14 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [2]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1_1_14 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [4]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1_1_14 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_0 .INIT = 1'b1;
  FDPE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_0  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1_1_14 ),
    .PRE(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [1]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1_1_14 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_rd_pntr_plus1_r [1])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [8]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt_15 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [9])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt_16 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [8])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt_16 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [8])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<7>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt_17 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [7])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt_17 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<6>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt_18 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [6])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt_18 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<5>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt_19 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [5])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt_19 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<4>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt_20 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [4])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt_20 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<3>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt_21 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [3])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt_21 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<2>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt_22 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [2])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt_22 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<1>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt_23 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [1])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt_23 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<0>  (
    .CI(\BU2/almost_empty ),
    .DI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [0]),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [9]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [9])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [8]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [8])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [7]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [7])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [6]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [6])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [5]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [5])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [4]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [3]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [2]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [1]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_0 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_0  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_rd_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/rpremod/RAM_RD_EN1 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [0])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<12>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [11]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_12_rt_24 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [12])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<11>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [10]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_11_rt_25 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [11])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<11>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [10]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_11_rt_25 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [11])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<10>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [9]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_10_rt_26 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [10])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<10>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [9]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_10_rt_26 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [10])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [8]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt_27 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [9])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<9>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [8]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt_27 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [9])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt_28 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [8])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt_28 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [8])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<7>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt_29 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [7])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt_29 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<6>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt_30 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [6])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt_30 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<5>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt_31 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [5])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt_31 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<4>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt_32 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [4])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt_32 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<3>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt_33 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [3])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt_33 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<2>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt_34 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [2])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt_34 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<1>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt_35 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [1])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt_35 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<0>  (
    .CI(\BU2/almost_empty ),
    .DI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [0]),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_11 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_11  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [11]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_1_36 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [11])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_10 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_10  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [10]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_1_36 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [10])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_12 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_12  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [12]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_1_36 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [12])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [9]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_1_36 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [9])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [8]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_1_36 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [8])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [7]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_1_36 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [7])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [6]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_1_36 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [6])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [4]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_1_36 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [3]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_1_36 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [5]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_1_36 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [5])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [2]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_1_36 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1 .INIT = 1'b1;
  FDPE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [1]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_1_36 ),
    .PRE(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_0 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_0  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus2/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_1_36 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus2_w [0])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<12>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [11]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_12_rt_37 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [12])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<11>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [10]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_11_rt_38 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [11])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<11>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [10]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_11_rt_38 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [11])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<10>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [9]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_10_rt_39 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [10])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<10>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [9]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_10_rt_39 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [10])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [8]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt_40 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [9])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<9>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [8]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt_40 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [9])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt_41 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [8])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt_41 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [8])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<7>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt_42 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [7])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt_42 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<6>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt_43 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [6])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt_43 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<5>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt_44 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [5])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt_44 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<4>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt_45 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [4])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt_45 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<3>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt_46 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [3])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt_46 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<2>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt_47 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [2])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt_47 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<1>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt_48 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [1])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt_48 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<0>  (
    .CI(\BU2/almost_empty ),
    .DI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [0]),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_11 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_11  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [11]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_49 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [11])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_10 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_10  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [10]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_49 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [10])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_12 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_12  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [12]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_49 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [12])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [9]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_49 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [9])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [8]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_49 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [8])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [7]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_49 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [7])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [6]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_49 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [6])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [4]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_49 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [3]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_49 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [5]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_49 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [5])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [2]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_49 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [1]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_49 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_0 .INIT = 1'b1;
  FDPE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_0  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr_plus1/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_49 ),
    .PRE(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/debug_wr_pntr_plus1_w [0])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<12>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [11]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_12_rt_50 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [12])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<11>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [10]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_11_rt_51 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [11])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<11>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [10]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_11_rt_51 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [11])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<10>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [9]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_10_rt_52 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [10])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<10>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [9]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_10_rt_52 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [10])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<9>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [8]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt_53 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [9])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<9>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [8]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9_rt_53 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [9])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<8>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt_54 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [8])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<8>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8_rt_54 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [8])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<7>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt_55 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [7])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<7>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7_rt_55 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [7])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<6>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt_56 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [6])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<6>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6_rt_56 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [6])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<5>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt_57 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [5])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<5>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5_rt_57 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [5])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<4>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt_58 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [4])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<4>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4_rt_58 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [4])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<3>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt_59 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [3])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<3>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3_rt_59 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [3])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<2>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt_60 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [2])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<2>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2_rt_60 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [2])
  );
  XORCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_xor<1>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0]),
    .LI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt_61 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [1])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<1>  (
    .CI(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0]),
    .DI(\BU2/almost_empty ),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1_rt_61 ),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [1])
  );
  MUXCY \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy<0>  (
    .CI(\BU2/almost_empty ),
    .DI(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [0]),
    .S(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0]),
    .O(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Mcount_count_cy [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_12 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_12  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [12]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_11 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [12])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_11 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_11  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [11]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_11 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [11])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_10 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_10  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [10]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_11 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [10])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_9  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [9]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_11 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [9])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_8  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [8]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_11 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [8])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_7  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [7]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_11 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [7])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_6  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [6]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_11 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [6])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_5  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [5]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_11 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [5])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_4  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [4]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_11 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [4])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_3  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [3]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_11 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [3])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_2  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [2]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_11 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [2])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_1  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [1]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_11 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [1])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_0 .INIT = 1'b0;
  FDCE \BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/count_0  (
    .D(\BU2/U0/gen_as.fgas/normgen.cntblk/gen_cntr.gen_wr_cntr/gen_bin_cnt_top.bin_cnt_top/gen_bsc_bin_cnt.bld_bin_cnt/Result [0]),
    .CE(\BU2/U0/gen_as.fgas/normgen.flblk/wpremod/RAM_WR_EN1_11 ),
    .CLR(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [0])
  );
  defparam \BU2/U0/gen_as.fgas/normgen.olblk/guf.udrflwl/UNDERFLOW .INIT = 1'b0;
  FD \BU2/U0/gen_as.fgas/normgen.olblk/guf.udrflwl/UNDERFLOW  (
    .D(\BU2/U0/gen_as.fgas/normgen.olblk/guf.udrflwl/_and0000 ),
    .C(rd_clk),
    .Q(underflow)
  );
  defparam \BU2/U0/gen_as.fgas/normgen.olblk/gof.ovrflwl/OVERFLOW .INIT = 1'b0;
  FD \BU2/U0/gen_as.fgas/normgen.olblk/gof.ovrflwl/OVERFLOW  (
    .D(\BU2/U0/gen_as.fgas/normgen.olblk/gof.ovrflwl/_and0000 ),
    .C(wr_clk),
    .Q(overflow)
  );
  FDP \BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int_0  (
    .D(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_reg_64 ),
    .PRE(rst),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0])
  );
  FDPE \BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_reg  (
    .D(\BU2/almost_empty ),
    .CE(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .PRE(rst),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_reg_63 )
  );
  FDP \BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb  (
    .D(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_reg_63 ),
    .PRE(rst),
    .C(wr_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 )
  );
  FDPE \BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_reg  (
    .D(\BU2/almost_empty ),
    .CE(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .PRE(rst),
    .C(rd_clk),
    .Q(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_reg_64 )
  );
  VCC \BU2/U0/gen_as.fgas/XST_VCC  (
    .P(\BU2/U0/gen_as.fgas/normgen.flblk/thrmod/aflogic/caf2/v1 [0])
  );
  GND \BU2/U0/gen_as.fgas/XST_GND  (
    .G(\BU2/almost_empty )
  );
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_00 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_01 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_02 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_03 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_04 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_05 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_06 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_07 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_08 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_09 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_0A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_0B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_0C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_0D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_0E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_0F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_14 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_15 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_16 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_17 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_18 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_19 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_1A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_1B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_1C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_1D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_1E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_1F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_20 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_21 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_22 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_23 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_24 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_25 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_26 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_27 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_28 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_29 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_2A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_2B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_2C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_2D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_2E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_2F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_30 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_31 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_32 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_33 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_34 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_35 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_36 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_37 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_38 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_39 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_3A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_3B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_3C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_3D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_3E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_3F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INITP_00 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INITP_01 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INITP_02 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INITP_03 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INITP_04 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INITP_05 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INITP_06 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INITP_07 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .WRITE_MODE_A = "WRITE_FIRST";
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_A = 4'h0;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .SRVAL_A = 4'h0;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .WRITE_MODE_B = "WRITE_FIRST";
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .INIT_B = 12'h000;
  defparam \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8 .SRVAL_B = 12'h000;
  RAMB16_S1_S9 \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8  (
    .ENA(\BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/N1 ),
    .ENB(\BU2/U0/gen_as.fgas/normgen.memblk/tmp_ram_rd_en ),
    .SSRA(\BU2/U0/gen_as.fgas/normgen.inblk/wr_rst_fb_62 ),
    .SSRB(\BU2/U0/gen_as.fgas/normgen.inblk/rd_rst_int [0]),
    .WEA(\BU2/U0/gen_as.fgas/DEBUG_RAM_WR_EN ),
    .WEB(\BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/N0 ),
    .CLKA(wr_clk),
    .CLKB(rd_clk),
    .DIB({\BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/N0 , \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/N0 , 
\BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/N0 , \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/N0 , 
\BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/N0 , \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/N0 , 
\BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/N0 , \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/N0 }),
    .DOPB({\NLW_BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8_DOPB<0>_UNCONNECTED }),
    .ADDRB({\BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/N0 , \BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [9], \BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [8], 
\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [7], \BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [6], \BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [5], 
\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [4], \BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [3], \BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [2], 
\BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [1], \BU2/U0/gen_as.fgas/DEBUG_RD_PNTR [0]}),
    .ADDRA({\BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/N0 , \BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [12], \BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [11], 
\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [10], \BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [9], \BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [8], 
\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [7], \BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [6], \BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [5], 
\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [4], \BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [3], \BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [2], 
\BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [1], \BU2/U0/gen_as.fgas/DEBUG_WR_PNTR [0]}),
    .DIA({din_65[0]}),
    .DIPB({\BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/N0 }),
    .DOB({dout_66[0], dout_66[1], dout_66[2], dout_66[3], dout_66[4], dout_66[5], dout_66[6], dout_66[7]}),
    .DOA({\NLW_BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/B8_DOA<0>_UNCONNECTED })
  );
  GND \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/GND  (
    .G(\BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/N0 )
  );
  VCC \BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/VCC  (
    .P(\BU2/U0/gen_as.fgas/normgen.memblk/mem1nc.coreinst/N1 )
  );

// synthesis translate_on

endmodule