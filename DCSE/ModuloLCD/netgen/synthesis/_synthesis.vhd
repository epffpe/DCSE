--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.33
--  \   \         Application: netgen
--  /   /         Filename: _synthesis.vhd
-- /___/   /\     Timestamp: Fri Feb 06 01:36:40 2009
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm ModuloLCD -w -dir netgen/synthesis -ofmt vhdl -sim ModuloLCD.ngc _synthesis.vhd 
-- Device	: xc3s700a-4-fg484
-- Input file	: ModuloLCD.ngc
-- Output file	: D:\Desings\Xilinx\ModuloLCD\netgen\synthesis\_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: ModuloLCD
-- Xilinx	: C:\Xilinx91i
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

entity ModuloLCD is
  port (
    LCD_E : out STD_LOGIC; 
    LCD_RS : out STD_LOGIC; 
    LCD_RW : out STD_LOGIC; 
    clk50 : in STD_LOGIC := 'X'; 
    modo_in : in STD_LOGIC := 'X'; 
    LCD_DB : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    rot : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
    pb_in : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end ModuloLCD;

architecture Structure of ModuloLCD is
  signal Inst_Control_E_0 : STD_LOGIC; 
  signal Inst_Control_RS_1 : STD_LOGIC; 
  signal LCD_RW_OBUF_2 : STD_LOGIC; 
  signal Inst_Control_clr_3 : STD_LOGIC; 
  signal clkdv : STD_LOGIC; 
  signal tic : STD_LOGIC; 
  signal Inst_Control_DB_7_Q : STD_LOGIC; 
  signal Inst_Control_DB_5_Q : STD_LOGIC; 
  signal Inst_Control_DB_3_Q : STD_LOGIC; 
  signal Inst_Control_DB_2_Q : STD_LOGIC; 
  signal Inst_Control_DB_1_Q : STD_LOGIC; 
  signal Inst_Control_DB_0_Q : STD_LOGIC; 
  signal pb_in_3_IBUF_4 : STD_LOGIC; 
  signal pb_in_1_IBUF_5 : STD_LOGIC; 
  signal pb_in_0_IBUF_6 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_este_state_FFd2_7 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_Norte_state_FFd2_8 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal Inst_Control_rst_n_inv : STD_LOGIC; 
  signal Inst_Control_state_index0009 : STD_LOGIC; 
  signal Inst_Control_state_cmp_eq0016 : STD_LOGIC; 
  signal Inst_Control_state_index0008 : STD_LOGIC; 
  signal Inst_Control_state_index0007 : STD_LOGIC; 
  signal Inst_Control_state_index0006 : STD_LOGIC; 
  signal Inst_Control_state_index0005 : STD_LOGIC; 
  signal Inst_Control_state_index0004 : STD_LOGIC; 
  signal Inst_Control_state_index0002 : STD_LOGIC; 
  signal Inst_Control_state_index0000 : STD_LOGIC; 
  signal Inst_Control_mux0003 : STD_LOGIC; 
  signal Inst_Control_mux0001 : STD_LOGIC; 
  signal Inst_Clock_CLKDV_BUF : STD_LOGIC; 
  signal Inst_Clock_CLK0_BUF : STD_LOGIC; 
  signal Inst_Clock_CLK0_OUT : STD_LOGIC; 
  signal Inst_Clock_CLKIN_IBUFG_OUT : STD_LOGIC; 
  signal Inst_Interfaz_Inst_div_debouncer_clk10ms_not0001 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_div_debouncer_clk10ms_9 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_Norte_state_FFd2_In : STD_LOGIC; 
  signal Inst_Interfaz_Inst_Norte_state_FFd1_In : STD_LOGIC; 
  signal Inst_Interfaz_Inst_Norte_state_FFd1_10 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_este_state_FFd2_In : STD_LOGIC; 
  signal Inst_Interfaz_Inst_este_state_FFd1_In : STD_LOGIC; 
  signal Inst_Interfaz_Inst_este_state_FFd1_11 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_Modo_state_Rst_inv : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal Result_8_1 : STD_LOGIC; 
  signal Result_9_1 : STD_LOGIC; 
  signal Result_10_1 : STD_LOGIC; 
  signal Result_11_1 : STD_LOGIC; 
  signal Result_12_1 : STD_LOGIC; 
  signal Result_13_1 : STD_LOGIC; 
  signal Result_14_1 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal Inst_Control_state_FFd5_In : STD_LOGIC; 
  signal Inst_Control_state_FFd4_In : STD_LOGIC; 
  signal Inst_Control_state_FFd3_In : STD_LOGIC; 
  signal Inst_Control_state_FFd2_In_12 : STD_LOGIC; 
  signal Inst_Control_state_FFd1_In_13 : STD_LOGIC; 
  signal Inst_Control_state_FFd5_14 : STD_LOGIC; 
  signal Inst_Control_state_FFd4_15 : STD_LOGIC; 
  signal Inst_Control_state_FFd3_16 : STD_LOGIC; 
  signal Inst_Control_state_FFd2_17 : STD_LOGIC; 
  signal Inst_Control_state_FFd1_18 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000_map3 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000_map10 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000_map18 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000_map25 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_1_rt_19 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_2_rt_20 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_3_rt_21 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_4_rt_22 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_5_rt_23 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_6_rt_24 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_7_rt_25 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_8_rt_26 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_9_rt_27 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_10_rt_28 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_11_rt_29 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_12_rt_30 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_cy_13_rt_31 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_1_rt_32 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_2_rt_33 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_3_rt_34 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_4_rt_35 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_5_rt_36 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_6_rt_37 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_7_rt_38 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_8_rt_39 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_9_rt_40 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_10_rt_41 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_11_rt_42 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_12_rt_43 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_13_rt_44 : STD_LOGIC; 
  signal Inst_Counter_Mcount_temp_xor_14_rt_45 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_div_debouncer_Mcount_contador_xor_14_rt_46 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal NLW_Inst_Clock_DCM_SP_INST_CLK90_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock_DCM_SP_INST_CLK180_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock_DCM_SP_INST_CLK270_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock_DCM_SP_INST_CLK2X_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock_DCM_SP_INST_CLK2X180_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock_DCM_SP_INST_CLKFX_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock_DCM_SP_INST_CLKFX180_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock_DCM_SP_INST_LOCKED_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock_DCM_SP_INST_PSDONE_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock_DCM_SP_INST_STATUS_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock_DCM_SP_INST_STATUS_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock_DCM_SP_INST_STATUS_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock_DCM_SP_INST_STATUS_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock_DCM_SP_INST_STATUS_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock_DCM_SP_INST_STATUS_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock_DCM_SP_INST_STATUS_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Clock_DCM_SP_INST_STATUS_0_UNCONNECTED : STD_LOGIC; 
  signal Inst_Control_tiempo : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Inst_Counter_temp : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal Inst_Interfaz_Inst_div_debouncer_contador : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal Inst_Counter_Mcount_temp_cy : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy : STD_LOGIC_VECTOR ( 13 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => LCD_RW_OBUF_2
    );
  XST_VCC : VCC
    port map (
      P => N2
    );
  Inst_Control_E : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_rst_n_inv,
      D => Inst_Control_mux0003,
      Q => Inst_Control_E_0
    );
  Inst_Control_tiempo_1 : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_rst_n_inv,
      D => Inst_Control_state_index0008,
      Q => Inst_Control_tiempo(1)
    );
  Inst_Control_tiempo_0 : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_rst_n_inv,
      D => Inst_Control_state_index0009,
      Q => Inst_Control_tiempo(0)
    );
  Inst_Control_RS : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_rst_n_inv,
      D => Inst_Control_state_cmp_eq0016,
      Q => Inst_Control_RS_1
    );
  Inst_Control_DB_7 : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_rst_n_inv,
      D => Inst_Control_state_index0000,
      Q => Inst_Control_DB_7_Q
    );
  Inst_Control_DB_5 : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_rst_n_inv,
      D => Inst_Control_state_index0002,
      Q => Inst_Control_DB_5_Q
    );
  Inst_Control_DB_3 : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_rst_n_inv,
      D => Inst_Control_state_index0004,
      Q => Inst_Control_DB_3_Q
    );
  Inst_Control_DB_2 : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_rst_n_inv,
      D => Inst_Control_state_index0005,
      Q => Inst_Control_DB_2_Q
    );
  Inst_Control_DB_1 : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_rst_n_inv,
      D => Inst_Control_state_index0006,
      Q => Inst_Control_DB_1_Q
    );
  Inst_Control_DB_0 : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_rst_n_inv,
      D => Inst_Control_state_index0007,
      Q => Inst_Control_DB_0_Q
    );
  Inst_Control_clr : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_rst_n_inv,
      D => Inst_Control_mux0001,
      Q => Inst_Control_clr_3
    );
  Inst_Interfaz_Inst_div_debouncer_clk10ms : FDR
    port map (
      C => clkdv,
      D => N2,
      R => Inst_Interfaz_Inst_div_debouncer_clk10ms_not0001,
      Q => Inst_Interfaz_Inst_div_debouncer_clk10ms_9
    );
  Inst_Interfaz_Inst_Norte_state_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_Interfaz_Inst_div_debouncer_clk10ms_9,
      CLR => Inst_Interfaz_Inst_Modo_state_Rst_inv,
      D => Inst_Interfaz_Inst_Norte_state_FFd2_In,
      Q => Inst_Interfaz_Inst_Norte_state_FFd2_8
    );
  Inst_Interfaz_Inst_Norte_state_FFd1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => Inst_Interfaz_Inst_div_debouncer_clk10ms_9,
      D => Inst_Interfaz_Inst_Norte_state_FFd1_In,
      PRE => Inst_Interfaz_Inst_Modo_state_Rst_inv,
      Q => Inst_Interfaz_Inst_Norte_state_FFd1_10
    );
  Inst_Interfaz_Inst_este_state_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Inst_Interfaz_Inst_div_debouncer_clk10ms_9,
      CLR => Inst_Interfaz_Inst_Modo_state_Rst_inv,
      D => Inst_Interfaz_Inst_este_state_FFd2_In,
      Q => Inst_Interfaz_Inst_este_state_FFd2_7
    );
  Inst_Interfaz_Inst_este_state_FFd1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => Inst_Interfaz_Inst_div_debouncer_clk10ms_9,
      D => Inst_Interfaz_Inst_este_state_FFd1_In,
      PRE => Inst_Interfaz_Inst_Modo_state_Rst_inv,
      Q => Inst_Interfaz_Inst_este_state_FFd1_11
    );
  Inst_Counter_temp_0 : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_clr_3,
      D => Result(0),
      Q => Inst_Counter_temp(0)
    );
  Inst_Counter_temp_1 : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_clr_3,
      D => Result(1),
      Q => Inst_Counter_temp(1)
    );
  Inst_Counter_temp_2 : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_clr_3,
      D => Result(2),
      Q => Inst_Counter_temp(2)
    );
  Inst_Counter_temp_3 : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_clr_3,
      D => Result(3),
      Q => Inst_Counter_temp(3)
    );
  Inst_Counter_temp_4 : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_clr_3,
      D => Result(4),
      Q => Inst_Counter_temp(4)
    );
  Inst_Counter_temp_5 : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_clr_3,
      D => Result(5),
      Q => Inst_Counter_temp(5)
    );
  Inst_Counter_temp_6 : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_clr_3,
      D => Result(6),
      Q => Inst_Counter_temp(6)
    );
  Inst_Counter_temp_7 : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_clr_3,
      D => Result(7),
      Q => Inst_Counter_temp(7)
    );
  Inst_Counter_temp_8 : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_clr_3,
      D => Result(8),
      Q => Inst_Counter_temp(8)
    );
  Inst_Counter_temp_9 : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_clr_3,
      D => Result(9),
      Q => Inst_Counter_temp(9)
    );
  Inst_Counter_temp_10 : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_clr_3,
      D => Result(10),
      Q => Inst_Counter_temp(10)
    );
  Inst_Counter_temp_11 : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_clr_3,
      D => Result(11),
      Q => Inst_Counter_temp(11)
    );
  Inst_Counter_temp_12 : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_clr_3,
      D => Result(12),
      Q => Inst_Counter_temp(12)
    );
  Inst_Counter_temp_13 : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_clr_3,
      D => Result(13),
      Q => Inst_Counter_temp(13)
    );
  Inst_Counter_temp_14 : FDC
    port map (
      C => clkdv,
      CLR => Inst_Control_clr_3,
      D => Result(14),
      Q => Inst_Counter_temp(14)
    );
  Inst_Interfaz_Inst_div_debouncer_contador_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkdv,
      D => Result_0_1,
      R => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000,
      Q => Inst_Interfaz_Inst_div_debouncer_contador(0)
    );
  Inst_Interfaz_Inst_div_debouncer_contador_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkdv,
      D => Result_1_1,
      R => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000,
      Q => Inst_Interfaz_Inst_div_debouncer_contador(1)
    );
  Inst_Interfaz_Inst_div_debouncer_contador_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkdv,
      D => Result_2_1,
      R => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000,
      Q => Inst_Interfaz_Inst_div_debouncer_contador(2)
    );
  Inst_Interfaz_Inst_div_debouncer_contador_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkdv,
      D => Result_3_1,
      R => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000,
      Q => Inst_Interfaz_Inst_div_debouncer_contador(3)
    );
  Inst_Interfaz_Inst_div_debouncer_contador_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkdv,
      D => Result_4_1,
      R => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000,
      Q => Inst_Interfaz_Inst_div_debouncer_contador(4)
    );
  Inst_Interfaz_Inst_div_debouncer_contador_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkdv,
      D => Result_5_1,
      R => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000,
      Q => Inst_Interfaz_Inst_div_debouncer_contador(5)
    );
  Inst_Interfaz_Inst_div_debouncer_contador_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkdv,
      D => Result_6_1,
      R => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000,
      Q => Inst_Interfaz_Inst_div_debouncer_contador(6)
    );
  Inst_Interfaz_Inst_div_debouncer_contador_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkdv,
      D => Result_7_1,
      R => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000,
      Q => Inst_Interfaz_Inst_div_debouncer_contador(7)
    );
  Inst_Interfaz_Inst_div_debouncer_contador_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkdv,
      D => Result_8_1,
      R => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000,
      Q => Inst_Interfaz_Inst_div_debouncer_contador(8)
    );
  Inst_Interfaz_Inst_div_debouncer_contador_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkdv,
      D => Result_9_1,
      R => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000,
      Q => Inst_Interfaz_Inst_div_debouncer_contador(9)
    );
  Inst_Interfaz_Inst_div_debouncer_contador_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkdv,
      D => Result_10_1,
      R => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000,
      Q => Inst_Interfaz_Inst_div_debouncer_contador(10)
    );
  Inst_Interfaz_Inst_div_debouncer_contador_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkdv,
      D => Result_11_1,
      R => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000,
      Q => Inst_Interfaz_Inst_div_debouncer_contador(11)
    );
  Inst_Interfaz_Inst_div_debouncer_contador_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkdv,
      D => Result_12_1,
      R => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000,
      Q => Inst_Interfaz_Inst_div_debouncer_contador(12)
    );
  Inst_Interfaz_Inst_div_debouncer_contador_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkdv,
      D => Result_13_1,
      R => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000,
      Q => Inst_Interfaz_Inst_div_debouncer_contador(13)
    );
  Inst_Interfaz_Inst_div_debouncer_contador_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkdv,
      D => Result_14_1,
      R => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000,
      Q => Inst_Interfaz_Inst_div_debouncer_contador(14)
    );
  Inst_Counter_Mmux_tic_2_f5 : MUXF5
    port map (
      I0 => N31,
      I1 => N21,
      S => Inst_Control_tiempo(1),
      O => tic
    );
  Inst_Counter_Mmux_tic_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Inst_Control_tiempo(0),
      I1 => Inst_Counter_temp(5),
      I2 => Inst_Counter_temp(7),
      O => N31
    );
  Inst_Counter_Mmux_tic_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Inst_Control_tiempo(0),
      I1 => Inst_Counter_temp(12),
      I2 => Inst_Counter_temp(14),
      O => N21
    );
  Inst_Counter_Mcount_temp_cy_0_Q : MUXCY
    port map (
      CI => LCD_RW_OBUF_2,
      DI => N2,
      S => Result(0),
      O => Inst_Counter_Mcount_temp_cy(0)
    );
  Inst_Counter_Mcount_temp_cy_1_Q : MUXCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(0),
      DI => LCD_RW_OBUF_2,
      S => Inst_Counter_Mcount_temp_cy_1_rt_19,
      O => Inst_Counter_Mcount_temp_cy(1)
    );
  Inst_Counter_Mcount_temp_xor_1_Q : XORCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(0),
      LI => Inst_Counter_Mcount_temp_cy_1_rt_19,
      O => Result(1)
    );
  Inst_Counter_Mcount_temp_cy_2_Q : MUXCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(1),
      DI => LCD_RW_OBUF_2,
      S => Inst_Counter_Mcount_temp_cy_2_rt_20,
      O => Inst_Counter_Mcount_temp_cy(2)
    );
  Inst_Counter_Mcount_temp_xor_2_Q : XORCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(1),
      LI => Inst_Counter_Mcount_temp_cy_2_rt_20,
      O => Result(2)
    );
  Inst_Counter_Mcount_temp_cy_3_Q : MUXCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(2),
      DI => LCD_RW_OBUF_2,
      S => Inst_Counter_Mcount_temp_cy_3_rt_21,
      O => Inst_Counter_Mcount_temp_cy(3)
    );
  Inst_Counter_Mcount_temp_xor_3_Q : XORCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(2),
      LI => Inst_Counter_Mcount_temp_cy_3_rt_21,
      O => Result(3)
    );
  Inst_Counter_Mcount_temp_cy_4_Q : MUXCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(3),
      DI => LCD_RW_OBUF_2,
      S => Inst_Counter_Mcount_temp_cy_4_rt_22,
      O => Inst_Counter_Mcount_temp_cy(4)
    );
  Inst_Counter_Mcount_temp_xor_4_Q : XORCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(3),
      LI => Inst_Counter_Mcount_temp_cy_4_rt_22,
      O => Result(4)
    );
  Inst_Counter_Mcount_temp_cy_5_Q : MUXCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(4),
      DI => LCD_RW_OBUF_2,
      S => Inst_Counter_Mcount_temp_cy_5_rt_23,
      O => Inst_Counter_Mcount_temp_cy(5)
    );
  Inst_Counter_Mcount_temp_xor_5_Q : XORCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(4),
      LI => Inst_Counter_Mcount_temp_cy_5_rt_23,
      O => Result(5)
    );
  Inst_Counter_Mcount_temp_cy_6_Q : MUXCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(5),
      DI => LCD_RW_OBUF_2,
      S => Inst_Counter_Mcount_temp_cy_6_rt_24,
      O => Inst_Counter_Mcount_temp_cy(6)
    );
  Inst_Counter_Mcount_temp_xor_6_Q : XORCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(5),
      LI => Inst_Counter_Mcount_temp_cy_6_rt_24,
      O => Result(6)
    );
  Inst_Counter_Mcount_temp_cy_7_Q : MUXCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(6),
      DI => LCD_RW_OBUF_2,
      S => Inst_Counter_Mcount_temp_cy_7_rt_25,
      O => Inst_Counter_Mcount_temp_cy(7)
    );
  Inst_Counter_Mcount_temp_xor_7_Q : XORCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(6),
      LI => Inst_Counter_Mcount_temp_cy_7_rt_25,
      O => Result(7)
    );
  Inst_Counter_Mcount_temp_cy_8_Q : MUXCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(7),
      DI => LCD_RW_OBUF_2,
      S => Inst_Counter_Mcount_temp_cy_8_rt_26,
      O => Inst_Counter_Mcount_temp_cy(8)
    );
  Inst_Counter_Mcount_temp_xor_8_Q : XORCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(7),
      LI => Inst_Counter_Mcount_temp_cy_8_rt_26,
      O => Result(8)
    );
  Inst_Counter_Mcount_temp_cy_9_Q : MUXCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(8),
      DI => LCD_RW_OBUF_2,
      S => Inst_Counter_Mcount_temp_cy_9_rt_27,
      O => Inst_Counter_Mcount_temp_cy(9)
    );
  Inst_Counter_Mcount_temp_xor_9_Q : XORCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(8),
      LI => Inst_Counter_Mcount_temp_cy_9_rt_27,
      O => Result(9)
    );
  Inst_Counter_Mcount_temp_cy_10_Q : MUXCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(9),
      DI => LCD_RW_OBUF_2,
      S => Inst_Counter_Mcount_temp_cy_10_rt_28,
      O => Inst_Counter_Mcount_temp_cy(10)
    );
  Inst_Counter_Mcount_temp_xor_10_Q : XORCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(9),
      LI => Inst_Counter_Mcount_temp_cy_10_rt_28,
      O => Result(10)
    );
  Inst_Counter_Mcount_temp_cy_11_Q : MUXCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(10),
      DI => LCD_RW_OBUF_2,
      S => Inst_Counter_Mcount_temp_cy_11_rt_29,
      O => Inst_Counter_Mcount_temp_cy(11)
    );
  Inst_Counter_Mcount_temp_xor_11_Q : XORCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(10),
      LI => Inst_Counter_Mcount_temp_cy_11_rt_29,
      O => Result(11)
    );
  Inst_Counter_Mcount_temp_cy_12_Q : MUXCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(11),
      DI => LCD_RW_OBUF_2,
      S => Inst_Counter_Mcount_temp_cy_12_rt_30,
      O => Inst_Counter_Mcount_temp_cy(12)
    );
  Inst_Counter_Mcount_temp_xor_12_Q : XORCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(11),
      LI => Inst_Counter_Mcount_temp_cy_12_rt_30,
      O => Result(12)
    );
  Inst_Counter_Mcount_temp_cy_13_Q : MUXCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(12),
      DI => LCD_RW_OBUF_2,
      S => Inst_Counter_Mcount_temp_cy_13_rt_31,
      O => Inst_Counter_Mcount_temp_cy(13)
    );
  Inst_Counter_Mcount_temp_xor_13_Q : XORCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(12),
      LI => Inst_Counter_Mcount_temp_cy_13_rt_31,
      O => Result(13)
    );
  Inst_Counter_Mcount_temp_xor_14_Q : XORCY
    port map (
      CI => Inst_Counter_Mcount_temp_cy(13),
      LI => Inst_Counter_Mcount_temp_xor_14_rt_45,
      O => Result(14)
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_0_Q : MUXCY
    port map (
      CI => LCD_RW_OBUF_2,
      DI => N2,
      S => Result_0_1,
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(0)
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_1_Q : MUXCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(0),
      DI => LCD_RW_OBUF_2,
      S => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_1_rt_32,
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(1)
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_xor_1_Q : XORCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(0),
      LI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_1_rt_32,
      O => Result_1_1
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_2_Q : MUXCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(1),
      DI => LCD_RW_OBUF_2,
      S => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_2_rt_33,
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(2)
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_xor_2_Q : XORCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(1),
      LI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_2_rt_33,
      O => Result_2_1
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_3_Q : MUXCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(2),
      DI => LCD_RW_OBUF_2,
      S => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_3_rt_34,
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(3)
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_xor_3_Q : XORCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(2),
      LI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_3_rt_34,
      O => Result_3_1
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_4_Q : MUXCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(3),
      DI => LCD_RW_OBUF_2,
      S => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_4_rt_35,
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(4)
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_xor_4_Q : XORCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(3),
      LI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_4_rt_35,
      O => Result_4_1
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_5_Q : MUXCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(4),
      DI => LCD_RW_OBUF_2,
      S => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_5_rt_36,
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(5)
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_xor_5_Q : XORCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(4),
      LI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_5_rt_36,
      O => Result_5_1
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_6_Q : MUXCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(5),
      DI => LCD_RW_OBUF_2,
      S => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_6_rt_37,
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(6)
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_xor_6_Q : XORCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(5),
      LI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_6_rt_37,
      O => Result_6_1
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_7_Q : MUXCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(6),
      DI => LCD_RW_OBUF_2,
      S => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_7_rt_38,
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(7)
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_xor_7_Q : XORCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(6),
      LI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_7_rt_38,
      O => Result_7_1
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_8_Q : MUXCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(7),
      DI => LCD_RW_OBUF_2,
      S => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_8_rt_39,
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(8)
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_xor_8_Q : XORCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(7),
      LI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_8_rt_39,
      O => Result_8_1
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_9_Q : MUXCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(8),
      DI => LCD_RW_OBUF_2,
      S => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_9_rt_40,
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(9)
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_xor_9_Q : XORCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(8),
      LI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_9_rt_40,
      O => Result_9_1
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_10_Q : MUXCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(9),
      DI => LCD_RW_OBUF_2,
      S => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_10_rt_41,
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(10)
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_xor_10_Q : XORCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(9),
      LI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_10_rt_41,
      O => Result_10_1
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_11_Q : MUXCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(10),
      DI => LCD_RW_OBUF_2,
      S => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_11_rt_42,
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(11)
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_xor_11_Q : XORCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(10),
      LI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_11_rt_42,
      O => Result_11_1
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_12_Q : MUXCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(11),
      DI => LCD_RW_OBUF_2,
      S => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_12_rt_43,
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(12)
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_xor_12_Q : XORCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(11),
      LI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_12_rt_43,
      O => Result_12_1
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_13_Q : MUXCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(12),
      DI => LCD_RW_OBUF_2,
      S => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_13_rt_44,
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(13)
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_xor_13_Q : XORCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(12),
      LI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_13_rt_44,
      O => Result_13_1
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_xor_14_Q : XORCY
    port map (
      CI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy(13),
      LI => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_xor_14_rt_46,
      O => Result_14_1
    );
  Inst_Clock_DCM_SP_INST : DCM_SP
    generic map(
      CLK_FEEDBACK => "1X",
      CLKDV_DIVIDE => 16.0000,
      CLKFX_DIVIDE => 1,
      CLKFX_MULTIPLY => 4,
      CLKIN_DIVIDE_BY_2 => TRUE,
      CLKIN_PERIOD => 40.0000,
      CLKOUT_PHASE_SHIFT => "NONE",
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
      CLKIN => Inst_Clock_CLKIN_IBUFG_OUT,
      CLKFB => Inst_Clock_CLK0_OUT,
      RST => Inst_Control_rst_n_inv,
      DSSEN => LCD_RW_OBUF_2,
      PSINCDEC => LCD_RW_OBUF_2,
      PSEN => LCD_RW_OBUF_2,
      PSCLK => LCD_RW_OBUF_2,
      CLK0 => Inst_Clock_CLK0_BUF,
      CLK90 => NLW_Inst_Clock_DCM_SP_INST_CLK90_UNCONNECTED,
      CLK180 => NLW_Inst_Clock_DCM_SP_INST_CLK180_UNCONNECTED,
      CLK270 => NLW_Inst_Clock_DCM_SP_INST_CLK270_UNCONNECTED,
      CLK2X => NLW_Inst_Clock_DCM_SP_INST_CLK2X_UNCONNECTED,
      CLK2X180 => NLW_Inst_Clock_DCM_SP_INST_CLK2X180_UNCONNECTED,
      CLKDV => Inst_Clock_CLKDV_BUF,
      CLKFX => NLW_Inst_Clock_DCM_SP_INST_CLKFX_UNCONNECTED,
      CLKFX180 => NLW_Inst_Clock_DCM_SP_INST_CLKFX180_UNCONNECTED,
      LOCKED => NLW_Inst_Clock_DCM_SP_INST_LOCKED_UNCONNECTED,
      PSDONE => NLW_Inst_Clock_DCM_SP_INST_PSDONE_UNCONNECTED,
      STATUS(7) => NLW_Inst_Clock_DCM_SP_INST_STATUS_7_UNCONNECTED,
      STATUS(6) => NLW_Inst_Clock_DCM_SP_INST_STATUS_6_UNCONNECTED,
      STATUS(5) => NLW_Inst_Clock_DCM_SP_INST_STATUS_5_UNCONNECTED,
      STATUS(4) => NLW_Inst_Clock_DCM_SP_INST_STATUS_4_UNCONNECTED,
      STATUS(3) => NLW_Inst_Clock_DCM_SP_INST_STATUS_3_UNCONNECTED,
      STATUS(2) => NLW_Inst_Clock_DCM_SP_INST_STATUS_2_UNCONNECTED,
      STATUS(1) => NLW_Inst_Clock_DCM_SP_INST_STATUS_1_UNCONNECTED,
      STATUS(0) => NLW_Inst_Clock_DCM_SP_INST_STATUS_0_UNCONNECTED
    );
  Inst_Clock_CLK0_BUFG_INST : BUFG
    port map (
      I => Inst_Clock_CLK0_BUF,
      O => Inst_Clock_CLK0_OUT
    );
  Inst_Clock_CLKIN_IBUFG_INST : IBUFG
    port map (
      I => clk50,
      O => Inst_Clock_CLKIN_IBUFG_OUT
    );
  Inst_Clock_CLKDV_BUFG_INST : BUFG
    port map (
      I => Inst_Clock_CLKDV_BUF,
      O => clkdv
    );
  Inst_Control_state_FFd5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkdv,
      CLR => Inst_Control_rst_n_inv,
      D => Inst_Control_state_FFd5_In,
      Q => Inst_Control_state_FFd5_14
    );
  Inst_Control_state_FFd4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkdv,
      CLR => Inst_Control_rst_n_inv,
      D => Inst_Control_state_FFd4_In,
      Q => Inst_Control_state_FFd4_15
    );
  Inst_Control_state_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkdv,
      CLR => Inst_Control_rst_n_inv,
      D => Inst_Control_state_FFd2_In_12,
      Q => Inst_Control_state_FFd2_17
    );
  Inst_Control_state_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkdv,
      CLR => Inst_Control_rst_n_inv,
      D => Inst_Control_state_FFd1_In_13,
      Q => Inst_Control_state_FFd1_18
    );
  Inst_Control_state_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkdv,
      CLR => Inst_Control_rst_n_inv,
      D => Inst_Control_state_FFd3_In,
      Q => Inst_Control_state_FFd3_16
    );
  Inst_Interfaz_rst1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Inst_Interfaz_Inst_este_state_FFd2_7,
      I1 => Inst_Interfaz_Inst_Norte_state_FFd2_8,
      O => Inst_Control_rst_n_inv
    );
  Inst_Interfaz_Inst_Modo_state_Rst_inv1 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => pb_in_1_IBUF_5,
      I1 => pb_in_0_IBUF_6,
      O => Inst_Interfaz_Inst_Modo_state_Rst_inv
    );
  Inst_Interfaz_Inst_este_state_FFd2_In1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => pb_in_1_IBUF_5,
      I1 => Inst_Interfaz_Inst_este_state_FFd1_11,
      O => Inst_Interfaz_Inst_este_state_FFd2_In
    );
  Inst_Interfaz_Inst_Norte_state_FFd2_In1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => pb_in_3_IBUF_4,
      I1 => Inst_Interfaz_Inst_Norte_state_FFd1_10,
      O => Inst_Interfaz_Inst_Norte_state_FFd2_In
    );
  Inst_Control_state_Out61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Control_state_FFd2_17,
      I1 => Inst_Control_state_FFd3_16,
      O => Inst_Control_state_index0005
    );
  Inst_Control_state_Out01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Control_state_FFd1_18,
      I1 => Inst_Control_state_FFd5_14,
      O => Inst_Control_state_cmp_eq0016
    );
  Inst_Control_state_index00071 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => Inst_Control_state_FFd4_15,
      I1 => Inst_Control_state_FFd3_16,
      I2 => Inst_Control_state_FFd2_17,
      O => Inst_Control_state_index0007
    );
  Inst_Control_state_index00001 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Inst_Control_state_FFd2_17,
      I1 => Inst_Control_state_FFd3_16,
      I2 => Inst_Control_state_FFd4_15,
      O => Inst_Control_state_index0000
    );
  Inst_Control_state_Out71 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => Inst_Control_state_FFd2_17,
      I1 => Inst_Control_state_FFd3_16,
      I2 => Inst_Control_state_FFd4_15,
      O => Inst_Control_state_index0006
    );
  Inst_Control_state_Out51 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => Inst_Control_state_FFd3_16,
      I1 => Inst_Control_state_FFd4_15,
      I2 => Inst_Control_state_FFd2_17,
      O => Inst_Control_state_index0004
    );
  Inst_Control_state_index00021 : LUT4
    generic map(
      INIT => X"FF54"
    )
    port map (
      I0 => Inst_Control_state_FFd2_17,
      I1 => Inst_Control_state_FFd3_16,
      I2 => Inst_Control_state_FFd4_15,
      I3 => Inst_Control_state_FFd1_18,
      O => Inst_Control_state_index0002
    );
  Inst_Control_state_Out111 : LUT4
    generic map(
      INIT => X"1101"
    )
    port map (
      I0 => Inst_Control_state_FFd2_17,
      I1 => Inst_Control_state_FFd4_15,
      I2 => Inst_Control_state_FFd1_18,
      I3 => Inst_Control_state_FFd3_16,
      O => Inst_Control_state_index0009
    );
  Inst_Control_state_index00081 : LUT4
    generic map(
      INIT => X"1189"
    )
    port map (
      I0 => Inst_Control_state_FFd2_17,
      I1 => Inst_Control_state_FFd3_16,
      I2 => Inst_Control_state_FFd1_18,
      I3 => Inst_Control_state_FFd4_15,
      O => Inst_Control_state_index0008
    );
  Inst_Control_state_FFd5_In1 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => Inst_Control_state_FFd5_14,
      I1 => Inst_Control_state_FFd1_18,
      I2 => tic,
      O => Inst_Control_state_FFd5_In
    );
  Inst_Control_state_FFd4_In1 : LUT4
    generic map(
      INIT => X"2A6A"
    )
    port map (
      I0 => Inst_Control_state_FFd4_15,
      I1 => tic,
      I2 => Inst_Control_state_FFd5_14,
      I3 => Inst_Control_state_FFd1_18,
      O => Inst_Control_state_FFd4_In
    );
  Inst_Control_state_FFd3_In1 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => Inst_Control_state_FFd3_16,
      I1 => Inst_Control_state_FFd4_15,
      I2 => Inst_Control_state_FFd5_14,
      I3 => tic,
      O => Inst_Control_state_FFd3_In
    );
  Inst_Control_state_FFd1_In : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => tic,
      I1 => Inst_Control_state_FFd5_14,
      I2 => Inst_Control_state_index0000,
      I3 => Inst_Control_state_FFd1_18,
      O => Inst_Control_state_FFd1_In_13
    );
  Inst_Control_state_FFd2_In : LUT4
    generic map(
      INIT => X"CC6C"
    )
    port map (
      I0 => tic,
      I1 => Inst_Control_state_FFd2_17,
      I2 => Inst_Control_state_FFd5_14,
      I3 => N23,
      O => Inst_Control_state_FFd2_In_12
    );
  Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq000043 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Inst_Interfaz_Inst_div_debouncer_contador(7),
      I1 => Inst_Interfaz_Inst_div_debouncer_contador(8),
      I2 => Inst_Interfaz_Inst_div_debouncer_contador(9),
      I3 => Inst_Interfaz_Inst_div_debouncer_contador(10),
      O => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000_map18
    );
  Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq000056 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Inst_Interfaz_Inst_div_debouncer_contador(11),
      I1 => Inst_Interfaz_Inst_div_debouncer_contador(12),
      I2 => Inst_Interfaz_Inst_div_debouncer_contador(13),
      I3 => Inst_Interfaz_Inst_div_debouncer_contador(2),
      O => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000_map25
    );
  Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq000070 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => N84,
      I1 => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000_map10,
      I2 => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000_map18,
      I3 => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000_map25,
      O => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000
    );
  pb_in_3_IBUF : IBUF
    port map (
      I => pb_in(3),
      O => pb_in_3_IBUF_4
    );
  pb_in_1_IBUF : IBUF
    port map (
      I => pb_in(1),
      O => pb_in_1_IBUF_5
    );
  pb_in_0_IBUF : IBUF
    port map (
      I => pb_in(0),
      O => pb_in_0_IBUF_6
    );
  LCD_E_OBUF : OBUF
    port map (
      I => Inst_Control_E_0,
      O => LCD_E
    );
  LCD_RS_OBUF : OBUF
    port map (
      I => Inst_Control_RS_1,
      O => LCD_RS
    );
  LCD_RW_OBUF : OBUF
    port map (
      I => LCD_RW_OBUF_2,
      O => LCD_RW
    );
  LCD_DB_7_OBUF : OBUF
    port map (
      I => Inst_Control_DB_7_Q,
      O => LCD_DB(7)
    );
  LCD_DB_6_OBUF : OBUF
    port map (
      I => Inst_Control_DB_7_Q,
      O => LCD_DB(6)
    );
  LCD_DB_5_OBUF : OBUF
    port map (
      I => Inst_Control_DB_5_Q,
      O => LCD_DB(5)
    );
  LCD_DB_4_OBUF : OBUF
    port map (
      I => Inst_Control_DB_5_Q,
      O => LCD_DB(4)
    );
  LCD_DB_3_OBUF : OBUF
    port map (
      I => Inst_Control_DB_3_Q,
      O => LCD_DB(3)
    );
  LCD_DB_2_OBUF : OBUF
    port map (
      I => Inst_Control_DB_2_Q,
      O => LCD_DB(2)
    );
  LCD_DB_1_OBUF : OBUF
    port map (
      I => Inst_Control_DB_1_Q,
      O => LCD_DB(1)
    );
  LCD_DB_0_OBUF : OBUF
    port map (
      I => Inst_Control_DB_0_Q,
      O => LCD_DB(0)
    );
  Inst_Counter_Mcount_temp_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Counter_temp(1),
      O => Inst_Counter_Mcount_temp_cy_1_rt_19
    );
  Inst_Counter_Mcount_temp_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Counter_temp(2),
      O => Inst_Counter_Mcount_temp_cy_2_rt_20
    );
  Inst_Counter_Mcount_temp_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Counter_temp(3),
      O => Inst_Counter_Mcount_temp_cy_3_rt_21
    );
  Inst_Counter_Mcount_temp_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Counter_temp(4),
      O => Inst_Counter_Mcount_temp_cy_4_rt_22
    );
  Inst_Counter_Mcount_temp_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Counter_temp(5),
      O => Inst_Counter_Mcount_temp_cy_5_rt_23
    );
  Inst_Counter_Mcount_temp_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Counter_temp(6),
      O => Inst_Counter_Mcount_temp_cy_6_rt_24
    );
  Inst_Counter_Mcount_temp_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Counter_temp(7),
      O => Inst_Counter_Mcount_temp_cy_7_rt_25
    );
  Inst_Counter_Mcount_temp_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Counter_temp(8),
      O => Inst_Counter_Mcount_temp_cy_8_rt_26
    );
  Inst_Counter_Mcount_temp_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Counter_temp(9),
      O => Inst_Counter_Mcount_temp_cy_9_rt_27
    );
  Inst_Counter_Mcount_temp_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Counter_temp(10),
      O => Inst_Counter_Mcount_temp_cy_10_rt_28
    );
  Inst_Counter_Mcount_temp_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Counter_temp(11),
      O => Inst_Counter_Mcount_temp_cy_11_rt_29
    );
  Inst_Counter_Mcount_temp_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Counter_temp(12),
      O => Inst_Counter_Mcount_temp_cy_12_rt_30
    );
  Inst_Counter_Mcount_temp_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Counter_temp(13),
      O => Inst_Counter_Mcount_temp_cy_13_rt_31
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Interfaz_Inst_div_debouncer_contador(1),
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_1_rt_32
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Interfaz_Inst_div_debouncer_contador(2),
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_2_rt_33
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Interfaz_Inst_div_debouncer_contador(3),
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_3_rt_34
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Interfaz_Inst_div_debouncer_contador(4),
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_4_rt_35
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Interfaz_Inst_div_debouncer_contador(5),
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_5_rt_36
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Interfaz_Inst_div_debouncer_contador(6),
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_6_rt_37
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Interfaz_Inst_div_debouncer_contador(7),
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_7_rt_38
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Interfaz_Inst_div_debouncer_contador(8),
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_8_rt_39
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Interfaz_Inst_div_debouncer_contador(9),
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_9_rt_40
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Interfaz_Inst_div_debouncer_contador(10),
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_10_rt_41
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Interfaz_Inst_div_debouncer_contador(11),
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_11_rt_42
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Interfaz_Inst_div_debouncer_contador(12),
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_12_rt_43
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Interfaz_Inst_div_debouncer_contador(13),
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_cy_13_rt_44
    );
  Inst_Counter_Mcount_temp_xor_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Counter_temp(14),
      O => Inst_Counter_Mcount_temp_xor_14_rt_45
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_xor_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_Interfaz_Inst_div_debouncer_contador(14),
      O => Inst_Interfaz_Inst_div_debouncer_Mcount_contador_xor_14_rt_46
    );
  Inst_Interfaz_Inst_div_debouncer_clk10ms_not00011 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000_map3,
      I1 => N85,
      I2 => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000_map18,
      I3 => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000_map25,
      O => Inst_Interfaz_Inst_div_debouncer_clk10ms_not0001
    );
  Inst_Counter_Mcount_temp_lut_0_INV_0 : INV
    port map (
      I => Inst_Counter_temp(0),
      O => Result(0)
    );
  Inst_Interfaz_Inst_div_debouncer_Mcount_contador_lut_0_INV_0 : INV
    port map (
      I => Inst_Interfaz_Inst_div_debouncer_contador(0),
      O => Result_0_1
    );
  Inst_Interfaz_Inst_este_state_FFd1_In1_INV_0 : INV
    port map (
      I => pb_in_1_IBUF_5,
      O => Inst_Interfaz_Inst_este_state_FFd1_In
    );
  Inst_Interfaz_Inst_Norte_state_FFd1_In1_INV_0 : INV
    port map (
      I => pb_in_3_IBUF_4,
      O => Inst_Interfaz_Inst_Norte_state_FFd1_In
    );
  Inst_Control_state_Out91_INV_0 : INV
    port map (
      I => Inst_Control_state_FFd5_14,
      O => Inst_Control_mux0001
    );
  Inst_Control_state_Out121 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => Inst_Control_state_FFd4_15,
      I1 => Inst_Control_state_FFd3_16,
      I2 => Inst_Control_state_FFd2_17,
      I3 => Inst_Control_state_FFd1_18,
      O => N83
    );
  Inst_Control_state_Out12_f5 : MUXF5
    port map (
      I0 => N83,
      I1 => LCD_RW_OBUF_2,
      S => Inst_Control_state_FFd5_14,
      O => Inst_Control_mux0003
    );
  Inst_Control_state_FFd2_In_SW0 : LUT2_L
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => Inst_Control_state_FFd4_15,
      I1 => Inst_Control_state_FFd3_16,
      LO => N23
    );
  Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq00007 : LUT3_D
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => Inst_Interfaz_Inst_div_debouncer_contador(14),
      I1 => Inst_Interfaz_Inst_div_debouncer_contador(1),
      I2 => Inst_Interfaz_Inst_div_debouncer_contador(6),
      LO => N84,
      O => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000_map3
    );
  Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq000020 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Inst_Interfaz_Inst_div_debouncer_contador(3),
      I1 => Inst_Interfaz_Inst_div_debouncer_contador(4),
      I2 => Inst_Interfaz_Inst_div_debouncer_contador(5),
      I3 => Inst_Interfaz_Inst_div_debouncer_contador(0),
      LO => N85,
      O => Inst_Interfaz_Inst_div_debouncer_contador_cmp_eq0000_map10
    );

end Structure;

