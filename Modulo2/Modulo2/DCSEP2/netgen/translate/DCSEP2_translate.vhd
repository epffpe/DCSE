--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: K.39
--  \   \         Application: netgen
--  /   /         Filename: DCSEP2_translate.vhd
-- /___/   /\     Timestamp: Sun Dec 07 20:41:47 2008
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm DCSEP2 -w -dir netgen/translate -ofmt vhdl -sim DCSEP2.ngd DCSEP2_translate.vhd 
-- Device	: 3s700afg484-4
-- Input file	: DCSEP2.ngd
-- Output file	: D:\Designs\DCSE\Modulo2\Modulo2\DCSEP2\netgen\translate\DCSEP2_translate.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

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
  signal Inst_DISPLAY_Mcount_khertz_count_cy_1_rt_5 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_cy_2_rt_7 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_cy_3_rt_9 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_cy_4_rt_11 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_cy_5_rt_13 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_cy_6_rt_15 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_cy_7_rt_17 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_khertz_count_cy_8_rt_19 : STD_LOGIC; 
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
  signal Inst_DISPLAY_Mcount_khertz_count_xor_9_rt_31 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_mhertz_count : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_mhertz_count12_33 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_mhertz_count12_bdd0 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_mhertz_count15_35 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_mhertz_count3 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_mhertz_count6 : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_mhertz_count9 : STD_LOGIC; 
  signal Inst_DISPLAY_N11 : STD_LOGIC; 
  signal Inst_DISPLAY_khertz_count_cmp_eq0000 : STD_LOGIC; 
  signal Inst_DISPLAY_khertz_count_cmp_eq000015_82 : STD_LOGIC; 
  signal Inst_DISPLAY_khertz_en_83 : STD_LOGIC; 
  signal Inst_DISPLAY_khertz_en_mux0002 : STD_LOGIC; 
  signal Inst_DISPLAY_mhertz_count_cmp_eq0000_91 : STD_LOGIC; 
  signal Inst_DISPLAY_mhertz_en_92 : STD_LOGIC; 
  signal Inst_DISPLAY_rst_n_inv : STD_LOGIC; 
  signal Inst_DISPLAY_seg_mux0002_1_1 : STD_LOGIC; 
  signal Inst_DISPLAY_seg_mux0002_1_2_105 : STD_LOGIC; 
  signal Inst_DISPLAY_seg_mux0002_2_1 : STD_LOGIC; 
  signal Inst_DISPLAY_seg_mux0002_2_2_108 : STD_LOGIC; 
  signal Inst_DISPLAY_seg_mux0002_4_1_111 : STD_LOGIC; 
  signal Inst_DISPLAY_seg_mux0002_4_2_112 : STD_LOGIC; 
  signal Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd1_116 : STD_LOGIC; 
  signal Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd1_In : STD_LOGIC; 
  signal Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd2_118 : STD_LOGIC; 
  signal Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_ramdump_Inst_clkscale_Mcount_contador_cy_1_rt_122 : STD_LOGIC; 
  signal Inst_ramdump_Inst_clkscale_Mcount_contador_cy_2_rt_124 : STD_LOGIC; 
  signal Inst_ramdump_Inst_clkscale_Mcount_contador_cy_3_rt_126 : STD_LOGIC; 
  signal Inst_ramdump_Inst_clkscale_Mcount_contador_cy_4_rt_128 : STD_LOGIC; 
  signal Inst_ramdump_Inst_clkscale_Mcount_contador_cy_5_rt_130 : STD_LOGIC; 
  signal Inst_ramdump_Inst_clkscale_Mcount_contador_xor_6_rt_132 : STD_LOGIC; 
  signal Inst_ramdump_Inst_clkscale_contador_61 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_10_rt_143 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_1_rt_145 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_2_rt_147 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_3_rt_149 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_4_rt_151 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_5_rt_153 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_6_rt_155 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_7_rt_157 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_8_rt_159 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_9_rt_161 : STD_LOGIC; 
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
  signal Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_11_rt_175 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_clk10ms_176 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq0000 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000011_190 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000016_191 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000028_192 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divisorRAM_Mmux_rate1 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divisorRAM_clk2Hz_194 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divisorRAM_clk2Hz_not0001 : STD_LOGIC; 
  signal Inst_ramdump_Inst_divisorRAM_contador1_cmp_eq0000 : STD_LOGIC; 
  signal Inst_ramdump_Inst_reader_hold_225 : STD_LOGIC; 
  signal Inst_ramdump_Inst_reader_hold_inv : STD_LOGIC; 
  signal Inst_ramdump_Inst_reader_state_0_mux0000 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_10_rt_231 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_11_rt_233 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_12_rt_235 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_13_rt_237 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_14_rt_239 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_1_rt_241 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_2_rt_243 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_3_rt_245 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_4_rt_247 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_5_rt_249 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_6_rt_251 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_7_rt_253 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_8_rt_255 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_cy_9_rt_257 : STD_LOGIC; 
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
  signal Inst_ramdump_Inst_tickgen_Mcount_contador_xor_15_rt_275 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_contador_cmp_eq0000 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_contador_cmp_eq000010_293 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_contador_cmp_eq000021_294 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_contador_cmp_eq000043_295 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_contador_cmp_eq000055_296 : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_tick_297 : STD_LOGIC; 
  signal Inst_ramdump_clkRAM : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
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
  signal clk50_BUFGP : STD_LOGIC; 
  signal hold_IBUF_376 : STD_LOGIC; 
  signal inter_0_IBUF_379 : STD_LOGIC; 
  signal inter_1_IBUF_380 : STD_LOGIC; 
  signal rst_n_IBUF_382 : STD_LOGIC; 
  signal up_down_IBUF_392 : STD_LOGIC; 
  signal up_down_inv : STD_LOGIC; 
  signal Inst_DISPLAY_mhertz_count_cmp_eq0000_SW0_O : STD_LOGIC; 
  signal Inst_DISPLAY_seg_mux0002_6_SW0_O : STD_LOGIC; 
  signal Inst_DISPLAY_seg_mux0002_5_SW0_O : STD_LOGIC; 
  signal Inst_ramdump_Inst_tickgen_contador_cmp_eq000010_O : STD_LOGIC; 
  signal Inst_DISPLAY_khertz_count_cmp_eq000028_SW0_O : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_mhertz_count12_SW0_O : STD_LOGIC; 
  signal Inst_DISPLAY_Mcount_mhertz_count15_SW0_O : STD_LOGIC; 
  signal clk50_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal NlwInverterSignal_Inst_ramdump_Inst_reader_state_0_C : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NlwInverterSignal_Inst_ramdump_Inst_reader_hold_C : STD_LOGIC; 
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
  XST_GND : X_ZERO
    port map (
      O => N2
    );
  XST_VCC : X_ONE
    port map (
      O => N3
    );
  Inst_ramdump_Inst_reader_state_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_Inst_ramdump_Inst_reader_state_0_C,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_reader_state_0_mux0000,
      O => Inst_ramdump_Inst_reader_state(0),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_reader_hold : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_Inst_ramdump_Inst_reader_hold_C,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_reader_state(0),
      O => Inst_ramdump_Inst_reader_hold_225,
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => Inst_ramdump_Inst_divDEBOUNCER_clk10ms_176,
      I => Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd1_In,
      SET => Inst_DISPLAY_rst_n_inv,
      O => Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd1_116,
      CE => VCC,
      RST => GND
    );
  Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_divDEBOUNCER_clk10ms_176,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd2_In,
      O => Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd2_118,
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_divDEBOUNCER_clk10ms : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq0000,
      O => Inst_ramdump_Inst_divDEBOUNCER_clk10ms_176,
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_divisorRAM_clk2Hz : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_tickgen_tick_297,
      I => N3,
      SRST => Inst_ramdump_Inst_divisorRAM_clk2Hz_not0001,
      O => Inst_ramdump_Inst_divisorRAM_clk2Hz_194,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Inst_ramdump_Inst_tickgen_tick : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      O => Inst_ramdump_Inst_tickgen_tick_297,
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_divisorRAM_contador1_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_tickgen_tick_297,
      I => Result_0_Q,
      SRST => Inst_ramdump_Inst_divisorRAM_contador1_cmp_eq0000,
      O => Inst_ramdump_Inst_divisorRAM_contador1(0),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Inst_ramdump_Inst_divisorRAM_contador1_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_tickgen_tick_297,
      I => Result_1_Q,
      SRST => Inst_ramdump_Inst_divisorRAM_contador1_cmp_eq0000,
      O => Inst_ramdump_Inst_divisorRAM_contador1(1),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Inst_ramdump_Inst_divisorRAM_contador1_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_tickgen_tick_297,
      I => Result_2_Q,
      SRST => Inst_ramdump_Inst_divisorRAM_contador1_cmp_eq0000,
      O => Inst_ramdump_Inst_divisorRAM_contador1(2),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Inst_ramdump_Inst_clkscale_contador_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Result_0_2,
      O => Inst_ramdump_Inst_clkscale_contador(0),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_clkscale_contador_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Result_1_2,
      O => Inst_ramdump_Inst_clkscale_contador(1),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_clkscale_contador_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Result_2_2,
      O => Inst_ramdump_Inst_clkscale_contador(2),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_clkscale_contador_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Result_3_Q,
      O => Inst_ramdump_Inst_clkscale_contador(3),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_clkscale_contador_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Result_4_Q,
      O => Inst_ramdump_Inst_clkscale_contador(4),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_clkscale_contador_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Result_5_Q,
      O => Inst_ramdump_Inst_clkscale_contador(5),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_clkscale_contador_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Result_6_Q,
      O => Inst_ramdump_Inst_clkscale_contador_61,
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_divisorRAM_contador_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_divisorRAM_clk2Hz_194,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Result_0_1,
      O => Inst_ramdump_Inst_divisorRAM_contador(0),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_divisorRAM_contador_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_divisorRAM_clk2Hz_194,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Result_1_1,
      O => Inst_ramdump_Inst_divisorRAM_contador(1),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_0,
      O => Inst_ramdump_Inst_divDEBOUNCER_contador(0),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_1,
      O => Inst_ramdump_Inst_divDEBOUNCER_contador(1),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_2,
      O => Inst_ramdump_Inst_divDEBOUNCER_contador(2),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_3,
      O => Inst_ramdump_Inst_divDEBOUNCER_contador(3),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_4,
      O => Inst_ramdump_Inst_divDEBOUNCER_contador(4),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_5,
      O => Inst_ramdump_Inst_divDEBOUNCER_contador(5),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_6,
      O => Inst_ramdump_Inst_divDEBOUNCER_contador(6),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_7,
      O => Inst_ramdump_Inst_divDEBOUNCER_contador(7),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_8,
      O => Inst_ramdump_Inst_divDEBOUNCER_contador(8),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_9,
      O => Inst_ramdump_Inst_divDEBOUNCER_contador(9),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_10,
      O => Inst_ramdump_Inst_divDEBOUNCER_contador(10),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_11 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_11,
      O => Inst_ramdump_Inst_divDEBOUNCER_contador(11),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_tickgen_contador_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_0,
      O => Inst_ramdump_Inst_tickgen_contador(0),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_tickgen_contador_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_1,
      O => Inst_ramdump_Inst_tickgen_contador(1),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_tickgen_contador_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_2,
      O => Inst_ramdump_Inst_tickgen_contador(2),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_tickgen_contador_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_3,
      O => Inst_ramdump_Inst_tickgen_contador(3),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_tickgen_contador_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_4,
      O => Inst_ramdump_Inst_tickgen_contador(4),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_tickgen_contador_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_5,
      O => Inst_ramdump_Inst_tickgen_contador(5),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_tickgen_contador_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_6,
      O => Inst_ramdump_Inst_tickgen_contador(6),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_tickgen_contador_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_7,
      O => Inst_ramdump_Inst_tickgen_contador(7),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_tickgen_contador_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_8,
      O => Inst_ramdump_Inst_tickgen_contador(8),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_tickgen_contador_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_9,
      O => Inst_ramdump_Inst_tickgen_contador(9),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_tickgen_contador_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_10,
      O => Inst_ramdump_Inst_tickgen_contador(10),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_tickgen_contador_11 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_11,
      O => Inst_ramdump_Inst_tickgen_contador(11),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_tickgen_contador_12 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_12,
      O => Inst_ramdump_Inst_tickgen_contador(12),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_tickgen_contador_13 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_13,
      O => Inst_ramdump_Inst_tickgen_contador(13),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_tickgen_contador_14 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_14,
      O => Inst_ramdump_Inst_tickgen_contador(14),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_tickgen_contador_15 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_Inst_clkscale_contador(6),
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_15,
      O => Inst_ramdump_Inst_tickgen_contador(15),
      CE => VCC,
      SET => GND
    );
  Inst_ramdump_Inst_reader_addr_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_clkRAM,
      CE => Inst_ramdump_Inst_reader_hold_inv,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Result_0_5,
      O => Inst_ramdump_Inst_reader_addr(0),
      SET => GND
    );
  Inst_ramdump_Inst_reader_addr_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_clkRAM,
      CE => Inst_ramdump_Inst_reader_hold_inv,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Result_1_5,
      O => Inst_ramdump_Inst_reader_addr(1),
      SET => GND
    );
  Inst_ramdump_Inst_reader_addr_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_clkRAM,
      CE => Inst_ramdump_Inst_reader_hold_inv,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Result_2_5,
      O => Inst_ramdump_Inst_reader_addr(2),
      SET => GND
    );
  Inst_ramdump_Inst_reader_addr_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_clkRAM,
      CE => Inst_ramdump_Inst_reader_hold_inv,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Result_3_3,
      O => Inst_ramdump_Inst_reader_addr(3),
      SET => GND
    );
  Inst_ramdump_Inst_reader_addr_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_clkRAM,
      CE => Inst_ramdump_Inst_reader_hold_inv,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Result_4_3,
      O => Inst_ramdump_Inst_reader_addr(4),
      SET => GND
    );
  Inst_ramdump_Inst_reader_addr_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_clkRAM,
      CE => Inst_ramdump_Inst_reader_hold_inv,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Result_5_3,
      O => Inst_ramdump_Inst_reader_addr(5),
      SET => GND
    );
  Inst_ramdump_Inst_reader_addr_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_clkRAM,
      CE => Inst_ramdump_Inst_reader_hold_inv,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Result_6_3,
      O => Inst_ramdump_Inst_reader_addr(6),
      SET => GND
    );
  Inst_ramdump_Inst_reader_addr_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_ramdump_clkRAM,
      CE => Inst_ramdump_Inst_reader_hold_inv,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Result_7_3,
      O => Inst_ramdump_Inst_reader_addr(7),
      SET => GND
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_cy_0_Q : X_MUX2
    port map (
      IB => N2,
      IA => N3,
      SEL => Inst_ramdump_Inst_clkscale_Mcount_contador_lut(0),
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(0)
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_xor_0_Q : X_XOR2
    port map (
      I0 => N2,
      I1 => Inst_ramdump_Inst_clkscale_Mcount_contador_lut(0),
      O => Result_0_2
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_cy_1_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(0),
      IA => N2,
      SEL => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_1_rt_122,
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(1)
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_xor_1_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(0),
      I1 => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_1_rt_122,
      O => Result_1_2
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_cy_2_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(1),
      IA => N2,
      SEL => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_2_rt_124,
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(2)
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_xor_2_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(1),
      I1 => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_2_rt_124,
      O => Result_2_2
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_cy_3_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(2),
      IA => N2,
      SEL => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_3_rt_126,
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(3)
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_xor_3_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(2),
      I1 => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_3_rt_126,
      O => Result_3_Q
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_cy_4_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(3),
      IA => N2,
      SEL => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_4_rt_128,
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(4)
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_xor_4_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(3),
      I1 => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_4_rt_128,
      O => Result_4_Q
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_cy_5_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(4),
      IA => N2,
      SEL => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_5_rt_130,
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(5)
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_xor_5_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(4),
      I1 => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_5_rt_130,
      O => Result_5_Q
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_xor_6_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_clkscale_Mcount_contador_cy(5),
      I1 => Inst_ramdump_Inst_clkscale_Mcount_contador_xor_6_rt_132,
      O => Result_6_Q
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_0_Q : X_MUX2
    port map (
      IB => N2,
      IA => N3,
      SEL => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_lut(0),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(0)
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_0_Q : X_XOR2
    port map (
      I0 => N2,
      I1 => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_lut(0),
      O => Result_0_3
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_1_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(0),
      IA => N2,
      SEL => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_1_rt_145,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(1)
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_1_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(0),
      I1 => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_1_rt_145,
      O => Result_1_3
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_2_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(1),
      IA => N2,
      SEL => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_2_rt_147,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(2)
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_2_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(1),
      I1 => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_2_rt_147,
      O => Result_2_3
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_3_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(2),
      IA => N2,
      SEL => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_3_rt_149,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(3)
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_3_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(2),
      I1 => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_3_rt_149,
      O => Result_3_1
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_4_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(3),
      IA => N2,
      SEL => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_4_rt_151,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(4)
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_4_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(3),
      I1 => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_4_rt_151,
      O => Result_4_1
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_5_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(4),
      IA => N2,
      SEL => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_5_rt_153,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(5)
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_5_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(4),
      I1 => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_5_rt_153,
      O => Result_5_1
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_6_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(5),
      IA => N2,
      SEL => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_6_rt_155,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(6)
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_6_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(5),
      I1 => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_6_rt_155,
      O => Result_6_1
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_7_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(6),
      IA => N2,
      SEL => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_7_rt_157,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(7)
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_7_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(6),
      I1 => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_7_rt_157,
      O => Result_7_1
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_8_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(7),
      IA => N2,
      SEL => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_8_rt_159,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(8)
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_8_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(7),
      I1 => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_8_rt_159,
      O => Result_8_Q
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_9_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(8),
      IA => N2,
      SEL => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_9_rt_161,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(9)
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_9_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(8),
      I1 => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_9_rt_161,
      O => Result_9_Q
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_10_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(9),
      IA => N2,
      SEL => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_10_rt_143,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(10)
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_10_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(9),
      I1 => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_10_rt_143,
      O => Result_10_Q
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_11_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy(10),
      I1 => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_11_rt_175,
      O => Result_11_Q
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_0_Q : X_MUX2
    port map (
      IB => N2,
      IA => N3,
      SEL => Inst_ramdump_Inst_tickgen_Mcount_contador_lut(0),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(0)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_0_Q : X_XOR2
    port map (
      I0 => N2,
      I1 => Inst_ramdump_Inst_tickgen_Mcount_contador_lut(0),
      O => Result_0_4
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_1_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(0),
      IA => N2,
      SEL => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_1_rt_241,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(1)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_1_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(0),
      I1 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_1_rt_241,
      O => Result_1_4
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_2_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(1),
      IA => N2,
      SEL => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_2_rt_243,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(2)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_2_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(1),
      I1 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_2_rt_243,
      O => Result_2_4
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_3_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(2),
      IA => N2,
      SEL => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_3_rt_245,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(3)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_3_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(2),
      I1 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_3_rt_245,
      O => Result_3_2
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_4_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(3),
      IA => N2,
      SEL => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_4_rt_247,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(4)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_4_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(3),
      I1 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_4_rt_247,
      O => Result_4_2
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_5_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(4),
      IA => N2,
      SEL => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_5_rt_249,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(5)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_5_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(4),
      I1 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_5_rt_249,
      O => Result_5_2
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_6_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(5),
      IA => N2,
      SEL => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_6_rt_251,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(6)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_6_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(5),
      I1 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_6_rt_251,
      O => Result_6_2
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_7_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(6),
      IA => N2,
      SEL => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_7_rt_253,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(7)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_7_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(6),
      I1 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_7_rt_253,
      O => Result_7_2
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_8_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(7),
      IA => N2,
      SEL => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_8_rt_255,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(8)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_8_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(7),
      I1 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_8_rt_255,
      O => Result_8_1
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_9_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(8),
      IA => N2,
      SEL => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_9_rt_257,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(9)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_9_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(8),
      I1 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_9_rt_257,
      O => Result_9_1
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_10_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(9),
      IA => N2,
      SEL => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_10_rt_231,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(10)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_10_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(9),
      I1 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_10_rt_231,
      O => Result_10_1
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_11_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(10),
      IA => N2,
      SEL => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_11_rt_233,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(11)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_11_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(10),
      I1 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_11_rt_233,
      O => Result_11_1
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_12_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(11),
      IA => N2,
      SEL => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_12_rt_235,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(12)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_12_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(11),
      I1 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_12_rt_235,
      O => Result_12_Q
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_13_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(12),
      IA => N2,
      SEL => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_13_rt_237,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(13)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_13_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(12),
      I1 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_13_rt_237,
      O => Result_13_Q
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_14_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(13),
      IA => N2,
      SEL => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_14_rt_239,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(14)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_14_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(13),
      I1 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_14_rt_239,
      O => Result_14_Q
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_15_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_tickgen_Mcount_contador_cy(14),
      I1 => Inst_ramdump_Inst_tickgen_Mcount_contador_xor_15_rt_275,
      O => Result_15_Q
    );
  Inst_ramdump_Inst_reader_Mcount_addr_cy_0_Q : X_MUX2
    port map (
      IB => up_down_inv,
      IA => Inst_ramdump_Inst_reader_addr(0),
      SEL => Inst_ramdump_Inst_reader_Mcount_addr_lut(0),
      O => Inst_ramdump_Inst_reader_Mcount_addr_cy(0)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_xor_0_Q : X_XOR2
    port map (
      I0 => up_down_inv,
      I1 => Inst_ramdump_Inst_reader_Mcount_addr_lut(0),
      O => Result_0_5
    );
  Inst_ramdump_Inst_reader_Mcount_addr_cy_1_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_reader_Mcount_addr_cy(0),
      IA => Inst_ramdump_Inst_reader_addr(1),
      SEL => Inst_ramdump_Inst_reader_Mcount_addr_lut(1),
      O => Inst_ramdump_Inst_reader_Mcount_addr_cy(1)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_xor_1_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_reader_Mcount_addr_cy(0),
      I1 => Inst_ramdump_Inst_reader_Mcount_addr_lut(1),
      O => Result_1_5
    );
  Inst_ramdump_Inst_reader_Mcount_addr_cy_2_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_reader_Mcount_addr_cy(1),
      IA => Inst_ramdump_Inst_reader_addr(2),
      SEL => Inst_ramdump_Inst_reader_Mcount_addr_lut(2),
      O => Inst_ramdump_Inst_reader_Mcount_addr_cy(2)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_xor_2_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_reader_Mcount_addr_cy(1),
      I1 => Inst_ramdump_Inst_reader_Mcount_addr_lut(2),
      O => Result_2_5
    );
  Inst_ramdump_Inst_reader_Mcount_addr_cy_3_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_reader_Mcount_addr_cy(2),
      IA => Inst_ramdump_Inst_reader_addr(3),
      SEL => Inst_ramdump_Inst_reader_Mcount_addr_lut(3),
      O => Inst_ramdump_Inst_reader_Mcount_addr_cy(3)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_xor_3_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_reader_Mcount_addr_cy(2),
      I1 => Inst_ramdump_Inst_reader_Mcount_addr_lut(3),
      O => Result_3_3
    );
  Inst_ramdump_Inst_reader_Mcount_addr_cy_4_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_reader_Mcount_addr_cy(3),
      IA => Inst_ramdump_Inst_reader_addr(4),
      SEL => Inst_ramdump_Inst_reader_Mcount_addr_lut(4),
      O => Inst_ramdump_Inst_reader_Mcount_addr_cy(4)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_xor_4_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_reader_Mcount_addr_cy(3),
      I1 => Inst_ramdump_Inst_reader_Mcount_addr_lut(4),
      O => Result_4_3
    );
  Inst_ramdump_Inst_reader_Mcount_addr_cy_5_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_reader_Mcount_addr_cy(4),
      IA => Inst_ramdump_Inst_reader_addr(5),
      SEL => Inst_ramdump_Inst_reader_Mcount_addr_lut(5),
      O => Inst_ramdump_Inst_reader_Mcount_addr_cy(5)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_xor_5_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_reader_Mcount_addr_cy(4),
      I1 => Inst_ramdump_Inst_reader_Mcount_addr_lut(5),
      O => Result_5_3
    );
  Inst_ramdump_Inst_reader_Mcount_addr_cy_6_Q : X_MUX2
    port map (
      IB => Inst_ramdump_Inst_reader_Mcount_addr_cy(5),
      IA => Inst_ramdump_Inst_reader_addr(6),
      SEL => Inst_ramdump_Inst_reader_Mcount_addr_lut(6),
      O => Inst_ramdump_Inst_reader_Mcount_addr_cy(6)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_xor_6_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_reader_Mcount_addr_cy(5),
      I1 => Inst_ramdump_Inst_reader_Mcount_addr_lut(6),
      O => Result_6_3
    );
  Inst_ramdump_Inst_reader_Mcount_addr_xor_7_Q : X_XOR2
    port map (
      I0 => Inst_ramdump_Inst_reader_Mcount_addr_cy(6),
      I1 => Inst_ramdump_Inst_reader_Mcount_addr_lut(7),
      O => Result_7_3
    );
  Inst_DISPLAY_Mcount_khertz_count_xor_9_Q : X_XOR2
    port map (
      I0 => Inst_DISPLAY_Mcount_khertz_count_cy(8),
      I1 => Inst_DISPLAY_Mcount_khertz_count_xor_9_rt_31,
      O => Inst_DISPLAY_Result(9)
    );
  Inst_DISPLAY_Mcount_khertz_count_xor_8_Q : X_XOR2
    port map (
      I0 => Inst_DISPLAY_Mcount_khertz_count_cy(7),
      I1 => Inst_DISPLAY_Mcount_khertz_count_cy_8_rt_19,
      O => Inst_DISPLAY_Result(8)
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_8_Q : X_MUX2
    port map (
      IB => Inst_DISPLAY_Mcount_khertz_count_cy(7),
      IA => N2,
      SEL => Inst_DISPLAY_Mcount_khertz_count_cy_8_rt_19,
      O => Inst_DISPLAY_Mcount_khertz_count_cy(8)
    );
  Inst_DISPLAY_Mcount_khertz_count_xor_7_Q : X_XOR2
    port map (
      I0 => Inst_DISPLAY_Mcount_khertz_count_cy(6),
      I1 => Inst_DISPLAY_Mcount_khertz_count_cy_7_rt_17,
      O => Inst_DISPLAY_Result(7)
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_7_Q : X_MUX2
    port map (
      IB => Inst_DISPLAY_Mcount_khertz_count_cy(6),
      IA => N2,
      SEL => Inst_DISPLAY_Mcount_khertz_count_cy_7_rt_17,
      O => Inst_DISPLAY_Mcount_khertz_count_cy(7)
    );
  Inst_DISPLAY_Mcount_khertz_count_xor_6_Q : X_XOR2
    port map (
      I0 => Inst_DISPLAY_Mcount_khertz_count_cy(5),
      I1 => Inst_DISPLAY_Mcount_khertz_count_cy_6_rt_15,
      O => Inst_DISPLAY_Result(6)
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_6_Q : X_MUX2
    port map (
      IB => Inst_DISPLAY_Mcount_khertz_count_cy(5),
      IA => N2,
      SEL => Inst_DISPLAY_Mcount_khertz_count_cy_6_rt_15,
      O => Inst_DISPLAY_Mcount_khertz_count_cy(6)
    );
  Inst_DISPLAY_Mcount_khertz_count_xor_5_Q : X_XOR2
    port map (
      I0 => Inst_DISPLAY_Mcount_khertz_count_cy(4),
      I1 => Inst_DISPLAY_Mcount_khertz_count_cy_5_rt_13,
      O => Inst_DISPLAY_Result(5)
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_5_Q : X_MUX2
    port map (
      IB => Inst_DISPLAY_Mcount_khertz_count_cy(4),
      IA => N2,
      SEL => Inst_DISPLAY_Mcount_khertz_count_cy_5_rt_13,
      O => Inst_DISPLAY_Mcount_khertz_count_cy(5)
    );
  Inst_DISPLAY_Mcount_khertz_count_xor_4_Q : X_XOR2
    port map (
      I0 => Inst_DISPLAY_Mcount_khertz_count_cy(3),
      I1 => Inst_DISPLAY_Mcount_khertz_count_cy_4_rt_11,
      O => Inst_DISPLAY_Result(4)
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_4_Q : X_MUX2
    port map (
      IB => Inst_DISPLAY_Mcount_khertz_count_cy(3),
      IA => N2,
      SEL => Inst_DISPLAY_Mcount_khertz_count_cy_4_rt_11,
      O => Inst_DISPLAY_Mcount_khertz_count_cy(4)
    );
  Inst_DISPLAY_Mcount_khertz_count_xor_3_Q : X_XOR2
    port map (
      I0 => Inst_DISPLAY_Mcount_khertz_count_cy(2),
      I1 => Inst_DISPLAY_Mcount_khertz_count_cy_3_rt_9,
      O => Inst_DISPLAY_Result(3)
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_3_Q : X_MUX2
    port map (
      IB => Inst_DISPLAY_Mcount_khertz_count_cy(2),
      IA => N2,
      SEL => Inst_DISPLAY_Mcount_khertz_count_cy_3_rt_9,
      O => Inst_DISPLAY_Mcount_khertz_count_cy(3)
    );
  Inst_DISPLAY_Mcount_khertz_count_xor_2_Q : X_XOR2
    port map (
      I0 => Inst_DISPLAY_Mcount_khertz_count_cy(1),
      I1 => Inst_DISPLAY_Mcount_khertz_count_cy_2_rt_7,
      O => Inst_DISPLAY_Result(2)
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_2_Q : X_MUX2
    port map (
      IB => Inst_DISPLAY_Mcount_khertz_count_cy(1),
      IA => N2,
      SEL => Inst_DISPLAY_Mcount_khertz_count_cy_2_rt_7,
      O => Inst_DISPLAY_Mcount_khertz_count_cy(2)
    );
  Inst_DISPLAY_Mcount_khertz_count_xor_1_Q : X_XOR2
    port map (
      I0 => Inst_DISPLAY_Mcount_khertz_count_cy(0),
      I1 => Inst_DISPLAY_Mcount_khertz_count_cy_1_rt_5,
      O => Inst_DISPLAY_Result(1)
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_1_Q : X_MUX2
    port map (
      IB => Inst_DISPLAY_Mcount_khertz_count_cy(0),
      IA => N2,
      SEL => Inst_DISPLAY_Mcount_khertz_count_cy_1_rt_5,
      O => Inst_DISPLAY_Mcount_khertz_count_cy(1)
    );
  Inst_DISPLAY_Mcount_khertz_count_xor_0_Q : X_XOR2
    port map (
      I0 => N2,
      I1 => Inst_DISPLAY_Mcount_khertz_count_lut(0),
      O => Inst_DISPLAY_Result(0)
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_0_Q : X_MUX2
    port map (
      IB => N2,
      IA => N3,
      SEL => Inst_DISPLAY_Mcount_khertz_count_lut(0),
      O => Inst_DISPLAY_Mcount_khertz_count_cy(0)
    );
  Inst_DISPLAY_mhertz_count_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_DISPLAY_Mcount_mhertz_count15_35,
      O => Inst_DISPLAY_mhertz_count(5),
      CE => VCC,
      SET => GND
    );
  Inst_DISPLAY_mhertz_count_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_DISPLAY_Mcount_mhertz_count12_33,
      O => Inst_DISPLAY_mhertz_count(4),
      CE => VCC,
      SET => GND
    );
  Inst_DISPLAY_mhertz_count_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_DISPLAY_Mcount_mhertz_count9,
      O => Inst_DISPLAY_mhertz_count(3),
      CE => VCC,
      SET => GND
    );
  Inst_DISPLAY_mhertz_count_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_DISPLAY_Mcount_mhertz_count6,
      O => Inst_DISPLAY_mhertz_count(2),
      CE => VCC,
      SET => GND
    );
  Inst_DISPLAY_mhertz_count_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_DISPLAY_Mcount_mhertz_count3,
      O => Inst_DISPLAY_mhertz_count(1),
      CE => VCC,
      SET => GND
    );
  Inst_DISPLAY_mhertz_count_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_DISPLAY_Mcount_mhertz_count,
      O => Inst_DISPLAY_mhertz_count(0),
      CE => VCC,
      SET => GND
    );
  Inst_DISPLAY_khertz_count_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      CE => Inst_DISPLAY_mhertz_en_92,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_DISPLAY_Mcount_khertz_count_eqn_9,
      O => Inst_DISPLAY_khertz_count(9),
      SET => GND
    );
  Inst_DISPLAY_khertz_count_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      CE => Inst_DISPLAY_mhertz_en_92,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_DISPLAY_Mcount_khertz_count_eqn_8,
      O => Inst_DISPLAY_khertz_count(8),
      SET => GND
    );
  Inst_DISPLAY_khertz_count_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      CE => Inst_DISPLAY_mhertz_en_92,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_DISPLAY_Mcount_khertz_count_eqn_7,
      O => Inst_DISPLAY_khertz_count(7),
      SET => GND
    );
  Inst_DISPLAY_khertz_count_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      CE => Inst_DISPLAY_mhertz_en_92,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_DISPLAY_Mcount_khertz_count_eqn_6,
      O => Inst_DISPLAY_khertz_count(6),
      SET => GND
    );
  Inst_DISPLAY_khertz_count_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      CE => Inst_DISPLAY_mhertz_en_92,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_DISPLAY_Mcount_khertz_count_eqn_5,
      O => Inst_DISPLAY_khertz_count(5),
      SET => GND
    );
  Inst_DISPLAY_khertz_count_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      CE => Inst_DISPLAY_mhertz_en_92,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_DISPLAY_Mcount_khertz_count_eqn_4,
      O => Inst_DISPLAY_khertz_count(4),
      SET => GND
    );
  Inst_DISPLAY_khertz_count_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      CE => Inst_DISPLAY_mhertz_en_92,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_DISPLAY_Mcount_khertz_count_eqn_3,
      O => Inst_DISPLAY_khertz_count(3),
      SET => GND
    );
  Inst_DISPLAY_khertz_count_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      CE => Inst_DISPLAY_mhertz_en_92,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_DISPLAY_Mcount_khertz_count_eqn_2,
      O => Inst_DISPLAY_khertz_count(2),
      SET => GND
    );
  Inst_DISPLAY_khertz_count_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      CE => Inst_DISPLAY_mhertz_en_92,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_DISPLAY_Mcount_khertz_count_eqn_1,
      O => Inst_DISPLAY_khertz_count(1),
      SET => GND
    );
  Inst_DISPLAY_khertz_count_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      CE => Inst_DISPLAY_mhertz_en_92,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_DISPLAY_Mcount_khertz_count_eqn_0,
      O => Inst_DISPLAY_khertz_count(0),
      SET => GND
    );
  Inst_DISPLAY_curr_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_DISPLAY_curr_mux0001(3),
      O => Inst_DISPLAY_curr(3),
      CE => VCC,
      SET => GND
    );
  Inst_DISPLAY_curr_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_DISPLAY_curr_mux0001(2),
      O => Inst_DISPLAY_curr(2),
      CE => VCC,
      SET => GND
    );
  Inst_DISPLAY_curr_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_DISPLAY_curr_mux0001(1),
      O => Inst_DISPLAY_curr(1),
      CE => VCC,
      SET => GND
    );
  Inst_DISPLAY_curr_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_DISPLAY_curr_mux0001(0),
      O => Inst_DISPLAY_curr(0),
      CE => VCC,
      SET => GND
    );
  Inst_DISPLAY_digit_3 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk50_BUFGP,
      I => Inst_DISPLAY_digit_mux0001(0),
      SET => Inst_DISPLAY_rst_n_inv,
      O => Inst_DISPLAY_digit(3),
      CE => VCC,
      RST => GND
    );
  Inst_DISPLAY_digit_2 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk50_BUFGP,
      I => Inst_DISPLAY_digit_mux0001(1),
      SET => Inst_DISPLAY_rst_n_inv,
      O => Inst_DISPLAY_digit(2),
      CE => VCC,
      RST => GND
    );
  Inst_DISPLAY_digit_1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk50_BUFGP,
      I => Inst_DISPLAY_digit_mux0001(2),
      SET => Inst_DISPLAY_rst_n_inv,
      O => Inst_DISPLAY_digit(1),
      CE => VCC,
      RST => GND
    );
  Inst_DISPLAY_digit_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk50_BUFGP,
      I => Inst_DISPLAY_digit_mux0001(3),
      SET => Inst_DISPLAY_rst_n_inv,
      O => Inst_DISPLAY_digit(0),
      CE => VCC,
      RST => GND
    );
  Inst_DISPLAY_cd_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      CE => Inst_DISPLAY_khertz_en_83,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_DISPLAY_cd_1_0_add0000(1),
      O => Inst_DISPLAY_cd(1),
      SET => GND
    );
  Inst_DISPLAY_cd_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      CE => Inst_DISPLAY_khertz_en_83,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_DISPLAY_cd_1_0_add0000(0),
      O => Inst_DISPLAY_cd(0),
      SET => GND
    );
  Inst_DISPLAY_cd_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      RST => Inst_DISPLAY_rst_n_inv,
      I => N3,
      O => Inst_DISPLAY_cd(2),
      CE => VCC,
      SET => GND
    );
  Inst_DISPLAY_khertz_en : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_DISPLAY_khertz_en_mux0002,
      O => Inst_DISPLAY_khertz_en_83,
      CE => VCC,
      SET => GND
    );
  Inst_DISPLAY_mhertz_en : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk50_BUFGP,
      RST => Inst_DISPLAY_rst_n_inv,
      I => Inst_DISPLAY_mhertz_count_cmp_eq0000_91,
      O => Inst_DISPLAY_mhertz_en_92,
      CE => VCC,
      SET => GND
    );
  Inst_DISPLAY_seg_7 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk50_BUFGP,
      I => Inst_DISPLAY_seg_mux0002(0),
      SET => Inst_DISPLAY_rst_n_inv,
      O => Inst_DISPLAY_seg(7),
      CE => VCC,
      RST => GND
    );
  Inst_DISPLAY_seg_6 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk50_BUFGP,
      I => Inst_DISPLAY_seg_mux0002(1),
      SET => Inst_DISPLAY_rst_n_inv,
      O => Inst_DISPLAY_seg(6),
      CE => VCC,
      RST => GND
    );
  Inst_DISPLAY_seg_5 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk50_BUFGP,
      I => Inst_DISPLAY_seg_mux0002(2),
      SET => Inst_DISPLAY_rst_n_inv,
      O => Inst_DISPLAY_seg(5),
      CE => VCC,
      RST => GND
    );
  Inst_DISPLAY_seg_4 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk50_BUFGP,
      I => Inst_DISPLAY_seg_mux0002(3),
      SET => Inst_DISPLAY_rst_n_inv,
      O => Inst_DISPLAY_seg(4),
      CE => VCC,
      RST => GND
    );
  Inst_DISPLAY_seg_3 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk50_BUFGP,
      I => Inst_DISPLAY_seg_mux0002(4),
      SET => Inst_DISPLAY_rst_n_inv,
      O => Inst_DISPLAY_seg(3),
      CE => VCC,
      RST => GND
    );
  Inst_DISPLAY_seg_2 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk50_BUFGP,
      I => Inst_DISPLAY_seg_mux0002(5),
      SET => Inst_DISPLAY_rst_n_inv,
      O => Inst_DISPLAY_seg(2),
      CE => VCC,
      RST => GND
    );
  Inst_DISPLAY_seg_1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk50_BUFGP,
      I => Inst_DISPLAY_seg_mux0002(6),
      SET => Inst_DISPLAY_rst_n_inv,
      O => Inst_DISPLAY_seg(1),
      CE => VCC,
      RST => GND
    );
  Inst_DISPLAY_seg_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk50_BUFGP,
      I => Inst_DISPLAY_seg_mux0002(7),
      SET => Inst_DISPLAY_rst_n_inv,
      O => Inst_DISPLAY_seg(0),
      CE => VCC,
      RST => GND
    );
  Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd2_In1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => hold_IBUF_376,
      ADR1 => Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd1_116,
      O => Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd2_In
    );
  Inst_DISPLAY_Mdecod_digit_mux000131 : X_LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      ADR0 => Inst_DISPLAY_cd(0),
      ADR1 => Inst_DISPLAY_cd(1),
      O => Inst_DISPLAY_digit_mux0001(0)
    );
  Inst_DISPLAY_Mdecod_digit_mux000121 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => Inst_DISPLAY_cd(1),
      ADR1 => Inst_DISPLAY_cd(0),
      O => Inst_DISPLAY_digit_mux0001(1)
    );
  Inst_DISPLAY_Mdecod_digit_mux000111 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => Inst_DISPLAY_cd(0),
      ADR1 => Inst_DISPLAY_cd(1),
      O => Inst_DISPLAY_digit_mux0001(2)
    );
  Inst_DISPLAY_Mdecod_digit_mux000101 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => Inst_DISPLAY_cd(0),
      ADR1 => Inst_DISPLAY_cd(1),
      O => Inst_DISPLAY_digit_mux0001(3)
    );
  Inst_ramdump_Inst_reader_state_0_mux00001 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_reader_state(0),
      ADR1 => Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd2_118,
      O => Inst_ramdump_Inst_reader_state_0_mux0000
    );
  Inst_ramdump_Inst_divisorRAM_Mcount_contador_xor_1_11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divisorRAM_contador(1),
      ADR1 => Inst_ramdump_Inst_divisorRAM_contador(0),
      O => Result_1_1
    );
  Inst_ramdump_Inst_divisorRAM_Mcount_contador1_xor_1_11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divisorRAM_contador1(1),
      ADR1 => Inst_ramdump_Inst_divisorRAM_contador1(0),
      O => Result_1_Q
    );
  Inst_DISPLAY_Madd_cd_1_0_add0000_xor_1_11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => Inst_DISPLAY_cd(1),
      ADR1 => Inst_DISPLAY_cd(0),
      O => Inst_DISPLAY_cd_1_0_add0000(1)
    );
  Inst_ramdump_Inst_divisorRAM_Mcount_contador1_xor_2_11 : X_LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divisorRAM_contador1(0),
      ADR1 => Inst_ramdump_Inst_divisorRAM_contador1(2),
      ADR2 => Inst_ramdump_Inst_divisorRAM_contador1(1),
      O => Result_2_Q
    );
  Inst_DISPLAY_Mcount_mhertz_count_xor_2_11 : X_LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      ADR0 => Inst_DISPLAY_mhertz_count(1),
      ADR1 => Inst_DISPLAY_mhertz_count(2),
      ADR2 => Inst_DISPLAY_mhertz_count(0),
      O => Inst_DISPLAY_Mcount_mhertz_count6
    );
  Inst_DISPLAY_Mmux_curr_mux000141 : X_LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      ADR0 => Inst_DISPLAY_cd(1),
      ADR1 => Inst_DISPLAY_cd(0),
      ADR2 => data(7),
      ADR3 => data(3),
      O => Inst_DISPLAY_curr_mux0001(3)
    );
  Inst_DISPLAY_Mmux_curr_mux000131 : X_LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      ADR0 => Inst_DISPLAY_cd(1),
      ADR1 => Inst_DISPLAY_cd(0),
      ADR2 => data(6),
      ADR3 => data(2),
      O => Inst_DISPLAY_curr_mux0001(2)
    );
  Inst_DISPLAY_Mmux_curr_mux000121 : X_LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      ADR0 => Inst_DISPLAY_cd(1),
      ADR1 => Inst_DISPLAY_cd(0),
      ADR2 => data(5),
      ADR3 => data(1),
      O => Inst_DISPLAY_curr_mux0001(1)
    );
  Inst_DISPLAY_Mmux_curr_mux000111 : X_LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      ADR0 => Inst_DISPLAY_cd(1),
      ADR1 => Inst_DISPLAY_cd(0),
      ADR2 => data(4),
      ADR3 => data(0),
      O => Inst_DISPLAY_curr_mux0001(0)
    );
  Inst_DISPLAY_mhertz_count_cmp_eq0000 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => Inst_DISPLAY_mhertz_count(1),
      ADR1 => Inst_DISPLAY_mhertz_count(2),
      ADR2 => Inst_DISPLAY_mhertz_count(0),
      ADR3 => N7,
      O => Inst_DISPLAY_mhertz_count_cmp_eq0000_91
    );
  Inst_DISPLAY_Mcount_mhertz_count_xor_0_11 : X_LUT3
    generic map(
      INIT => X"51"
    )
    port map (
      ADR0 => Inst_DISPLAY_mhertz_count(0),
      ADR1 => Inst_DISPLAY_mhertz_count(1),
      ADR2 => N28,
      O => Inst_DISPLAY_Mcount_mhertz_count
    );
  Inst_DISPLAY_Mcount_mhertz_count_xor_1_12 : X_LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      ADR0 => Inst_DISPLAY_mhertz_count(0),
      ADR1 => Inst_DISPLAY_mhertz_count(1),
      ADR2 => Inst_DISPLAY_N11,
      O => Inst_DISPLAY_Mcount_mhertz_count3
    );
  Inst_DISPLAY_seg_mux0002_3_SW0 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => Inst_DISPLAY_curr(0),
      ADR1 => Inst_DISPLAY_curr(3),
      O => N11
    );
  Inst_DISPLAY_seg_mux0002_3_Q : X_LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      ADR0 => Inst_DISPLAY_curr(2),
      ADR1 => Inst_DISPLAY_curr(1),
      ADR2 => N11,
      ADR3 => Inst_DISPLAY_seg_mux0002(0),
      O => Inst_DISPLAY_seg_mux0002(3)
    );
  Inst_DISPLAY_seg_mux0002_6_Q : X_LUT3
    generic map(
      INIT => X"4F"
    )
    port map (
      ADR0 => Inst_DISPLAY_curr(3),
      ADR1 => N13,
      ADR2 => Inst_DISPLAY_cd(2),
      O => Inst_DISPLAY_seg_mux0002(6)
    );
  Inst_DISPLAY_seg_mux0002_5_Q : X_LUT3
    generic map(
      INIT => X"4F"
    )
    port map (
      ADR0 => Inst_DISPLAY_curr(3),
      ADR1 => N15,
      ADR2 => Inst_DISPLAY_cd(2),
      O => Inst_DISPLAY_seg_mux0002(5)
    );
  Inst_DISPLAY_seg_mux0002_0_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => Inst_DISPLAY_curr(1),
      ADR1 => Inst_DISPLAY_curr(3),
      O => N17
    );
  Inst_DISPLAY_seg_mux0002_0_Q : X_LUT4
    generic map(
      INIT => X"06FF"
    )
    port map (
      ADR0 => Inst_DISPLAY_curr(2),
      ADR1 => Inst_DISPLAY_curr(0),
      ADR2 => N17,
      ADR3 => Inst_DISPLAY_cd(2),
      O => Inst_DISPLAY_seg_mux0002(0)
    );
  Inst_ramdump_Inst_divisorRAM_contador1_cmp_eq00001 : X_LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divisorRAM_contador1(2),
      ADR1 => Inst_ramdump_Inst_divisorRAM_contador1(1),
      ADR2 => Inst_ramdump_Inst_divisorRAM_contador1(0),
      O => Inst_ramdump_Inst_divisorRAM_contador1_cmp_eq0000
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_01 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Result_0_4,
      ADR1 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_0
    );
  Inst_DISPLAY_khertz_en_mux00021 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => Inst_DISPLAY_mhertz_en_92,
      ADR1 => Inst_DISPLAY_khertz_count_cmp_eq0000,
      O => Inst_DISPLAY_khertz_en_mux0002
    );
  Inst_DISPLAY_Mcount_khertz_count_eqn_01 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Inst_DISPLAY_Result(0),
      ADR1 => Inst_DISPLAY_khertz_count_cmp_eq0000,
      O => Inst_DISPLAY_Mcount_khertz_count_eqn_0
    );
  Inst_DISPLAY_Mcount_mhertz_count12 : X_LUT4
    generic map(
      INIT => X"8A46"
    )
    port map (
      ADR0 => Inst_DISPLAY_mhertz_count(4),
      ADR1 => Inst_DISPLAY_mhertz_count(3),
      ADR2 => N19,
      ADR3 => Inst_DISPLAY_Mcount_mhertz_count12_bdd0,
      O => Inst_DISPLAY_Mcount_mhertz_count12_33
    );
  Inst_DISPLAY_khertz_count_cmp_eq000015 : X_LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      ADR0 => Inst_DISPLAY_khertz_count(7),
      ADR1 => Inst_DISPLAY_khertz_count(4),
      ADR2 => Inst_DISPLAY_khertz_count(5),
      ADR3 => Inst_DISPLAY_khertz_count(6),
      O => Inst_DISPLAY_khertz_count_cmp_eq000015_82
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000039 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => N29,
      ADR1 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000016_191,
      ADR2 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000028_192,
      O => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq0000
    );
  Inst_ramdump_Inst_tickgen_contador_cmp_eq000021 : X_LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador(4),
      ADR1 => Inst_ramdump_Inst_tickgen_contador(5),
      ADR2 => Inst_ramdump_Inst_tickgen_contador(7),
      ADR3 => Inst_ramdump_Inst_tickgen_contador(6),
      O => Inst_ramdump_Inst_tickgen_contador_cmp_eq000021_294
    );
  Inst_ramdump_Inst_tickgen_contador_cmp_eq000043 : X_LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador(12),
      ADR1 => Inst_ramdump_Inst_tickgen_contador(13),
      ADR2 => Inst_ramdump_Inst_tickgen_contador(15),
      ADR3 => Inst_ramdump_Inst_tickgen_contador(14),
      O => Inst_ramdump_Inst_tickgen_contador_cmp_eq000043_295
    );
  Inst_ramdump_Inst_tickgen_contador_cmp_eq000055 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador(11),
      ADR1 => Inst_ramdump_Inst_tickgen_contador(10),
      ADR2 => Inst_ramdump_Inst_tickgen_contador(8),
      ADR3 => Inst_ramdump_Inst_tickgen_contador(9),
      O => Inst_ramdump_Inst_tickgen_contador_cmp_eq000055_296
    );
  Inst_ramdump_Inst_tickgen_contador_cmp_eq000069 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador_cmp_eq000010_293,
      ADR1 => Inst_ramdump_Inst_tickgen_contador_cmp_eq000021_294,
      ADR2 => Inst_ramdump_Inst_tickgen_contador_cmp_eq000043_295,
      ADR3 => Inst_ramdump_Inst_tickgen_contador_cmp_eq000055_296,
      O => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000
    );
  Inst_DISPLAY_Mcount_mhertz_count1211 : X_LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      ADR0 => Inst_DISPLAY_mhertz_count(1),
      ADR1 => Inst_DISPLAY_mhertz_count(2),
      ADR2 => Inst_DISPLAY_mhertz_count(0),
      O => Inst_DISPLAY_Mcount_mhertz_count12_bdd0
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_16 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Result_1_4,
      ADR1 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_1
    );
  Inst_DISPLAY_Mcount_khertz_count_eqn_11 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Inst_DISPLAY_Result(1),
      ADR1 => Inst_DISPLAY_khertz_count_cmp_eq0000,
      O => Inst_DISPLAY_Mcount_khertz_count_eqn_1
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_21 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Result_2_4,
      ADR1 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_2
    );
  Inst_DISPLAY_Mcount_khertz_count_eqn_21 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Inst_DISPLAY_Result(2),
      ADR1 => Inst_DISPLAY_khertz_count_cmp_eq0000,
      O => Inst_DISPLAY_Mcount_khertz_count_eqn_2
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_31 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Result_3_2,
      ADR1 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_3
    );
  Inst_DISPLAY_Mcount_khertz_count_eqn_31 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Inst_DISPLAY_Result(3),
      ADR1 => Inst_DISPLAY_khertz_count_cmp_eq0000,
      O => Inst_DISPLAY_Mcount_khertz_count_eqn_3
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_41 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Result_4_2,
      ADR1 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_4
    );
  Inst_DISPLAY_Mcount_khertz_count_eqn_41 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_DISPLAY_khertz_count_cmp_eq0000,
      ADR1 => Inst_DISPLAY_Result(4),
      O => Inst_DISPLAY_Mcount_khertz_count_eqn_4
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_51 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Result_5_2,
      ADR1 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_5
    );
  Inst_DISPLAY_Mcount_khertz_count_eqn_51 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_DISPLAY_khertz_count_cmp_eq0000,
      ADR1 => Inst_DISPLAY_Result(5),
      O => Inst_DISPLAY_Mcount_khertz_count_eqn_5
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_61 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Result_6_2,
      ADR1 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_6
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_61 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq0000,
      ADR1 => Result_6_1,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_6
    );
  Inst_DISPLAY_Mcount_khertz_count_eqn_61 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_DISPLAY_khertz_count_cmp_eq0000,
      ADR1 => Inst_DISPLAY_Result(6),
      O => Inst_DISPLAY_Mcount_khertz_count_eqn_6
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_71 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      ADR1 => Result_7_2,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_7
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_71 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq0000,
      ADR1 => Result_7_1,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_7
    );
  Inst_DISPLAY_Mcount_khertz_count_eqn_71 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_DISPLAY_khertz_count_cmp_eq0000,
      ADR1 => Inst_DISPLAY_Result(7),
      O => Inst_DISPLAY_Mcount_khertz_count_eqn_7
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_81 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      ADR1 => Result_8_1,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_8
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_81 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq0000,
      ADR1 => Result_8_Q,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_8
    );
  Inst_DISPLAY_Mcount_khertz_count_eqn_81 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_DISPLAY_khertz_count_cmp_eq0000,
      ADR1 => Inst_DISPLAY_Result(8),
      O => Inst_DISPLAY_Mcount_khertz_count_eqn_8
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_91 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      ADR1 => Result_9_1,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_9
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_91 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq0000,
      ADR1 => Result_9_Q,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_9
    );
  Inst_DISPLAY_Mcount_khertz_count_eqn_91 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_DISPLAY_khertz_count_cmp_eq0000,
      ADR1 => Inst_DISPLAY_Result(9),
      O => Inst_DISPLAY_Mcount_khertz_count_eqn_9
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_101 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      ADR1 => Result_10_1,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_10
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_101 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq0000,
      ADR1 => Result_10_Q,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_10
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_111 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      ADR1 => Result_11_1,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_11
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_111 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq0000,
      ADR1 => Result_11_Q,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_11
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_121 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      ADR1 => Result_12_Q,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_12
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_131 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      ADR1 => Result_13_Q,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_13
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_141 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      ADR1 => Result_14_Q,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_14
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_151 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador_cmp_eq0000,
      ADR1 => Result_15_Q,
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_eqn_15
    );
  rst_n_IBUF : X_BUF
    port map (
      I => rst_n,
      O => rst_n_IBUF_382
    );
  hold_IBUF : X_BUF
    port map (
      I => hold,
      O => hold_IBUF_376
    );
  up_down_IBUF : X_BUF
    port map (
      I => up_down,
      O => up_down_IBUF_392
    );
  inter_1_IBUF : X_BUF
    port map (
      I => inter(1),
      O => inter_1_IBUF_380
    );
  inter_0_IBUF : X_BUF
    port map (
      I => inter(0),
      O => inter_0_IBUF_379
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_clkscale_contador(1),
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_1_rt_122,
      ADR1 => GND
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_clkscale_contador(2),
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_2_rt_124,
      ADR1 => GND
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_clkscale_contador(3),
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_3_rt_126,
      ADR1 => GND
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_clkscale_contador(4),
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_4_rt_128,
      ADR1 => GND
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_clkscale_contador(5),
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_cy_5_rt_130,
      ADR1 => GND
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divDEBOUNCER_contador(1),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_1_rt_145,
      ADR1 => GND
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divDEBOUNCER_contador(2),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_2_rt_147,
      ADR1 => GND
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divDEBOUNCER_contador(3),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_3_rt_149,
      ADR1 => GND
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divDEBOUNCER_contador(4),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_4_rt_151,
      ADR1 => GND
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divDEBOUNCER_contador(5),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_5_rt_153,
      ADR1 => GND
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divDEBOUNCER_contador(6),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_6_rt_155,
      ADR1 => GND
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divDEBOUNCER_contador(7),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_7_rt_157,
      ADR1 => GND
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divDEBOUNCER_contador(8),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_8_rt_159,
      ADR1 => GND
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divDEBOUNCER_contador(9),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_9_rt_161,
      ADR1 => GND
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_10_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divDEBOUNCER_contador(10),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_cy_10_rt_143,
      ADR1 => GND
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador(1),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_1_rt_241,
      ADR1 => GND
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador(2),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_2_rt_243,
      ADR1 => GND
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador(3),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_3_rt_245,
      ADR1 => GND
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador(4),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_4_rt_247,
      ADR1 => GND
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador(5),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_5_rt_249,
      ADR1 => GND
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador(6),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_6_rt_251,
      ADR1 => GND
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador(7),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_7_rt_253,
      ADR1 => GND
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador(8),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_8_rt_255,
      ADR1 => GND
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador(9),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_9_rt_257,
      ADR1 => GND
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_10_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador(10),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_10_rt_231,
      ADR1 => GND
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_11_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador(11),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_11_rt_233,
      ADR1 => GND
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_12_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador(12),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_12_rt_235,
      ADR1 => GND
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_13_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador(13),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_13_rt_237,
      ADR1 => GND
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_cy_14_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador(14),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_cy_14_rt_239,
      ADR1 => GND
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_DISPLAY_khertz_count(8),
      O => Inst_DISPLAY_Mcount_khertz_count_cy_8_rt_19,
      ADR1 => GND
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_DISPLAY_khertz_count(7),
      O => Inst_DISPLAY_Mcount_khertz_count_cy_7_rt_17,
      ADR1 => GND
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_DISPLAY_khertz_count(6),
      O => Inst_DISPLAY_Mcount_khertz_count_cy_6_rt_15,
      ADR1 => GND
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_DISPLAY_khertz_count(5),
      O => Inst_DISPLAY_Mcount_khertz_count_cy_5_rt_13,
      ADR1 => GND
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_DISPLAY_khertz_count(4),
      O => Inst_DISPLAY_Mcount_khertz_count_cy_4_rt_11,
      ADR1 => GND
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_DISPLAY_khertz_count(3),
      O => Inst_DISPLAY_Mcount_khertz_count_cy_3_rt_9,
      ADR1 => GND
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_DISPLAY_khertz_count(2),
      O => Inst_DISPLAY_Mcount_khertz_count_cy_2_rt_7,
      ADR1 => GND
    );
  Inst_DISPLAY_Mcount_khertz_count_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_DISPLAY_khertz_count(1),
      O => Inst_DISPLAY_Mcount_khertz_count_cy_1_rt_5,
      ADR1 => GND
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_xor_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_clkscale_contador_61,
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_xor_6_rt_132,
      ADR1 => GND
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_11_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divDEBOUNCER_contador(11),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_xor_11_rt_175,
      ADR1 => GND
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_xor_15_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador(15),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_xor_15_rt_275,
      ADR1 => GND
    );
  Inst_DISPLAY_Mcount_khertz_count_xor_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_DISPLAY_khertz_count(9),
      O => Inst_DISPLAY_Mcount_khertz_count_xor_9_rt_31,
      ADR1 => GND
    );
  Inst_DISPLAY_khertz_count_cmp_eq000028 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => Inst_DISPLAY_khertz_count(1),
      ADR1 => Inst_DISPLAY_khertz_count(0),
      ADR2 => N24,
      ADR3 => Inst_DISPLAY_khertz_count_cmp_eq000015_82,
      O => Inst_DISPLAY_khertz_count_cmp_eq0000
    );
  Inst_ramdump_Inst_divisorRAM_clk2Hz_not00011 : X_LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divisorRAM_contador1(0),
      ADR1 => Inst_ramdump_Inst_divisorRAM_contador1(1),
      ADR2 => Inst_ramdump_Inst_divisorRAM_contador1(2),
      O => Inst_ramdump_Inst_divisorRAM_clk2Hz_not0001
    );
  Inst_DISPLAY_Mcount_mhertz_count91 : X_LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      ADR0 => Inst_DISPLAY_mhertz_count(3),
      ADR1 => Inst_DISPLAY_mhertz_count(1),
      ADR2 => Inst_DISPLAY_mhertz_count(2),
      ADR3 => Inst_DISPLAY_mhertz_count(0),
      O => Inst_DISPLAY_Mcount_mhertz_count9
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_01 : X_LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      ADR0 => Result_0_3,
      ADR1 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000011_190,
      ADR2 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000016_191,
      ADR3 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000028_192,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_0
    );
  Inst_ramdump_Inst_reader_Mcount_addr_lut_0_Q : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_reader_addr(0),
      ADR1 => up_down_IBUF_392,
      O => Inst_ramdump_Inst_reader_Mcount_addr_lut(0)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_lut_1_Q : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_reader_addr(1),
      ADR1 => up_down_IBUF_392,
      O => Inst_ramdump_Inst_reader_Mcount_addr_lut(1)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_lut_2_Q : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_reader_addr(2),
      ADR1 => up_down_IBUF_392,
      O => Inst_ramdump_Inst_reader_Mcount_addr_lut(2)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_lut_3_Q : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_reader_addr(3),
      ADR1 => up_down_IBUF_392,
      O => Inst_ramdump_Inst_reader_Mcount_addr_lut(3)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_lut_4_Q : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_reader_addr(4),
      ADR1 => up_down_IBUF_392,
      O => Inst_ramdump_Inst_reader_Mcount_addr_lut(4)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_lut_5_Q : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_reader_addr(5),
      ADR1 => up_down_IBUF_392,
      O => Inst_ramdump_Inst_reader_Mcount_addr_lut(5)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_lut_6_Q : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_reader_addr(6),
      ADR1 => up_down_IBUF_392,
      O => Inst_ramdump_Inst_reader_Mcount_addr_lut(6)
    );
  Inst_ramdump_Inst_reader_Mcount_addr_lut_7_Q : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_reader_addr(7),
      ADR1 => up_down_IBUF_392,
      O => Inst_ramdump_Inst_reader_Mcount_addr_lut(7)
    );
  Inst_DISPLAY_Mcount_mhertz_count15 : X_LUT4
    generic map(
      INIT => X"4CEC"
    )
    port map (
      ADR0 => Inst_DISPLAY_mhertz_count(1),
      ADR1 => Inst_DISPLAY_mhertz_count(5),
      ADR2 => Inst_DISPLAY_mhertz_count(4),
      ADR3 => N26,
      O => Inst_DISPLAY_Mcount_mhertz_count15_35
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_12 : X_LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      ADR0 => N31,
      ADR1 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000016_191,
      ADR2 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000011_190,
      ADR3 => Result_1_3,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_1
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_21 : X_LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000028_192,
      ADR1 => N30,
      ADR2 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000011_190,
      ADR3 => Result_2_3,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_2
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_31 : X_LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000028_192,
      ADR1 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000016_191,
      ADR2 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000011_190,
      ADR3 => Result_3_1,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_3
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_41 : X_LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000028_192,
      ADR1 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000016_191,
      ADR2 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000011_190,
      ADR3 => Result_4_1,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_4
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_51 : X_LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000028_192,
      ADR1 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000016_191,
      ADR2 => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000011_190,
      ADR3 => Result_5_1,
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_eqn_5
    );
  Inst_ramdump_Inst_clkscale_contador_6_BUFG : X_CKBUF
    port map (
      I => Inst_ramdump_Inst_clkscale_contador_61,
      O => Inst_ramdump_Inst_clkscale_contador(6)
    );
  Inst_ramdump_Inst_clkscale_Mcount_contador_lut_0_INV_0 : X_INV
    port map (
      I => Inst_ramdump_Inst_clkscale_contador(0),
      O => Inst_ramdump_Inst_clkscale_Mcount_contador_lut(0)
    );
  Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_lut_0_INV_0 : X_INV
    port map (
      I => Inst_ramdump_Inst_divDEBOUNCER_contador(0),
      O => Inst_ramdump_Inst_divDEBOUNCER_Mcount_contador_lut(0)
    );
  Inst_ramdump_Inst_tickgen_Mcount_contador_lut_0_INV_0 : X_INV
    port map (
      I => Inst_ramdump_Inst_tickgen_contador(0),
      O => Inst_ramdump_Inst_tickgen_Mcount_contador_lut(0)
    );
  Inst_DISPLAY_Mcount_khertz_count_lut_0_INV_0 : X_INV
    port map (
      I => Inst_DISPLAY_khertz_count(0),
      O => Inst_DISPLAY_Mcount_khertz_count_lut(0)
    );
  Inst_ramdump_Inst_DEBOUNCER_state_FSM_Acst_inv1_INV_0 : X_INV
    port map (
      I => rst_n_IBUF_382,
      O => Inst_DISPLAY_rst_n_inv
    );
  Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd1_In1_INV_0 : X_INV
    port map (
      I => hold_IBUF_376,
      O => Inst_ramdump_Inst_DEBOUNCER_state_FSM_FFd1_In
    );
  Inst_ramdump_Inst_divisorRAM_Mcount_contador_xor_0_11_INV_0 : X_INV
    port map (
      I => Inst_ramdump_Inst_divisorRAM_contador(0),
      O => Result_0_1
    );
  Inst_ramdump_Inst_divisorRAM_Mcount_contador1_xor_0_11_INV_0 : X_INV
    port map (
      I => Inst_ramdump_Inst_divisorRAM_contador1(0),
      O => Result_0_Q
    );
  Inst_DISPLAY_seg_mux0002_7_1_INV_0 : X_INV
    port map (
      I => Inst_DISPLAY_cd(2),
      O => Inst_DISPLAY_seg_mux0002(7)
    );
  Inst_DISPLAY_Madd_cd_1_0_add0000_xor_0_11_INV_0 : X_INV
    port map (
      I => Inst_DISPLAY_cd(0),
      O => Inst_DISPLAY_cd_1_0_add0000(0)
    );
  Inst_ramdump_Inst_reader_hold_inv1_INV_0 : X_INV
    port map (
      I => Inst_ramdump_Inst_reader_hold_225,
      O => Inst_ramdump_Inst_reader_hold_inv
    );
  up_down_inv2_INV_0 : X_INV
    port map (
      I => up_down_IBUF_392,
      O => up_down_inv
    );
  Inst_ramdump_Inst_reader_Mrom_varindex0000 : X_RAMB16BWE
    generic map(
      SRVAL_A => X"000000000",
      INIT_00 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_01 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_02 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_03 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_04 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_05 => X"0202020202020202020202020202020202020202020202020202020202020202",
      WRITE_MODE_A => "WRITE_FIRST",
      DATA_WIDTH_A => 9,
      DATA_WIDTH_B => 0,
      INIT_06 => X"0202020202020202020202020202020202020202020202020202020202020202",
      INIT_07 => X"0001020304050607020202020202020202020202020202020202020202020202",
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
      SRVAL_B => X"000000000",
      SIM_COLLISION_CHECK => "ALL"
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
      WEB(3) => GND,
      WEB(2) => GND,
      WEB(1) => GND,
      WEB(0) => GND,
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
  Inst_ramdump_Inst_divisorRAM_Mmux_rate11 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => inter_0_IBUF_379,
      ADR1 => Inst_ramdump_Inst_divisorRAM_clk2Hz_194,
      ADR2 => Inst_ramdump_Inst_divisorRAM_contador(0),
      O => Inst_ramdump_Inst_divisorRAM_Mmux_rate1
    );
  Inst_ramdump_Inst_divisorRAM_Mmux_rate1_f5 : X_MUX2
    port map (
      IA => Inst_ramdump_Inst_divisorRAM_Mmux_rate1,
      IB => Inst_ramdump_Inst_divisorRAM_contador(1),
      SEL => inter_1_IBUF_380,
      O => Inst_ramdump_clkRAM
    );
  Inst_DISPLAY_seg_mux0002_2_2 : X_LUT4
    generic map(
      INIT => X"04FF"
    )
    port map (
      ADR0 => Inst_DISPLAY_curr(0),
      ADR1 => Inst_DISPLAY_curr(1),
      ADR2 => Inst_DISPLAY_curr(2),
      ADR3 => Inst_DISPLAY_cd(2),
      O => Inst_DISPLAY_seg_mux0002_2_2_108
    );
  Inst_DISPLAY_seg_mux0002_2_f5 : X_MUX2
    port map (
      IA => Inst_DISPLAY_seg_mux0002_2_2_108,
      IB => Inst_DISPLAY_seg_mux0002_2_1,
      SEL => Inst_DISPLAY_curr(3),
      O => Inst_DISPLAY_seg_mux0002(2)
    );
  Inst_DISPLAY_seg_mux0002_4_1 : X_LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      ADR0 => Inst_DISPLAY_curr(1),
      ADR1 => Inst_DISPLAY_curr(0),
      ADR2 => Inst_DISPLAY_curr(2),
      ADR3 => Inst_DISPLAY_cd(2),
      O => Inst_DISPLAY_seg_mux0002_4_1_111
    );
  Inst_DISPLAY_seg_mux0002_4_2 : X_LUT4
    generic map(
      INIT => X"AEFF"
    )
    port map (
      ADR0 => Inst_DISPLAY_curr(0),
      ADR1 => Inst_DISPLAY_curr(2),
      ADR2 => Inst_DISPLAY_curr(1),
      ADR3 => Inst_DISPLAY_cd(2),
      O => Inst_DISPLAY_seg_mux0002_4_2_112
    );
  Inst_DISPLAY_seg_mux0002_4_f5 : X_MUX2
    port map (
      IA => Inst_DISPLAY_seg_mux0002_4_2_112,
      IB => Inst_DISPLAY_seg_mux0002_4_1_111,
      SEL => Inst_DISPLAY_curr(3),
      O => Inst_DISPLAY_seg_mux0002(4)
    );
  Inst_DISPLAY_seg_mux0002_1_2 : X_LUT4
    generic map(
      INIT => X"60FF"
    )
    port map (
      ADR0 => Inst_DISPLAY_curr(1),
      ADR1 => Inst_DISPLAY_curr(0),
      ADR2 => Inst_DISPLAY_curr(2),
      ADR3 => Inst_DISPLAY_cd(2),
      O => Inst_DISPLAY_seg_mux0002_1_2_105
    );
  Inst_DISPLAY_seg_mux0002_1_f5 : X_MUX2
    port map (
      IA => Inst_DISPLAY_seg_mux0002_1_2_105,
      IB => Inst_DISPLAY_seg_mux0002_1_1,
      SEL => Inst_DISPLAY_curr(3),
      O => Inst_DISPLAY_seg_mux0002(1)
    );
  Inst_DISPLAY_seg_mux0002_2_1_INV_0 : X_INV
    port map (
      I => Inst_DISPLAY_cd(2),
      O => Inst_DISPLAY_seg_mux0002_2_1
    );
  Inst_DISPLAY_seg_mux0002_1_1_INV_0 : X_INV
    port map (
      I => Inst_DISPLAY_cd(2),
      O => Inst_DISPLAY_seg_mux0002_1_1
    );
  Inst_DISPLAY_mhertz_count_cmp_eq0000_SW0_LUT3_L_BUF : X_BUF
    port map (
      I => Inst_DISPLAY_mhertz_count_cmp_eq0000_SW0_O,
      O => N7
    );
  Inst_DISPLAY_mhertz_count_cmp_eq0000_SW0 : X_LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      ADR0 => Inst_DISPLAY_mhertz_count(5),
      ADR1 => Inst_DISPLAY_mhertz_count(4),
      ADR2 => Inst_DISPLAY_mhertz_count(3),
      O => Inst_DISPLAY_mhertz_count_cmp_eq0000_SW0_O
    );
  Inst_DISPLAY_Mcount_mhertz_count_xor_1_111_LUT4_D_BUF : X_BUF
    port map (
      I => Inst_DISPLAY_N11,
      O => N28
    );
  Inst_DISPLAY_Mcount_mhertz_count_xor_1_111 : X_LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      ADR0 => Inst_DISPLAY_mhertz_count(5),
      ADR1 => Inst_DISPLAY_mhertz_count(2),
      ADR2 => Inst_DISPLAY_mhertz_count(3),
      ADR3 => Inst_DISPLAY_mhertz_count(4),
      O => Inst_DISPLAY_N11
    );
  Inst_DISPLAY_seg_mux0002_6_SW0_LUT3_L_BUF : X_BUF
    port map (
      I => Inst_DISPLAY_seg_mux0002_6_SW0_O,
      O => N13
    );
  Inst_DISPLAY_seg_mux0002_6_SW0 : X_LUT3
    generic map(
      INIT => X"91"
    )
    port map (
      ADR0 => Inst_DISPLAY_curr(2),
      ADR1 => Inst_DISPLAY_curr(1),
      ADR2 => Inst_DISPLAY_curr(0),
      O => Inst_DISPLAY_seg_mux0002_6_SW0_O
    );
  Inst_DISPLAY_seg_mux0002_5_SW0_LUT3_L_BUF : X_BUF
    port map (
      I => Inst_DISPLAY_seg_mux0002_5_SW0_O,
      O => N15
    );
  Inst_DISPLAY_seg_mux0002_5_SW0 : X_LUT3
    generic map(
      INIT => X"D4"
    )
    port map (
      ADR0 => Inst_DISPLAY_curr(2),
      ADR1 => Inst_DISPLAY_curr(1),
      ADR2 => Inst_DISPLAY_curr(0),
      O => Inst_DISPLAY_seg_mux0002_5_SW0_O
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000011_LUT4_D_BUF : X_BUF
    port map (
      I => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000011_190,
      O => N29
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000011 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divDEBOUNCER_contador(1),
      ADR1 => Inst_ramdump_Inst_divDEBOUNCER_contador(0),
      ADR2 => Inst_ramdump_Inst_divDEBOUNCER_contador(2),
      ADR3 => Inst_ramdump_Inst_divDEBOUNCER_contador(3),
      O => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000011_190
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000016_LUT4_D_BUF : X_BUF
    port map (
      I => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000016_191,
      O => N30
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000016 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divDEBOUNCER_contador(8),
      ADR1 => Inst_ramdump_Inst_divDEBOUNCER_contador(9),
      ADR2 => Inst_ramdump_Inst_divDEBOUNCER_contador(10),
      ADR3 => Inst_ramdump_Inst_divDEBOUNCER_contador(11),
      O => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000016_191
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000028_LUT4_D_BUF : X_BUF
    port map (
      I => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000028_192,
      O => N31
    );
  Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000028 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_divDEBOUNCER_contador(6),
      ADR1 => Inst_ramdump_Inst_divDEBOUNCER_contador(7),
      ADR2 => Inst_ramdump_Inst_divDEBOUNCER_contador(4),
      ADR3 => Inst_ramdump_Inst_divDEBOUNCER_contador(5),
      O => Inst_ramdump_Inst_divDEBOUNCER_contador_cmp_eq000028_192
    );
  Inst_ramdump_Inst_tickgen_contador_cmp_eq000010_LUT4_L_BUF : X_BUF
    port map (
      I => Inst_ramdump_Inst_tickgen_contador_cmp_eq000010_O,
      O => Inst_ramdump_Inst_tickgen_contador_cmp_eq000010_293
    );
  Inst_ramdump_Inst_tickgen_contador_cmp_eq000010 : X_LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      ADR0 => Inst_ramdump_Inst_tickgen_contador(1),
      ADR1 => Inst_ramdump_Inst_tickgen_contador(0),
      ADR2 => Inst_ramdump_Inst_tickgen_contador(2),
      ADR3 => Inst_ramdump_Inst_tickgen_contador(3),
      O => Inst_ramdump_Inst_tickgen_contador_cmp_eq000010_O
    );
  Inst_DISPLAY_khertz_count_cmp_eq000028_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => Inst_DISPLAY_khertz_count_cmp_eq000028_SW0_O,
      O => N24
    );
  Inst_DISPLAY_khertz_count_cmp_eq000028_SW0 : X_LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      ADR0 => Inst_DISPLAY_khertz_count(3),
      ADR1 => Inst_DISPLAY_khertz_count(8),
      ADR2 => Inst_DISPLAY_khertz_count(9),
      ADR3 => Inst_DISPLAY_khertz_count(2),
      O => Inst_DISPLAY_khertz_count_cmp_eq000028_SW0_O
    );
  Inst_DISPLAY_Mcount_mhertz_count12_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => Inst_DISPLAY_Mcount_mhertz_count12_SW0_O,
      O => N19
    );
  Inst_DISPLAY_Mcount_mhertz_count12_SW0 : X_LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      ADR0 => Inst_DISPLAY_mhertz_count(1),
      ADR1 => Inst_DISPLAY_mhertz_count(0),
      ADR2 => Inst_DISPLAY_mhertz_count(5),
      ADR3 => Inst_DISPLAY_mhertz_count(2),
      O => Inst_DISPLAY_Mcount_mhertz_count12_SW0_O
    );
  Inst_DISPLAY_Mcount_mhertz_count15_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => Inst_DISPLAY_Mcount_mhertz_count15_SW0_O,
      O => N26
    );
  Inst_DISPLAY_Mcount_mhertz_count15_SW0 : X_LUT4
    generic map(
      INIT => X"9557"
    )
    port map (
      ADR0 => Inst_DISPLAY_mhertz_count(5),
      ADR1 => Inst_DISPLAY_mhertz_count(0),
      ADR2 => Inst_DISPLAY_mhertz_count(2),
      ADR3 => Inst_DISPLAY_mhertz_count(3),
      O => Inst_DISPLAY_Mcount_mhertz_count15_SW0_O
    );
  clk50_BUFGP_BUFG : X_CKBUF
    port map (
      I => clk50_BUFGP_IBUFG_2,
      O => clk50_BUFGP
    );
  clk50_BUFGP_IBUFG : X_CKBUF
    port map (
      I => clk50,
      O => clk50_BUFGP_IBUFG_2
    );
  digit_out_0_OBUF : X_OBUF
    port map (
      I => Inst_DISPLAY_digit(0),
      O => digit_out(0)
    );
  digit_out_1_OBUF : X_OBUF
    port map (
      I => Inst_DISPLAY_digit(1),
      O => digit_out(1)
    );
  digit_out_2_OBUF : X_OBUF
    port map (
      I => Inst_DISPLAY_digit(2),
      O => digit_out(2)
    );
  digit_out_3_OBUF : X_OBUF
    port map (
      I => Inst_DISPLAY_digit(3),
      O => digit_out(3)
    );
  seg_out_0_OBUF : X_OBUF
    port map (
      I => Inst_DISPLAY_seg(0),
      O => seg_out(0)
    );
  seg_out_1_OBUF : X_OBUF
    port map (
      I => Inst_DISPLAY_seg(1),
      O => seg_out(1)
    );
  seg_out_2_OBUF : X_OBUF
    port map (
      I => Inst_DISPLAY_seg(2),
      O => seg_out(2)
    );
  seg_out_3_OBUF : X_OBUF
    port map (
      I => Inst_DISPLAY_seg(3),
      O => seg_out(3)
    );
  seg_out_4_OBUF : X_OBUF
    port map (
      I => Inst_DISPLAY_seg(4),
      O => seg_out(4)
    );
  seg_out_5_OBUF : X_OBUF
    port map (
      I => Inst_DISPLAY_seg(5),
      O => seg_out(5)
    );
  seg_out_6_OBUF : X_OBUF
    port map (
      I => Inst_DISPLAY_seg(6),
      O => seg_out(6)
    );
  seg_out_7_OBUF : X_OBUF
    port map (
      I => Inst_DISPLAY_seg(7),
      O => seg_out(7)
    );
  NlwInverterBlock_Inst_ramdump_Inst_reader_state_0_C : X_INV
    port map (
      I => Inst_ramdump_clkRAM,
      O => NlwInverterSignal_Inst_ramdump_Inst_reader_state_0_C
    );
  NlwBlock_DCSEP2_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_DCSEP2_GND : X_ZERO
    port map (
      O => GND
    );
  NlwInverterBlock_Inst_ramdump_Inst_reader_hold_C : X_INV
    port map (
      I => Inst_ramdump_clkRAM,
      O => NlwInverterSignal_Inst_ramdump_Inst_reader_hold_C
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

