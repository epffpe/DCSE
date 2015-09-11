--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: K.31
--  \   \         Application: netgen
--  /   /         Filename: ModuloLCD_translate.vhd
-- /___/   /\     Timestamp: Sat Feb 07 02:19:14 2009
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm ModuloLCD -w -dir netgen/translate -ofmt vhdl -sim ModuloLCD.ngd ModuloLCD_translate.vhd 
-- Device	: 3s700afg484-4
-- Input file	: ModuloLCD.ngd
-- Output file	: D:\Desings\DCSE\PracticaLCD\netgen\translate\ModuloLCD_translate.vhd
-- # of Entities	: 1
-- Design Name	: ModuloLCD
-- Xilinx	: C:\Xilinx\10.1\ISE
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

entity ModuloLCD is
  port (
    clk50 : in STD_LOGIC := 'X'; 
    lcd_e_out : out STD_LOGIC; 
    lcd_rw_out : out STD_LOGIC; 
    lcd_rs_out : out STD_LOGIC; 
    rot_press_in : in STD_LOGIC := 'X'; 
    modo_in : in STD_LOGIC := 'X'; 
    lcd_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    leds_out : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    pb_in : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    rot_in : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end ModuloLCD;

architecture Structure of ModuloLCD is
  signal Inst_Clock1562_CLK0_BUF : STD_LOGIC; 
  signal Inst_Clock1562_CLK0_OUT : STD_LOGIC; 
  signal Inst_Clock1562_CLKDV_BUF : STD_LOGIC; 
  signal Inst_Clock1562_CLKIN_IBUFG_OUT : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_10_rt_70 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_11_rt_72 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_12_rt_74 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_13_rt_76 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_1_rt_78 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_2_rt_80 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_3_rt_82 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_4_rt_84 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_5_rt_86 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_6_rt_88 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_7_rt_90 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_8_rt_92 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_9_rt_94 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_xor_14_rt_96 : STD_LOGIC; 
  signal Inst_Counter_Mmux_tic_mux0001_3_97 : STD_LOGIC; 
  signal Inst_Counter_Mmux_tic_mux0001_4_98 : STD_LOGIC; 
  signal Inst_Counter_tic_114 : STD_LOGIC; 
  signal Inst_Counter_tic_mux0001 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_10_rt_118 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_1_rt_120 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_2_rt_122 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_3_rt_124 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_4_rt_126 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_5_rt_128 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_6_rt_130 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_7_rt_132 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_8_rt_134 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_9_rt_136 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_xor_11_rt_138 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_139 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_not0001 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000011_154 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000016_155 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000028_156 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb0_state_FSM_FFd1_157 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb0_state_FSM_FFd1_In : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb0_state_FSM_FFd2_159 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb0_state_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb1_state_FSM_FFd1_161 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb1_state_FSM_FFd1_In : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb1_state_FSM_FFd2_163 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb1_state_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb2_state_FSM_FFd1_165 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb2_state_FSM_FFd1_In : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb2_state_FSM_FFd2_167 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb2_state_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb3_state_FSM_FFd1_169 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb3_state_FSM_FFd1_In : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb3_state_FSM_FFd2_171 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb3_state_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1_173 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1_In : STD_LOGIC; 
  signal Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd2_175 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_Interfaz_Mshreg_rotary_in_0 : STD_LOGIC; 
  signal Inst_Interfaz_Mshreg_rotary_in_1 : STD_LOGIC; 
  signal Inst_Interfaz_delay_rotary_q1_190 : STD_LOGIC; 
  signal Inst_Interfaz_pb0_191 : STD_LOGIC; 
  signal Inst_Interfaz_pb1_192 : STD_LOGIC; 
  signal Inst_Interfaz_pb2_193 : STD_LOGIC; 
  signal Inst_Interfaz_pb3_194 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_event_195 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_event_not0001 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_left_199 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_left_and0000 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_q1_201 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_q1_mux0000 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_q2_203 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_q2_mux0000 : STD_LOGIC; 
  signal Inst_Interfaz_rotatory_press_205 : STD_LOGIC; 
  signal Inst_Interfaz_rst_and0000 : STD_LOGIC; 
  signal Inst_Interfaz_rst_n_207 : STD_LOGIC; 
  signal Inst_LEDS_led_2_mux0001 : STD_LOGIC; 
  signal Inst_UControl_LCD_DB_0_Q : STD_LOGIC; 
  signal Inst_UControl_LCD_DB_1_Q : STD_LOGIC; 
  signal Inst_UControl_LCD_DB_2_Q : STD_LOGIC; 
  signal Inst_UControl_LCD_DB_3_Q : STD_LOGIC; 
  signal Inst_UControl_LCD_DB_5_Q : STD_LOGIC; 
  signal Inst_UControl_LCD_DB_7_Q : STD_LOGIC; 
  signal Inst_UControl_LCD_E_217 : STD_LOGIC; 
  signal Inst_UControl_LCD_RS_218 : STD_LOGIC; 
  signal Inst_UControl_mux0000 : STD_LOGIC; 
  signal Inst_UControl_mux0005 : STD_LOGIC; 
  signal Inst_UControl_clr_timer_221 : STD_LOGIC; 
  signal Inst_UControl_rst_n_inv : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd1_223 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd1_In_224 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd2_225 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd2_In_226 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd3_227 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd3_In_228 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd4_229 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd4_In : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd5_231 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd5_In : STD_LOGIC; 
  signal Inst_UControl_state_cmp_eq0016 : STD_LOGIC; 
  signal Inst_UControl_state_index0000 : STD_LOGIC; 
  signal Inst_UControl_state_index0001 : STD_LOGIC; 
  signal Inst_UControl_state_index0002 : STD_LOGIC; 
  signal Inst_UControl_state_index0004 : STD_LOGIC; 
  signal Inst_UControl_state_index0006 : STD_LOGIC; 
  signal Inst_UControl_state_index0007 : STD_LOGIC; 
  signal Inst_UControl_state_index0008 : STD_LOGIC; 
  signal Inst_UControl_state_index0009 : STD_LOGIC; 
  signal Mshreg_leds_out_0 : STD_LOGIC; 
  signal Mshreg_leds_out_1 : STD_LOGIC; 
  signal Mshreg_leds_out_4 : STD_LOGIC; 
  signal Mshreg_leds_out_5 : STD_LOGIC; 
  signal Mshreg_leds_out_6 : STD_LOGIC; 
  signal Mshreg_leds_out_7 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal clk640 : STD_LOGIC; 
  signal lcd_rw_out_OBUF_283 : STD_LOGIC; 
  signal leds_out_0_292 : STD_LOGIC; 
  signal leds_out_1_293 : STD_LOGIC; 
  signal leds_out_2_294 : STD_LOGIC; 
  signal leds_out_3_295 : STD_LOGIC; 
  signal leds_out_4_296 : STD_LOGIC; 
  signal leds_out_5_297 : STD_LOGIC; 
  signal leds_out_6_298 : STD_LOGIC; 
  signal leds_out_7_299 : STD_LOGIC; 
  signal NlwRenamedSig_IO_modo_in : STD_LOGIC; 
  signal modo_in_IBUF_301 : STD_LOGIC; 
  signal modo_int_302 : STD_LOGIC; 
  signal pb_in_0_IBUF_307 : STD_LOGIC; 
  signal pb_in_1_IBUF_308 : STD_LOGIC; 
  signal pb_in_2_IBUF_309 : STD_LOGIC; 
  signal pb_in_3_IBUF_310 : STD_LOGIC; 
  signal rot_in_0_IBUF_319 : STD_LOGIC; 
  signal rot_in_1_IBUF_320 : STD_LOGIC; 
  signal rot_press_321 : STD_LOGIC; 
  signal NlwRenamedSig_IO_rot_press_in : STD_LOGIC; 
  signal rot_press_in_IBUF_323 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_Out2_SW0_O : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd2_In_SW2_O : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd3_In_SW1_O : STD_LOGIC; 
  signal Mshreg_leds_out_0_CE : STD_LOGIC; 
  signal Mshreg_leds_out_1_CE : STD_LOGIC; 
  signal Mshreg_leds_out_4_CE : STD_LOGIC; 
  signal Mshreg_leds_out_5_CE : STD_LOGIC; 
  signal Mshreg_leds_out_6_CE : STD_LOGIC; 
  signal Mshreg_leds_out_7_CE : STD_LOGIC; 
  signal Inst_Interfaz_Mshreg_rotary_in_1_CE : STD_LOGIC; 
  signal Inst_Interfaz_Mshreg_rotary_in_0_CE : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_Inst_Clock1562_DCM_SP_INST_CLK90_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock1562_DCM_SP_INST_CLK180_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock1562_DCM_SP_INST_CLK270_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock1562_DCM_SP_INST_CLK2X_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock1562_DCM_SP_INST_CLK2X180_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock1562_DCM_SP_INST_CLKFX_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock1562_DCM_SP_INST_CLKFX180_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock1562_DCM_SP_INST_LOCKED_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock1562_DCM_SP_INST_PSDONE_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock1562_DCM_SP_INST_STATUS_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock1562_DCM_SP_INST_STATUS_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock1562_DCM_SP_INST_STATUS_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock1562_DCM_SP_INST_STATUS_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock1562_DCM_SP_INST_STATUS_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock1562_DCM_SP_INST_STATUS_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock1562_DCM_SP_INST_STATUS_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock1562_DCM_SP_INST_STATUS_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_leds_out_0_SRL16E_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_leds_out_1_SRL16E_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_leds_out_4_SRL16E_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_leds_out_5_SRL16E_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_leds_out_6_SRL16E_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_leds_out_7_SRL16E_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Interfaz_Mshreg_rotary_in_1_SRL16E_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Interfaz_Mshreg_rotary_in_0_SRL16E_Q15_UNCONNECTED : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal Inst_Counter_Mcount_temp_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Inst_Counter_temp : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal Inst_Interfaz_Result : STD_LOGIC_VECTOR ( 11 downto 1 ); 
  signal Inst_Interfaz_rotary_in : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Inst_LEDS_led : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal Inst_UControl_tiempo : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 14 downto 1 ); 
  signal NlwRenamedSig_IO_pb_in : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal pb_int : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal rot : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal NlwRenamedSig_IO_rot_in : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  NlwRenamedSig_IO_rot_press_in <= rot_press_in;
  NlwRenamedSig_IO_modo_in <= modo_in;
  NlwRenamedSig_IO_pb_in(3) <= pb_in(3);
  NlwRenamedSig_IO_pb_in(2) <= pb_in(2);
  NlwRenamedSig_IO_pb_in(1) <= pb_in(1);
  NlwRenamedSig_IO_pb_in(0) <= pb_in(0);
  NlwRenamedSig_IO_rot_in(1) <= rot_in(1);
  NlwRenamedSig_IO_rot_in(0) <= rot_in(0);
  XST_GND : X_ZERO
    port map (
      O => lcd_rw_out_OBUF_283
    );
  rot_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => rot_in_0_IBUF_319,
      O => rot(0),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  rot_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => rot_in_1_IBUF_320,
      O => rot(1),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  modo_int : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => modo_in_IBUF_301,
      O => modo_int_302,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  pb_int_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => pb_in_0_IBUF_307,
      O => pb_int(0),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  pb_int_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => pb_in_1_IBUF_308,
      O => pb_int(1),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  pb_int_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => pb_in_2_IBUF_309,
      O => pb_int(2),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  pb_int_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => pb_in_3_IBUF_310,
      O => pb_int(3),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  rot_press : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => rot_press_in_IBUF_323,
      O => rot_press_321,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  leds_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Inst_LEDS_led(2),
      O => leds_out_2_294,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  leds_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Inst_LEDS_led(3),
      O => leds_out_3_295,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  XST_VCC : X_ONE
    port map (
      O => N2
    );
  Inst_Counter_tic : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Inst_Counter_tic_mux0001,
      O => Inst_Counter_tic_114,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  Inst_UControl_LCD_DB_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_rst_n_inv,
      I => Inst_UControl_state_index0002,
      O => Inst_UControl_LCD_DB_7_Q,
      CE => VCC,
      SET => GND
    );
  Inst_UControl_LCD_DB_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_rst_n_inv,
      I => Inst_UControl_state_index0004,
      O => Inst_UControl_LCD_DB_5_Q,
      CE => VCC,
      SET => GND
    );
  Inst_UControl_LCD_DB_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_rst_n_inv,
      I => Inst_UControl_state_index0006,
      O => Inst_UControl_LCD_DB_3_Q,
      CE => VCC,
      SET => GND
    );
  Inst_UControl_LCD_DB_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_rst_n_inv,
      I => Inst_UControl_state_index0007,
      O => Inst_UControl_LCD_DB_2_Q,
      CE => VCC,
      SET => GND
    );
  Inst_UControl_LCD_DB_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_rst_n_inv,
      I => Inst_UControl_state_index0008,
      O => Inst_UControl_LCD_DB_1_Q,
      CE => VCC,
      SET => GND
    );
  Inst_UControl_LCD_DB_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_rst_n_inv,
      I => Inst_UControl_state_index0009,
      O => Inst_UControl_LCD_DB_0_Q,
      CE => VCC,
      SET => GND
    );
  Inst_UControl_clr_timer : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_rst_n_inv,
      I => Inst_UControl_mux0005,
      O => Inst_UControl_clr_timer_221,
      CE => VCC,
      SET => GND
    );
  Inst_UControl_LCD_RS : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_rst_n_inv,
      I => Inst_UControl_state_cmp_eq0016,
      O => Inst_UControl_LCD_RS_218,
      CE => VCC,
      SET => GND
    );
  Inst_UControl_tiempo_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_rst_n_inv,
      I => Inst_UControl_state_index0000,
      O => Inst_UControl_tiempo(1),
      CE => VCC,
      SET => GND
    );
  Inst_UControl_tiempo_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_rst_n_inv,
      I => Inst_UControl_state_index0001,
      O => Inst_UControl_tiempo(0),
      CE => VCC,
      SET => GND
    );
  Inst_UControl_LCD_E : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_rst_n_inv,
      I => Inst_UControl_mux0000,
      O => Inst_UControl_LCD_E_217,
      CE => VCC,
      SET => GND
    );
  Inst_LEDS_led_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      CE => Inst_Interfaz_rotary_event_195,
      I => Inst_Interfaz_rotary_left_199,
      O => Inst_LEDS_led(3),
      SET => GND,
      RST => GND
    );
  Inst_LEDS_led_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      CE => Inst_Interfaz_rotary_event_195,
      I => Inst_LEDS_led_2_mux0001,
      O => Inst_LEDS_led(2),
      SET => GND,
      RST => GND
    );
  Inst_Counter_temp_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_clr_timer_221,
      I => Inst_Counter_Mcount_temp_lut(0),
      O => Inst_Counter_temp(0),
      CE => VCC,
      SET => GND
    );
  Inst_Counter_temp_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_clr_timer_221,
      I => Result(1),
      O => Inst_Counter_temp(1),
      CE => VCC,
      SET => GND
    );
  Inst_Counter_temp_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_clr_timer_221,
      I => Result(2),
      O => Inst_Counter_temp(2),
      CE => VCC,
      SET => GND
    );
  Inst_Counter_temp_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_clr_timer_221,
      I => Result(3),
      O => Inst_Counter_temp(3),
      CE => VCC,
      SET => GND
    );
  Inst_Counter_temp_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_clr_timer_221,
      I => Result(4),
      O => Inst_Counter_temp(4),
      CE => VCC,
      SET => GND
    );
  Inst_Counter_temp_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_clr_timer_221,
      I => Result(5),
      O => Inst_Counter_temp(5),
      CE => VCC,
      SET => GND
    );
  Inst_Counter_temp_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_clr_timer_221,
      I => Result(6),
      O => Inst_Counter_temp(6),
      CE => VCC,
      SET => GND
    );
  Inst_Counter_temp_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_clr_timer_221,
      I => Result(7),
      O => Inst_Counter_temp(7),
      CE => VCC,
      SET => GND
    );
  Inst_Counter_temp_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_clr_timer_221,
      I => Result(8),
      O => Inst_Counter_temp(8),
      CE => VCC,
      SET => GND
    );
  Inst_Counter_temp_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_clr_timer_221,
      I => Result(9),
      O => Inst_Counter_temp(9),
      CE => VCC,
      SET => GND
    );
  Inst_Counter_temp_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_clr_timer_221,
      I => Result(10),
      O => Inst_Counter_temp(10),
      CE => VCC,
      SET => GND
    );
  Inst_Counter_temp_11 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_clr_timer_221,
      I => Result(11),
      O => Inst_Counter_temp(11),
      CE => VCC,
      SET => GND
    );
  Inst_Counter_temp_12 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_clr_timer_221,
      I => Result(12),
      O => Inst_Counter_temp(12),
      CE => VCC,
      SET => GND
    );
  Inst_Counter_temp_13 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_clr_timer_221,
      I => Result(13),
      O => Inst_Counter_temp(13),
      CE => VCC,
      SET => GND
    );
  Inst_Counter_temp_14 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_clr_timer_221,
      I => Result(14),
      O => Inst_Counter_temp(14),
      CE => VCC,
      SET => GND
    );
  Inst_Counter_Mmux_tic_mux0001_2_f5 : X_MUX2
    port map (
      IA => Inst_Counter_Mmux_tic_mux0001_4_98,
      IB => Inst_Counter_Mmux_tic_mux0001_3_97,
      SEL => Inst_UControl_tiempo(1),
      O => Inst_Counter_tic_mux0001
    );
  Inst_Counter_Mmux_tic_mux0001_4 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => Inst_UControl_tiempo(0),
      ADR1 => Inst_Counter_temp(5),
      ADR2 => Inst_Counter_temp(7),
      O => Inst_Counter_Mmux_tic_mux0001_4_98
    );
  Inst_Counter_Mmux_tic_mux0001_3 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => Inst_UControl_tiempo(0),
      ADR1 => Inst_Counter_temp(12),
      ADR2 => Inst_Counter_temp(14),
      O => Inst_Counter_Mmux_tic_mux0001_3_97
    );
  Inst_Counter_Mcount_temp_cy_0_Q : X_MUX2
    port map (
      IB => lcd_rw_out_OBUF_283,
      IA => N2,
      SEL => Inst_Counter_Mcount_temp_lut(0),
      O => Inst_Counter_Mcount_temp_cy(0)
    );
  Inst_Counter_Mcount_temp_cy_1_Q : X_MUX2
    port map (
      IB => Inst_Counter_Mcount_temp_cy(0),
      IA => lcd_rw_out_OBUF_283,
      SEL => Inst_Counter_Mcount_temp_cy_1_rt_78,
      O => Inst_Counter_Mcount_temp_cy(1)
    );
  Inst_Counter_Mcount_temp_xor_1_Q : X_XOR2
    port map (
      I0 => Inst_Counter_Mcount_temp_cy(0),
      I1 => Inst_Counter_Mcount_temp_cy_1_rt_78,
      O => Result(1)
    );
  Inst_Counter_Mcount_temp_cy_2_Q : X_MUX2
    port map (
      IB => Inst_Counter_Mcount_temp_cy(1),
      IA => lcd_rw_out_OBUF_283,
      SEL => Inst_Counter_Mcount_temp_cy_2_rt_80,
      O => Inst_Counter_Mcount_temp_cy(2)
    );
  Inst_Counter_Mcount_temp_xor_2_Q : X_XOR2
    port map (
      I0 => Inst_Counter_Mcount_temp_cy(1),
      I1 => Inst_Counter_Mcount_temp_cy_2_rt_80,
      O => Result(2)
    );
  Inst_Counter_Mcount_temp_cy_3_Q : X_MUX2
    port map (
      IB => Inst_Counter_Mcount_temp_cy(2),
      IA => lcd_rw_out_OBUF_283,
      SEL => Inst_Counter_Mcount_temp_cy_3_rt_82,
      O => Inst_Counter_Mcount_temp_cy(3)
    );
  Inst_Counter_Mcount_temp_xor_3_Q : X_XOR2
    port map (
      I0 => Inst_Counter_Mcount_temp_cy(2),
      I1 => Inst_Counter_Mcount_temp_cy_3_rt_82,
      O => Result(3)
    );
  Inst_Counter_Mcount_temp_cy_4_Q : X_MUX2
    port map (
      IB => Inst_Counter_Mcount_temp_cy(3),
      IA => lcd_rw_out_OBUF_283,
      SEL => Inst_Counter_Mcount_temp_cy_4_rt_84,
      O => Inst_Counter_Mcount_temp_cy(4)
    );
  Inst_Counter_Mcount_temp_xor_4_Q : X_XOR2
    port map (
      I0 => Inst_Counter_Mcount_temp_cy(3),
      I1 => Inst_Counter_Mcount_temp_cy_4_rt_84,
      O => Result(4)
    );
  Inst_Counter_Mcount_temp_cy_5_Q : X_MUX2
    port map (
      IB => Inst_Counter_Mcount_temp_cy(4),
      IA => lcd_rw_out_OBUF_283,
      SEL => Inst_Counter_Mcount_temp_cy_5_rt_86,
      O => Inst_Counter_Mcount_temp_cy(5)
    );
  Inst_Counter_Mcount_temp_xor_5_Q : X_XOR2
    port map (
      I0 => Inst_Counter_Mcount_temp_cy(4),
      I1 => Inst_Counter_Mcount_temp_cy_5_rt_86,
      O => Result(5)
    );
  Inst_Counter_Mcount_temp_cy_6_Q : X_MUX2
    port map (
      IB => Inst_Counter_Mcount_temp_cy(5),
      IA => lcd_rw_out_OBUF_283,
      SEL => Inst_Counter_Mcount_temp_cy_6_rt_88,
      O => Inst_Counter_Mcount_temp_cy(6)
    );
  Inst_Counter_Mcount_temp_xor_6_Q : X_XOR2
    port map (
      I0 => Inst_Counter_Mcount_temp_cy(5),
      I1 => Inst_Counter_Mcount_temp_cy_6_rt_88,
      O => Result(6)
    );
  Inst_Counter_Mcount_temp_cy_7_Q : X_MUX2
    port map (
      IB => Inst_Counter_Mcount_temp_cy(6),
      IA => lcd_rw_out_OBUF_283,
      SEL => Inst_Counter_Mcount_temp_cy_7_rt_90,
      O => Inst_Counter_Mcount_temp_cy(7)
    );
  Inst_Counter_Mcount_temp_xor_7_Q : X_XOR2
    port map (
      I0 => Inst_Counter_Mcount_temp_cy(6),
      I1 => Inst_Counter_Mcount_temp_cy_7_rt_90,
      O => Result(7)
    );
  Inst_Counter_Mcount_temp_cy_8_Q : X_MUX2
    port map (
      IB => Inst_Counter_Mcount_temp_cy(7),
      IA => lcd_rw_out_OBUF_283,
      SEL => Inst_Counter_Mcount_temp_cy_8_rt_92,
      O => Inst_Counter_Mcount_temp_cy(8)
    );
  Inst_Counter_Mcount_temp_xor_8_Q : X_XOR2
    port map (
      I0 => Inst_Counter_Mcount_temp_cy(7),
      I1 => Inst_Counter_Mcount_temp_cy_8_rt_92,
      O => Result(8)
    );
  Inst_Counter_Mcount_temp_cy_9_Q : X_MUX2
    port map (
      IB => Inst_Counter_Mcount_temp_cy(8),
      IA => lcd_rw_out_OBUF_283,
      SEL => Inst_Counter_Mcount_temp_cy_9_rt_94,
      O => Inst_Counter_Mcount_temp_cy(9)
    );
  Inst_Counter_Mcount_temp_xor_9_Q : X_XOR2
    port map (
      I0 => Inst_Counter_Mcount_temp_cy(8),
      I1 => Inst_Counter_Mcount_temp_cy_9_rt_94,
      O => Result(9)
    );
  Inst_Counter_Mcount_temp_cy_10_Q : X_MUX2
    port map (
      IB => Inst_Counter_Mcount_temp_cy(9),
      IA => lcd_rw_out_OBUF_283,
      SEL => Inst_Counter_Mcount_temp_cy_10_rt_70,
      O => Inst_Counter_Mcount_temp_cy(10)
    );
  Inst_Counter_Mcount_temp_xor_10_Q : X_XOR2
    port map (
      I0 => Inst_Counter_Mcount_temp_cy(9),
      I1 => Inst_Counter_Mcount_temp_cy_10_rt_70,
      O => Result(10)
    );
  Inst_Counter_Mcount_temp_cy_11_Q : X_MUX2
    port map (
      IB => Inst_Counter_Mcount_temp_cy(10),
      IA => lcd_rw_out_OBUF_283,
      SEL => Inst_Counter_Mcount_temp_cy_11_rt_72,
      O => Inst_Counter_Mcount_temp_cy(11)
    );
  Inst_Counter_Mcount_temp_xor_11_Q : X_XOR2
    port map (
      I0 => Inst_Counter_Mcount_temp_cy(10),
      I1 => Inst_Counter_Mcount_temp_cy_11_rt_72,
      O => Result(11)
    );
  Inst_Counter_Mcount_temp_cy_12_Q : X_MUX2
    port map (
      IB => Inst_Counter_Mcount_temp_cy(11),
      IA => lcd_rw_out_OBUF_283,
      SEL => Inst_Counter_Mcount_temp_cy_12_rt_74,
      O => Inst_Counter_Mcount_temp_cy(12)
    );
  Inst_Counter_Mcount_temp_xor_12_Q : X_XOR2
    port map (
      I0 => Inst_Counter_Mcount_temp_cy(11),
      I1 => Inst_Counter_Mcount_temp_cy_12_rt_74,
      O => Result(12)
    );
  Inst_Counter_Mcount_temp_cy_13_Q : X_MUX2
    port map (
      IB => Inst_Counter_Mcount_temp_cy(12),
      IA => lcd_rw_out_OBUF_283,
      SEL => Inst_Counter_Mcount_temp_cy_13_rt_76,
      O => Inst_Counter_Mcount_temp_cy(13)
    );
  Inst_Counter_Mcount_temp_xor_13_Q : X_XOR2
    port map (
      I0 => Inst_Counter_Mcount_temp_cy(12),
      I1 => Inst_Counter_Mcount_temp_cy_13_rt_76,
      O => Result(13)
    );
  Inst_Counter_Mcount_temp_xor_14_Q : X_XOR2
    port map (
      I0 => Inst_Counter_Mcount_temp_cy(13),
      I1 => Inst_Counter_Mcount_temp_xor_14_rt_96,
      O => Result(14)
    );
  Inst_Clock1562_DCM_SP_INST : X_DCM_SP
    generic map(
      CLKDV_DIVIDE => 16.000000,
      CLKFX_DIVIDE => 1,
      CLKFX_MULTIPLY => 4,
      CLKIN_DIVIDE_BY_2 => TRUE,
      CLKIN_PERIOD => 40.000000,
      CLKOUT_PHASE_SHIFT => "NONE",
      CLK_FEEDBACK => "1X",
      DESKEW_ADJUST => "SYSTEM_SYNCHRONOUS",
      DFS_FREQUENCY_MODE => "LOW",
      DLL_FREQUENCY_MODE => "LOW",
      DSS_MODE => "NONE",
      DUTY_CYCLE_CORRECTION => TRUE,
      PHASE_SHIFT => 0,
      STARTUP_WAIT => FALSE,
      FACTORY_JF => X"C080"
    )
    port map (
      CLKIN => Inst_Clock1562_CLKIN_IBUFG_OUT,
      CLKFB => Inst_Clock1562_CLK0_OUT,
      RST => lcd_rw_out_OBUF_283,
      DSSEN => lcd_rw_out_OBUF_283,
      PSINCDEC => lcd_rw_out_OBUF_283,
      PSEN => lcd_rw_out_OBUF_283,
      PSCLK => lcd_rw_out_OBUF_283,
      CLK0 => Inst_Clock1562_CLK0_BUF,
      CLK90 => NLW_Inst_Clock1562_DCM_SP_INST_CLK90_UNCONNECTED,
      CLK180 => NLW_Inst_Clock1562_DCM_SP_INST_CLK180_UNCONNECTED,
      CLK270 => NLW_Inst_Clock1562_DCM_SP_INST_CLK270_UNCONNECTED,
      CLK2X => NLW_Inst_Clock1562_DCM_SP_INST_CLK2X_UNCONNECTED,
      CLK2X180 => NLW_Inst_Clock1562_DCM_SP_INST_CLK2X180_UNCONNECTED,
      CLKDV => Inst_Clock1562_CLKDV_BUF,
      CLKFX => NLW_Inst_Clock1562_DCM_SP_INST_CLKFX_UNCONNECTED,
      CLKFX180 => NLW_Inst_Clock1562_DCM_SP_INST_CLKFX180_UNCONNECTED,
      LOCKED => NLW_Inst_Clock1562_DCM_SP_INST_LOCKED_UNCONNECTED,
      PSDONE => NLW_Inst_Clock1562_DCM_SP_INST_PSDONE_UNCONNECTED,
      STATUS(7) => NLW_Inst_Clock1562_DCM_SP_INST_STATUS_7_UNCONNECTED,
      STATUS(6) => NLW_Inst_Clock1562_DCM_SP_INST_STATUS_6_UNCONNECTED,
      STATUS(5) => NLW_Inst_Clock1562_DCM_SP_INST_STATUS_5_UNCONNECTED,
      STATUS(4) => NLW_Inst_Clock1562_DCM_SP_INST_STATUS_4_UNCONNECTED,
      STATUS(3) => NLW_Inst_Clock1562_DCM_SP_INST_STATUS_3_UNCONNECTED,
      STATUS(2) => NLW_Inst_Clock1562_DCM_SP_INST_STATUS_2_UNCONNECTED,
      STATUS(1) => NLW_Inst_Clock1562_DCM_SP_INST_STATUS_1_UNCONNECTED,
      STATUS(0) => NLW_Inst_Clock1562_DCM_SP_INST_STATUS_0_UNCONNECTED
    );
  Inst_Clock1562_CLK0_BUFG_INST : X_CKBUF
    port map (
      I => Inst_Clock1562_CLK0_BUF,
      O => Inst_Clock1562_CLK0_OUT
    );
  Inst_Clock1562_CLKIN_IBUFG_INST : X_CKBUF
    port map (
      I => clk50,
      O => Inst_Clock1562_CLKIN_IBUFG_OUT
    );
  Inst_Clock1562_CLKDV_BUFG_INST : X_CKBUF
    port map (
      I => Inst_Clock1562_CLKDV_BUF,
      O => clk640
    );
  Inst_UControl_state_FSM_FFd3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_rst_n_inv,
      I => Inst_UControl_state_FSM_FFd3_In_228,
      O => Inst_UControl_state_FSM_FFd3_227,
      CE => VCC,
      SET => GND
    );
  Inst_UControl_state_FSM_FFd1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_rst_n_inv,
      I => Inst_UControl_state_FSM_FFd1_In_224,
      O => Inst_UControl_state_FSM_FFd1_223,
      CE => VCC,
      SET => GND
    );
  Inst_UControl_state_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_rst_n_inv,
      I => Inst_UControl_state_FSM_FFd2_In_226,
      O => Inst_UControl_state_FSM_FFd2_225,
      CE => VCC,
      SET => GND
    );
  Inst_UControl_state_FSM_FFd4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_rst_n_inv,
      I => Inst_UControl_state_FSM_FFd4_In,
      O => Inst_UControl_state_FSM_FFd4_229,
      CE => VCC,
      SET => GND
    );
  Inst_UControl_state_FSM_FFd5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      RST => Inst_UControl_rst_n_inv,
      I => Inst_UControl_state_FSM_FFd5_In,
      O => Inst_UControl_state_FSM_FFd5_231,
      CE => VCC,
      SET => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_xor_11_Q : X_XOR2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(10),
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_xor_11_rt_138,
      O => Inst_Interfaz_Result(11)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_xor_10_Q : X_XOR2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(9),
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_10_rt_118,
      O => Inst_Interfaz_Result(10)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_10_Q : X_MUX2
    port map (
      IB => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(9),
      IA => lcd_rw_out_OBUF_283,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_10_rt_118,
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(10)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_xor_9_Q : X_XOR2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(8),
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_9_rt_136,
      O => Inst_Interfaz_Result(9)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_9_Q : X_MUX2
    port map (
      IB => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(8),
      IA => lcd_rw_out_OBUF_283,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_9_rt_136,
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(9)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_xor_8_Q : X_XOR2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(7),
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_8_rt_134,
      O => Inst_Interfaz_Result(8)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_8_Q : X_MUX2
    port map (
      IB => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(7),
      IA => lcd_rw_out_OBUF_283,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_8_rt_134,
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(8)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_xor_7_Q : X_XOR2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(6),
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_7_rt_132,
      O => Inst_Interfaz_Result(7)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_7_Q : X_MUX2
    port map (
      IB => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(6),
      IA => lcd_rw_out_OBUF_283,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_7_rt_132,
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(7)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_xor_6_Q : X_XOR2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(5),
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_6_rt_130,
      O => Inst_Interfaz_Result(6)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_6_Q : X_MUX2
    port map (
      IB => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(5),
      IA => lcd_rw_out_OBUF_283,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_6_rt_130,
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(6)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_xor_5_Q : X_XOR2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(4),
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_5_rt_128,
      O => Inst_Interfaz_Result(5)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_5_Q : X_MUX2
    port map (
      IB => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(4),
      IA => lcd_rw_out_OBUF_283,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_5_rt_128,
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(5)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_xor_4_Q : X_XOR2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(3),
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_4_rt_126,
      O => Inst_Interfaz_Result(4)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_4_Q : X_MUX2
    port map (
      IB => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(3),
      IA => lcd_rw_out_OBUF_283,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_4_rt_126,
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(4)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_xor_3_Q : X_XOR2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(2),
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_3_rt_124,
      O => Inst_Interfaz_Result(3)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_3_Q : X_MUX2
    port map (
      IB => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(2),
      IA => lcd_rw_out_OBUF_283,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_3_rt_124,
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(3)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_xor_2_Q : X_XOR2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(1),
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_2_rt_122,
      O => Inst_Interfaz_Result(2)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_2_Q : X_MUX2
    port map (
      IB => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(1),
      IA => lcd_rw_out_OBUF_283,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_2_rt_122,
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(2)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_xor_1_Q : X_XOR2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(0),
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_1_rt_120,
      O => Inst_Interfaz_Result(1)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_1_Q : X_MUX2
    port map (
      IB => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(0),
      IA => lcd_rw_out_OBUF_283,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_1_rt_120,
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(1)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_0_Q : X_MUX2
    port map (
      IB => lcd_rw_out_OBUF_283,
      IA => N2,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_lut(0),
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy(0)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_11 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Inst_Interfaz_Result(11),
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador(11),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_10 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Inst_Interfaz_Result(10),
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador(10),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_9 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Inst_Interfaz_Result(9),
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador(9),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_8 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Inst_Interfaz_Result(8),
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador(8),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Inst_Interfaz_Result(7),
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador(7),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_6 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Inst_Interfaz_Result(6),
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador(6),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Inst_Interfaz_Result(5),
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador(5),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Inst_Interfaz_Result(4),
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador(4),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Inst_Interfaz_Result(3),
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador(3),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Inst_Interfaz_Result(2),
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador(2),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Inst_Interfaz_Result(1),
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador(1),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_lut(0),
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador(0),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Inst_Interfaz_Inst_pb0_state_FSM_FFd1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_139,
      I => Inst_Interfaz_Inst_pb0_state_FSM_FFd1_In,
      SET => lcd_rw_out_OBUF_283,
      O => Inst_Interfaz_Inst_pb0_state_FSM_FFd1_157,
      CE => VCC,
      RST => GND
    );
  Inst_Interfaz_Inst_pb0_state_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_139,
      RST => lcd_rw_out_OBUF_283,
      I => Inst_Interfaz_Inst_pb0_state_FSM_FFd2_In,
      O => Inst_Interfaz_Inst_pb0_state_FSM_FFd2_159,
      CE => VCC,
      SET => GND
    );
  Inst_Interfaz_Inst_pb1_state_FSM_FFd1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_139,
      I => Inst_Interfaz_Inst_pb1_state_FSM_FFd1_In,
      SET => lcd_rw_out_OBUF_283,
      O => Inst_Interfaz_Inst_pb1_state_FSM_FFd1_161,
      CE => VCC,
      RST => GND
    );
  Inst_Interfaz_Inst_pb1_state_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_139,
      RST => lcd_rw_out_OBUF_283,
      I => Inst_Interfaz_Inst_pb1_state_FSM_FFd2_In,
      O => Inst_Interfaz_Inst_pb1_state_FSM_FFd2_163,
      CE => VCC,
      SET => GND
    );
  Inst_Interfaz_Inst_pb2_state_FSM_FFd1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_139,
      I => Inst_Interfaz_Inst_pb2_state_FSM_FFd1_In,
      SET => lcd_rw_out_OBUF_283,
      O => Inst_Interfaz_Inst_pb2_state_FSM_FFd1_165,
      CE => VCC,
      RST => GND
    );
  Inst_Interfaz_Inst_pb2_state_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_139,
      RST => lcd_rw_out_OBUF_283,
      I => Inst_Interfaz_Inst_pb2_state_FSM_FFd2_In,
      O => Inst_Interfaz_Inst_pb2_state_FSM_FFd2_167,
      CE => VCC,
      SET => GND
    );
  Inst_Interfaz_Inst_pb3_state_FSM_FFd1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_139,
      I => Inst_Interfaz_Inst_pb3_state_FSM_FFd1_In,
      SET => lcd_rw_out_OBUF_283,
      O => Inst_Interfaz_Inst_pb3_state_FSM_FFd1_169,
      CE => VCC,
      RST => GND
    );
  Inst_Interfaz_Inst_pb3_state_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_139,
      RST => lcd_rw_out_OBUF_283,
      I => Inst_Interfaz_Inst_pb3_state_FSM_FFd2_In,
      O => Inst_Interfaz_Inst_pb3_state_FSM_FFd2_171,
      CE => VCC,
      SET => GND
    );
  Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_139,
      I => Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1_In,
      SET => lcd_rw_out_OBUF_283,
      O => Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1_173,
      CE => VCC,
      RST => GND
    );
  Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_139,
      RST => lcd_rw_out_OBUF_283,
      I => Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd2_In,
      O => Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd2_175,
      CE => VCC,
      SET => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_clk10ms : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => N2,
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_not0001,
      O => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_139,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Inst_Interfaz_delay_rotary_q1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Inst_Interfaz_rotary_q1_201,
      O => Inst_Interfaz_delay_rotary_q1_190,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  Inst_Interfaz_rotary_left : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      CE => Inst_Interfaz_rotary_left_and0000,
      I => Inst_Interfaz_rotary_q2_203,
      O => Inst_Interfaz_rotary_left_199,
      SET => GND,
      RST => GND
    );
  Inst_Interfaz_rotary_q2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Inst_Interfaz_rotary_q2_mux0000,
      O => Inst_Interfaz_rotary_q2_203,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  Inst_Interfaz_rotary_q1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Inst_Interfaz_rotary_q1_mux0000,
      O => Inst_Interfaz_rotary_q1_201,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  Inst_Interfaz_rst_n : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => N2,
      SRST => Inst_Interfaz_rst_and0000,
      O => Inst_Interfaz_rst_n_207,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Inst_Interfaz_pb3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => pb_int(3),
      O => Inst_Interfaz_pb3_194,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  Inst_Interfaz_pb2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => pb_int(2),
      O => Inst_Interfaz_pb2_193,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  Inst_Interfaz_pb1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => pb_int(1),
      O => Inst_Interfaz_pb1_192,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  Inst_Interfaz_pb0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => pb_int(0),
      O => Inst_Interfaz_pb0_191,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  Inst_Interfaz_rotatory_press : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => rot_press_321,
      O => Inst_Interfaz_rotatory_press_205,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  Inst_Interfaz_rotary_event : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => N2,
      SRST => Inst_Interfaz_rotary_event_not0001,
      O => Inst_Interfaz_rotary_event_195,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Inst_Interfaz_rst_and00001 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_pb1_state_FSM_FFd2_163,
      ADR1 => Inst_Interfaz_Inst_pb0_state_FSM_FFd2_159,
      O => Inst_Interfaz_rst_and0000
    );
  Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd2_In1 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1_173,
      ADR1 => Inst_Interfaz_rotatory_press_205,
      O => Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd2_In
    );
  Inst_Interfaz_Inst_pb3_state_FSM_FFd2_In1 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_pb3_state_FSM_FFd1_169,
      ADR1 => Inst_Interfaz_pb3_194,
      O => Inst_Interfaz_Inst_pb3_state_FSM_FFd2_In
    );
  Inst_Interfaz_Inst_pb2_state_FSM_FFd2_In1 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_pb2_state_FSM_FFd1_165,
      ADR1 => Inst_Interfaz_pb2_193,
      O => Inst_Interfaz_Inst_pb2_state_FSM_FFd2_In
    );
  Inst_Interfaz_Inst_pb1_state_FSM_FFd2_In1 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_pb1_state_FSM_FFd1_161,
      ADR1 => Inst_Interfaz_pb1_192,
      O => Inst_Interfaz_Inst_pb1_state_FSM_FFd2_In
    );
  Inst_Interfaz_Inst_pb0_state_FSM_FFd2_In1 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_pb0_state_FSM_FFd1_157,
      ADR1 => Inst_Interfaz_pb0_191,
      O => Inst_Interfaz_Inst_pb0_state_FSM_FFd2_In
    );
  Inst_UControl_state_Out71 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd2_225,
      ADR1 => Inst_UControl_state_FSM_FFd3_227,
      ADR2 => Inst_UControl_state_FSM_FFd4_229,
      O => Inst_UControl_state_index0002
    );
  Inst_UControl_state_FSM_Out01 : X_LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd1_223,
      ADR1 => Inst_UControl_state_FSM_FFd4_229,
      ADR2 => Inst_UControl_state_FSM_FFd5_231,
      O => Inst_UControl_state_cmp_eq0016
    );
  Inst_Interfaz_Mmux_rotary_q2_mux000011 : X_LUT3
    generic map(
      INIT => X"B2"
    )
    port map (
      ADR0 => Inst_Interfaz_rotary_q2_203,
      ADR1 => Inst_Interfaz_rotary_in(0),
      ADR2 => Inst_Interfaz_rotary_in(1),
      O => Inst_Interfaz_rotary_q2_mux0000
    );
  Inst_Interfaz_Mmux_rotary_q1_mux000011 : X_LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      ADR0 => Inst_Interfaz_rotary_in(1),
      ADR1 => Inst_Interfaz_rotary_q1_201,
      ADR2 => Inst_Interfaz_rotary_in(0),
      O => Inst_Interfaz_rotary_q1_mux0000
    );
  Inst_UControl_state_FSM_Out41 : X_LUT4
    generic map(
      INIT => X"0301"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd1_223,
      ADR1 => Inst_UControl_state_FSM_FFd2_225,
      ADR2 => Inst_UControl_state_FSM_FFd4_229,
      ADR3 => Inst_UControl_state_FSM_FFd3_227,
      O => Inst_UControl_state_index0001
    );
  Inst_UControl_state_Out91 : X_LUT4
    generic map(
      INIT => X"45F4"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd2_225,
      ADR1 => Inst_UControl_state_FSM_FFd3_227,
      ADR2 => Inst_UControl_state_FSM_FFd1_223,
      ADR3 => Inst_UControl_state_FSM_FFd4_229,
      O => Inst_UControl_state_index0004
    );
  Inst_UControl_state_FSM_Out101 : X_LUT4
    generic map(
      INIT => X"6272"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd3_227,
      ADR1 => Inst_UControl_state_FSM_FFd2_225,
      ADR2 => Inst_UControl_state_FSM_FFd4_229,
      ADR3 => Inst_UControl_state_FSM_FFd1_223,
      O => Inst_UControl_state_index0006
    );
  Inst_UControl_state_FSM_Out2 : X_LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd5_231,
      ADR1 => Inst_UControl_state_FSM_FFd4_229,
      ADR2 => Inst_UControl_state_FSM_FFd3_227,
      ADR3 => N10,
      O => Inst_UControl_mux0000
    );
  Inst_UControl_state_FSM_Out1021 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd3_227,
      ADR1 => Inst_UControl_state_FSM_FFd2_225,
      O => Inst_UControl_state_index0007
    );
  Inst_UControl_state_FSM_Out131 : X_LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd4_229,
      ADR1 => Inst_UControl_state_FSM_FFd2_225,
      ADR2 => Inst_UControl_state_FSM_FFd3_227,
      ADR3 => Inst_UControl_state_FSM_FFd1_223,
      O => Inst_UControl_state_index0009
    );
  Inst_UControl_state_FSM_FFd1_In : X_LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      ADR0 => Inst_Counter_tic_114,
      ADR1 => Inst_UControl_state_FSM_FFd5_231,
      ADR2 => Inst_UControl_state_index0002,
      ADR3 => Inst_UControl_state_FSM_FFd1_223,
      O => Inst_UControl_state_FSM_FFd1_In_224
    );
  Inst_UControl_state_FSM_FFd5_In1 : X_LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd5_231,
      ADR1 => Inst_Counter_tic_114,
      O => Inst_UControl_state_FSM_FFd5_In
    );
  Inst_Interfaz_rotary_left_and00001 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => Inst_Interfaz_delay_rotary_q1_190,
      ADR1 => Inst_Interfaz_rotary_q1_201,
      O => Inst_Interfaz_rotary_left_and0000
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000028 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(6),
      ADR1 => Inst_Interfaz_Inst_divDEBOUNCER_contador(7),
      ADR2 => Inst_Interfaz_Inst_divDEBOUNCER_contador(4),
      ADR3 => Inst_Interfaz_Inst_divDEBOUNCER_contador(5),
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000028_156
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000039 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => N23,
      ADR1 => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000016_155,
      ADR2 => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000028_156,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000
    );
  rot_press_in_IBUF : X_BUF
    port map (
      I => NlwRenamedSig_IO_rot_press_in,
      O => rot_press_in_IBUF_323
    );
  modo_in_IBUF : X_BUF
    port map (
      I => NlwRenamedSig_IO_modo_in,
      O => modo_in_IBUF_301
    );
  pb_in_3_IBUF : X_BUF
    port map (
      I => NlwRenamedSig_IO_pb_in(3),
      O => pb_in_3_IBUF_310
    );
  pb_in_2_IBUF : X_BUF
    port map (
      I => NlwRenamedSig_IO_pb_in(2),
      O => pb_in_2_IBUF_309
    );
  pb_in_1_IBUF : X_BUF
    port map (
      I => NlwRenamedSig_IO_pb_in(1),
      O => pb_in_1_IBUF_308
    );
  pb_in_0_IBUF : X_BUF
    port map (
      I => NlwRenamedSig_IO_pb_in(0),
      O => pb_in_0_IBUF_307
    );
  rot_in_1_IBUF : X_BUF
    port map (
      I => NlwRenamedSig_IO_rot_in(1),
      O => rot_in_1_IBUF_320
    );
  rot_in_0_IBUF : X_BUF
    port map (
      I => NlwRenamedSig_IO_rot_in(0),
      O => rot_in_0_IBUF_319
    );
  Inst_Counter_Mcount_temp_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Counter_temp(1),
      O => Inst_Counter_Mcount_temp_cy_1_rt_78,
      ADR1 => GND
    );
  Inst_Counter_Mcount_temp_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Counter_temp(2),
      O => Inst_Counter_Mcount_temp_cy_2_rt_80,
      ADR1 => GND
    );
  Inst_Counter_Mcount_temp_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Counter_temp(3),
      O => Inst_Counter_Mcount_temp_cy_3_rt_82,
      ADR1 => GND
    );
  Inst_Counter_Mcount_temp_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Counter_temp(4),
      O => Inst_Counter_Mcount_temp_cy_4_rt_84,
      ADR1 => GND
    );
  Inst_Counter_Mcount_temp_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Counter_temp(5),
      O => Inst_Counter_Mcount_temp_cy_5_rt_86,
      ADR1 => GND
    );
  Inst_Counter_Mcount_temp_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Counter_temp(6),
      O => Inst_Counter_Mcount_temp_cy_6_rt_88,
      ADR1 => GND
    );
  Inst_Counter_Mcount_temp_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Counter_temp(7),
      O => Inst_Counter_Mcount_temp_cy_7_rt_90,
      ADR1 => GND
    );
  Inst_Counter_Mcount_temp_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Counter_temp(8),
      O => Inst_Counter_Mcount_temp_cy_8_rt_92,
      ADR1 => GND
    );
  Inst_Counter_Mcount_temp_cy_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Counter_temp(9),
      O => Inst_Counter_Mcount_temp_cy_9_rt_94,
      ADR1 => GND
    );
  Inst_Counter_Mcount_temp_cy_10_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Counter_temp(10),
      O => Inst_Counter_Mcount_temp_cy_10_rt_70,
      ADR1 => GND
    );
  Inst_Counter_Mcount_temp_cy_11_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Counter_temp(11),
      O => Inst_Counter_Mcount_temp_cy_11_rt_72,
      ADR1 => GND
    );
  Inst_Counter_Mcount_temp_cy_12_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Counter_temp(12),
      O => Inst_Counter_Mcount_temp_cy_12_rt_74,
      ADR1 => GND
    );
  Inst_Counter_Mcount_temp_cy_13_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Counter_temp(13),
      O => Inst_Counter_Mcount_temp_cy_13_rt_76,
      ADR1 => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_10_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(10),
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_10_rt_118,
      ADR1 => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(9),
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_9_rt_136,
      ADR1 => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(8),
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_8_rt_134,
      ADR1 => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(7),
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_7_rt_132,
      ADR1 => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(6),
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_6_rt_130,
      ADR1 => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(5),
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_5_rt_128,
      ADR1 => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(4),
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_4_rt_126,
      ADR1 => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(3),
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_3_rt_124,
      ADR1 => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(2),
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_2_rt_122,
      ADR1 => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(1),
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_1_rt_120,
      ADR1 => GND
    );
  Inst_Counter_Mcount_temp_xor_14_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Counter_temp(14),
      O => Inst_Counter_Mcount_temp_xor_14_rt_96,
      ADR1 => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_xor_11_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(11),
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_xor_11_rt_138,
      ADR1 => GND
    );
  Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_not00011 : X_LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000011_154,
      ADR1 => N24,
      ADR2 => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000028_156,
      O => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_not0001
    );
  Inst_UControl_state_FSM_FFd2_In : X_LUT4
    generic map(
      INIT => X"CC6C"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd5_231,
      ADR1 => Inst_UControl_state_FSM_FFd2_225,
      ADR2 => Inst_UControl_state_FSM_FFd4_229,
      ADR3 => N19,
      O => Inst_UControl_state_FSM_FFd2_In_226
    );
  Inst_Interfaz_rotary_event_not00011 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => Inst_Interfaz_rotary_q1_201,
      ADR1 => Inst_Interfaz_delay_rotary_q1_190,
      O => Inst_Interfaz_rotary_event_not0001
    );
  Inst_UControl_state_FSM_Out31 : X_LUT4
    generic map(
      INIT => X"F819"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd2_225,
      ADR1 => Inst_UControl_state_FSM_FFd3_227,
      ADR2 => Inst_UControl_state_FSM_FFd4_229,
      ADR3 => Inst_UControl_state_FSM_FFd1_223,
      O => Inst_UControl_state_index0000
    );
  Inst_UControl_state_FSM_Out121 : X_LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd2_225,
      ADR1 => Inst_UControl_state_FSM_FFd4_229,
      ADR2 => Inst_UControl_state_FSM_FFd3_227,
      O => Inst_UControl_state_index0008
    );
  Inst_UControl_state_FSM_FFd4_In1 : X_LUT4
    generic map(
      INIT => X"EA6A"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd4_229,
      ADR1 => Inst_UControl_state_FSM_FFd5_231,
      ADR2 => Inst_Counter_tic_114,
      ADR3 => Inst_UControl_state_FSM_FFd1_223,
      O => Inst_UControl_state_FSM_FFd4_In
    );
  Inst_UControl_state_FSM_FFd3_In : X_LUT4
    generic map(
      INIT => X"4CEC"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd5_231,
      ADR1 => Inst_UControl_state_FSM_FFd3_227,
      ADR2 => Inst_UControl_state_FSM_FFd4_229,
      ADR3 => N21,
      O => Inst_UControl_state_FSM_FFd3_In_228
    );
  Inst_Counter_Mcount_temp_lut_0_INV_0 : X_INV
    port map (
      I => Inst_Counter_temp(0),
      O => Inst_Counter_Mcount_temp_lut(0)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_lut_0_INV_0 : X_INV
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador(0),
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_lut(0)
    );
  Inst_UControl_rst_n_inv1_INV_0 : X_INV
    port map (
      I => Inst_Interfaz_rst_n_207,
      O => Inst_UControl_rst_n_inv
    );
  Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1_In1_INV_0 : X_INV
    port map (
      I => Inst_Interfaz_rotatory_press_205,
      O => Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1_In
    );
  Inst_Interfaz_Inst_pb3_state_FSM_FFd1_In1_INV_0 : X_INV
    port map (
      I => Inst_Interfaz_pb3_194,
      O => Inst_Interfaz_Inst_pb3_state_FSM_FFd1_In
    );
  Inst_Interfaz_Inst_pb2_state_FSM_FFd1_In1_INV_0 : X_INV
    port map (
      I => Inst_Interfaz_pb2_193,
      O => Inst_Interfaz_Inst_pb2_state_FSM_FFd1_In
    );
  Inst_Interfaz_Inst_pb1_state_FSM_FFd1_In1_INV_0 : X_INV
    port map (
      I => Inst_Interfaz_pb1_192,
      O => Inst_Interfaz_Inst_pb1_state_FSM_FFd1_In
    );
  Inst_Interfaz_Inst_pb0_state_FSM_FFd1_In1_INV_0 : X_INV
    port map (
      I => Inst_Interfaz_pb0_191,
      O => Inst_Interfaz_Inst_pb0_state_FSM_FFd1_In
    );
  Inst_UControl_state_FSM_Out51_INV_0 : X_INV
    port map (
      I => Inst_UControl_state_FSM_FFd5_231,
      O => Inst_UControl_mux0005
    );
  Inst_LEDS_led_2_mux00011_INV_0 : X_INV
    port map (
      I => Inst_Interfaz_rotary_left_199,
      O => Inst_LEDS_led_2_mux0001
    );
  leds_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Mshreg_leds_out_0,
      O => leds_out_0_292,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  leds_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Mshreg_leds_out_1,
      O => leds_out_1_293,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  leds_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Mshreg_leds_out_4,
      O => leds_out_4_296,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  leds_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Mshreg_leds_out_5,
      O => leds_out_5_297,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  leds_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Mshreg_leds_out_6,
      O => leds_out_6_298,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  leds_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Mshreg_leds_out_7,
      O => leds_out_7_299,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  Inst_Interfaz_rotary_in_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Inst_Interfaz_Mshreg_rotary_in_1,
      O => Inst_Interfaz_rotary_in(1),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  Inst_Interfaz_rotary_in_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk640,
      I => Inst_Interfaz_Mshreg_rotary_in_0,
      O => Inst_Interfaz_rotary_in(0),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  Inst_UControl_state_FSM_Out2_SW0_LUT2_L_BUF : X_BUF
    port map (
      I => Inst_UControl_state_FSM_Out2_SW0_O,
      O => N10
    );
  Inst_UControl_state_FSM_Out2_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd2_225,
      ADR1 => Inst_UControl_state_FSM_FFd1_223,
      O => Inst_UControl_state_FSM_Out2_SW0_O
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000011_LUT4_D_BUF : X_BUF
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000011_154,
      O => N23
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000011 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(1),
      ADR1 => Inst_Interfaz_Inst_divDEBOUNCER_contador(0),
      ADR2 => Inst_Interfaz_Inst_divDEBOUNCER_contador(2),
      ADR3 => Inst_Interfaz_Inst_divDEBOUNCER_contador(3),
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000011_154
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000016_LUT4_D_BUF : X_BUF
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000016_155,
      O => N24
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000016 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(8),
      ADR1 => Inst_Interfaz_Inst_divDEBOUNCER_contador(9),
      ADR2 => Inst_Interfaz_Inst_divDEBOUNCER_contador(10),
      ADR3 => Inst_Interfaz_Inst_divDEBOUNCER_contador(11),
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000016_155
    );
  Inst_UControl_state_FSM_FFd2_In_SW2_LUT2_L_BUF : X_BUF
    port map (
      I => Inst_UControl_state_FSM_FFd2_In_SW2_O,
      O => N19
    );
  Inst_UControl_state_FSM_FFd2_In_SW2 : X_LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd3_227,
      ADR1 => Inst_Counter_tic_114,
      O => Inst_UControl_state_FSM_FFd2_In_SW2_O
    );
  Inst_UControl_state_FSM_FFd3_In_SW1_LUT4_L_BUF : X_BUF
    port map (
      I => Inst_UControl_state_FSM_FFd3_In_SW1_O,
      O => N21
    );
  Inst_UControl_state_FSM_FFd3_In_SW1 : X_LUT4
    generic map(
      INIT => X"9D99"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd3_227,
      ADR1 => Inst_Counter_tic_114,
      ADR2 => Inst_UControl_state_FSM_FFd2_225,
      ADR3 => Inst_UControl_state_FSM_FFd1_223,
      O => Inst_UControl_state_FSM_FFd3_In_SW1_O
    );
  modo_in_PULLUP : X_PU
    port map (
      O => NlwRenamedSig_IO_modo_in
    );
  pb_in_0_PULLDOWN : X_PD
    port map (
      O => NlwRenamedSig_IO_pb_in(0)
    );
  pb_in_1_PULLDOWN : X_PD
    port map (
      O => NlwRenamedSig_IO_pb_in(1)
    );
  pb_in_2_PULLDOWN : X_PD
    port map (
      O => NlwRenamedSig_IO_pb_in(2)
    );
  pb_in_3_PULLDOWN : X_PD
    port map (
      O => NlwRenamedSig_IO_pb_in(3)
    );
  rot_in_0_PULLUP : X_PU
    port map (
      O => NlwRenamedSig_IO_rot_in(0)
    );
  rot_in_1_PULLUP : X_PU
    port map (
      O => NlwRenamedSig_IO_rot_in(1)
    );
  rot_press_in_PULLDOWN : X_PD
    port map (
      O => NlwRenamedSig_IO_rot_press_in
    );
  Mshreg_leds_out_0_VCC : X_ONE
    port map (
      O => Mshreg_leds_out_0_CE
    );
  Mshreg_leds_out_0_SRL16E : X_SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      D => modo_int_302,
      CE => Mshreg_leds_out_0_CE,
      CLK => clk640,
      A3 => lcd_rw_out_OBUF_283,
      A2 => lcd_rw_out_OBUF_283,
      A1 => lcd_rw_out_OBUF_283,
      A0 => N2,
      Q => Mshreg_leds_out_0,
      Q15 => NLW_Mshreg_leds_out_0_SRL16E_Q15_UNCONNECTED
    );
  Mshreg_leds_out_1_VCC : X_ONE
    port map (
      O => Mshreg_leds_out_1_CE
    );
  Mshreg_leds_out_1_SRL16E : X_SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      D => Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd2_175,
      CE => Mshreg_leds_out_1_CE,
      CLK => clk640,
      A3 => lcd_rw_out_OBUF_283,
      A2 => lcd_rw_out_OBUF_283,
      A1 => lcd_rw_out_OBUF_283,
      A0 => N2,
      Q => Mshreg_leds_out_1,
      Q15 => NLW_Mshreg_leds_out_1_SRL16E_Q15_UNCONNECTED
    );
  Mshreg_leds_out_4_VCC : X_ONE
    port map (
      O => Mshreg_leds_out_4_CE
    );
  Mshreg_leds_out_4_SRL16E : X_SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      D => Inst_Interfaz_Inst_pb0_state_FSM_FFd2_159,
      CE => Mshreg_leds_out_4_CE,
      CLK => clk640,
      A3 => lcd_rw_out_OBUF_283,
      A2 => lcd_rw_out_OBUF_283,
      A1 => lcd_rw_out_OBUF_283,
      A0 => N2,
      Q => Mshreg_leds_out_4,
      Q15 => NLW_Mshreg_leds_out_4_SRL16E_Q15_UNCONNECTED
    );
  Mshreg_leds_out_5_VCC : X_ONE
    port map (
      O => Mshreg_leds_out_5_CE
    );
  Mshreg_leds_out_5_SRL16E : X_SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      D => Inst_Interfaz_Inst_pb1_state_FSM_FFd2_163,
      CE => Mshreg_leds_out_5_CE,
      CLK => clk640,
      A3 => lcd_rw_out_OBUF_283,
      A2 => lcd_rw_out_OBUF_283,
      A1 => lcd_rw_out_OBUF_283,
      A0 => N2,
      Q => Mshreg_leds_out_5,
      Q15 => NLW_Mshreg_leds_out_5_SRL16E_Q15_UNCONNECTED
    );
  Mshreg_leds_out_6_VCC : X_ONE
    port map (
      O => Mshreg_leds_out_6_CE
    );
  Mshreg_leds_out_6_SRL16E : X_SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      D => Inst_Interfaz_Inst_pb2_state_FSM_FFd2_167,
      CE => Mshreg_leds_out_6_CE,
      CLK => clk640,
      A3 => lcd_rw_out_OBUF_283,
      A2 => lcd_rw_out_OBUF_283,
      A1 => lcd_rw_out_OBUF_283,
      A0 => N2,
      Q => Mshreg_leds_out_6,
      Q15 => NLW_Mshreg_leds_out_6_SRL16E_Q15_UNCONNECTED
    );
  Mshreg_leds_out_7_VCC : X_ONE
    port map (
      O => Mshreg_leds_out_7_CE
    );
  Mshreg_leds_out_7_SRL16E : X_SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      D => Inst_Interfaz_Inst_pb3_state_FSM_FFd2_171,
      CE => Mshreg_leds_out_7_CE,
      CLK => clk640,
      A3 => lcd_rw_out_OBUF_283,
      A2 => lcd_rw_out_OBUF_283,
      A1 => lcd_rw_out_OBUF_283,
      A0 => N2,
      Q => Mshreg_leds_out_7,
      Q15 => NLW_Mshreg_leds_out_7_SRL16E_Q15_UNCONNECTED
    );
  Inst_Interfaz_Mshreg_rotary_in_1_VCC : X_ONE
    port map (
      O => Inst_Interfaz_Mshreg_rotary_in_1_CE
    );
  Inst_Interfaz_Mshreg_rotary_in_1_SRL16E : X_SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      D => rot(1),
      CE => Inst_Interfaz_Mshreg_rotary_in_1_CE,
      CLK => clk640,
      A3 => lcd_rw_out_OBUF_283,
      A2 => lcd_rw_out_OBUF_283,
      A1 => lcd_rw_out_OBUF_283,
      A0 => lcd_rw_out_OBUF_283,
      Q => Inst_Interfaz_Mshreg_rotary_in_1,
      Q15 => NLW_Inst_Interfaz_Mshreg_rotary_in_1_SRL16E_Q15_UNCONNECTED
    );
  Inst_Interfaz_Mshreg_rotary_in_0_VCC : X_ONE
    port map (
      O => Inst_Interfaz_Mshreg_rotary_in_0_CE
    );
  Inst_Interfaz_Mshreg_rotary_in_0_SRL16E : X_SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      D => rot(0),
      CE => Inst_Interfaz_Mshreg_rotary_in_0_CE,
      CLK => clk640,
      A3 => lcd_rw_out_OBUF_283,
      A2 => lcd_rw_out_OBUF_283,
      A1 => lcd_rw_out_OBUF_283,
      A0 => lcd_rw_out_OBUF_283,
      Q => Inst_Interfaz_Mshreg_rotary_in_0,
      Q15 => NLW_Inst_Interfaz_Mshreg_rotary_in_0_SRL16E_Q15_UNCONNECTED
    );
  lcd_data_out_0_OBUF : X_OBUF
    port map (
      I => Inst_UControl_LCD_DB_0_Q,
      O => lcd_data_out(0)
    );
  lcd_data_out_1_OBUF : X_OBUF
    port map (
      I => Inst_UControl_LCD_DB_1_Q,
      O => lcd_data_out(1)
    );
  lcd_data_out_2_OBUF : X_OBUF
    port map (
      I => Inst_UControl_LCD_DB_2_Q,
      O => lcd_data_out(2)
    );
  lcd_data_out_3_OBUF : X_OBUF
    port map (
      I => Inst_UControl_LCD_DB_3_Q,
      O => lcd_data_out(3)
    );
  lcd_data_out_4_OBUF : X_OBUF
    port map (
      I => Inst_UControl_LCD_DB_5_Q,
      O => lcd_data_out(4)
    );
  lcd_data_out_5_OBUF : X_OBUF
    port map (
      I => Inst_UControl_LCD_DB_5_Q,
      O => lcd_data_out(5)
    );
  lcd_data_out_6_OBUF : X_OBUF
    port map (
      I => Inst_UControl_LCD_DB_7_Q,
      O => lcd_data_out(6)
    );
  lcd_data_out_7_OBUF : X_OBUF
    port map (
      I => Inst_UControl_LCD_DB_7_Q,
      O => lcd_data_out(7)
    );
  lcd_e_out_OBUF : X_OBUF
    port map (
      I => Inst_UControl_LCD_E_217,
      O => lcd_e_out
    );
  lcd_rs_out_OBUF : X_OBUF
    port map (
      I => Inst_UControl_LCD_RS_218,
      O => lcd_rs_out
    );
  lcd_rw_out_OBUF : X_OBUF
    port map (
      I => lcd_rw_out_OBUF_283,
      O => lcd_rw_out
    );
  leds_out_0_OBUF : X_OBUF
    port map (
      I => leds_out_0_292,
      O => leds_out(0)
    );
  leds_out_1_OBUF : X_OBUF
    port map (
      I => leds_out_1_293,
      O => leds_out(1)
    );
  leds_out_2_OBUF : X_OBUF
    port map (
      I => leds_out_2_294,
      O => leds_out(2)
    );
  leds_out_3_OBUF : X_OBUF
    port map (
      I => leds_out_3_295,
      O => leds_out(3)
    );
  leds_out_4_OBUF : X_OBUF
    port map (
      I => leds_out_4_296,
      O => leds_out(4)
    );
  leds_out_5_OBUF : X_OBUF
    port map (
      I => leds_out_5_297,
      O => leds_out(5)
    );
  leds_out_6_OBUF : X_OBUF
    port map (
      I => leds_out_6_298,
      O => leds_out(6)
    );
  leds_out_7_OBUF : X_OBUF
    port map (
      I => leds_out_7_299,
      O => leds_out(7)
    );
  NlwBlock_ModuloLCD_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_ModuloLCD_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

