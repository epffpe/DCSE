--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: K.39
--  \   \         Application: netgen
--  /   /         Filename: izq_der_leds_synthesis.vhd
-- /___/   /\     Timestamp: Sat Sep 27 17:46:33 2008
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm izq_der_leds -w -dir netgen/synthesis -ofmt vhdl -sim izq_der_leds.ngc izq_der_leds_synthesis.vhd 
-- Device	: xa3s50-4-vqg100
-- Input file	: izq_der_leds.ngc
-- Output file	: D:\Designs\DCSE\Spartan3a\Prueba_rotatorio\netgen\synthesis\izq_der_leds_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: izq_der_leds
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

entity izq_der_leds is
  port (
    clk_in : in STD_LOGIC := 'X'; 
    rotary_press : in STD_LOGIC := 'X'; 
    rotary_a : in STD_LOGIC := 'X'; 
    rotary_b : in STD_LOGIC := 'X'; 
    led : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end izq_der_leds;

architecture Structure of izq_der_leds is
  signal Inst_Reloj_CLK0_BUF : STD_LOGIC; 
  signal Inst_Reloj_CLK0_OUT : STD_LOGIC; 
  signal Inst_Reloj_CLKDV_BUF : STD_LOGIC; 
  signal Inst_Reloj_CLKIN_IBUFG_OUT : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal clk : STD_LOGIC; 
  signal delay_rotary_q1_8 : STD_LOGIC; 
  signal led_0_17 : STD_LOGIC; 
  signal led_1_18 : STD_LOGIC; 
  signal led_2_19 : STD_LOGIC; 
  signal led_3_20 : STD_LOGIC; 
  signal led_4_21 : STD_LOGIC; 
  signal led_5_22 : STD_LOGIC; 
  signal led_6_23 : STD_LOGIC; 
  signal led_7_24 : STD_LOGIC; 
  signal rotary_a_IBUF_58 : STD_LOGIC; 
  signal rotary_a_in_59 : STD_LOGIC; 
  signal rotary_b_IBUF_61 : STD_LOGIC; 
  signal rotary_b_in_62 : STD_LOGIC; 
  signal rotary_event_63 : STD_LOGIC; 
  signal rotary_event_not0001 : STD_LOGIC; 
  signal rotary_left_67 : STD_LOGIC; 
  signal rotary_left_and0000 : STD_LOGIC; 
  signal rotary_press_IBUF_70 : STD_LOGIC; 
  signal rotary_press_in_71 : STD_LOGIC; 
  signal rotary_q1_72 : STD_LOGIC; 
  signal rotary_q1_mux0000 : STD_LOGIC; 
  signal rotary_q2_74 : STD_LOGIC; 
  signal rotary_q2_mux0000 : STD_LOGIC; 
  signal NLW_Inst_Reloj_DCM_SP_INST_CLKFX180_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Reloj_DCM_SP_INST_CLKFX_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Reloj_DCM_SP_INST_CLK2X180_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Reloj_DCM_SP_INST_CLK180_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Reloj_DCM_SP_INST_CLK90_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Reloj_DCM_SP_INST_LOCKED_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Reloj_DCM_SP_INST_CLK2X_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Reloj_DCM_SP_INST_CLK270_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Reloj_DCM_SP_INST_PSDONE_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Reloj_DCM_SP_INST_STATUS_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Reloj_DCM_SP_INST_STATUS_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Reloj_DCM_SP_INST_STATUS_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Reloj_DCM_SP_INST_STATUS_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Reloj_DCM_SP_INST_STATUS_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Reloj_DCM_SP_INST_STATUS_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Reloj_DCM_SP_INST_STATUS_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Reloj_DCM_SP_INST_STATUS_0_UNCONNECTED : STD_LOGIC; 
  signal led_drive : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal led_drive_mux0001 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal led_pattern : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal led_pattern_mux0001 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal rotary_in : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  rotary_event : FDR
    port map (
      C => clk,
      D => N1,
      R => rotary_event_not0001,
      Q => rotary_event_63
    );
  led_drive_0 : FD
    port map (
      C => clk,
      D => led_drive_mux0001(0),
      Q => led_drive(0)
    );
  led_drive_1 : FD
    port map (
      C => clk,
      D => led_drive_mux0001(1),
      Q => led_drive(1)
    );
  led_drive_2 : FD
    port map (
      C => clk,
      D => led_drive_mux0001(2),
      Q => led_drive(2)
    );
  led_drive_3 : FD
    port map (
      C => clk,
      D => led_drive_mux0001(3),
      Q => led_drive(3)
    );
  led_drive_4 : FD
    port map (
      C => clk,
      D => led_drive_mux0001(4),
      Q => led_drive(4)
    );
  led_drive_5 : FD
    port map (
      C => clk,
      D => led_drive_mux0001(5),
      Q => led_drive(5)
    );
  led_drive_6 : FD
    port map (
      C => clk,
      D => led_drive_mux0001(6),
      Q => led_drive(6)
    );
  led_drive_7 : FD
    port map (
      C => clk,
      D => led_drive_mux0001(7),
      Q => led_drive(7)
    );
  rotary_b_in : FD
    port map (
      C => clk,
      D => rotary_b_IBUF_61,
      Q => rotary_b_in_62
    );
  rotary_press_in : FD
    port map (
      C => clk,
      D => rotary_press_IBUF_70,
      Q => rotary_press_in_71
    );
  rotary_a_in : FD
    port map (
      C => clk,
      D => rotary_a_IBUF_58,
      Q => rotary_a_in_59
    );
  led_0 : FD
    port map (
      C => clk,
      D => led_drive(0),
      Q => led_0_17
    );
  led_1 : FD
    port map (
      C => clk,
      D => led_drive(1),
      Q => led_1_18
    );
  led_2 : FD
    port map (
      C => clk,
      D => led_drive(2),
      Q => led_2_19
    );
  led_3 : FD
    port map (
      C => clk,
      D => led_drive(3),
      Q => led_3_20
    );
  led_4 : FD
    port map (
      C => clk,
      D => led_drive(4),
      Q => led_4_21
    );
  led_5 : FD
    port map (
      C => clk,
      D => led_drive(5),
      Q => led_5_22
    );
  led_6 : FD
    port map (
      C => clk,
      D => led_drive(6),
      Q => led_6_23
    );
  led_7 : FD
    port map (
      C => clk,
      D => led_drive(7),
      Q => led_7_24
    );
  led_pattern_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => rotary_event_63,
      D => led_pattern_mux0001(0),
      Q => led_pattern(0)
    );
  led_pattern_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => rotary_event_63,
      D => led_pattern_mux0001(1),
      Q => led_pattern(1)
    );
  led_pattern_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => rotary_event_63,
      D => led_pattern_mux0001(2),
      Q => led_pattern(2)
    );
  led_pattern_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => rotary_event_63,
      D => led_pattern_mux0001(3),
      Q => led_pattern(3)
    );
  led_pattern_4 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => rotary_event_63,
      D => led_pattern_mux0001(4),
      Q => led_pattern(4)
    );
  led_pattern_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => rotary_event_63,
      D => led_pattern_mux0001(5),
      Q => led_pattern(5)
    );
  led_pattern_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => rotary_event_63,
      D => led_pattern_mux0001(6),
      Q => led_pattern(6)
    );
  led_pattern_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => rotary_event_63,
      D => led_pattern_mux0001(7),
      Q => led_pattern(7)
    );
  rotary_in_0 : FD
    port map (
      C => clk,
      D => rotary_a_in_59,
      Q => rotary_in(0)
    );
  rotary_in_1 : FD
    port map (
      C => clk,
      D => rotary_b_in_62,
      Q => rotary_in(1)
    );
  rotary_q1 : FD
    port map (
      C => clk,
      D => rotary_q1_mux0000,
      Q => rotary_q1_72
    );
  rotary_q2 : FD
    port map (
      C => clk,
      D => rotary_q2_mux0000,
      Q => rotary_q2_74
    );
  rotary_left : FDE
    port map (
      C => clk,
      CE => rotary_left_and0000,
      D => rotary_q2_74,
      Q => rotary_left_67
    );
  delay_rotary_q1 : FD
    port map (
      C => clk,
      D => rotary_q1_72,
      Q => delay_rotary_q1_8
    );
  Inst_Reloj_DCM_SP_INST : DCM_SP
    generic map(
      CLKDV_DIVIDE => 5.000000,
      CLKFX_DIVIDE => 1,
      CLKFX_MULTIPLY => 4,
      CLKIN_DIVIDE_BY_2 => FALSE,
      CLKIN_PERIOD => 20.000000,
      CLKOUT_PHASE_SHIFT => "NONE",
      CLK_FEEDBACK => "1X",
      DESKEW_ADJUST => "SYSTEM_SYNCHRONOUS",
      DFS_FREQUENCY_MODE => "LOW",
      DLL_FREQUENCY_MODE => "LOW",
      DSS_MODE => "NONE",
      DUTY_CYCLE_CORRECTION => TRUE,
      FACTORY_JF => X"C080",
      PHASE_SHIFT => 0,
      STARTUP_WAIT => FALSE
    )
    port map (
      CLKFB => Inst_Reloj_CLK0_OUT,
      CLKFX180 => NLW_Inst_Reloj_DCM_SP_INST_CLKFX180_UNCONNECTED,
      CLKDV => Inst_Reloj_CLKDV_BUF,
      CLKFX => NLW_Inst_Reloj_DCM_SP_INST_CLKFX_UNCONNECTED,
      CLKIN => Inst_Reloj_CLKIN_IBUFG_OUT,
      RST => N0,
      CLK2X180 => NLW_Inst_Reloj_DCM_SP_INST_CLK2X180_UNCONNECTED,
      CLK0 => Inst_Reloj_CLK0_BUF,
      CLK180 => NLW_Inst_Reloj_DCM_SP_INST_CLK180_UNCONNECTED,
      CLK90 => NLW_Inst_Reloj_DCM_SP_INST_CLK90_UNCONNECTED,
      LOCKED => NLW_Inst_Reloj_DCM_SP_INST_LOCKED_UNCONNECTED,
      CLK2X => NLW_Inst_Reloj_DCM_SP_INST_CLK2X_UNCONNECTED,
      CLK270 => NLW_Inst_Reloj_DCM_SP_INST_CLK270_UNCONNECTED,
      PSEN => N0,
      PSDONE => NLW_Inst_Reloj_DCM_SP_INST_PSDONE_UNCONNECTED,
      PSCLK => N0,
      PSINCDEC => N0,
      DSSEN => N0,
      STATUS(7) => NLW_Inst_Reloj_DCM_SP_INST_STATUS_7_UNCONNECTED,
      STATUS(6) => NLW_Inst_Reloj_DCM_SP_INST_STATUS_6_UNCONNECTED,
      STATUS(5) => NLW_Inst_Reloj_DCM_SP_INST_STATUS_5_UNCONNECTED,
      STATUS(4) => NLW_Inst_Reloj_DCM_SP_INST_STATUS_4_UNCONNECTED,
      STATUS(3) => NLW_Inst_Reloj_DCM_SP_INST_STATUS_3_UNCONNECTED,
      STATUS(2) => NLW_Inst_Reloj_DCM_SP_INST_STATUS_2_UNCONNECTED,
      STATUS(1) => NLW_Inst_Reloj_DCM_SP_INST_STATUS_1_UNCONNECTED,
      STATUS(0) => NLW_Inst_Reloj_DCM_SP_INST_STATUS_0_UNCONNECTED
    );
  Inst_Reloj_CLK0_BUFG_INST : BUFG
    port map (
      I => Inst_Reloj_CLK0_BUF,
      O => Inst_Reloj_CLK0_OUT
    );
  Inst_Reloj_CLKIN_IBUFG_INST : IBUFG
    generic map(
      CAPACITANCE => "DONT_CARE",
      IBUF_DELAY_VALUE => "0",
      IOSTANDARD => "DEFAULT"
    )
    port map (
      I => clk_in,
      O => Inst_Reloj_CLKIN_IBUFG_OUT
    );
  Inst_Reloj_CLKDV_BUFG_INST : BUFG
    port map (
      I => Inst_Reloj_CLKDV_BUF,
      O => clk
    );
  led_drive_mux0001_7_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => rotary_press_in_71,
      I1 => led_pattern(7),
      O => led_drive_mux0001(7)
    );
  led_drive_mux0001_6_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => rotary_press_in_71,
      I1 => led_pattern(6),
      O => led_drive_mux0001(6)
    );
  led_drive_mux0001_5_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => rotary_press_in_71,
      I1 => led_pattern(5),
      O => led_drive_mux0001(5)
    );
  led_drive_mux0001_4_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => rotary_press_in_71,
      I1 => led_pattern(4),
      O => led_drive_mux0001(4)
    );
  led_drive_mux0001_3_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => rotary_press_in_71,
      I1 => led_pattern(3),
      O => led_drive_mux0001(3)
    );
  led_drive_mux0001_2_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => rotary_press_in_71,
      I1 => led_pattern(2),
      O => led_drive_mux0001(2)
    );
  led_drive_mux0001_1_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => rotary_press_in_71,
      I1 => led_pattern(1),
      O => led_drive_mux0001(1)
    );
  led_drive_mux0001_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => rotary_press_in_71,
      I1 => led_pattern(0),
      O => led_drive_mux0001(0)
    );
  led_pattern_mux0001_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rotary_left_67,
      I1 => led_pattern(0),
      I2 => led_pattern(6),
      O => led_pattern_mux0001(7)
    );
  led_pattern_mux0001_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rotary_left_67,
      I1 => led_pattern(7),
      I2 => led_pattern(5),
      O => led_pattern_mux0001(6)
    );
  led_pattern_mux0001_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rotary_left_67,
      I1 => led_pattern(6),
      I2 => led_pattern(4),
      O => led_pattern_mux0001(5)
    );
  led_pattern_mux0001_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rotary_left_67,
      I1 => led_pattern(5),
      I2 => led_pattern(3),
      O => led_pattern_mux0001(4)
    );
  led_pattern_mux0001_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rotary_left_67,
      I1 => led_pattern(4),
      I2 => led_pattern(2),
      O => led_pattern_mux0001(3)
    );
  led_pattern_mux0001_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rotary_left_67,
      I1 => led_pattern(3),
      I2 => led_pattern(1),
      O => led_pattern_mux0001(2)
    );
  led_pattern_mux0001_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rotary_left_67,
      I1 => led_pattern(2),
      I2 => led_pattern(0),
      O => led_pattern_mux0001(1)
    );
  led_pattern_mux0001_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => rotary_left_67,
      I1 => led_pattern(1),
      I2 => led_pattern(7),
      O => led_pattern_mux0001(0)
    );
  Mmux_rotary_q2_mux000011 : LUT3
    generic map(
      INIT => X"B2"
    )
    port map (
      I0 => rotary_q2_74,
      I1 => rotary_in(0),
      I2 => rotary_in(1),
      O => rotary_q2_mux0000
    );
  Mmux_rotary_q1_mux000011 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => rotary_in(1),
      I1 => rotary_q1_72,
      I2 => rotary_in(0),
      O => rotary_q1_mux0000
    );
  rotary_left_and00001 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => delay_rotary_q1_8,
      I1 => rotary_q1_72,
      O => rotary_left_and0000
    );
  rotary_event_not00011 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => delay_rotary_q1_8,
      I1 => rotary_q1_72,
      O => rotary_event_not0001
    );
  rotary_press_IBUF : IBUF
    port map (
      I => rotary_press,
      O => rotary_press_IBUF_70
    );
  rotary_a_IBUF : IBUF
    port map (
      I => rotary_a,
      O => rotary_a_IBUF_58
    );
  rotary_b_IBUF : IBUF
    port map (
      I => rotary_b,
      O => rotary_b_IBUF_61
    );
  led_7_OBUF : OBUF
    port map (
      I => led_7_24,
      O => led(7)
    );
  led_6_OBUF : OBUF
    port map (
      I => led_6_23,
      O => led(6)
    );
  led_5_OBUF : OBUF
    port map (
      I => led_5_22,
      O => led(5)
    );
  led_4_OBUF : OBUF
    port map (
      I => led_4_21,
      O => led(4)
    );
  led_3_OBUF : OBUF
    port map (
      I => led_3_20,
      O => led(3)
    );
  led_2_OBUF : OBUF
    port map (
      I => led_2_19,
      O => led(2)
    );
  led_1_OBUF : OBUF
    port map (
      I => led_1_18,
      O => led(1)
    );
  led_0_OBUF : OBUF
    port map (
      I => led_0_17,
      O => led(0)
    );

end Structure;

