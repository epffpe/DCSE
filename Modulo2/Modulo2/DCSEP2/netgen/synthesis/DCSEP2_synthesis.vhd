--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: K.39
--  \   \         Application: netgen
--  /   /         Filename: DCSEP2_synthesis.vhd
-- /___/   /\     Timestamp: Tue Dec 09 19:28:34 2008
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm DCSEP2 -w -dir netgen/synthesis -ofmt vhdl -sim DCSEP2.ngc DCSEP2_synthesis.vhd 
-- Device	: xc3s700a-4-fg484
-- Input file	: DCSEP2.ngc
-- Output file	: D:\Designs\DCSE\Modulo2\Modulo2\DCSEP2\netgen\synthesis\DCSEP2_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: DCSEP2
-- Xilinx	: D:\Xilinx\10.1\ISE
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Development System Reference Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity DCSEP2 is
  port (
    rst_n : in STD_LOGIC := 'X'; 
    hold : in STD_LOGIC := 'X'; 
    up_down : in STD_LOGIC := 'X'; 
    clk50 : in STD_LOGIC := 'X'; 
    seg_out : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    digit_out : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    inter : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end DCSEP2;

architecture Structure of DCSEP2 is
  signal Inst_DISPLAY_Mcount_khertz_count_cy_1_rt_2 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_cy_2_rt_4 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_cy_3_rt_6 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_cy_4_rt_8 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_cy_5_rt_10 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_cy_6_rt_12 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_cy_7_rt_14 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_cy_8_rt_16 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_eqn_0 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_eqn_1 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_eqn_2 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_eqn_3 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_eqn_4 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_eqn_5 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_eqn_6 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_eqn_7 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_eqn_8 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_eqn_9 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_xor_9_rt_28 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_mhertz_count : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_mhertz_count12_30 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_mhertz_count12_bdd0 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_mhertz_count15_32 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_mhertz_count3 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_mhertz_count6 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_mhertz_count9 : STD_LOGIC; 
  signal Inst_DISPLAY_N1 : STD_LOGIC; 
  signal Inst_DISPLAY_khertz_count_cmp_eq0000 : STD_LOGIC; 
  signal Inst_DISPLAY_khertz_count_cmp_eq000015_79 : STD_LOGIC; 
  signal Inst_DISPLAY_khertz_en_80 : STD_LOGIC; 
  signal Inst_DISPLAY_khertz_en_mux0002 : STD_LOGIC; 
  signal Inst_DISPLAY_mhertz_count_cmp_eq0000_88 : STD_LOGIC; 
  signal Inst_DISPLAY_mhertz_en_89 : STD_LOGIC; 
  signal Inst_DISPLAY_rst_n_inv : STD_LOGIC; 
  signal Inst_DISPLAY_seg_mux0002_0_1 : STD_LOGIC; 
  signal Inst_DISPLAY_seg_mux0002_0_2_101 : STD_LOGIC; 
  signal Inst_DISPLAY_seg_mux0002_1_1_103 : STD_LOGIC; 
  signal Inst_DISPLAY_seg_mux0002_1_2_104 : STD_LOGIC; 
  signal Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd1_111 : STD_LOGIC; 
  signal Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd1_In : STD_LOGIC; 
  signal Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd2_113 : STD_LOGIC; 
  signal Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_ramdump_Inst_clkscale_Mcount_contador_cy_1_rt_117 : STD_LOGIC; 
  signal Inst_ramdump_Inst_clkscale_Mcount_contador_cy_2_rt_119 : STD_LOGIC; 
  signal Inst_ramdump_Inst_clkscale_Mcount_contador_cy_3_rt_121 : STD_LOGIC; 
  signal Inst_ramdump_Inst_clkscale_Mcount_contador_cy_4_rt_123 : STD_LOGIC; 
  signal Inst_ramdump_Inst_clkscale_Mcount_contador_cy_5_rt_125 : STD_LOGIC; 
  signal Inst_ramdump_Inst_clkscale_Mcount_contador_xor_6_rt_127 : STD_LOGIC; 
  signal Inst_ramdump_Inst_clkscale_contador_61 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_10_rt_138 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_1_rt_140 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_2_rt_142 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_3_rt_144 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_4_rt_146 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_5_rt_148 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_6_rt_150 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_7_rt_152 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_8_rt_154 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_9_rt_156 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_0 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_1 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_10 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_11 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_2 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_3 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_4 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_5 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_6 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_7 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_8 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_9 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_11_rt_170 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_clk10ms_171 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq0000 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000011_185 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000016_186 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000028_187 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divisorRAM_Mmux_rate1 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divisorRAM_clk2Hz_189 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divisorRAM_clk2Hz_not0001 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divisorRAM_contador1_cmp_eq0000 : STD_LOGIC; 
  signal Inst_ramdump_Inst_reader_hold_220 : STD_LOGIC; 
  signal Inst_ramdump_Inst_reader_hold_inv : STD_LOGIC; 
  signal Inst_ramdump_Inst_reader_state_0_mux0000 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_10_rt_226 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_11_rt_228 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_12_rt_230 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_13_rt_232 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_14_rt_234 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_1_rt_236 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_2_rt_238 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_3_rt_240 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_4_rt_242 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_5_rt_244 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_6_rt_246 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_7_rt_248 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_8_rt_250 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_9_rt_252 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_0 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_1 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_10 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_11 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_12 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_13 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_14 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_15 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_2 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_3 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_4 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_5 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_6 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_7 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_8 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_9 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_xor_15_rt_270 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_contador_cmp_eq0000 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_contador_cmp_eq000010_288 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_contador_cmp_eq000021_289 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_contador_cmp_eq000043_290 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_contador_cmp_eq000055_291 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_tick_292 : STD_LOGIC; 
  signal Inst_ramdump_clkRAM : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N311 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal Result_0_Q : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_0_2 : STD_LOGIC; 
  signal Result_0_3 : STD_LOGIC; 
  signal Result_0_4 : STD_LOGIC; 
  signal Result_0_5 : STD_LOGIC; 
  signal Result_10_Q : STD_LOGIC; 
  signal Result_10_1 : STD_LOGIC; 
  signal Result_11_Q : STD_LOGIC; 
  signal Result_11_1 : STD_LOGIC; 
  signal Result_12_Q : STD_LOGIC; 
  signal Result_13_Q : STD_LOGIC; 
  signal Result_14_Q : STD_LOGIC; 
  signal Result_15_Q : STD_LOGIC; 
  signal Result_1_Q : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_1_2 : STD_LOGIC; 
  signal Result_1_3 : STD_LOGIC; 
  signal Result_1_4 : STD_LOGIC; 
  signal Result_1_5 : STD_LOGIC; 
  signal Result_2_Q : STD_LOGIC; 
  signal Result_2_2 : STD_LOGIC; 
  signal Result_2_3 : STD_LOGIC; 
  signal Result_2_4 : STD_LOGIC; 
  signal Result_2_5 : STD_LOGIC; 
  signal Result_3_Q : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_3_2 : STD_LOGIC; 
  signal Result_3_3 : STD_LOGIC; 
  signal Result_4_Q : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal Result_4_2 : STD_LOGIC; 
  signal Result_4_3 : STD_LOGIC; 
  signal Result_5_Q : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Result_5_2 : STD_LOGIC; 
  signal Result_5_3 : STD_LOGIC; 
  signal Result_6_Q : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_6_2 : STD_LOGIC; 
  signal Result_6_3 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal Result_7_2 : STD_LOGIC; 
  signal Result_7_3 : STD_LOGIC; 
  signal Result_8_Q : STD_LOGIC; 
  signal Result_8_1 : STD_LOGIC; 
  signal Result_9_Q : STD_LOGIC; 
  signal Result_9_1 : STD_LOGIC; 
  signal clk50_BUFGP_359 : STD_LOGIC; 
  signal hold_IBUF_373 : STD_LOGIC; 
  signal inter_0_IBUF_376 : STD_LOGIC; 
  signal inter_1_IBUF_377 : STD_LOGIC; 
  signal rst_n_IBUF_379 : STD_LOGIC; 
  signal up_down_IBUF_389 : STD_LOGIC; 
  signal up_down_inv : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_CLKB_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ENB_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_SSRB_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_WEB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_WEB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_WEB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_WEB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOPB_0_UNCONNECTED : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Inst_DISPLAY_Mcount_khertz_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Inst_DISPLAY_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Inst_DISPLAY_cd : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Inst_DISPLAY_cd_1_0_add0000 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Inst_DISPLAY_curr : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Inst_DISPLAY_curr_mux0001 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Inst_DISPLAY_digit : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Inst_DISPLAY_digit_mux0001 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Inst_DISPLAY_khertz_count : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Inst_DISPLAY_mhertz_count : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal Inst_DISPLAY_seg : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Inst_DISPLAY_seg_mux0002 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Inst_ramdump_Inst_clkscale_Mcount_contador_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal Inst_ramdump_Inst_clkscale_Mcount_contador_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Inst_ramdump_Inst_clkscale_contador : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Inst_ramdump_Inst_divDEBOUNCER_contador : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal Inst_ramdump_Inst_divisorRAM_contador1 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Inst_ramdump_Inst_divisorRAM_contador : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Inst_ramdump_Inst_reader_Mcount_addr_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Inst_ramdump_Inst_reader_Mcount_addr_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Inst_ramdump_Inst_reader_addr : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Inst_ramdump_Inst_reader_state : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Inst_ramdump_Inst_tickgen_contador : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N2
    );
  XST_VCC : VCC
    port map (
      P => N3
    );
  Inst_ramdump_Inst_reader_state_0 : FDC_1
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_clkRAM,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_reader_state_0_mux0000,
      Q => Inst_ramdump_Inst_reader_state(0)
    );
  Inst_ramdump_Inst_reader_hold : FDC_1
    port map (
      C => Inst_ramdump_clkRAM,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_reader_state(0),
      Q => Inst_ramdump_Inst_reader_hold_220
    );
  Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => Inst_ramdump_Inst_divDEBOUNCER_clk10ms_171,
      D => Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd1_In,
      PRE => Inst_DISPLAY_rst_n_inv,
      Q => Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd1_111
    );
  Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_divDEBOUNCER_clk10ms_171,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd2_In,
      Q => Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd2_113
    );
  Inst_ramdump_Inst_divDEBOUNCER_clk10ms : FDC
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq0000,
      Q => Inst_ramdump_Inst_divDEBOUNCER_clk10ms_171
    );
  Inst_ramdump_Inst_divisorRAM_clk2Hz : FDR
    port map (
      C => Inst_ramdump_Inst_tickgen_tick_292,
      D => N3,
      R => Inst_ramdump_Inst_divisorRAM_clk2Hz_not0001,
      Q => Inst_ramdump_Inst_divisorRAM_clk2Hz_189
    );
  Inst_ramdump_Inst_tickgen_tick : FDC
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      Q => Inst_ramdump_Inst_tickgen_tick_292
    );
  Inst_ramdump_Inst_divisorRAM_contador1_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_tickgen_tick_292,
      D => Result_0_Q,
      R => Inst_ramdump_Inst_divisorRAM_contador1_cmp_eq0000,
      Q => Inst_ramdump_Inst_divisorRAM_contador1(0)
    );
  Inst_ramdump_Inst_divisorRAM_contador1_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_tickgen_tick_292,
      D => Result_1_Q,
      R => Inst_ramdump_Inst_divisorRAM_contador1_cmp_eq0000,
      Q => Inst_ramdump_Inst_divisorRAM_contador1(1)
    );
  Inst_ramdump_Inst_divisorRAM_contador1_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_tickgen_tick_292,
      D => Result_2_Q,
      R => Inst_ramdump_Inst_divisorRAM_contador1_cmp_eq0000,
      Q => Inst_ramdump_Inst_divisorRAM_contador1(2)
    );
  Inst_ramdump_Inst_clkscale_contador_0 : FDC
    port map (
      C => clk50_BUFGP_359,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Result_0_2,
      Q => Inst_ramdump_Inst_clkscale_contador(0)
    );
  Inst_ramdump_Inst_clkscale_contador_1 : FDC
    port map (
      C => clk50_BUFGP_359,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Result_1_2,
      Q => Inst_ramdump_Inst_clkscale_contador(1)
    );
  Inst_ramdump_Inst_clkscale_contador_2 : FDC
    port map (
      C => clk50_BUFGP_359,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Result_2_2,
      Q => Inst_ramdump_Inst_clkscale_contador(2)
    );
  Inst_ramdump_Inst_clkscale_contador_3 : FDC
    port map (
      C => clk50_BUFGP_359,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Result_3_Q,
      Q => Inst_ramdump_Inst_clkscale_contador(3)
    );
  Inst_ramdump_Inst_clkscale_contador_4 : FDC
    port map (
      C => clk50_BUFGP_359,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Result_4_Q,
      Q => Inst_ramdump_Inst_clkscale_contador(4)
    );
  Inst_ramdump_Inst_clkscale_contador_5 : FDC
    port map (
      C => clk50_BUFGP_359,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Result_5_Q,
      Q => Inst_ramdump_Inst_clkscale_contador(5)
    );
  Inst_ramdump_Inst_clkscale_contador_6 : FDC
    port map (
      C => clk50_BUFGP_359,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Result_6_Q,
      Q => Inst_ramdump_Inst_clkscale_contador_61
    );
  Inst_ramdump_Inst_divisorRAM_contador_0 : FDC
    port map (
      C => Inst_ramdump_Inst_divisorRAM_clk2Hz_189,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Result_0_1,
      Q => Inst_ramdump_Inst_divisorRAM_contador(0)
    );
  Inst_ramdump_Inst_divisorRAM_contador_1 : FDC
    port map (
      C => Inst_ramdump_Inst_divisorRAM_clk2Hz_189,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Result_1_1,
      Q => Inst_ramdump_Inst_divisorRAM_contador(1)
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_0,
      Q => Inst_ramdump_Inst_divDEBOUNCER_contador(0)
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_1,
      Q => Inst_ramdump_Inst_divDEBOUNCER_contador(1)
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_2,
      Q => Inst_ramdump_Inst_divDEBOUNCER_contador(2)
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_3,
      Q => Inst_ramdump_Inst_divDEBOUNCER_contador(3)
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_4,
      Q => Inst_ramdump_Inst_divDEBOUNCER_contador(4)
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_5,
      Q => Inst_ramdump_Inst_divDEBOUNCER_contador(5)
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_6,
      Q => Inst_ramdump_Inst_divDEBOUNCER_contador(6)
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_7,
      Q => Inst_ramdump_Inst_divDEBOUNCER_contador(7)
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_8,
      Q => Inst_ramdump_Inst_divDEBOUNCER_contador(8)
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_9,
      Q => Inst_ramdump_Inst_divDEBOUNCER_contador(9)
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_10,
      Q => Inst_ramdump_Inst_divDEBOUNCER_contador(10)
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_11,
      Q => Inst_ramdump_Inst_divDEBOUNCER_contador(11)
    );
  Inst_ramdump_Inst_tickgen_contador_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_0,
      Q => Inst_ramdump_Inst_tickgen_contador(0)
    );
  Inst_ramdump_Inst_tickgen_contador_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_1,
      Q => Inst_ramdump_Inst_tickgen_contador(1)
    );
  Inst_ramdump_Inst_tickgen_contador_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_2,
      Q => Inst_ramdump_Inst_tickgen_contador(2)
    );
  Inst_ramdump_Inst_tickgen_contador_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_3,
      Q => Inst_ramdump_Inst_tickgen_contador(3)
    );
  Inst_ramdump_Inst_tickgen_contador_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_4,
      Q => Inst_ramdump_Inst_tickgen_contador(4)
    );
  Inst_ramdump_Inst_tickgen_contador_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_5,
      Q => Inst_ramdump_Inst_tickgen_contador(5)
    );
  Inst_ramdump_Inst_tickgen_contador_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_6,
      Q => Inst_ramdump_Inst_tickgen_contador(6)
    );
  Inst_ramdump_Inst_tickgen_contador_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_7,
      Q => Inst_ramdump_Inst_tickgen_contador(7)
    );
  Inst_ramdump_Inst_tickgen_contador_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_8,
      Q => Inst_ramdump_Inst_tickgen_contador(8)
    );
  Inst_ramdump_Inst_tickgen_contador_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_9,
      Q => Inst_ramdump_Inst_tickgen_contador(9)
    );
  Inst_ramdump_Inst_tickgen_contador_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_10,
      Q => Inst_ramdump_Inst_tickgen_contador(10)
    );
  Inst_ramdump_Inst_tickgen_contador_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_11,
      Q => Inst_ramdump_Inst_tickgen_contador(11)
    );
  Inst_ramdump_Inst_tickgen_contador_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_12,
      Q => Inst_ramdump_Inst_tickgen_contador(12)
    );
  Inst_ramdump_Inst_tickgen_contador_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_13,
      Q => Inst_ramdump_Inst_tickgen_contador(13)
    );
  Inst_ramdump_Inst_tickgen_contador_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_14,
      Q => Inst_ramdump_Inst_tickgen_contador(14)
    );
  Inst_ramdump_Inst_tickgen_contador_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_ramdump_Inst_clkscale_contador(6),
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_15,
      Q => Inst_ramdump_Inst_tickgen_contador(15)
    );
  Inst_ramdump_Inst_reader_addr_0 : FDCE
    port map (
      C => Inst_ramdump_clkRAM,
      CE => Inst_ramdump_Inst_reader_hold_inv,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Result_0_5,
      Q => Inst_ramdump_Inst_reader_addr(0)
    );
  Inst_ramdump_Inst_reader_addr_1 : FDCE
    port map (
      C => Inst_ramdump_clkRAM,
      CE => Inst_ramdump_Inst_reader_hold_inv,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Result_1_5,
      Q => Inst_ramdump_Inst_reader_addr(1)
    );
  Inst_ramdump_Inst_reader_addr_2 : FDCE
    port map (
      C => Inst_ramdump_clkRAM,
      CE => Inst_ramdump_Inst_reader_hold_inv,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Result_2_5,
      Q => Inst_ramdump_Inst_reader_addr(2)
    );
  Inst_ramdump_Inst_reader_addr_3 : FDCE
    port map (
      C => Inst_ramdump_clkRAM,
      CE => Inst_ramdump_Inst_reader_hold_inv,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Result_3_3,
      Q => Inst_ramdump_Inst_reader_addr(3)
    );
  Inst_ramdump_Inst_reader_addr_4 : FDCE
    port map (
      C => Inst_ramdump_clkRAM,
      CE => Inst_ramdump_Inst_reader_hold_inv,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Result_4_3,
      Q => Inst_ramdump_Inst_reader_addr(4)
    );
  Inst_ramdump_Inst_reader_addr_5 : FDCE
    port map (
      C => Inst_ramdump_clkRAM,
      CE => Inst_ramdump_Inst_reader_hold_inv,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Result_5_3,
      Q => Inst_ramdump_Inst_reader_addr(5)
    );
  Inst_ramdump_Inst_reader_addr_6 : FDCE
    port map (
      C => Inst_ramdump_clkRAM,
      CE => Inst_ramdump_Inst_reader_hold_inv,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Result_6_3,
      Q => Inst_ramdump_Inst_reader_addr(6)
    );
  Inst_ramdump_Inst_reader_addr_7 : FDCE
    port map (
      C => Inst_ramdump_clkRAM,
      CE => Inst_ramdump_Inst_reader_hold_inv,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Result_7_3,
      Q => Inst_ramdump_Inst_reader_addr(7)
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_cy_0_Q : MUXCY
    port map (
      CI => N2,
      DI => N3,
      S => Inst_ramdump_Inst_clkscale_Mcount_contador_lut(0),
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(0)
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_xor_0_Q : XORCY
    port map (
      CI => N2,
      LI => Inst_ramdump_Inst_clkscale_Mcount_contador_lut(0),
      O => Result_0_2
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_cy_1_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(0),
      DI => N2,
      S => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_1_rt_117,
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(1)
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_xor_1_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(0),
      LI => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_1_rt_117,
      O => Result_1_2
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_cy_2_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(1),
      DI => N2,
      S => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_2_rt_119,
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(2)
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_xor_2_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(1),
      LI => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_2_rt_119,
      O => Result_2_2
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_cy_3_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(2),
      DI => N2,
      S => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_3_rt_121,
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(3)
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_xor_3_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(2),
      LI => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_3_rt_121,
      O => Result_3_Q
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_cy_4_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(3),
      DI => N2,
      S => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_4_rt_123,
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(4)
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_xor_4_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(3),
      LI => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_4_rt_123,
      O => Result_4_Q
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_cy_5_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(4),
      DI => N2,
      S => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_5_rt_125,
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(5)
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_xor_5_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(4),
      LI => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_5_rt_125,
      O => Result_5_Q
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_xor_6_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(5),
      LI => Inst_ramdump_Inst_clkscale_Mcount_contador_xor_6_rt_127,
      O => Result_6_Q
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_0_Q : MUXCY
    port map (
      CI => N2,
      DI => N3,
      S => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_lut(0),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(0)
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_0_Q : XORCY
    port map (
      CI => N2,
      LI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_lut(0),
      O => Result_0_3
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_1_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(0),
      DI => N2,
      S => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_1_rt_140,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(1)
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_1_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(0),
      LI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_1_rt_140,
      O => Result_1_3
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_2_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(1),
      DI => N2,
      S => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_2_rt_142,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(2)
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_2_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(1),
      LI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_2_rt_142,
      O => Result_2_3
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_3_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(2),
      DI => N2,
      S => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_3_rt_144,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(3)
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_3_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(2),
      LI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_3_rt_144,
      O => Result_3_1
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_4_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(3),
      DI => N2,
      S => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_4_rt_146,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(4)
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_4_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(3),
      LI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_4_rt_146,
      O => Result_4_1
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_5_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(4),
      DI => N2,
      S => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_5_rt_148,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(5)
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_5_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(4),
      LI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_5_rt_148,
      O => Result_5_1
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_6_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(5),
      DI => N2,
      S => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_6_rt_150,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(6)
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_6_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(5),
      LI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_6_rt_150,
      O => Result_6_1
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_7_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(6),
      DI => N2,
      S => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_7_rt_152,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(7)
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_7_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(6),
      LI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_7_rt_152,
      O => Result_7_1
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_8_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(7),
      DI => N2,
      S => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_8_rt_154,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(8)
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_8_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(7),
      LI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_8_rt_154,
      O => Result_8_Q
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_9_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(8),
      DI => N2,
      S => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_9_rt_156,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(9)
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_9_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(8),
      LI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_9_rt_156,
      O => Result_9_Q
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_10_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(9),
      DI => N2,
      S => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_10_rt_138,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(10)
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_10_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(9),
      LI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_10_rt_138,
      O => Result_10_Q
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_11_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(10),
      LI => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_11_rt_170,
      O => Result_11_Q
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_0_Q : MUXCY
    port map (
      CI => N2,
      DI => N3,
      S => Inst_ramdump_Inst_tickgen_Mcount_contador_lut(0),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(0)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_0_Q : XORCY
    port map (
      CI => N2,
      LI => Inst_ramdump_Inst_tickgen_Mcount_contador_lut(0),
      O => Result_0_4
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_1_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(0),
      DI => N2,
      S => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_1_rt_236,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(1)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_1_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(0),
      LI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_1_rt_236,
      O => Result_1_4
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_2_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(1),
      DI => N2,
      S => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_2_rt_238,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(2)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_2_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(1),
      LI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_2_rt_238,
      O => Result_2_4
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_3_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(2),
      DI => N2,
      S => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_3_rt_240,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(3)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_3_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(2),
      LI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_3_rt_240,
      O => Result_3_2
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_4_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(3),
      DI => N2,
      S => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_4_rt_242,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(4)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_4_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(3),
      LI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_4_rt_242,
      O => Result_4_2
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_5_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(4),
      DI => N2,
      S => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_5_rt_244,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(5)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_5_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(4),
      LI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_5_rt_244,
      O => Result_5_2
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_6_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(5),
      DI => N2,
      S => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_6_rt_246,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(6)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_6_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(5),
      LI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_6_rt_246,
      O => Result_6_2
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_7_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(6),
      DI => N2,
      S => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_7_rt_248,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(7)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_7_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(6),
      LI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_7_rt_248,
      O => Result_7_2
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_8_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(7),
      DI => N2,
      S => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_8_rt_250,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(8)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_8_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(7),
      LI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_8_rt_250,
      O => Result_8_1
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_9_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(8),
      DI => N2,
      S => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_9_rt_252,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(9)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_9_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(8),
      LI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_9_rt_252,
      O => Result_9_1
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_10_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(9),
      DI => N2,
      S => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_10_rt_226,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(10)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_10_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(9),
      LI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_10_rt_226,
      O => Result_10_1
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_11_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(10),
      DI => N2,
      S => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_11_rt_228,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(11)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_11_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(10),
      LI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_11_rt_228,
      O => Result_11_1
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_12_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(11),
      DI => N2,
      S => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_12_rt_230,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(12)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_12_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(11),
      LI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_12_rt_230,
      O => Result_12_Q
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_13_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(12),
      DI => N2,
      S => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_13_rt_232,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(13)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_13_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(12),
      LI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_13_rt_232,
      O => Result_13_Q
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_14_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(13),
      DI => N2,
      S => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_14_rt_234,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(14)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_14_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(13),
      LI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_14_rt_234,
      O => Result_14_Q
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_15_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(14),
      LI => Inst_ramdump_Inst_tickgen_Mcount_contador_xor_15_rt_270,
      O => Result_15_Q
    );
  Inst_ramdump_Inst_reader_Mcount_addr_cy_0_Q : MUXCY
    port map (
      CI => up_down_inv,
      DI => Inst_ramdump_Inst_reader_addr(0),
      S => Inst_ramdump_Inst_reader_Mcount_addr_lut(0),
      O => Inst_ramdump_Inst_reader_Mcount_addr_cy(0)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_xor_0_Q : XORCY
    port map (
      CI => up_down_inv,
      LI => Inst_ramdump_Inst_reader_Mcount_addr_lut(0),
      O => Result_0_5
    );
  Inst_ramdump_Inst_reader_Mcount_addr_cy_1_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_reader_Mcount_addr_cy(0),
      DI => Inst_ramdump_Inst_reader_addr(1),
      S => Inst_ramdump_Inst_reader_Mcount_addr_lut(1),
      O => Inst_ramdump_Inst_reader_Mcount_addr_cy(1)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_xor_1_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_reader_Mcount_addr_cy(0),
      LI => Inst_ramdump_Inst_reader_Mcount_addr_lut(1),
      O => Result_1_5
    );
  Inst_ramdump_Inst_reader_Mcount_addr_cy_2_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_reader_Mcount_addr_cy(1),
      DI => Inst_ramdump_Inst_reader_addr(2),
      S => Inst_ramdump_Inst_reader_Mcount_addr_lut(2),
      O => Inst_ramdump_Inst_reader_Mcount_addr_cy(2)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_xor_2_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_reader_Mcount_addr_cy(1),
      LI => Inst_ramdump_Inst_reader_Mcount_addr_lut(2),
      O => Result_2_5
    );
  Inst_ramdump_Inst_reader_Mcount_addr_cy_3_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_reader_Mcount_addr_cy(2),
      DI => Inst_ramdump_Inst_reader_addr(3),
      S => Inst_ramdump_Inst_reader_Mcount_addr_lut(3),
      O => Inst_ramdump_Inst_reader_Mcount_addr_cy(3)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_xor_3_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_reader_Mcount_addr_cy(2),
      LI => Inst_ramdump_Inst_reader_Mcount_addr_lut(3),
      O => Result_3_3
    );
  Inst_ramdump_Inst_reader_Mcount_addr_cy_4_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_reader_Mcount_addr_cy(3),
      DI => Inst_ramdump_Inst_reader_addr(4),
      S => Inst_ramdump_Inst_reader_Mcount_addr_lut(4),
      O => Inst_ramdump_Inst_reader_Mcount_addr_cy(4)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_xor_4_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_reader_Mcount_addr_cy(3),
      LI => Inst_ramdump_Inst_reader_Mcount_addr_lut(4),
      O => Result_4_3
    );
  Inst_ramdump_Inst_reader_Mcount_addr_cy_5_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_reader_Mcount_addr_cy(4),
      DI => Inst_ramdump_Inst_reader_addr(5),
      S => Inst_ramdump_Inst_reader_Mcount_addr_lut(5),
      O => Inst_ramdump_Inst_reader_Mcount_addr_cy(5)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_xor_5_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_reader_Mcount_addr_cy(4),
      LI => Inst_ramdump_Inst_reader_Mcount_addr_lut(5),
      O => Result_5_3
    );
  Inst_ramdump_Inst_reader_Mcount_addr_cy_6_Q : MUXCY
    port map (
      CI => Inst_ramdump_Inst_reader_Mcount_addr_cy(5),
      DI => Inst_ramdump_Inst_reader_addr(6),
      S => Inst_ramdump_Inst_reader_Mcount_addr_lut(6),
      O => Inst_ramdump_Inst_reader_Mcount_addr_cy(6)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_xor_6_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_reader_Mcount_addr_cy(5),
      LI => Inst_ramdump_Inst_reader_Mcount_addr_lut(6),
      O => Result_6_3
    );
  Inst_ramdump_Inst_reader_Mcount_addr_xor_7_Q : XORCY
    port map (
      CI => Inst_ramdump_Inst_reader_Mcount_addr_cy(6),
      LI => Inst_ramdump_Inst_reader_Mcount_addr_lut(7),
      O => Result_7_3
    );
  Inst_DISPLAY_Mcount_khertz_count_xor_9_Q : XORCY
    port map (
      CI => Inst_DISPLAY_Mcount_khertz_count_cy(8),
      LI => Inst_DISPLAY_Mcount_khertz_count_xor_9_rt_28,
      O => Inst_DISPLAY_Result(9)
    );
  Inst_DISPLAY_Mcount_khertz_count_xor_8_Q : XORCY
    port map (
      CI => Inst_DISPLAY_Mcount_khertz_count_cy(7),
      LI => Inst_DISPLAY_Mcount_khertz_count_cy_8_rt_16,
      O => Inst_DISPLAY_Result(8)
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_8_Q : MUXCY
    port map (
      CI => Inst_DISPLAY_Mcount_khertz_count_cy(7),
      DI => N2,
      S => Inst_DISPLAY_Mcount_khertz_count_cy_8_rt_16,
      O => Inst_DISPLAY_Mcount_khertz_count_cy(8)
    );
  Inst_DISPLAY_Mcount_khertz_count_xor_7_Q : XORCY
    port map (
      CI => Inst_DISPLAY_Mcount_khertz_count_cy(6),
      LI => Inst_DISPLAY_Mcount_khertz_count_cy_7_rt_14,
      O => Inst_DISPLAY_Result(7)
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_7_Q : MUXCY
    port map (
      CI => Inst_DISPLAY_Mcount_khertz_count_cy(6),
      DI => N2,
      S => Inst_DISPLAY_Mcount_khertz_count_cy_7_rt_14,
      O => Inst_DISPLAY_Mcount_khertz_count_cy(7)
    );
  Inst_DISPLAY_Mcount_khertz_count_xor_6_Q : XORCY
    port map (
      CI => Inst_DISPLAY_Mcount_khertz_count_cy(5),
      LI => Inst_DISPLAY_Mcount_khertz_count_cy_6_rt_12,
      O => Inst_DISPLAY_Result(6)
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_6_Q : MUXCY
    port map (
      CI => Inst_DISPLAY_Mcount_khertz_count_cy(5),
      DI => N2,
      S => Inst_DISPLAY_Mcount_khertz_count_cy_6_rt_12,
      O => Inst_DISPLAY_Mcount_khertz_count_cy(6)
    );
  Inst_DISPLAY_Mcount_khertz_count_xor_5_Q : XORCY
    port map (
      CI => Inst_DISPLAY_Mcount_khertz_count_cy(4),
      LI => Inst_DISPLAY_Mcount_khertz_count_cy_5_rt_10,
      O => Inst_DISPLAY_Result(5)
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_5_Q : MUXCY
    port map (
      CI => Inst_DISPLAY_Mcount_khertz_count_cy(4),
      DI => N2,
      S => Inst_DISPLAY_Mcount_khertz_count_cy_5_rt_10,
      O => Inst_DISPLAY_Mcount_khertz_count_cy(5)
    );
  Inst_DISPLAY_Mcount_khertz_count_xor_4_Q : XORCY
    port map (
      CI => Inst_DISPLAY_Mcount_khertz_count_cy(3),
      LI => Inst_DISPLAY_Mcount_khertz_count_cy_4_rt_8,
      O => Inst_DISPLAY_Result(4)
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_4_Q : MUXCY
    port map (
      CI => Inst_DISPLAY_Mcount_khertz_count_cy(3),
      DI => N2,
      S => Inst_DISPLAY_Mcount_khertz_count_cy_4_rt_8,
      O => Inst_DISPLAY_Mcount_khertz_count_cy(4)
    );
  Inst_DISPLAY_Mcount_khertz_count_xor_3_Q : XORCY
    port map (
      CI => Inst_DISPLAY_Mcount_khertz_count_cy(2),
      LI => Inst_DISPLAY_Mcount_khertz_count_cy_3_rt_6,
      O => Inst_DISPLAY_Result(3)
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_3_Q : MUXCY
    port map (
      CI => Inst_DISPLAY_Mcount_khertz_count_cy(2),
      DI => N2,
      S => Inst_DISPLAY_Mcount_khertz_count_cy_3_rt_6,
      O => Inst_DISPLAY_Mcount_khertz_count_cy(3)
    );
  Inst_DISPLAY_Mcount_khertz_count_xor_2_Q : XORCY
    port map (
      CI => Inst_DISPLAY_Mcount_khertz_count_cy(1),
      LI => Inst_DISPLAY_Mcount_khertz_count_cy_2_rt_4,
      O => Inst_DISPLAY_Result(2)
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_2_Q : MUXCY
    port map (
      CI => Inst_DISPLAY_Mcount_khertz_count_cy(1),
      DI => N2,
      S => Inst_DISPLAY_Mcount_khertz_count_cy_2_rt_4,
      O => Inst_DISPLAY_Mcount_khertz_count_cy(2)
    );
  Inst_DISPLAY_Mcount_khertz_count_xor_1_Q : XORCY
    port map (
      CI => Inst_DISPLAY_Mcount_khertz_count_cy(0),
      LI => Inst_DISPLAY_Mcount_khertz_count_cy_1_rt_2,
      O => Inst_DISPLAY_Result(1)
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_1_Q : MUXCY
    port map (
      CI => Inst_DISPLAY_Mcount_khertz_count_cy(0),
      DI => N2,
      S => Inst_DISPLAY_Mcount_khertz_count_cy_1_rt_2,
      O => Inst_DISPLAY_Mcount_khertz_count_cy(1)
    );
  Inst_DISPLAY_Mcount_khertz_count_xor_0_Q : XORCY
    port map (
      CI => N2,
      LI => Inst_DISPLAY_Mcount_khertz_count_lut(0),
      O => Inst_DISPLAY_Result(0)
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_0_Q : MUXCY
    port map (
      CI => N2,
      DI => N3,
      S => Inst_DISPLAY_Mcount_khertz_count_lut(0),
      O => Inst_DISPLAY_Mcount_khertz_count_cy(0)
    );
  Inst_DISPLAY_mhertz_count_5 : FDC
    port map (
      C => clk50_BUFGP_359,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_DISPLAY_Mcount_mhertz_count15_32,
      Q => Inst_DISPLAY_mhertz_count(5)
    );
  Inst_DISPLAY_mhertz_count_4 : FDC
    port map (
      C => clk50_BUFGP_359,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_DISPLAY_Mcount_mhertz_count12_30,
      Q => Inst_DISPLAY_mhertz_count(4)
    );
  Inst_DISPLAY_mhertz_count_3 : FDC
    port map (
      C => clk50_BUFGP_359,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_DISPLAY_Mcount_mhertz_count9,
      Q => Inst_DISPLAY_mhertz_count(3)
    );
  Inst_DISPLAY_mhertz_count_2 : FDC
    port map (
      C => clk50_BUFGP_359,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_DISPLAY_Mcount_mhertz_count6,
      Q => Inst_DISPLAY_mhertz_count(2)
    );
  Inst_DISPLAY_mhertz_count_1 : FDC
    port map (
      C => clk50_BUFGP_359,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_DISPLAY_Mcount_mhertz_count3,
      Q => Inst_DISPLAY_mhertz_count(1)
    );
  Inst_DISPLAY_mhertz_count_0 : FDC
    port map (
      C => clk50_BUFGP_359,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_DISPLAY_Mcount_mhertz_count,
      Q => Inst_DISPLAY_mhertz_count(0)
    );
  Inst_DISPLAY_khertz_count_9 : FDCE
    port map (
      C => clk50_BUFGP_359,
      CE => Inst_DISPLAY_mhertz_en_89,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_DISPLAY_Mcount_khertz_count_eqn_9,
      Q => Inst_DISPLAY_khertz_count(9)
    );
  Inst_DISPLAY_khertz_count_8 : FDCE
    port map (
      C => clk50_BUFGP_359,
      CE => Inst_DISPLAY_mhertz_en_89,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_DISPLAY_Mcount_khertz_count_eqn_8,
      Q => Inst_DISPLAY_khertz_count(8)
    );
  Inst_DISPLAY_khertz_count_7 : FDCE
    port map (
      C => clk50_BUFGP_359,
      CE => Inst_DISPLAY_mhertz_en_89,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_DISPLAY_Mcount_khertz_count_eqn_7,
      Q => Inst_DISPLAY_khertz_count(7)
    );
  Inst_DISPLAY_khertz_count_6 : FDCE
    port map (
      C => clk50_BUFGP_359,
      CE => Inst_DISPLAY_mhertz_en_89,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_DISPLAY_Mcount_khertz_count_eqn_6,
      Q => Inst_DISPLAY_khertz_count(6)
    );
  Inst_DISPLAY_khertz_count_5 : FDCE
    port map (
      C => clk50_BUFGP_359,
      CE => Inst_DISPLAY_mhertz_en_89,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_DISPLAY_Mcount_khertz_count_eqn_5,
      Q => Inst_DISPLAY_khertz_count(5)
    );
  Inst_DISPLAY_khertz_count_4 : FDCE
    port map (
      C => clk50_BUFGP_359,
      CE => Inst_DISPLAY_mhertz_en_89,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_DISPLAY_Mcount_khertz_count_eqn_4,
      Q => Inst_DISPLAY_khertz_count(4)
    );
  Inst_DISPLAY_khertz_count_3 : FDCE
    port map (
      C => clk50_BUFGP_359,
      CE => Inst_DISPLAY_mhertz_en_89,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_DISPLAY_Mcount_khertz_count_eqn_3,
      Q => Inst_DISPLAY_khertz_count(3)
    );
  Inst_DISPLAY_khertz_count_2 : FDCE
    port map (
      C => clk50_BUFGP_359,
      CE => Inst_DISPLAY_mhertz_en_89,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_DISPLAY_Mcount_khertz_count_eqn_2,
      Q => Inst_DISPLAY_khertz_count(2)
    );
  Inst_DISPLAY_khertz_count_1 : FDCE
    port map (
      C => clk50_BUFGP_359,
      CE => Inst_DISPLAY_mhertz_en_89,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_DISPLAY_Mcount_khertz_count_eqn_1,
      Q => Inst_DISPLAY_khertz_count(1)
    );
  Inst_DISPLAY_khertz_count_0 : FDCE
    port map (
      C => clk50_BUFGP_359,
      CE => Inst_DISPLAY_mhertz_en_89,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_DISPLAY_Mcount_khertz_count_eqn_0,
      Q => Inst_DISPLAY_khertz_count(0)
    );
  Inst_DISPLAY_curr_3 : FDC
    port map (
      C => clk50_BUFGP_359,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_DISPLAY_curr_mux0001(3),
      Q => Inst_DISPLAY_curr(3)
    );
  Inst_DISPLAY_curr_2 : FDC
    port map (
      C => clk50_BUFGP_359,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_DISPLAY_curr_mux0001(2),
      Q => Inst_DISPLAY_curr(2)
    );
  Inst_DISPLAY_curr_1 : FDC
    port map (
      C => clk50_BUFGP_359,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_DISPLAY_curr_mux0001(1),
      Q => Inst_DISPLAY_curr(1)
    );
  Inst_DISPLAY_curr_0 : FDC
    port map (
      C => clk50_BUFGP_359,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_DISPLAY_curr_mux0001(0),
      Q => Inst_DISPLAY_curr(0)
    );
  Inst_DISPLAY_digit_3 : FDP
    port map (
      C => clk50_BUFGP_359,
      D => Inst_DISPLAY_digit_mux0001(0),
      PRE => Inst_DISPLAY_rst_n_inv,
      Q => Inst_DISPLAY_digit(3)
    );
  Inst_DISPLAY_digit_2 : FDP
    port map (
      C => clk50_BUFGP_359,
      D => Inst_DISPLAY_digit_mux0001(1),
      PRE => Inst_DISPLAY_rst_n_inv,
      Q => Inst_DISPLAY_digit(2)
    );
  Inst_DISPLAY_digit_1 : FDP
    port map (
      C => clk50_BUFGP_359,
      D => Inst_DISPLAY_digit_mux0001(2),
      PRE => Inst_DISPLAY_rst_n_inv,
      Q => Inst_DISPLAY_digit(1)
    );
  Inst_DISPLAY_digit_0 : FDP
    port map (
      C => clk50_BUFGP_359,
      D => Inst_DISPLAY_digit_mux0001(3),
      PRE => Inst_DISPLAY_rst_n_inv,
      Q => Inst_DISPLAY_digit(0)
    );
  Inst_DISPLAY_cd_1 : FDCE
    port map (
      C => clk50_BUFGP_359,
      CE => Inst_DISPLAY_khertz_en_80,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_DISPLAY_cd_1_0_add0000(1),
      Q => Inst_DISPLAY_cd(1)
    );
  Inst_DISPLAY_cd_0 : FDCE
    port map (
      C => clk50_BUFGP_359,
      CE => Inst_DISPLAY_khertz_en_80,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_DISPLAY_cd_1_0_add0000(0),
      Q => Inst_DISPLAY_cd(0)
    );
  Inst_DISPLAY_cd_2 : FDC
    port map (
      C => clk50_BUFGP_359,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => N3,
      Q => Inst_DISPLAY_cd(2)
    );
  Inst_DISPLAY_khertz_en : FDC
    port map (
      C => clk50_BUFGP_359,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_DISPLAY_khertz_en_mux0002,
      Q => Inst_DISPLAY_khertz_en_80
    );
  Inst_DISPLAY_mhertz_en : FDC
    port map (
      C => clk50_BUFGP_359,
      CLR => Inst_DISPLAY_rst_n_inv,
      D => Inst_DISPLAY_mhertz_count_cmp_eq0000_88,
      Q => Inst_DISPLAY_mhertz_en_89
    );
  Inst_DISPLAY_seg_7 : FDP
    port map (
      C => clk50_BUFGP_359,
      D => Inst_DISPLAY_seg_mux0002(0),
      PRE => Inst_DISPLAY_rst_n_inv,
      Q => Inst_DISPLAY_seg(7)
    );
  Inst_DISPLAY_seg_6 : FDP
    port map (
      C => clk50_BUFGP_359,
      D => Inst_DISPLAY_seg_mux0002(1),
      PRE => Inst_DISPLAY_rst_n_inv,
      Q => Inst_DISPLAY_seg(6)
    );
  Inst_DISPLAY_seg_5 : FDP
    port map (
      C => clk50_BUFGP_359,
      D => Inst_DISPLAY_seg_mux0002(2),
      PRE => Inst_DISPLAY_rst_n_inv,
      Q => Inst_DISPLAY_seg(5)
    );
  Inst_DISPLAY_seg_4 : FDP
    port map (
      C => clk50_BUFGP_359,
      D => Inst_DISPLAY_seg_mux0002(3),
      PRE => Inst_DISPLAY_rst_n_inv,
      Q => Inst_DISPLAY_seg(4)
    );
  Inst_DISPLAY_seg_3 : FDP
    port map (
      C => clk50_BUFGP_359,
      D => Inst_DISPLAY_seg_mux0002(4),
      PRE => Inst_DISPLAY_rst_n_inv,
      Q => Inst_DISPLAY_seg(3)
    );
  Inst_DISPLAY_seg_2 : FDP
    port map (
      C => clk50_BUFGP_359,
      D => Inst_DISPLAY_seg_mux0002(5),
      PRE => Inst_DISPLAY_rst_n_inv,
      Q => Inst_DISPLAY_seg(2)
    );
  Inst_DISPLAY_seg_1 : FDP
    port map (
      C => clk50_BUFGP_359,
      D => Inst_DISPLAY_seg_mux0002(6),
      PRE => Inst_DISPLAY_rst_n_inv,
      Q => Inst_DISPLAY_seg(1)
    );
  Inst_DISPLAY_seg_0 : FDP
    port map (
      C => clk50_BUFGP_359,
      D => Inst_DISPLAY_seg_mux0002(7),
      PRE => Inst_DISPLAY_rst_n_inv,
      Q => Inst_DISPLAY_seg(0)
    );
  Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd2_In1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hold_IBUF_373,
      I1 => Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd1_111,
      O => Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd2_In
    );
  Inst_DISPLAY_Mdecod_digit_mux000131 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => Inst_DISPLAY_cd(0),
      I1 => Inst_DISPLAY_cd(1),
      O => Inst_DISPLAY_digit_mux0001(0)
    );
  Inst_DISPLAY_Mdecod_digit_mux000121 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Inst_DISPLAY_cd(1),
      I1 => Inst_DISPLAY_cd(0),
      O => Inst_DISPLAY_digit_mux0001(1)
    );
  Inst_DISPLAY_Mdecod_digit_mux000111 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Inst_DISPLAY_cd(0),
      I1 => Inst_DISPLAY_cd(1),
      O => Inst_DISPLAY_digit_mux0001(2)
    );
  Inst_DISPLAY_Mdecod_digit_mux000101 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Inst_DISPLAY_cd(0),
      I1 => Inst_DISPLAY_cd(1),
      O => Inst_DISPLAY_digit_mux0001(3)
    );
  Inst_ramdump_Inst_reader_state_0_mux00001 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Inst_ramdump_Inst_reader_state(0),
      I1 => Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd2_113,
      O => Inst_ramdump_Inst_reader_state_0_mux0000
    );
  Inst_ramdump_Inst_divisorRAM_Mcount_contador_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Inst_ramdump_Inst_divisorRAM_contador(1),
      I1 => Inst_ramdump_Inst_divisorRAM_contador(0),
      O => Result_1_1
    );
  Inst_ramdump_Inst_divisorRAM_Mcount_contador1_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Inst_ramdump_Inst_divisorRAM_contador1(1),
      I1 => Inst_ramdump_Inst_divisorRAM_contador1(0),
      O => Result_1_Q
    );
  Inst_DISPLAY_Madd_cd_1_0_add0000_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Inst_DISPLAY_cd(1),
      I1 => Inst_DISPLAY_cd(0),
      O => Inst_DISPLAY_cd_1_0_add0000(1)
    );
  Inst_ramdump_Inst_divisorRAM_Mcount_contador1_xor_2_11 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => Inst_ramdump_Inst_divisorRAM_contador1(0),
      I1 => Inst_ramdump_Inst_divisorRAM_contador1(2),
      I2 => Inst_ramdump_Inst_divisorRAM_contador1(1),
      O => Result_2_Q
    );
  Inst_DISPLAY_Mcount_mhertz_count_xor_2_11 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => Inst_DISPLAY_mhertz_count(1),
      I1 => Inst_DISPLAY_mhertz_count(2),
      I2 => Inst_DISPLAY_mhertz_count(0),
      O => Inst_DISPLAY_Mcount_mhertz_count6
    );
  Inst_DISPLAY_Mmux_curr_mux000141 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => Inst_DISPLAY_cd(1),
      I1 => Inst_DISPLAY_cd(0),
      I2 => data(7),
      I3 => data(3),
      O => Inst_DISPLAY_curr_mux0001(3)
    );
  Inst_DISPLAY_Mmux_curr_mux000131 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => Inst_DISPLAY_cd(1),
      I1 => Inst_DISPLAY_cd(0),
      I2 => data(6),
      I3 => data(2),
      O => Inst_DISPLAY_curr_mux0001(2)
    );
  Inst_DISPLAY_Mmux_curr_mux000121 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => Inst_DISPLAY_cd(1),
      I1 => Inst_DISPLAY_cd(0),
      I2 => data(5),
      I3 => data(1),
      O => Inst_DISPLAY_curr_mux0001(1)
    );
  Inst_DISPLAY_Mmux_curr_mux000111 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => Inst_DISPLAY_cd(1),
      I1 => Inst_DISPLAY_cd(0),
      I2 => data(4),
      I3 => data(0),
      O => Inst_DISPLAY_curr_mux0001(0)
    );
  Inst_DISPLAY_seg_mux0002_7_Q : LUT4
    generic map(
      INIT => X"F77F"
    )
    port map (
      I0 => Inst_DISPLAY_curr(0),
      I1 => N31,
      I2 => Inst_DISPLAY_curr(2),
      I3 => Inst_DISPLAY_curr(1),
      O => Inst_DISPLAY_seg_mux0002(7)
    );
  Inst_DISPLAY_mhertz_count_cmp_eq0000 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => Inst_DISPLAY_mhertz_count(1),
      I1 => Inst_DISPLAY_mhertz_count(2),
      I2 => Inst_DISPLAY_mhertz_count(0),
      I3 => N5,
      O => Inst_DISPLAY_mhertz_count_cmp_eq0000_88
    );
  Inst_DISPLAY_Mcount_mhertz_count_xor_0_11 : LUT3
    generic map(
      INIT => X"51"
    )
    port map (
      I0 => Inst_DISPLAY_mhertz_count(0),
      I1 => Inst_DISPLAY_mhertz_count(1),
      I2 => N30,
      O => Inst_DISPLAY_Mcount_mhertz_count
    );
  Inst_DISPLAY_Mcount_mhertz_count_xor_1_12 : LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      I0 => Inst_DISPLAY_mhertz_count(0),
      I1 => Inst_DISPLAY_mhertz_count(1),
      I2 => Inst_DISPLAY_N1,
      O => Inst_DISPLAY_Mcount_mhertz_count3
    );
  Inst_DISPLAY_seg_mux0002_4_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => Inst_DISPLAY_cd(2),
      I1 => N9,
      O => Inst_DISPLAY_seg_mux0002(4)
    );
  Inst_DISPLAY_seg_mux0002_2_Q : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Inst_DISPLAY_cd(2),
      I1 => N11,
      O => Inst_DISPLAY_seg_mux0002(2)
    );
  Inst_DISPLAY_seg_mux0002_5_Q : LUT3
    generic map(
      INIT => X"4F"
    )
    port map (
      I0 => Inst_DISPLAY_curr(3),
      I1 => N13,
      I2 => Inst_DISPLAY_cd(2),
      O => Inst_DISPLAY_seg_mux0002(5)
    );
  Inst_DISPLAY_seg_mux0002_6_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => Inst_DISPLAY_cd(2),
      I1 => N15,
      O => Inst_DISPLAY_seg_mux0002(6)
    );
  Inst_DISPLAY_seg_mux0002_3_Q : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Inst_DISPLAY_cd(2),
      I1 => N17,
      O => Inst_DISPLAY_seg_mux0002(3)
    );
  Inst_ramdump_Inst_divisorRAM_contador1_cmp_eq00001 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => Inst_ramdump_Inst_divisorRAM_contador1(2),
      I1 => Inst_ramdump_Inst_divisorRAM_contador1(1),
      I2 => Inst_ramdump_Inst_divisorRAM_contador1(0),
      O => Inst_ramdump_Inst_divisorRAM_contador1_cmp_eq0000
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_0_4,
      I1 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_0
    );
  Inst_DISPLAY_khertz_en_mux00021 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Inst_DISPLAY_mhertz_en_89,
      I1 => Inst_DISPLAY_khertz_count_cmp_eq0000,
      O => Inst_DISPLAY_khertz_en_mux0002
    );
  Inst_DISPLAY_Mcount_khertz_count_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_DISPLAY_Result(0),
      I1 => Inst_DISPLAY_khertz_count_cmp_eq0000,
      O => Inst_DISPLAY_Mcount_khertz_count_eqn_0
    );
  Inst_DISPLAY_Mcount_mhertz_count12 : LUT4
    generic map(
      INIT => X"8A46"
    )
    port map (
      I0 => Inst_DISPLAY_mhertz_count(4),
      I1 => Inst_DISPLAY_mhertz_count(3),
      I2 => N19,
      I3 => Inst_DISPLAY_Mcount_mhertz_count12_bdd0,
      O => Inst_DISPLAY_Mcount_mhertz_count12_30
    );
  Inst_DISPLAY_khertz_count_cmp_eq000015 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => Inst_DISPLAY_khertz_count(7),
      I1 => Inst_DISPLAY_khertz_count(4),
      I2 => Inst_DISPLAY_khertz_count(5),
      I3 => Inst_DISPLAY_khertz_count(6),
      O => Inst_DISPLAY_khertz_count_cmp_eq000015_79
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000039 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => N311,
      I1 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000016_186,
      I2 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000028_187,
      O => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq0000
    );
  Inst_ramdump_Inst_tickgen_contador_cmp_eq000021 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador(4),
      I1 => Inst_ramdump_Inst_tickgen_contador(5),
      I2 => Inst_ramdump_Inst_tickgen_contador(7),
      I3 => Inst_ramdump_Inst_tickgen_contador(6),
      O => Inst_ramdump_Inst_tickgen_contador_cmp_eq000021_289
    );
  Inst_ramdump_Inst_tickgen_contador_cmp_eq000043 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador(12),
      I1 => Inst_ramdump_Inst_tickgen_contador(13),
      I2 => Inst_ramdump_Inst_tickgen_contador(15),
      I3 => Inst_ramdump_Inst_tickgen_contador(14),
      O => Inst_ramdump_Inst_tickgen_contador_cmp_eq000043_290
    );
  Inst_ramdump_Inst_tickgen_contador_cmp_eq000055 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador(11),
      I1 => Inst_ramdump_Inst_tickgen_contador(10),
      I2 => Inst_ramdump_Inst_tickgen_contador(8),
      I3 => Inst_ramdump_Inst_tickgen_contador(9),
      O => Inst_ramdump_Inst_tickgen_contador_cmp_eq000055_291
    );
  Inst_ramdump_Inst_tickgen_contador_cmp_eq000069 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador_cmp_eq000010_288,
      I1 => Inst_ramdump_Inst_tickgen_contador_cmp_eq000021_289,
      I2 => Inst_ramdump_Inst_tickgen_contador_cmp_eq000043_290,
      I3 => Inst_ramdump_Inst_tickgen_contador_cmp_eq000055_291,
      O => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000
    );
  Inst_DISPLAY_Mcount_mhertz_count1211 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => Inst_DISPLAY_mhertz_count(1),
      I1 => Inst_DISPLAY_mhertz_count(2),
      I2 => Inst_DISPLAY_mhertz_count(0),
      O => Inst_DISPLAY_Mcount_mhertz_count12_bdd0
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_16 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_1_4,
      I1 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_1
    );
  Inst_DISPLAY_Mcount_khertz_count_eqn_11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_DISPLAY_Result(1),
      I1 => Inst_DISPLAY_khertz_count_cmp_eq0000,
      O => Inst_DISPLAY_Mcount_khertz_count_eqn_1
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_2_4,
      I1 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_2
    );
  Inst_DISPLAY_Mcount_khertz_count_eqn_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_DISPLAY_Result(2),
      I1 => Inst_DISPLAY_khertz_count_cmp_eq0000,
      O => Inst_DISPLAY_Mcount_khertz_count_eqn_2
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_3_2,
      I1 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_3
    );
  Inst_DISPLAY_Mcount_khertz_count_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_DISPLAY_Result(3),
      I1 => Inst_DISPLAY_khertz_count_cmp_eq0000,
      O => Inst_DISPLAY_Mcount_khertz_count_eqn_3
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_4_2,
      I1 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_4
    );
  Inst_DISPLAY_Mcount_khertz_count_eqn_41 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Inst_DISPLAY_khertz_count_cmp_eq0000,
      I1 => Inst_DISPLAY_Result(4),
      O => Inst_DISPLAY_Mcount_khertz_count_eqn_4
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_5_2,
      I1 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_5
    );
  Inst_DISPLAY_Mcount_khertz_count_eqn_51 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Inst_DISPLAY_khertz_count_cmp_eq0000,
      I1 => Inst_DISPLAY_Result(5),
      O => Inst_DISPLAY_Mcount_khertz_count_eqn_5
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_6_2,
      I1 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_6
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_61 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq0000,
      I1 => Result_6_1,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_6
    );
  Inst_DISPLAY_Mcount_khertz_count_eqn_61 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Inst_DISPLAY_khertz_count_cmp_eq0000,
      I1 => Inst_DISPLAY_Result(6),
      O => Inst_DISPLAY_Mcount_khertz_count_eqn_6
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_71 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      I1 => Result_7_2,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_7
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_71 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq0000,
      I1 => Result_7_1,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_7
    );
  Inst_DISPLAY_Mcount_khertz_count_eqn_71 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Inst_DISPLAY_khertz_count_cmp_eq0000,
      I1 => Inst_DISPLAY_Result(7),
      O => Inst_DISPLAY_Mcount_khertz_count_eqn_7
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_81 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      I1 => Result_8_1,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_8
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_81 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq0000,
      I1 => Result_8_Q,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_8
    );
  Inst_DISPLAY_Mcount_khertz_count_eqn_81 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Inst_DISPLAY_khertz_count_cmp_eq0000,
      I1 => Inst_DISPLAY_Result(8),
      O => Inst_DISPLAY_Mcount_khertz_count_eqn_8
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_91 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      I1 => Result_9_1,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_9
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_91 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq0000,
      I1 => Result_9_Q,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_9
    );
  Inst_DISPLAY_Mcount_khertz_count_eqn_91 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Inst_DISPLAY_khertz_count_cmp_eq0000,
      I1 => Inst_DISPLAY_Result(9),
      O => Inst_DISPLAY_Mcount_khertz_count_eqn_9
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_101 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      I1 => Result_10_1,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_10
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_101 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq0000,
      I1 => Result_10_Q,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_10
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_111 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      I1 => Result_11_1,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_11
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_111 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq0000,
      I1 => Result_11_Q,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_11
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_121 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      I1 => Result_12_Q,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_12
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_131 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      I1 => Result_13_Q,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_13
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_141 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      I1 => Result_14_Q,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_14
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_151 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      I1 => Result_15_Q,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_15
    );
  rst_n_IBUF : IBUF
    port map (
      I => rst_n,
      O => rst_n_IBUF_379
    );
  hold_IBUF : IBUF
    port map (
      I => hold,
      O => hold_IBUF_373
    );
  up_down_IBUF : IBUF
    port map (
      I => up_down,
      O => up_down_IBUF_389
    );
  inter_1_IBUF : IBUF
    port map (
      I => inter(1),
      O => inter_1_IBUF_377
    );
  inter_0_IBUF : IBUF
    port map (
      I => inter(0),
      O => inter_0_IBUF_376
    );
  seg_out_7_OBUF : OBUF
    port map (
      I => Inst_DISPLAY_seg(7),
      O => seg_out(7)
    );
  seg_out_6_OBUF : OBUF
    port map (
      I => Inst_DISPLAY_seg(6),
      O => seg_out(6)
    );
  seg_out_5_OBUF : OBUF
    port map (
      I => Inst_DISPLAY_seg(5),
      O => seg_out(5)
    );
  seg_out_4_OBUF : OBUF
    port map (
      I => Inst_DISPLAY_seg(4),
      O => seg_out(4)
    );
  seg_out_3_OBUF : OBUF
    port map (
      I => Inst_DISPLAY_seg(3),
      O => seg_out(3)
    );
  seg_out_2_OBUF : OBUF
    port map (
      I => Inst_DISPLAY_seg(2),
      O => seg_out(2)
    );
  seg_out_1_OBUF : OBUF
    port map (
      I => Inst_DISPLAY_seg(1),
      O => seg_out(1)
    );
  seg_out_0_OBUF : OBUF
    port map (
      I => Inst_DISPLAY_seg(0),
      O => seg_out(0)
    );
  digit_out_3_OBUF : OBUF
    port map (
      I => Inst_DISPLAY_digit(3),
      O => digit_out(3)
    );
  digit_out_2_OBUF : OBUF
    port map (
      I => Inst_DISPLAY_digit(2),
      O => digit_out(2)
    );
  digit_out_1_OBUF : OBUF
    port map (
      I => Inst_DISPLAY_digit(1),
      O => digit_out(1)
    );
  digit_out_0_OBUF : OBUF
    port map (
      I => Inst_DISPLAY_digit(0),
      O => digit_out(0)
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_clkscale_contador(1),
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_1_rt_117
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_clkscale_contador(2),
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_2_rt_119
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_clkscale_contador(3),
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_3_rt_121
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_clkscale_contador(4),
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_4_rt_123
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_clkscale_contador(5),
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_5_rt_125
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_contador(1),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_1_rt_140
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_contador(2),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_2_rt_142
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_contador(3),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_3_rt_144
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_contador(4),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_4_rt_146
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_contador(5),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_5_rt_148
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_contador(6),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_6_rt_150
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_contador(7),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_7_rt_152
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_contador(8),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_8_rt_154
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_contador(9),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_9_rt_156
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_contador(10),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_10_rt_138
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador(1),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_1_rt_236
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador(2),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_2_rt_238
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador(3),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_3_rt_240
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador(4),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_4_rt_242
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador(5),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_5_rt_244
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador(6),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_6_rt_246
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador(7),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_7_rt_248
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador(8),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_8_rt_250
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador(9),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_9_rt_252
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador(10),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_10_rt_226
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador(11),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_11_rt_228
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador(12),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_12_rt_230
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador(13),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_13_rt_232
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador(14),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_14_rt_234
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_DISPLAY_khertz_count(8),
      O => Inst_DISPLAY_Mcount_khertz_count_cy_8_rt_16
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_DISPLAY_khertz_count(7),
      O => Inst_DISPLAY_Mcount_khertz_count_cy_7_rt_14
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_DISPLAY_khertz_count(6),
      O => Inst_DISPLAY_Mcount_khertz_count_cy_6_rt_12
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_DISPLAY_khertz_count(5),
      O => Inst_DISPLAY_Mcount_khertz_count_cy_5_rt_10
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_DISPLAY_khertz_count(4),
      O => Inst_DISPLAY_Mcount_khertz_count_cy_4_rt_8
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_DISPLAY_khertz_count(3),
      O => Inst_DISPLAY_Mcount_khertz_count_cy_3_rt_6
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_DISPLAY_khertz_count(2),
      O => Inst_DISPLAY_Mcount_khertz_count_cy_2_rt_4
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_DISPLAY_khertz_count(1),
      O => Inst_DISPLAY_Mcount_khertz_count_cy_1_rt_2
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_xor_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_clkscale_contador_61,
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_xor_6_rt_127
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_contador(11),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_11_rt_170
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador(15),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_xor_15_rt_270
    );
  Inst_DISPLAY_Mcount_khertz_count_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_DISPLAY_khertz_count(9),
      O => Inst_DISPLAY_Mcount_khertz_count_xor_9_rt_28
    );
  Inst_DISPLAY_khertz_count_cmp_eq000028 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => Inst_DISPLAY_khertz_count(1),
      I1 => Inst_DISPLAY_khertz_count(0),
      I2 => N26,
      I3 => Inst_DISPLAY_khertz_count_cmp_eq000015_79,
      O => Inst_DISPLAY_khertz_count_cmp_eq0000
    );
  Inst_ramdump_Inst_divisorRAM_clk2Hz_not00011 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => Inst_ramdump_Inst_divisorRAM_contador1(0),
      I1 => Inst_ramdump_Inst_divisorRAM_contador1(1),
      I2 => Inst_ramdump_Inst_divisorRAM_contador1(2),
      O => Inst_ramdump_Inst_divisorRAM_clk2Hz_not0001
    );
  Inst_DISPLAY_Mcount_mhertz_count91 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => Inst_DISPLAY_mhertz_count(3),
      I1 => Inst_DISPLAY_mhertz_count(1),
      I2 => Inst_DISPLAY_mhertz_count(2),
      I3 => Inst_DISPLAY_mhertz_count(0),
      O => Inst_DISPLAY_Mcount_mhertz_count9
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_01 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => Result_0_3,
      I1 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000011_185,
      I2 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000016_186,
      I3 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000028_187,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_0
    );
  Inst_ramdump_Inst_reader_Mcount_addr_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Inst_ramdump_Inst_reader_addr(0),
      I1 => up_down_IBUF_389,
      O => Inst_ramdump_Inst_reader_Mcount_addr_lut(0)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inst_ramdump_Inst_reader_addr(1),
      I1 => up_down_IBUF_389,
      O => Inst_ramdump_Inst_reader_Mcount_addr_lut(1)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inst_ramdump_Inst_reader_addr(2),
      I1 => up_down_IBUF_389,
      O => Inst_ramdump_Inst_reader_Mcount_addr_lut(2)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inst_ramdump_Inst_reader_addr(3),
      I1 => up_down_IBUF_389,
      O => Inst_ramdump_Inst_reader_Mcount_addr_lut(3)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inst_ramdump_Inst_reader_addr(4),
      I1 => up_down_IBUF_389,
      O => Inst_ramdump_Inst_reader_Mcount_addr_lut(4)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inst_ramdump_Inst_reader_addr(5),
      I1 => up_down_IBUF_389,
      O => Inst_ramdump_Inst_reader_Mcount_addr_lut(5)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inst_ramdump_Inst_reader_addr(6),
      I1 => up_down_IBUF_389,
      O => Inst_ramdump_Inst_reader_Mcount_addr_lut(6)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inst_ramdump_Inst_reader_addr(7),
      I1 => up_down_IBUF_389,
      O => Inst_ramdump_Inst_reader_Mcount_addr_lut(7)
    );
  Inst_DISPLAY_Mcount_mhertz_count15 : LUT4
    generic map(
      INIT => X"4CEC"
    )
    port map (
      I0 => Inst_DISPLAY_mhertz_count(1),
      I1 => Inst_DISPLAY_mhertz_count(5),
      I2 => Inst_DISPLAY_mhertz_count(4),
      I3 => N28,
      O => Inst_DISPLAY_Mcount_mhertz_count15_32
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_12 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => N33,
      I1 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000016_186,
      I2 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000011_185,
      I3 => Result_1_3,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_1
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_21 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000028_187,
      I1 => N32,
      I2 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000011_185,
      I3 => Result_2_3,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_2
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_31 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000028_187,
      I1 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000016_186,
      I2 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000011_185,
      I3 => Result_3_1,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_3
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_41 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000028_187,
      I1 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000016_186,
      I2 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000011_185,
      I3 => Result_4_1,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_4
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_51 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000028_187,
      I1 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000016_186,
      I2 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000011_185,
      I3 => Result_5_1,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_5
    );
  clk50_BUFGP : BUFGP
    port map (
      I => clk50,
      O => clk50_BUFGP_359
    );
  Inst_ramdump_Inst_clkscale_contador_6_BUFG : BUFG
    port map (
      I => Inst_ramdump_Inst_clkscale_contador_61,
      O => Inst_ramdump_Inst_clkscale_contador(6)
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_lut_0_INV_0 : INV
    port map (
      I => Inst_ramdump_Inst_clkscale_contador(0),
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_lut(0)
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_lut_0_INV_0 : INV
    port map (
      I => Inst_ramdump_Inst_divDEBOUNCER_contador(0),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_lut(0)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_lut_0_INV_0 : INV
    port map (
      I => Inst_ramdump_Inst_tickgen_contador(0),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_lut(0)
    );
  Inst_DISPLAY_Mcount_khertz_count_lut_0_INV_0 : INV
    port map (
      I => Inst_DISPLAY_khertz_count(0),
      O => Inst_DISPLAY_Mcount_khertz_count_lut(0)
    );
  Inst_ramdump_Inst_DEBOUNCER_state_FSM_Acst_inv1_INV_0 : INV
    port map (
      I => rst_n_IBUF_379,
      O => Inst_DISPLAY_rst_n_inv
    );
  Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd1_In1_INV_0 : INV
    port map (
      I => hold_IBUF_373,
      O => Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd1_In
    );
  Inst_ramdump_Inst_divisorRAM_Mcount_contador_xor_0_11_INV_0 : INV
    port map (
      I => Inst_ramdump_Inst_divisorRAM_contador(0),
      O => Result_0_1
    );
  Inst_ramdump_Inst_divisorRAM_Mcount_contador1_xor_0_11_INV_0 : INV
    port map (
      I => Inst_ramdump_Inst_divisorRAM_contador1(0),
      O => Result_0_Q
    );
  Inst_DISPLAY_Madd_cd_1_0_add0000_xor_0_11_INV_0 : INV
    port map (
      I => Inst_DISPLAY_cd(0),
      O => Inst_DISPLAY_cd_1_0_add0000(0)
    );
  Inst_ramdump_Inst_reader_hold_inv1_INV_0 : INV
    port map (
      I => Inst_ramdump_Inst_reader_hold_220,
      O => Inst_ramdump_Inst_reader_hold_inv
    );
  up_down_inv2_INV_0 : INV
    port map (
      I => up_down_IBUF_389,
      O => up_down_inv
    );
  Inst_ramdump_Inst_reader_Mrom_varindex0000 : RAMB16BWE
    generic map(
      SIM_COLLISION_CHECK => "ALL",
      SRVAL_A => X"000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"3A203C30322F31322F323030383E2E0A00000000000000000000000000000000",
      INIT_03 => X"616C697A61646120706F723A203C6463736530383331303E2E20204665636861",
      INIT_04 => X"74616E2D33205374617274657220426F6172642E0A5072E16374696361207265",
      INIT_05 => X"6F6E6120736F627265206C6120706C61636120446967696C656E742053706172",
      WRITE_MODE_A => "WRITE_FIRST",
      DATA_WIDTH_A => 9,
      DATA_WIDTH_B => 0,
      INIT_06 => X"6C65637472F36E69636F732E0A45737461207072E163746963612066756E6369",
      INIT_07 => X"44697365F16F20646520436972637569746F7320792053697374656D61732045",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      WRITE_MODE_B => "WRITE_FIRST",
      SRVAL_B => X"000000000"
    )
    port map (
      CLKA => Inst_ramdump_clkRAM,
      CLKB => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_CLKB_UNCONNECTED,
      ENA => N3,
      ENB => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ENB_UNCONNECTED,
      SSRA => N2,
      SSRB => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_SSRB_UNCONNECTED,
      ADDRA(13) => N2,
      ADDRA(12) => N2,
      ADDRA(11) => N2,
      ADDRA(10) => Inst_ramdump_Inst_reader_addr(7),
      ADDRA(9) => Inst_ramdump_Inst_reader_addr(6),
      ADDRA(8) => Inst_ramdump_Inst_reader_addr(5),
      ADDRA(7) => Inst_ramdump_Inst_reader_addr(4),
      ADDRA(6) => Inst_ramdump_Inst_reader_addr(3),
      ADDRA(5) => Inst_ramdump_Inst_reader_addr(2),
      ADDRA(4) => Inst_ramdump_Inst_reader_addr(1),
      ADDRA(3) => Inst_ramdump_Inst_reader_addr(0),
      ADDRA(2) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRA_2_UNCONNECTED,
      ADDRA(1) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRA_1_UNCONNECTED,
      ADDRA(0) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRA_0_UNCONNECTED,
      ADDRB(13) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_13_UNCONNECTED,
      ADDRB(12) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_12_UNCONNECTED,
      ADDRB(11) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_11_UNCONNECTED,
      ADDRB(10) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_10_UNCONNECTED,
      ADDRB(9) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_9_UNCONNECTED,
      ADDRB(8) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_8_UNCONNECTED,
      ADDRB(7) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_7_UNCONNECTED,
      ADDRB(6) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_6_UNCONNECTED,
      ADDRB(5) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_5_UNCONNECTED,
      ADDRB(4) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_4_UNCONNECTED,
      ADDRB(3) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_3_UNCONNECTED,
      ADDRB(2) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_2_UNCONNECTED,
      ADDRB(1) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_1_UNCONNECTED,
      ADDRB(0) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_ADDRB_0_UNCONNECTED,
      DIA(31) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_31_UNCONNECTED,
      DIA(30) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_30_UNCONNECTED,
      DIA(29) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_29_UNCONNECTED,
      DIA(28) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_28_UNCONNECTED,
      DIA(27) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_27_UNCONNECTED,
      DIA(26) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_26_UNCONNECTED,
      DIA(25) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_25_UNCONNECTED,
      DIA(24) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_24_UNCONNECTED,
      DIA(23) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_23_UNCONNECTED,
      DIA(22) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_22_UNCONNECTED,
      DIA(21) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_21_UNCONNECTED,
      DIA(20) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_20_UNCONNECTED,
      DIA(19) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_19_UNCONNECTED,
      DIA(18) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_18_UNCONNECTED,
      DIA(17) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_17_UNCONNECTED,
      DIA(16) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_16_UNCONNECTED,
      DIA(15) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_15_UNCONNECTED,
      DIA(14) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_14_UNCONNECTED,
      DIA(13) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_13_UNCONNECTED,
      DIA(12) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_12_UNCONNECTED,
      DIA(11) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_11_UNCONNECTED,
      DIA(10) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_10_UNCONNECTED,
      DIA(9) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_9_UNCONNECTED,
      DIA(8) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIA_8_UNCONNECTED,
      DIA(7) => N2,
      DIA(6) => N2,
      DIA(5) => N2,
      DIA(4) => N2,
      DIA(3) => N2,
      DIA(2) => N2,
      DIA(1) => N2,
      DIA(0) => N2,
      DIB(31) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_31_UNCONNECTED,
      DIB(30) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_30_UNCONNECTED,
      DIB(29) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_29_UNCONNECTED,
      DIB(28) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_28_UNCONNECTED,
      DIB(27) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_27_UNCONNECTED,
      DIB(26) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_26_UNCONNECTED,
      DIB(25) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_25_UNCONNECTED,
      DIB(24) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_24_UNCONNECTED,
      DIB(23) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_23_UNCONNECTED,
      DIB(22) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_22_UNCONNECTED,
      DIB(21) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_21_UNCONNECTED,
      DIB(20) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_20_UNCONNECTED,
      DIB(19) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_19_UNCONNECTED,
      DIB(18) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_18_UNCONNECTED,
      DIB(17) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_17_UNCONNECTED,
      DIB(16) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_16_UNCONNECTED,
      DIB(15) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_15_UNCONNECTED,
      DIB(14) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_14_UNCONNECTED,
      DIB(13) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_13_UNCONNECTED,
      DIB(12) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_12_UNCONNECTED,
      DIB(11) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_11_UNCONNECTED,
      DIB(10) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_10_UNCONNECTED,
      DIB(9) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_9_UNCONNECTED,
      DIB(8) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_8_UNCONNECTED,
      DIB(7) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_7_UNCONNECTED,
      DIB(6) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_6_UNCONNECTED,
      DIB(5) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_5_UNCONNECTED,
      DIB(4) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_4_UNCONNECTED,
      DIB(3) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_3_UNCONNECTED,
      DIB(2) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_2_UNCONNECTED,
      DIB(1) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_1_UNCONNECTED,
      DIB(0) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIB_0_UNCONNECTED,
      DIPA(3) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIPA_3_UNCONNECTED,
      DIPA(2) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIPA_2_UNCONNECTED,
      DIPA(1) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIPA_1_UNCONNECTED,
      DIPA(0) => N2,
      DIPB(3) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIPB_3_UNCONNECTED,
      DIPB(2) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIPB_2_UNCONNECTED,
      DIPB(1) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIPB_1_UNCONNECTED,
      DIPB(0) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DIPB_0_UNCONNECTED,
      WEA(3) => N2,
      WEA(2) => N2,
      WEA(1) => N2,
      WEA(0) => N2,
      WEB(3) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_WEB_3_UNCONNECTED,
      WEB(2) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_WEB_2_UNCONNECTED,
      WEB(1) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_WEB_1_UNCONNECTED,
      WEB(0) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_WEB_0_UNCONNECTED,
      DOA(31) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_31_UNCONNECTED,
      DOA(30) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_30_UNCONNECTED,
      DOA(29) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_29_UNCONNECTED,
      DOA(28) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_28_UNCONNECTED,
      DOA(27) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_27_UNCONNECTED,
      DOA(26) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_26_UNCONNECTED,
      DOA(25) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_25_UNCONNECTED,
      DOA(24) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_24_UNCONNECTED,
      DOA(23) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_23_UNCONNECTED,
      DOA(22) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_22_UNCONNECTED,
      DOA(21) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_21_UNCONNECTED,
      DOA(20) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_20_UNCONNECTED,
      DOA(19) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_19_UNCONNECTED,
      DOA(18) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_18_UNCONNECTED,
      DOA(17) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_17_UNCONNECTED,
      DOA(16) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_16_UNCONNECTED,
      DOA(15) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_15_UNCONNECTED,
      DOA(14) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_14_UNCONNECTED,
      DOA(13) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_13_UNCONNECTED,
      DOA(12) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_12_UNCONNECTED,
      DOA(11) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_11_UNCONNECTED,
      DOA(10) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_10_UNCONNECTED,
      DOA(9) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_9_UNCONNECTED,
      DOA(8) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOA_8_UNCONNECTED,
      DOA(7) => data(7),
      DOA(6) => data(6),
      DOA(5) => data(5),
      DOA(4) => data(4),
      DOA(3) => data(3),
      DOA(2) => data(2),
      DOA(1) => data(1),
      DOA(0) => data(0),
      DOB(31) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_31_UNCONNECTED,
      DOB(30) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_30_UNCONNECTED,
      DOB(29) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_29_UNCONNECTED,
      DOB(28) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_28_UNCONNECTED,
      DOB(27) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_27_UNCONNECTED,
      DOB(26) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_26_UNCONNECTED,
      DOB(25) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_25_UNCONNECTED,
      DOB(24) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_24_UNCONNECTED,
      DOB(23) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_23_UNCONNECTED,
      DOB(22) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_22_UNCONNECTED,
      DOB(21) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_21_UNCONNECTED,
      DOB(20) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_20_UNCONNECTED,
      DOB(19) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_19_UNCONNECTED,
      DOB(18) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_18_UNCONNECTED,
      DOB(17) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_17_UNCONNECTED,
      DOB(16) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_16_UNCONNECTED,
      DOB(15) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_15_UNCONNECTED,
      DOB(14) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_14_UNCONNECTED,
      DOB(13) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_13_UNCONNECTED,
      DOB(12) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_12_UNCONNECTED,
      DOB(11) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_11_UNCONNECTED,
      DOB(10) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_10_UNCONNECTED,
      DOB(9) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_9_UNCONNECTED,
      DOB(8) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_8_UNCONNECTED,
      DOB(7) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_7_UNCONNECTED,
      DOB(6) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_6_UNCONNECTED,
      DOB(5) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_5_UNCONNECTED,
      DOB(4) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_4_UNCONNECTED,
      DOB(3) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_3_UNCONNECTED,
      DOB(2) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_2_UNCONNECTED,
      DOB(1) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_1_UNCONNECTED,
      DOB(0) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOB_0_UNCONNECTED,
      DOPA(3) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOPA_2_UNCONNECTED,
      DOPA(1) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOPA_1_UNCONNECTED,
      DOPA(0) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOPA_0_UNCONNECTED,
      DOPB(3) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOPB_2_UNCONNECTED,
      DOPB(1) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOPB_1_UNCONNECTED,
      DOPB(0) => NLW_Inst_ramdump_Inst_reader_Mrom_varindex0000_DOPB_0_UNCONNECTED
    );
  Inst_ramdump_Inst_divisorRAM_Mmux_rate11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => inter_0_IBUF_376,
      I1 => Inst_ramdump_Inst_divisorRAM_clk2Hz_189,
      I2 => Inst_ramdump_Inst_divisorRAM_contador(0),
      O => Inst_ramdump_Inst_divisorRAM_Mmux_rate1
    );
  Inst_ramdump_Inst_divisorRAM_Mmux_rate1_f5 : MUXF5
    port map (
      I0 => Inst_ramdump_Inst_divisorRAM_Mmux_rate1,
      I1 => Inst_ramdump_Inst_divisorRAM_contador(1),
      S => inter_1_IBUF_377,
      O => Inst_ramdump_clkRAM
    );
  Inst_DISPLAY_seg_mux0002_0_2 : LUT4
    generic map(
      INIT => X"06FF"
    )
    port map (
      I0 => Inst_DISPLAY_curr(0),
      I1 => Inst_DISPLAY_curr(2),
      I2 => Inst_DISPLAY_curr(1),
      I3 => Inst_DISPLAY_cd(2),
      O => Inst_DISPLAY_seg_mux0002_0_2_101
    );
  Inst_DISPLAY_seg_mux0002_0_f5 : MUXF5
    port map (
      I0 => Inst_DISPLAY_seg_mux0002_0_2_101,
      I1 => Inst_DISPLAY_seg_mux0002_0_1,
      S => Inst_DISPLAY_curr(3),
      O => Inst_DISPLAY_seg_mux0002(0)
    );
  Inst_DISPLAY_seg_mux0002_1_1 : LUT4
    generic map(
      INIT => X"A2FF"
    )
    port map (
      I0 => Inst_DISPLAY_curr(2),
      I1 => Inst_DISPLAY_curr(0),
      I2 => Inst_DISPLAY_curr(1),
      I3 => Inst_DISPLAY_cd(2),
      O => Inst_DISPLAY_seg_mux0002_1_1_103
    );
  Inst_DISPLAY_seg_mux0002_1_2 : LUT4
    generic map(
      INIT => X"28FF"
    )
    port map (
      I0 => Inst_DISPLAY_curr(2),
      I1 => Inst_DISPLAY_curr(0),
      I2 => Inst_DISPLAY_curr(1),
      I3 => Inst_DISPLAY_cd(2),
      O => Inst_DISPLAY_seg_mux0002_1_2_104
    );
  Inst_DISPLAY_seg_mux0002_1_f5 : MUXF5
    port map (
      I0 => Inst_DISPLAY_seg_mux0002_1_2_104,
      I1 => Inst_DISPLAY_seg_mux0002_1_1_103,
      S => Inst_DISPLAY_curr(3),
      O => Inst_DISPLAY_seg_mux0002(1)
    );
  Inst_DISPLAY_seg_mux0002_7_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Inst_DISPLAY_curr(3),
      I1 => Inst_DISPLAY_cd(2),
      LO => N31
    );
  Inst_DISPLAY_mhertz_count_cmp_eq0000_SW0 : LUT3_L
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => Inst_DISPLAY_mhertz_count(5),
      I1 => Inst_DISPLAY_mhertz_count(4),
      I2 => Inst_DISPLAY_mhertz_count(3),
      LO => N5
    );
  Inst_DISPLAY_Mcount_mhertz_count_xor_1_111 : LUT4_D
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => Inst_DISPLAY_mhertz_count(5),
      I1 => Inst_DISPLAY_mhertz_count(2),
      I2 => Inst_DISPLAY_mhertz_count(3),
      I3 => Inst_DISPLAY_mhertz_count(4),
      LO => N30,
      O => Inst_DISPLAY_N1
    );
  Inst_DISPLAY_seg_mux0002_4_SW0 : LUT4_L
    generic map(
      INIT => X"AF8B"
    )
    port map (
      I0 => Inst_DISPLAY_curr(3),
      I1 => Inst_DISPLAY_curr(2),
      I2 => Inst_DISPLAY_curr(0),
      I3 => Inst_DISPLAY_curr(1),
      LO => N9
    );
  Inst_DISPLAY_seg_mux0002_2_SW0 : LUT4_L
    generic map(
      INIT => X"8908"
    )
    port map (
      I0 => Inst_DISPLAY_curr(3),
      I1 => Inst_DISPLAY_curr(2),
      I2 => Inst_DISPLAY_curr(0),
      I3 => Inst_DISPLAY_curr(1),
      LO => N11
    );
  Inst_DISPLAY_seg_mux0002_5_SW0 : LUT3_L
    generic map(
      INIT => X"B2"
    )
    port map (
      I0 => Inst_DISPLAY_curr(0),
      I1 => Inst_DISPLAY_curr(2),
      I2 => Inst_DISPLAY_curr(1),
      LO => N13
    );
  Inst_DISPLAY_seg_mux0002_6_SW0 : LUT4_L
    generic map(
      INIT => X"B96E"
    )
    port map (
      I0 => Inst_DISPLAY_curr(1),
      I1 => Inst_DISPLAY_curr(2),
      I2 => Inst_DISPLAY_curr(0),
      I3 => Inst_DISPLAY_curr(3),
      LO => N15
    );
  Inst_DISPLAY_seg_mux0002_3_SW0 : LUT4_L
    generic map(
      INIT => X"C118"
    )
    port map (
      I0 => Inst_DISPLAY_curr(3),
      I1 => Inst_DISPLAY_curr(1),
      I2 => Inst_DISPLAY_curr(2),
      I3 => Inst_DISPLAY_curr(0),
      LO => N17
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000011 : LUT4_D
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_contador(1),
      I1 => Inst_ramdump_Inst_divDEBOUNCER_contador(0),
      I2 => Inst_ramdump_Inst_divDEBOUNCER_contador(2),
      I3 => Inst_ramdump_Inst_divDEBOUNCER_contador(3),
      LO => N311,
      O => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000011_185
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000016 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_contador(8),
      I1 => Inst_ramdump_Inst_divDEBOUNCER_contador(9),
      I2 => Inst_ramdump_Inst_divDEBOUNCER_contador(10),
      I3 => Inst_ramdump_Inst_divDEBOUNCER_contador(11),
      LO => N32,
      O => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000016_186
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000028 : LUT4_D
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_contador(6),
      I1 => Inst_ramdump_Inst_divDEBOUNCER_contador(7),
      I2 => Inst_ramdump_Inst_divDEBOUNCER_contador(4),
      I3 => Inst_ramdump_Inst_divDEBOUNCER_contador(5),
      LO => N33,
      O => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000028_187
    );
  Inst_ramdump_Inst_tickgen_contador_cmp_eq000010 : LUT4_L
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => Inst_ramdump_Inst_tickgen_contador(1),
      I1 => Inst_ramdump_Inst_tickgen_contador(0),
      I2 => Inst_ramdump_Inst_tickgen_contador(2),
      I3 => Inst_ramdump_Inst_tickgen_contador(3),
      LO => Inst_ramdump_Inst_tickgen_contador_cmp_eq000010_288
    );
  Inst_DISPLAY_khertz_count_cmp_eq000028_SW0 : LUT4_L
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => Inst_DISPLAY_khertz_count(3),
      I1 => Inst_DISPLAY_khertz_count(8),
      I2 => Inst_DISPLAY_khertz_count(9),
      I3 => Inst_DISPLAY_khertz_count(2),
      LO => N26
    );
  Inst_DISPLAY_Mcount_mhertz_count12_SW0 : LUT4_L
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => Inst_DISPLAY_mhertz_count(1),
      I1 => Inst_DISPLAY_mhertz_count(0),
      I2 => Inst_DISPLAY_mhertz_count(5),
      I3 => Inst_DISPLAY_mhertz_count(2),
      LO => N19
    );
  Inst_DISPLAY_Mcount_mhertz_count15_SW0 : LUT4_L
    generic map(
      INIT => X"9557"
    )
    port map (
      I0 => Inst_DISPLAY_mhertz_count(5),
      I1 => Inst_DISPLAY_mhertz_count(0),
      I2 => Inst_DISPLAY_mhertz_count(2),
      I3 => Inst_DISPLAY_mhertz_count(3),
      LO => N28
    );
  Inst_DISPLAY_seg_mux0002_0_1_INV_0 : INV
    port map (
      I => Inst_DISPLAY_cd(2),
      O => Inst_DISPLAY_seg_mux0002_0_1
    );

end Structure;

