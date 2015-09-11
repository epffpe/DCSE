--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: K.31
--  \   \         Application: netgen
--  /   /         Filename: ModuloLCD_map.vhd
-- /___/   /\     Timestamp: Sat Feb 07 02:19:34 2009
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf ModuloLCD.pcf -rpw 100 -tpw 0 -ar Structure -tm ModuloLCD -w -dir netgen/map -ofmt vhdl -sim ModuloLCD_map.ncd ModuloLCD_map.vhd 
-- Device	: 3s700afg484-4 (PRODUCTION 1.39 2008-01-09)
-- Input file	: ModuloLCD_map.ncd
-- Output file	: D:\Desings\DCSE\PracticaLCD\netgen\map\ModuloLCD_map.vhd
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
  signal NlwRenamedSig_IO_rot_press_in : STD_LOGIC; 
  signal NlwRenamedSig_IO_modo_in : STD_LOGIC; 
  signal GLOBAL_LOGIC0 : STD_LOGIC; 
  signal clk640 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000_0 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_1_Q : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_3_Q : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_5_Q : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_7_Q : STD_LOGIC; 
  signal Inst_UControl_clr_timer_673 : STD_LOGIC; 
  signal Inst_UControl_LCD_E_697 : STD_LOGIC; 
  signal Inst_UControl_LCD_RS_698 : STD_LOGIC; 
  signal leds_out_0_699 : STD_LOGIC; 
  signal leds_out_1_700 : STD_LOGIC; 
  signal leds_out_2_701 : STD_LOGIC; 
  signal leds_out_3_703 : STD_LOGIC; 
  signal leds_out_4_704 : STD_LOGIC; 
  signal leds_out_5_705 : STD_LOGIC; 
  signal leds_out_6_706 : STD_LOGIC; 
  signal leds_out_7_707 : STD_LOGIC; 
  signal Inst_UControl_LCD_DB_0_Q : STD_LOGIC; 
  signal Inst_UControl_LCD_DB_1_Q : STD_LOGIC; 
  signal Inst_UControl_LCD_DB_2_Q : STD_LOGIC; 
  signal Inst_UControl_LCD_DB_3_Q : STD_LOGIC; 
  signal Inst_UControl_LCD_DB_5_Q : STD_LOGIC; 
  signal Inst_UControl_LCD_DB_7_Q : STD_LOGIC; 
  signal Inst_Clock1562_CLK0_BUF : STD_LOGIC; 
  signal GLOBAL_LOGIC1 : STD_LOGIC; 
  signal Inst_Clock1562_CLK0_OUT : STD_LOGIC; 
  signal Inst_Clock1562_CLKDV_BUF : STD_LOGIC; 
  signal Inst_Counter_tic_727 : STD_LOGIC; 
  signal Inst_Interfaz_rst_n_728 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd5_729 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd4_730 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd3_731 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_Out2_SW0_O : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd2_733 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd1_734 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000011_735 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000016_736 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000028_0 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd2_In_SW2_O : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd3_In_SW1_O : STD_LOGIC; 
  signal Inst_Interfaz_rotary_q2_741 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_q1_744 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb1_state_FSM_FFd2_745 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb0_state_FSM_FFd2_746 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb3_state_FSM_FFd2_747 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb2_state_FSM_FFd2_748 : STD_LOGIC; 
  signal Inst_UControl_state_index0002 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd2_752 : STD_LOGIC; 
  signal modo_int_753 : STD_LOGIC; 
  signal Inst_Interfaz_delay_rotary_q1_756 : STD_LOGIC; 
  signal Inst_Interfaz_pb1_761 : STD_LOGIC; 
  signal Inst_Interfaz_pb0_762 : STD_LOGIC; 
  signal Inst_Interfaz_pb3_765 : STD_LOGIC; 
  signal Inst_Interfaz_pb2_766 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_event_767 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_left_768 : STD_LOGIC; 
  signal rot_press_769 : STD_LOGIC; 
  signal Inst_Interfaz_rotatory_press_770 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_771 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb2_state_FSM_FFd1_772 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb0_state_FSM_FFd1_773 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1_774 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb3_state_FSM_FFd1_775 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb1_state_FSM_FFd1_777 : STD_LOGIC; 
  signal Inst_Interfaz_pb1_DXMUX_2496 : STD_LOGIC; 
  signal Inst_Interfaz_pb1_DYMUX_2491 : STD_LOGIC; 
  signal Inst_Interfaz_pb1_CLKINV_2489 : STD_LOGIC; 
  signal Inst_Interfaz_pb3_DXMUX_2512 : STD_LOGIC; 
  signal Inst_Interfaz_pb3_DYMUX_2507 : STD_LOGIC; 
  signal Inst_Interfaz_pb3_CLKINV_2505 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_event_DYMUX_2523 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_event_SRINV_2521 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_event_CLKINV_2520 : STD_LOGIC; 
  signal Inst_LEDS_led_2_DYMUX_2535 : STD_LOGIC; 
  signal Inst_LEDS_led_2_CLKINV_2533 : STD_LOGIC; 
  signal Inst_LEDS_led_2_CEINV_2532 : STD_LOGIC; 
  signal Inst_LEDS_led_3_DYMUX_2547 : STD_LOGIC; 
  signal Inst_LEDS_led_3_CLKINV_2545 : STD_LOGIC; 
  signal Inst_LEDS_led_3_CEINV_2544 : STD_LOGIC; 
  signal Inst_UControl_clr_timer_DYMUX_2559 : STD_LOGIC; 
  signal Inst_UControl_clr_timer_CLKINV_2556 : STD_LOGIC; 
  signal Inst_Interfaz_rotatory_press_DYMUX_2571 : STD_LOGIC; 
  signal Inst_Interfaz_rotatory_press_CLKINV_2569 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb2_state_FSM_FFd1_DXMUX_2596 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb2_state_FSM_FFd1_DYMUX_2591 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb2_state_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb2_state_FSM_FFd1_CLKINV_2581 : STD_LOGIC; 
  signal rot_press_DYMUX_2605 : STD_LOGIC; 
  signal rot_press_CLKINV_2603 : STD_LOGIC; 
  signal pb_int_1_DXMUX_2621 : STD_LOGIC; 
  signal pb_int_1_DYMUX_2616 : STD_LOGIC; 
  signal pb_int_1_CLKINV_2614 : STD_LOGIC; 
  signal pb_int_3_DXMUX_2637 : STD_LOGIC; 
  signal pb_int_3_DYMUX_2632 : STD_LOGIC; 
  signal pb_int_3_CLKINV_2630 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb0_state_FSM_FFd1_DXMUX_2662 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb0_state_FSM_FFd1_DYMUX_2657 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb0_state_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb0_state_FSM_FFd1_CLKINV_2647 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1_DXMUX_2687 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1_DYMUX_2682 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1_CLKINV_2672 : STD_LOGIC; 
  signal modo_int_DYMUX_2696 : STD_LOGIC; 
  signal modo_int_CLKINV_2694 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb3_state_FSM_FFd1_DXMUX_2721 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb3_state_FSM_FFd1_DYMUX_2716 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb3_state_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb3_state_FSM_FFd1_CLKINV_2706 : STD_LOGIC; 
  signal rot_1_DXMUX_2737 : STD_LOGIC; 
  signal rot_1_DYMUX_2732 : STD_LOGIC; 
  signal rot_1_CLKINV_2730 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_left_DYMUX_2748 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_left_CLKINV_2746 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_left_CEINV_2745 : STD_LOGIC; 
  signal Inst_Interfaz_rst_and0000 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000028_2774 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb1_state_FSM_FFd1_DXMUX_2798 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb1_state_FSM_FFd1_DYMUX_2793 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb1_state_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_Interfaz_Inst_pb1_state_FSM_FFd1_CLKINV_2783 : STD_LOGIC; 
  signal Inst_Interfaz_rst_n_DYMUX_2809 : STD_LOGIC; 
  signal Inst_Interfaz_rst_n_SRINV_2807 : STD_LOGIC; 
  signal Inst_Interfaz_rst_n_CLKINV_2806 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_DYMUX_2821 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_SRINV_2819 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_CLKINV_2818 : STD_LOGIC; 
  signal rot_in_1_IBUF_1630 : STD_LOGIC; 
  signal lcd_data_out_0_O : STD_LOGIC; 
  signal lcd_data_out_1_O : STD_LOGIC; 
  signal lcd_data_out_2_O : STD_LOGIC; 
  signal lcd_rw_out_O : STD_LOGIC; 
  signal lcd_data_out_3_O : STD_LOGIC; 
  signal lcd_data_out_4_O : STD_LOGIC; 
  signal lcd_data_out_5_O : STD_LOGIC; 
  signal lcd_data_out_6_O : STD_LOGIC; 
  signal lcd_data_out_7_O : STD_LOGIC; 
  signal modo_in_IBUF_1709 : STD_LOGIC; 
  signal Inst_Clock1562_CLK0_BUFG_INST_S_INVNOT : STD_LOGIC; 
  signal Inst_Clock1562_DCM_SP_INST_CLK90 : STD_LOGIC; 
  signal Inst_Clock1562_DCM_SP_INST_CLK180 : STD_LOGIC; 
  signal Inst_Clock1562_DCM_SP_INST_CLK270 : STD_LOGIC; 
  signal Inst_Clock1562_DCM_SP_INST_CLK2X : STD_LOGIC; 
  signal Inst_Clock1562_DCM_SP_INST_CLK2X180 : STD_LOGIC; 
  signal Inst_Clock1562_DCM_SP_INST_CLKFX : STD_LOGIC; 
  signal Inst_Clock1562_DCM_SP_INST_CLKFX180 : STD_LOGIC; 
  signal Inst_Clock1562_DCM_SP_INST_LOCKED : STD_LOGIC; 
  signal Inst_Clock1562_DCM_SP_INST_STATUS7 : STD_LOGIC; 
  signal Inst_Clock1562_DCM_SP_INST_STATUS6 : STD_LOGIC; 
  signal Inst_Clock1562_DCM_SP_INST_STATUS5 : STD_LOGIC; 
  signal Inst_Clock1562_DCM_SP_INST_STATUS4 : STD_LOGIC; 
  signal Inst_Clock1562_DCM_SP_INST_STATUS3 : STD_LOGIC; 
  signal Inst_Clock1562_DCM_SP_INST_STATUS2 : STD_LOGIC; 
  signal Inst_Clock1562_DCM_SP_INST_STATUS1 : STD_LOGIC; 
  signal Inst_Clock1562_DCM_SP_INST_STATUS0 : STD_LOGIC; 
  signal Inst_Clock1562_DCM_SP_INST_PSDONE : STD_LOGIC; 
  signal Inst_Clock1562_DCM_SP_INST_CLKFB_BUF_1724 : STD_LOGIC; 
  signal Inst_Clock1562_DCM_SP_INST_CLKIN_BUF_1723 : STD_LOGIC; 
  signal Inst_Clock1562_CLKDV_BUFG_INST_S_INVNOT : STD_LOGIC; 
  signal Inst_Counter_tic_DXMUX_1775 : STD_LOGIC; 
  signal Inst_Counter_tic_F5MUX_1773 : STD_LOGIC; 
  signal Inst_Counter_Mmux_tic_mux0001_3_1771 : STD_LOGIC; 
  signal Inst_Counter_tic_BXINV_1765 : STD_LOGIC; 
  signal Inst_Counter_Mmux_tic_mux0001_4_1763 : STD_LOGIC; 
  signal Inst_Counter_tic_CLKINV_1757 : STD_LOGIC; 
  signal Inst_UControl_LCD_E_DXMUX_1807 : STD_LOGIC; 
  signal Inst_UControl_mux0000 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_Out2_SW0_O_pack_1 : STD_LOGIC; 
  signal Inst_UControl_LCD_E_CLKINV_1789 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_not0001 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000016_pack_1 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd2_DXMUX_1866 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd2_In_1863 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd2_In_SW2_O_pack_1 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd2_CLKINV_1848 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000011_pack_1 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd3_DXMUX_1925 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd3_In_1922 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd3_In_SW1_O_pack_1 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd3_CLKINV_1909 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_q2_DXMUX_1962 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_q2_mux0000 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_q2_DYMUX_1950 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_q1_mux0000 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_q2_CLKINV_1941 : STD_LOGIC; 
  signal Inst_Counter_temp_14_DXMUX_1488 : STD_LOGIC; 
  signal Inst_Counter_temp_14_XORF_1486 : STD_LOGIC; 
  signal Inst_Counter_temp_14_CYINIT_1485 : STD_LOGIC; 
  signal Inst_Counter_temp_14_rt_1483 : STD_LOGIC; 
  signal Inst_Counter_temp_14_CLKINV_1474 : STD_LOGIC; 
  signal Inst_Clock1562_CLKIN_IBUFG_OUT : STD_LOGIC; 
  signal lcd_e_out_O : STD_LOGIC; 
  signal lcd_rs_out_O : STD_LOGIC; 
  signal leds_out_0_O : STD_LOGIC; 
  signal leds_out_1_O : STD_LOGIC; 
  signal leds_out_2_O : STD_LOGIC; 
  signal rot_press_in_IBUF_1548 : STD_LOGIC; 
  signal leds_out_3_O : STD_LOGIC; 
  signal leds_out_4_O : STD_LOGIC; 
  signal leds_out_5_O : STD_LOGIC; 
  signal leds_out_6_O : STD_LOGIC; 
  signal leds_out_7_O : STD_LOGIC; 
  signal pb_in_0_IBUF_1595 : STD_LOGIC; 
  signal pb_in_1_IBUF_1602 : STD_LOGIC; 
  signal pb_in_2_IBUF_1609 : STD_LOGIC; 
  signal pb_in_3_IBUF_1616 : STD_LOGIC; 
  signal rot_in_0_IBUF_1623 : STD_LOGIC; 
  signal leds_out_5_DXMUX_2015 : STD_LOGIC; 
  signal Mshreg_leds_out_5 : STD_LOGIC; 
  signal leds_out_5_DIF_MUX_2004 : STD_LOGIC; 
  signal leds_out_5_DYMUX_1999 : STD_LOGIC; 
  signal Mshreg_leds_out_4 : STD_LOGIC; 
  signal leds_out_5_DIG_MUX_1988 : STD_LOGIC; 
  signal leds_out_5_CLKINV_1986 : STD_LOGIC; 
  signal leds_out_5_SRINV_1980 : STD_LOGIC; 
  signal leds_out_7_DXMUX_2068 : STD_LOGIC; 
  signal Mshreg_leds_out_7 : STD_LOGIC; 
  signal leds_out_7_DIF_MUX_2057 : STD_LOGIC; 
  signal leds_out_7_DYMUX_2052 : STD_LOGIC; 
  signal Mshreg_leds_out_6 : STD_LOGIC; 
  signal leds_out_7_DIG_MUX_2041 : STD_LOGIC; 
  signal leds_out_7_CLKINV_2039 : STD_LOGIC; 
  signal leds_out_7_SRINV_2033 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_in_1_DXMUX_2121 : STD_LOGIC; 
  signal Inst_Interfaz_Mshreg_rotary_in_1 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_in_1_DIF_MUX_2110 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_in_1_DYMUX_2105 : STD_LOGIC; 
  signal Inst_Interfaz_Mshreg_rotary_in_0 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_in_1_DIG_MUX_2094 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_in_1_CLKINV_2092 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_in_1_SRINV_2086 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd4_DXMUX_2160 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd4_In : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd4_DYMUX_2146 : STD_LOGIC; 
  signal Inst_UControl_state_cmp_eq0016 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd4_SRINVNOT : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd4_CLKINV_2136 : STD_LOGIC; 
  signal Inst_UControl_LCD_DB_1_DXMUX_2202 : STD_LOGIC; 
  signal Inst_UControl_state_index0008 : STD_LOGIC; 
  signal Inst_UControl_LCD_DB_1_DYMUX_2187 : STD_LOGIC; 
  signal Inst_UControl_state_index0009 : STD_LOGIC; 
  signal Inst_UControl_LCD_DB_1_SRINVNOT : STD_LOGIC; 
  signal Inst_UControl_LCD_DB_1_CLKINV_2178 : STD_LOGIC; 
  signal Inst_UControl_LCD_DB_3_DXMUX_2244 : STD_LOGIC; 
  signal Inst_UControl_state_index0006 : STD_LOGIC; 
  signal Inst_UControl_LCD_DB_3_DYMUX_2230 : STD_LOGIC; 
  signal Inst_UControl_state_index0007 : STD_LOGIC; 
  signal Inst_UControl_LCD_DB_3_SRINVNOT : STD_LOGIC; 
  signal Inst_UControl_LCD_DB_3_CLKINV_2219 : STD_LOGIC; 
  signal Inst_UControl_LCD_DB_5_DYMUX_2267 : STD_LOGIC; 
  signal Inst_UControl_state_index0004 : STD_LOGIC; 
  signal Inst_UControl_LCD_DB_5_CLKINV_2258 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd1_DXMUX_2310 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd1_In_2307 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd1_DYMUX_2296 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd1_GYMUX_2295 : STD_LOGIC; 
  signal Inst_UControl_state_index0002_pack_1 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd1_SRINVNOT : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd1_CLKINV_2286 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd5_DYMUX_2333 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd5_In : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd5_CLKINV_2322 : STD_LOGIC; 
  signal Inst_UControl_tiempo_1_DXMUX_2375 : STD_LOGIC; 
  signal Inst_UControl_state_index0000 : STD_LOGIC; 
  signal Inst_UControl_tiempo_1_DYMUX_2361 : STD_LOGIC; 
  signal Inst_UControl_state_index0001 : STD_LOGIC; 
  signal Inst_UControl_tiempo_1_SRINVNOT : STD_LOGIC; 
  signal Inst_UControl_tiempo_1_CLKINV_2352 : STD_LOGIC; 
  signal leds_out_1_DXMUX_2431 : STD_LOGIC; 
  signal Mshreg_leds_out_1 : STD_LOGIC; 
  signal leds_out_1_DIF_MUX_2420 : STD_LOGIC; 
  signal leds_out_1_DYMUX_2415 : STD_LOGIC; 
  signal Mshreg_leds_out_0 : STD_LOGIC; 
  signal leds_out_1_DIG_MUX_2404 : STD_LOGIC; 
  signal leds_out_1_CLKINV_2402 : STD_LOGIC; 
  signal leds_out_1_SRINV_2396 : STD_LOGIC; 
  signal leds_out_3_DXMUX_2447 : STD_LOGIC; 
  signal leds_out_3_DYMUX_2442 : STD_LOGIC; 
  signal leds_out_3_CLKINV_2440 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_left_and0000 : STD_LOGIC; 
  signal Inst_Interfaz_rotary_event_not0001 : STD_LOGIC; 
  signal Inst_Interfaz_delay_rotary_q1_DYMUX_2480 : STD_LOGIC; 
  signal Inst_Interfaz_delay_rotary_q1_CLKINV_2478 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_10_DXMUX_1075 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_10_XORF_1073 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_10_LOGIC_ZERO_1072 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_10_CYINIT_1071 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_10_CYSELF_1062 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_10_F : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_10_DYMUX_1056 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_10_XORG_1054 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_10_Q : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_11_rt_1051 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_10_SRINV_1043 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_10_CLKINV_1042 : STD_LOGIC; 
  signal Inst_Counter_temp_0_DXMUX_1126 : STD_LOGIC; 
  signal Inst_Counter_temp_0_LOGIC_ONE_1124 : STD_LOGIC; 
  signal Inst_Counter_temp_0_CYINIT_1123 : STD_LOGIC; 
  signal Inst_Counter_temp_0_CYSELF_1114 : STD_LOGIC; 
  signal Inst_Counter_temp_0_DYMUX_1105 : STD_LOGIC; 
  signal Inst_Counter_temp_0_XORG_1103 : STD_LOGIC; 
  signal Inst_Counter_temp_0_CYMUXG_1102 : STD_LOGIC; 
  signal Inst_Counter_temp_0_LOGIC_ZERO_1100 : STD_LOGIC; 
  signal Inst_Counter_temp_0_CYSELG_1091 : STD_LOGIC; 
  signal Inst_Counter_temp_0_G : STD_LOGIC; 
  signal Inst_Counter_temp_0_SRINV_1089 : STD_LOGIC; 
  signal Inst_Counter_temp_0_CLKINV_1088 : STD_LOGIC; 
  signal Inst_Counter_temp_2_DXMUX_1182 : STD_LOGIC; 
  signal Inst_Counter_temp_2_XORF_1180 : STD_LOGIC; 
  signal Inst_Counter_temp_2_CYINIT_1179 : STD_LOGIC; 
  signal Inst_Counter_temp_2_F : STD_LOGIC; 
  signal Inst_Counter_temp_2_DYMUX_1163 : STD_LOGIC; 
  signal Inst_Counter_temp_2_XORG_1161 : STD_LOGIC; 
  signal Inst_Counter_temp_2_CYSELF_1159 : STD_LOGIC; 
  signal Inst_Counter_temp_2_CYMUXFAST_1158 : STD_LOGIC; 
  signal Inst_Counter_temp_2_CYAND_1157 : STD_LOGIC; 
  signal Inst_Counter_temp_2_FASTCARRY_1156 : STD_LOGIC; 
  signal Inst_Counter_temp_2_CYMUXG2_1155 : STD_LOGIC; 
  signal Inst_Counter_temp_2_CYMUXF2_1154 : STD_LOGIC; 
  signal Inst_Counter_temp_2_LOGIC_ZERO_1153 : STD_LOGIC; 
  signal Inst_Counter_temp_2_CYSELG_1144 : STD_LOGIC; 
  signal Inst_Counter_temp_2_G : STD_LOGIC; 
  signal Inst_Counter_temp_2_SRINV_1142 : STD_LOGIC; 
  signal Inst_Counter_temp_2_CLKINV_1141 : STD_LOGIC; 
  signal Inst_Counter_temp_4_DXMUX_1238 : STD_LOGIC; 
  signal Inst_Counter_temp_4_XORF_1236 : STD_LOGIC; 
  signal Inst_Counter_temp_4_CYINIT_1235 : STD_LOGIC; 
  signal Inst_Counter_temp_4_F : STD_LOGIC; 
  signal Inst_Counter_temp_4_DYMUX_1219 : STD_LOGIC; 
  signal Inst_Counter_temp_4_XORG_1217 : STD_LOGIC; 
  signal Inst_Counter_temp_4_CYSELF_1215 : STD_LOGIC; 
  signal Inst_Counter_temp_4_CYMUXFAST_1214 : STD_LOGIC; 
  signal Inst_Counter_temp_4_CYAND_1213 : STD_LOGIC; 
  signal Inst_Counter_temp_4_FASTCARRY_1212 : STD_LOGIC; 
  signal Inst_Counter_temp_4_CYMUXG2_1211 : STD_LOGIC; 
  signal Inst_Counter_temp_4_CYMUXF2_1210 : STD_LOGIC; 
  signal Inst_Counter_temp_4_LOGIC_ZERO_1209 : STD_LOGIC; 
  signal Inst_Counter_temp_4_CYSELG_1200 : STD_LOGIC; 
  signal Inst_Counter_temp_4_G : STD_LOGIC; 
  signal Inst_Counter_temp_4_SRINV_1198 : STD_LOGIC; 
  signal Inst_Counter_temp_4_CLKINV_1197 : STD_LOGIC; 
  signal Inst_Counter_temp_6_DXMUX_1294 : STD_LOGIC; 
  signal Inst_Counter_temp_6_XORF_1292 : STD_LOGIC; 
  signal Inst_Counter_temp_6_CYINIT_1291 : STD_LOGIC; 
  signal Inst_Counter_temp_6_F : STD_LOGIC; 
  signal Inst_Counter_temp_6_DYMUX_1275 : STD_LOGIC; 
  signal Inst_Counter_temp_6_XORG_1273 : STD_LOGIC; 
  signal Inst_Counter_temp_6_CYSELF_1271 : STD_LOGIC; 
  signal Inst_Counter_temp_6_CYMUXFAST_1270 : STD_LOGIC; 
  signal Inst_Counter_temp_6_CYAND_1269 : STD_LOGIC; 
  signal Inst_Counter_temp_6_FASTCARRY_1268 : STD_LOGIC; 
  signal Inst_Counter_temp_6_CYMUXG2_1267 : STD_LOGIC; 
  signal Inst_Counter_temp_6_CYMUXF2_1266 : STD_LOGIC; 
  signal Inst_Counter_temp_6_LOGIC_ZERO_1265 : STD_LOGIC; 
  signal Inst_Counter_temp_6_CYSELG_1256 : STD_LOGIC; 
  signal Inst_Counter_temp_6_G : STD_LOGIC; 
  signal Inst_Counter_temp_6_SRINV_1254 : STD_LOGIC; 
  signal Inst_Counter_temp_6_CLKINV_1253 : STD_LOGIC; 
  signal Inst_Counter_temp_8_DXMUX_1350 : STD_LOGIC; 
  signal Inst_Counter_temp_8_XORF_1348 : STD_LOGIC; 
  signal Inst_Counter_temp_8_CYINIT_1347 : STD_LOGIC; 
  signal Inst_Counter_temp_8_F : STD_LOGIC; 
  signal Inst_Counter_temp_8_DYMUX_1331 : STD_LOGIC; 
  signal Inst_Counter_temp_8_XORG_1329 : STD_LOGIC; 
  signal Inst_Counter_temp_8_CYSELF_1327 : STD_LOGIC; 
  signal Inst_Counter_temp_8_CYMUXFAST_1326 : STD_LOGIC; 
  signal Inst_Counter_temp_8_CYAND_1325 : STD_LOGIC; 
  signal Inst_Counter_temp_8_FASTCARRY_1324 : STD_LOGIC; 
  signal Inst_Counter_temp_8_CYMUXG2_1323 : STD_LOGIC; 
  signal Inst_Counter_temp_8_CYMUXF2_1322 : STD_LOGIC; 
  signal Inst_Counter_temp_8_LOGIC_ZERO_1321 : STD_LOGIC; 
  signal Inst_Counter_temp_8_CYSELG_1312 : STD_LOGIC; 
  signal Inst_Counter_temp_8_G : STD_LOGIC; 
  signal Inst_Counter_temp_8_SRINV_1310 : STD_LOGIC; 
  signal Inst_Counter_temp_8_CLKINV_1309 : STD_LOGIC; 
  signal Inst_Counter_temp_10_DXMUX_1406 : STD_LOGIC; 
  signal Inst_Counter_temp_10_XORF_1404 : STD_LOGIC; 
  signal Inst_Counter_temp_10_CYINIT_1403 : STD_LOGIC; 
  signal Inst_Counter_temp_10_F : STD_LOGIC; 
  signal Inst_Counter_temp_10_DYMUX_1387 : STD_LOGIC; 
  signal Inst_Counter_temp_10_XORG_1385 : STD_LOGIC; 
  signal Inst_Counter_temp_10_CYSELF_1383 : STD_LOGIC; 
  signal Inst_Counter_temp_10_CYMUXFAST_1382 : STD_LOGIC; 
  signal Inst_Counter_temp_10_CYAND_1381 : STD_LOGIC; 
  signal Inst_Counter_temp_10_FASTCARRY_1380 : STD_LOGIC; 
  signal Inst_Counter_temp_10_CYMUXG2_1379 : STD_LOGIC; 
  signal Inst_Counter_temp_10_CYMUXF2_1378 : STD_LOGIC; 
  signal Inst_Counter_temp_10_LOGIC_ZERO_1377 : STD_LOGIC; 
  signal Inst_Counter_temp_10_CYSELG_1368 : STD_LOGIC; 
  signal Inst_Counter_temp_10_G : STD_LOGIC; 
  signal Inst_Counter_temp_10_SRINV_1366 : STD_LOGIC; 
  signal Inst_Counter_temp_10_CLKINV_1365 : STD_LOGIC; 
  signal Inst_Counter_temp_12_DXMUX_1462 : STD_LOGIC; 
  signal Inst_Counter_temp_12_XORF_1460 : STD_LOGIC; 
  signal Inst_Counter_temp_12_CYINIT_1459 : STD_LOGIC; 
  signal Inst_Counter_temp_12_F : STD_LOGIC; 
  signal Inst_Counter_temp_12_DYMUX_1443 : STD_LOGIC; 
  signal Inst_Counter_temp_12_XORG_1441 : STD_LOGIC; 
  signal Inst_Counter_temp_12_CYSELF_1439 : STD_LOGIC; 
  signal Inst_Counter_temp_12_CYMUXFAST_1438 : STD_LOGIC; 
  signal Inst_Counter_temp_12_CYAND_1437 : STD_LOGIC; 
  signal Inst_Counter_temp_12_FASTCARRY_1436 : STD_LOGIC; 
  signal Inst_Counter_temp_12_CYMUXG2_1435 : STD_LOGIC; 
  signal Inst_Counter_temp_12_CYMUXF2_1434 : STD_LOGIC; 
  signal Inst_Counter_temp_12_LOGIC_ZERO_1433 : STD_LOGIC; 
  signal Inst_Counter_temp_12_CYSELG_1424 : STD_LOGIC; 
  signal Inst_Counter_temp_12_G : STD_LOGIC; 
  signal Inst_Counter_temp_12_SRINV_1422 : STD_LOGIC; 
  signal Inst_Counter_temp_12_CLKINV_1421 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_0_DXMUX_822 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_0_LOGIC_ONE_820 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_0_CYINIT_819 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_0_CYSELF_810 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_0_DYMUX_803 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_0_XORG_801 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_0_CYMUXG_800 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_0_Q : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_0_LOGIC_ZERO_798 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_0_CYSELG_789 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_0_G : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_0_SRINV_787 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_0_CLKINV_786 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_2_DXMUX_874 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_2_XORF_872 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYINIT_871 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_2_F : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_2_DYMUX_857 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_2_XORG_855 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_2_Q : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYSELF_853 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYMUXFAST_852 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYAND_851 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_2_FASTCARRY_850 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYMUXG2_849 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYMUXF2_848 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_2_LOGIC_ZERO_847 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYSELG_838 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_2_G : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_2_SRINV_836 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CLKINV_835 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_4_DXMUX_926 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_4_XORF_924 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYINIT_923 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_4_F : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_4_DYMUX_909 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_4_XORG_907 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_4_Q : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYSELF_905 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYMUXFAST_904 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYAND_903 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_4_FASTCARRY_902 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYMUXG2_901 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYMUXF2_900 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_4_LOGIC_ZERO_899 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYSELG_890 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_4_G : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_4_SRINV_888 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CLKINV_887 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_6_DXMUX_978 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_6_XORF_976 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYINIT_975 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_6_F : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_6_DYMUX_961 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_6_XORG_959 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_6_Q : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYSELF_957 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYMUXFAST_956 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYAND_955 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_6_FASTCARRY_954 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYMUXG2_953 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYMUXF2_952 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_6_LOGIC_ZERO_951 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYSELG_942 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_6_G : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_6_SRINV_940 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CLKINV_939 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_8_DXMUX_1030 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_8_XORF_1028 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYINIT_1027 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_8_F : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_8_DYMUX_1013 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_8_XORG_1011 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_8_Q : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYSELF_1009 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYMUXFAST_1008 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYAND_1007 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_8_FASTCARRY_1006 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYMUXG2_1005 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYMUXF2_1004 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_8_LOGIC_ZERO_1003 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYSELG_994 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_8_G : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_8_SRINV_992 : STD_LOGIC; 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CLKINV_991 : STD_LOGIC; 
  signal Inst_UControl_LCD_DB_5_FFY_RSTAND_2272 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd5_FFY_RSTAND_2338 : STD_LOGIC; 
  signal Inst_Counter_temp_14_FFX_RSTAND_1493 : STD_LOGIC; 
  signal Inst_UControl_LCD_E_FFX_RSTAND_1812 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd2_FFX_RSTAND_1871 : STD_LOGIC; 
  signal Inst_UControl_state_FSM_FFd3_FFX_RSTAND_1930 : STD_LOGIC; 
  signal Inst_UControl_clr_timer_FFY_RSTAND_2564 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_Inst_Clock1562_DCM_SP_INST_DSSEN_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_leds_out_0_SRL16E_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_leds_out_4_SRL16E_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_leds_out_6_SRL16E_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Interfaz_Mshreg_rotary_in_0_SRL16E_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_leds_out_5_SRL16E_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_leds_out_7_SRL16E_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_Interfaz_Mshreg_rotary_in_1_SRL16E_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_leds_out_1_SRL16E_Q15_UNCONNECTED : STD_LOGIC; 
  signal NlwRenamedSig_IO_pb_in : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal NlwRenamedSig_IO_rot_in : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Inst_Interfaz_Inst_divDEBOUNCER_contador : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal Inst_Counter_temp : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal Inst_Counter_Mcount_temp_cy : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal Inst_UControl_tiempo : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Inst_Interfaz_rotary_in : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal rot : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Inst_LEDS_led : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal pb_int : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Inst_Counter_Mcount_temp_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  NlwRenamedSig_IO_rot_press_in <= rot_press_in;
  NlwRenamedSig_IO_modo_in <= modo_in;
  NlwRenamedSig_IO_pb_in(3) <= pb_in(3);
  NlwRenamedSig_IO_pb_in(2) <= pb_in(2);
  NlwRenamedSig_IO_pb_in(1) <= pb_in(1);
  NlwRenamedSig_IO_pb_in(0) <= pb_in(0);
  NlwRenamedSig_IO_rot_in(1) <= rot_in(1);
  NlwRenamedSig_IO_rot_in(0) <= rot_in(0);
  Inst_Interfaz_pb1_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => pb_int(1),
      O => Inst_Interfaz_pb1_DXMUX_2496
    );
  Inst_Interfaz_pb1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => pb_int(0),
      O => Inst_Interfaz_pb1_DYMUX_2491
    );
  Inst_Interfaz_pb1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Interfaz_pb1_CLKINV_2489
    );
  Inst_Interfaz_pb3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => pb_int(3),
      O => Inst_Interfaz_pb3_DXMUX_2512
    );
  Inst_Interfaz_pb3_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => pb_int(2),
      O => Inst_Interfaz_pb3_DYMUX_2507
    );
  Inst_Interfaz_pb3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Interfaz_pb3_CLKINV_2505
    );
  Inst_Interfaz_rotary_event_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => Inst_Interfaz_rotary_event_DYMUX_2523
    );
  Inst_Interfaz_rotary_event_SRINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_rotary_event_not0001,
      O => Inst_Interfaz_rotary_event_SRINV_2521
    );
  Inst_Interfaz_rotary_event_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Interfaz_rotary_event_CLKINV_2520
    );
  Inst_LEDS_led_2_DYMUX : X_INV
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_rotary_left_768,
      O => Inst_LEDS_led_2_DYMUX_2535
    );
  Inst_LEDS_led_2_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_LEDS_led_2_CLKINV_2533
    );
  Inst_LEDS_led_2_CEINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_rotary_event_767,
      O => Inst_LEDS_led_2_CEINV_2532
    );
  Inst_LEDS_led_3_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_rotary_left_768,
      O => Inst_LEDS_led_3_DYMUX_2547
    );
  Inst_LEDS_led_3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_LEDS_led_3_CLKINV_2545
    );
  Inst_LEDS_led_3_CEINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_rotary_event_767,
      O => Inst_LEDS_led_3_CEINV_2544
    );
  Inst_UControl_clr_timer_DYMUX : X_INV
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_state_FSM_FFd5_729,
      O => Inst_UControl_clr_timer_DYMUX_2559
    );
  Inst_UControl_clr_timer_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_UControl_clr_timer_CLKINV_2556
    );
  Inst_Interfaz_rotatory_press_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => rot_press_769,
      O => Inst_Interfaz_rotatory_press_DYMUX_2571
    );
  Inst_Interfaz_rotatory_press_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Interfaz_rotatory_press_CLKINV_2569
    );
  Inst_Interfaz_Inst_pb2_state_FSM_FFd1_DXMUX : X_INV
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_pb2_766,
      O => Inst_Interfaz_Inst_pb2_state_FSM_FFd1_DXMUX_2596
    );
  Inst_Interfaz_Inst_pb2_state_FSM_FFd1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_pb2_state_FSM_FFd2_In,
      O => Inst_Interfaz_Inst_pb2_state_FSM_FFd1_DYMUX_2591
    );
  Inst_Interfaz_Inst_pb2_state_FSM_FFd1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_771,
      O => Inst_Interfaz_Inst_pb2_state_FSM_FFd1_CLKINV_2581
    );
  Inst_Interfaz_Inst_pb2_state_FSM_FFd2_In1 : X_LUT4
    generic map(
      INIT => X"4444"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_pb2_state_FSM_FFd1_772,
      ADR1 => Inst_Interfaz_pb2_766,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Interfaz_Inst_pb2_state_FSM_FFd2_In
    );
  rot_press_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => rot_press_in_IBUF_1548,
      O => rot_press_DYMUX_2605
    );
  rot_press_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => rot_press_CLKINV_2603
    );
  pb_int_1_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => pb_in_1_IBUF_1602,
      O => pb_int_1_DXMUX_2621
    );
  pb_int_1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => pb_in_0_IBUF_1595,
      O => pb_int_1_DYMUX_2616
    );
  pb_int_1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => pb_int_1_CLKINV_2614
    );
  pb_int_3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => pb_in_3_IBUF_1616,
      O => pb_int_3_DXMUX_2637
    );
  pb_int_3_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => pb_in_2_IBUF_1609,
      O => pb_int_3_DYMUX_2632
    );
  pb_int_3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => pb_int_3_CLKINV_2630
    );
  Inst_Interfaz_Inst_pb0_state_FSM_FFd1_DXMUX : X_INV
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_pb0_762,
      O => Inst_Interfaz_Inst_pb0_state_FSM_FFd1_DXMUX_2662
    );
  Inst_Interfaz_Inst_pb0_state_FSM_FFd1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_pb0_state_FSM_FFd2_In,
      O => Inst_Interfaz_Inst_pb0_state_FSM_FFd1_DYMUX_2657
    );
  Inst_Interfaz_Inst_pb0_state_FSM_FFd1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_771,
      O => Inst_Interfaz_Inst_pb0_state_FSM_FFd1_CLKINV_2647
    );
  Inst_Interfaz_Inst_pb0_state_FSM_FFd2_In1 : X_LUT4
    generic map(
      INIT => X"4444"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_pb0_state_FSM_FFd1_773,
      ADR1 => Inst_Interfaz_pb0_762,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Interfaz_Inst_pb0_state_FSM_FFd2_In
    );
  Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1_DXMUX : X_INV
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_rotatory_press_770,
      O => Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1_DXMUX_2687
    );
  Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd2_In,
      O => Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1_DYMUX_2682
    );
  Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_771,
      O => Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1_CLKINV_2672
    );
  Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd2_In1 : X_LUT4
    generic map(
      INIT => X"4444"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1_774,
      ADR1 => Inst_Interfaz_rotatory_press_770,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd2_In
    );
  modo_int_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => modo_in_IBUF_1709,
      O => modo_int_DYMUX_2696
    );
  modo_int_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => modo_int_CLKINV_2694
    );
  Inst_Interfaz_Inst_pb3_state_FSM_FFd1_DXMUX : X_INV
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_pb3_765,
      O => Inst_Interfaz_Inst_pb3_state_FSM_FFd1_DXMUX_2721
    );
  Inst_Interfaz_Inst_pb3_state_FSM_FFd1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_pb3_state_FSM_FFd2_In,
      O => Inst_Interfaz_Inst_pb3_state_FSM_FFd1_DYMUX_2716
    );
  Inst_Interfaz_Inst_pb3_state_FSM_FFd1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_771,
      O => Inst_Interfaz_Inst_pb3_state_FSM_FFd1_CLKINV_2706
    );
  Inst_Interfaz_Inst_pb3_state_FSM_FFd2_In1 : X_LUT4
    generic map(
      INIT => X"4444"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_pb3_state_FSM_FFd1_775,
      ADR1 => Inst_Interfaz_pb3_765,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Interfaz_Inst_pb3_state_FSM_FFd2_In
    );
  rot_1_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => rot_in_1_IBUF_1630,
      O => rot_1_DXMUX_2737
    );
  rot_1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => rot_in_0_IBUF_1623,
      O => rot_1_DYMUX_2732
    );
  rot_1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => rot_1_CLKINV_2730
    );
  Inst_Interfaz_rotary_left_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_rotary_q2_741,
      O => Inst_Interfaz_rotary_left_DYMUX_2748
    );
  Inst_Interfaz_rotary_left_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Interfaz_rotary_left_CLKINV_2746
    );
  Inst_Interfaz_rotary_left_CEINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_rotary_left_and0000,
      O => Inst_Interfaz_rotary_left_CEINV_2745
    );
  Inst_Interfaz_rst_and00001 : X_LUT4
    generic map(
      INIT => X"8888"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_pb1_state_FSM_FFd2_745,
      ADR1 => Inst_Interfaz_Inst_pb0_state_FSM_FFd2_746,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Interfaz_rst_and0000
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000028_XUSED : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000028_2774,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000028_0
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
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000028_2774
    );
  Inst_Interfaz_Inst_pb1_state_FSM_FFd1_DXMUX : X_INV
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_pb1_761,
      O => Inst_Interfaz_Inst_pb1_state_FSM_FFd1_DXMUX_2798
    );
  Inst_Interfaz_Inst_pb1_state_FSM_FFd1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_pb1_state_FSM_FFd2_In,
      O => Inst_Interfaz_Inst_pb1_state_FSM_FFd1_DYMUX_2793
    );
  Inst_Interfaz_Inst_pb1_state_FSM_FFd1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_771,
      O => Inst_Interfaz_Inst_pb1_state_FSM_FFd1_CLKINV_2783
    );
  Inst_Interfaz_Inst_pb1_state_FSM_FFd2_In1 : X_LUT4
    generic map(
      INIT => X"4444"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_pb1_state_FSM_FFd1_777,
      ADR1 => Inst_Interfaz_pb1_761,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Interfaz_Inst_pb1_state_FSM_FFd2_In
    );
  Inst_Interfaz_rst_n_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => Inst_Interfaz_rst_n_DYMUX_2809
    );
  Inst_Interfaz_rst_n_SRINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_rst_and0000,
      O => Inst_Interfaz_rst_n_SRINV_2807
    );
  Inst_Interfaz_rst_n_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Interfaz_rst_n_CLKINV_2806
    );
  Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_DYMUX_2821
    );
  Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_SRINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_not0001,
      O => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_SRINV_2819
    );
  Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_CLKINV_2818
    );
  rot_in_1_PULLUP : X_PU
    port map (
      O => NlwRenamedSig_IO_rot_in(1)
    );
  rot_in_1_IBUF : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => NlwRenamedSig_IO_rot_in(1),
      O => rot_in_1_IBUF_1630
    );
  lcd_data_out_0_OBUF : X_OBUF
    port map (
      I => lcd_data_out_0_O,
      O => lcd_data_out(0)
    );
  lcd_data_out_1_OBUF : X_OBUF
    port map (
      I => lcd_data_out_1_O,
      O => lcd_data_out(1)
    );
  lcd_data_out_2_OBUF : X_OBUF
    port map (
      I => lcd_data_out_2_O,
      O => lcd_data_out(2)
    );
  lcd_rw_out_OBUF : X_OBUF
    port map (
      I => lcd_rw_out_O,
      O => lcd_rw_out
    );
  lcd_data_out_3_OBUF : X_OBUF
    port map (
      I => lcd_data_out_3_O,
      O => lcd_data_out(3)
    );
  lcd_data_out_4_OBUF : X_OBUF
    port map (
      I => lcd_data_out_4_O,
      O => lcd_data_out(4)
    );
  lcd_data_out_5_OBUF : X_OBUF
    port map (
      I => lcd_data_out_5_O,
      O => lcd_data_out(5)
    );
  lcd_data_out_6_OBUF : X_OBUF
    port map (
      I => lcd_data_out_6_O,
      O => lcd_data_out(6)
    );
  lcd_data_out_7_OBUF : X_OBUF
    port map (
      I => lcd_data_out_7_O,
      O => lcd_data_out(7)
    );
  modo_in_PULLUP : X_PU
    port map (
      O => NlwRenamedSig_IO_modo_in
    );
  modo_in_IBUF : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => NlwRenamedSig_IO_modo_in,
      O => modo_in_IBUF_1709
    );
  Inst_Clock1562_CLK0_BUFG_INST : X_BUFGMUX
    port map (
      I0 => Inst_Clock1562_CLK0_BUF,
      I1 => GND,
      S => Inst_Clock1562_CLK0_BUFG_INST_S_INVNOT,
      O => Inst_Clock1562_CLK0_OUT
    );
  Inst_Clock1562_CLK0_BUFG_INST_SINV : X_INV
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => Inst_Clock1562_CLK0_BUFG_INST_S_INVNOT
    );
  Inst_Clock1562_DCM_SP_INST : X_DCM_SP
    generic map(
      DUTY_CYCLE_CORRECTION => TRUE,
      FACTORY_JF => X"C080",
      CLKDV_DIVIDE => 16.000000,
      CLKFX_DIVIDE => 1,
      CLKFX_MULTIPLY => 4,
      CLKOUT_PHASE_SHIFT => "NONE",
      CLKIN_PERIOD => 40.000000,
      DFS_FREQUENCY_MODE => "LOW",
      STARTUP_WAIT => FALSE,
      CLK_FEEDBACK => "1X",
      DLL_FREQUENCY_MODE => "LOW",
      CLKIN_DIVIDE_BY_2 => TRUE,
      PHASE_SHIFT => 0
    )
    port map (
      CLKIN => Inst_Clock1562_DCM_SP_INST_CLKIN_BUF_1723,
      CLKFB => Inst_Clock1562_DCM_SP_INST_CLKFB_BUF_1724,
      RST => GLOBAL_LOGIC0,
      DSSEN => NLW_Inst_Clock1562_DCM_SP_INST_DSSEN_UNCONNECTED,
      PSINCDEC => GLOBAL_LOGIC0,
      PSEN => GLOBAL_LOGIC0,
      PSCLK => GLOBAL_LOGIC0,
      PSDONE => Inst_Clock1562_DCM_SP_INST_PSDONE,
      LOCKED => Inst_Clock1562_DCM_SP_INST_LOCKED,
      CLKFX180 => Inst_Clock1562_DCM_SP_INST_CLKFX180,
      CLKFX => Inst_Clock1562_DCM_SP_INST_CLKFX,
      CLKDV => Inst_Clock1562_CLKDV_BUF,
      CLK2X180 => Inst_Clock1562_DCM_SP_INST_CLK2X180,
      CLK2X => Inst_Clock1562_DCM_SP_INST_CLK2X,
      CLK270 => Inst_Clock1562_DCM_SP_INST_CLK270,
      CLK180 => Inst_Clock1562_DCM_SP_INST_CLK180,
      CLK90 => Inst_Clock1562_DCM_SP_INST_CLK90,
      CLK0 => Inst_Clock1562_CLK0_BUF,
      STATUS(7) => Inst_Clock1562_DCM_SP_INST_STATUS7,
      STATUS(6) => Inst_Clock1562_DCM_SP_INST_STATUS6,
      STATUS(5) => Inst_Clock1562_DCM_SP_INST_STATUS5,
      STATUS(4) => Inst_Clock1562_DCM_SP_INST_STATUS4,
      STATUS(3) => Inst_Clock1562_DCM_SP_INST_STATUS3,
      STATUS(2) => Inst_Clock1562_DCM_SP_INST_STATUS2,
      STATUS(1) => Inst_Clock1562_DCM_SP_INST_STATUS1,
      STATUS(0) => Inst_Clock1562_DCM_SP_INST_STATUS0
    );
  Inst_Clock1562_DCM_SP_INST_CLKFB_BUF : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Clock1562_CLK0_OUT,
      O => Inst_Clock1562_DCM_SP_INST_CLKFB_BUF_1724
    );
  Inst_Clock1562_DCM_SP_INST_CLKIN_BUF : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Clock1562_CLKIN_IBUFG_OUT,
      O => Inst_Clock1562_DCM_SP_INST_CLKIN_BUF_1723
    );
  Inst_Clock1562_CLKDV_BUFG_INST : X_BUFGMUX
    port map (
      I0 => Inst_Clock1562_CLKDV_BUF,
      I1 => GND,
      S => Inst_Clock1562_CLKDV_BUFG_INST_S_INVNOT,
      O => clk640
    );
  Inst_Clock1562_CLKDV_BUFG_INST_SINV : X_INV
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => Inst_Clock1562_CLKDV_BUFG_INST_S_INVNOT
    );
  Inst_Counter_tic_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_tic_F5MUX_1773,
      O => Inst_Counter_tic_DXMUX_1775
    );
  Inst_Counter_tic_F5MUX : X_MUX2
    port map (
      IA => Inst_Counter_Mmux_tic_mux0001_4_1763,
      IB => Inst_Counter_Mmux_tic_mux0001_3_1771,
      SEL => Inst_Counter_tic_BXINV_1765,
      O => Inst_Counter_tic_F5MUX_1773
    );
  Inst_Counter_tic_BXINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_tiempo(1),
      O => Inst_Counter_tic_BXINV_1765
    );
  Inst_Counter_tic_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Counter_tic_CLKINV_1757
    );
  Inst_Counter_Mmux_tic_mux0001_4 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => Inst_UControl_tiempo(0),
      ADR1 => Inst_Counter_temp(5),
      ADR2 => Inst_Counter_temp(7),
      ADR3 => VCC,
      O => Inst_Counter_Mmux_tic_mux0001_4_1763
    );
  Inst_UControl_LCD_E_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_mux0000,
      O => Inst_UControl_LCD_E_DXMUX_1807
    );
  Inst_UControl_LCD_E_YUSED : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_state_FSM_Out2_SW0_O_pack_1,
      O => Inst_UControl_state_FSM_Out2_SW0_O
    );
  Inst_UControl_LCD_E_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_UControl_LCD_E_CLKINV_1789
    );
  Inst_UControl_state_FSM_Out2_SW0 : X_LUT4
    generic map(
      INIT => X"EEEE"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd2_733,
      ADR1 => Inst_UControl_state_FSM_FFd1_734,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_UControl_state_FSM_Out2_SW0_O_pack_1
    );
  Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_not0001_YUSED : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000016_pack_1,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000016_736
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
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000016_pack_1
    );
  Inst_UControl_state_FSM_FFd2_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_state_FSM_FFd2_In_1863,
      O => Inst_UControl_state_FSM_FFd2_DXMUX_1866
    );
  Inst_UControl_state_FSM_FFd2_YUSED : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_state_FSM_FFd2_In_SW2_O_pack_1,
      O => Inst_UControl_state_FSM_FFd2_In_SW2_O
    );
  Inst_UControl_state_FSM_FFd2_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_UControl_state_FSM_FFd2_CLKINV_1848
    );
  Inst_UControl_state_FSM_FFd2_In_SW2 : X_LUT4
    generic map(
      INIT => X"7777"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd3_731,
      ADR1 => Inst_Counter_tic_727,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_UControl_state_FSM_FFd2_In_SW2_O_pack_1
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000_XUSED : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000_0
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000_YUSED : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000011_pack_1,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000011_735
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
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000011_pack_1
    );
  Inst_UControl_state_FSM_FFd3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_state_FSM_FFd3_In_1922,
      O => Inst_UControl_state_FSM_FFd3_DXMUX_1925
    );
  Inst_UControl_state_FSM_FFd3_YUSED : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_state_FSM_FFd3_In_SW1_O_pack_1,
      O => Inst_UControl_state_FSM_FFd3_In_SW1_O
    );
  Inst_UControl_state_FSM_FFd3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_UControl_state_FSM_FFd3_CLKINV_1909
    );
  Inst_Interfaz_rotary_q2_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_rotary_q2_mux0000,
      O => Inst_Interfaz_rotary_q2_DXMUX_1962
    );
  Inst_Interfaz_rotary_q2_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_rotary_q1_mux0000,
      O => Inst_Interfaz_rotary_q2_DYMUX_1950
    );
  Inst_Interfaz_rotary_q2_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Interfaz_rotary_q2_CLKINV_1941
    );
  Inst_Counter_temp_14_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_14_XORF_1486,
      O => Inst_Counter_temp_14_DXMUX_1488
    );
  Inst_Counter_temp_14_XORF : X_XOR2
    port map (
      I0 => Inst_Counter_temp_14_CYINIT_1485,
      I1 => Inst_Counter_temp_14_rt_1483,
      O => Inst_Counter_temp_14_XORF_1486
    );
  Inst_Counter_temp_14_CYINIT : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_12_CYMUXFAST_1438,
      O => Inst_Counter_temp_14_CYINIT_1485
    );
  Inst_Counter_temp_14_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Counter_temp_14_CLKINV_1474
    );
  Inst_Counter_temp_14_rt : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Counter_temp(14),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Counter_temp_14_rt_1483
    );
  Inst_Clock1562_CLKIN_IBUFG_INST : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk50,
      O => Inst_Clock1562_CLKIN_IBUFG_OUT
    );
  lcd_e_out_OBUF : X_OBUF
    port map (
      I => lcd_e_out_O,
      O => lcd_e_out
    );
  lcd_rs_out_OBUF : X_OBUF
    port map (
      I => lcd_rs_out_O,
      O => lcd_rs_out
    );
  leds_out_0_OBUF : X_OBUF
    port map (
      I => leds_out_0_O,
      O => leds_out(0)
    );
  leds_out_1_OBUF : X_OBUF
    port map (
      I => leds_out_1_O,
      O => leds_out(1)
    );
  leds_out_2_OBUF : X_OBUF
    port map (
      I => leds_out_2_O,
      O => leds_out(2)
    );
  rot_press_in_PULLDOWN : X_PD
    port map (
      O => NlwRenamedSig_IO_rot_press_in
    );
  rot_press_in_IBUF : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => NlwRenamedSig_IO_rot_press_in,
      O => rot_press_in_IBUF_1548
    );
  leds_out_3_OBUF : X_OBUF
    port map (
      I => leds_out_3_O,
      O => leds_out(3)
    );
  leds_out_4_OBUF : X_OBUF
    port map (
      I => leds_out_4_O,
      O => leds_out(4)
    );
  leds_out_5_OBUF : X_OBUF
    port map (
      I => leds_out_5_O,
      O => leds_out(5)
    );
  leds_out_6_OBUF : X_OBUF
    port map (
      I => leds_out_6_O,
      O => leds_out(6)
    );
  leds_out_7_OBUF : X_OBUF
    port map (
      I => leds_out_7_O,
      O => leds_out(7)
    );
  pb_in_0_PULLDOWN : X_PD
    port map (
      O => NlwRenamedSig_IO_pb_in(0)
    );
  pb_in_0_IBUF : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => NlwRenamedSig_IO_pb_in(0),
      O => pb_in_0_IBUF_1595
    );
  pb_in_1_PULLDOWN : X_PD
    port map (
      O => NlwRenamedSig_IO_pb_in(1)
    );
  pb_in_1_IBUF : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => NlwRenamedSig_IO_pb_in(1),
      O => pb_in_1_IBUF_1602
    );
  pb_in_2_PULLDOWN : X_PD
    port map (
      O => NlwRenamedSig_IO_pb_in(2)
    );
  pb_in_2_IBUF : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => NlwRenamedSig_IO_pb_in(2),
      O => pb_in_2_IBUF_1609
    );
  pb_in_3_PULLDOWN : X_PD
    port map (
      O => NlwRenamedSig_IO_pb_in(3)
    );
  pb_in_3_IBUF : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => NlwRenamedSig_IO_pb_in(3),
      O => pb_in_3_IBUF_1616
    );
  rot_in_0_PULLUP : X_PU
    port map (
      O => NlwRenamedSig_IO_rot_in(0)
    );
  rot_in_0_IBUF : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => NlwRenamedSig_IO_rot_in(0),
      O => rot_in_0_IBUF_1623
    );
  Inst_Interfaz_Mmux_rotary_q1_mux000011 : X_LUT4
    generic map(
      INIT => X"E8E8"
    )
    port map (
      ADR0 => Inst_Interfaz_rotary_in(1),
      ADR1 => Inst_Interfaz_rotary_q1_744,
      ADR2 => Inst_Interfaz_rotary_in(0),
      ADR3 => VCC,
      O => Inst_Interfaz_rotary_q1_mux0000
    );
  leds_out_5_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Mshreg_leds_out_5,
      O => leds_out_5_DXMUX_2015
    );
  leds_out_5_DIF_MUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_pb1_state_FSM_FFd2_745,
      O => leds_out_5_DIF_MUX_2004
    );
  leds_out_5_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Mshreg_leds_out_4,
      O => leds_out_5_DYMUX_1999
    );
  leds_out_5_DIG_MUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_pb0_state_FSM_FFd2_746,
      O => leds_out_5_DIG_MUX_1988
    );
  leds_out_5_SRINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => leds_out_5_SRINV_1980
    );
  leds_out_5_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => leds_out_5_CLKINV_1986
    );
  leds_out_7_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Mshreg_leds_out_7,
      O => leds_out_7_DXMUX_2068
    );
  leds_out_7_DIF_MUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_pb3_state_FSM_FFd2_747,
      O => leds_out_7_DIF_MUX_2057
    );
  leds_out_7_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Mshreg_leds_out_6,
      O => leds_out_7_DYMUX_2052
    );
  leds_out_7_DIG_MUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_pb2_state_FSM_FFd2_748,
      O => leds_out_7_DIG_MUX_2041
    );
  leds_out_7_SRINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => leds_out_7_SRINV_2033
    );
  leds_out_7_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => leds_out_7_CLKINV_2039
    );
  Inst_Interfaz_rotary_in_1_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Mshreg_rotary_in_1,
      O => Inst_Interfaz_rotary_in_1_DXMUX_2121
    );
  Inst_Interfaz_rotary_in_1_DIF_MUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => rot(1),
      O => Inst_Interfaz_rotary_in_1_DIF_MUX_2110
    );
  Inst_Interfaz_rotary_in_1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Mshreg_rotary_in_0,
      O => Inst_Interfaz_rotary_in_1_DYMUX_2105
    );
  Inst_Interfaz_rotary_in_1_DIG_MUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => rot(0),
      O => Inst_Interfaz_rotary_in_1_DIG_MUX_2094
    );
  Inst_Interfaz_rotary_in_1_SRINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => Inst_Interfaz_rotary_in_1_SRINV_2086
    );
  Inst_Interfaz_rotary_in_1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Interfaz_rotary_in_1_CLKINV_2092
    );
  Inst_UControl_state_FSM_FFd4_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_state_FSM_FFd4_In,
      O => Inst_UControl_state_FSM_FFd4_DXMUX_2160
    );
  Inst_UControl_state_FSM_FFd4_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_state_cmp_eq0016,
      O => Inst_UControl_state_FSM_FFd4_DYMUX_2146
    );
  Inst_UControl_state_FSM_FFd4_SRINV : X_INV
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_rst_n_728,
      O => Inst_UControl_state_FSM_FFd4_SRINVNOT
    );
  Inst_UControl_state_FSM_FFd4_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_UControl_state_FSM_FFd4_CLKINV_2136
    );
  Inst_UControl_state_FSM_Out01 : X_LUT4
    generic map(
      INIT => X"0202"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd1_734,
      ADR1 => Inst_UControl_state_FSM_FFd4_730,
      ADR2 => Inst_UControl_state_FSM_FFd5_729,
      ADR3 => VCC,
      O => Inst_UControl_state_cmp_eq0016
    );
  Inst_UControl_LCD_DB_1_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_state_index0008,
      O => Inst_UControl_LCD_DB_1_DXMUX_2202
    );
  Inst_UControl_LCD_DB_1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_state_index0009,
      O => Inst_UControl_LCD_DB_1_DYMUX_2187
    );
  Inst_UControl_LCD_DB_1_SRINV : X_INV
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_rst_n_728,
      O => Inst_UControl_LCD_DB_1_SRINVNOT
    );
  Inst_UControl_LCD_DB_1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_UControl_LCD_DB_1_CLKINV_2178
    );
  Inst_UControl_state_FSM_Out131 : X_LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd4_730,
      ADR1 => Inst_UControl_state_FSM_FFd2_733,
      ADR2 => Inst_UControl_state_FSM_FFd3_731,
      ADR3 => Inst_UControl_state_FSM_FFd1_734,
      O => Inst_UControl_state_index0009
    );
  Inst_UControl_LCD_DB_3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_state_index0006,
      O => Inst_UControl_LCD_DB_3_DXMUX_2244
    );
  Inst_UControl_LCD_DB_3_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_state_index0007,
      O => Inst_UControl_LCD_DB_3_DYMUX_2230
    );
  Inst_UControl_LCD_DB_3_SRINV : X_INV
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_rst_n_728,
      O => Inst_UControl_LCD_DB_3_SRINVNOT
    );
  Inst_UControl_LCD_DB_3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_UControl_LCD_DB_3_CLKINV_2219
    );
  Inst_UControl_state_FSM_Out1021 : X_LUT4
    generic map(
      INIT => X"4444"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd3_731,
      ADR1 => Inst_UControl_state_FSM_FFd2_733,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_UControl_state_index0007
    );
  Inst_UControl_LCD_DB_5_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_state_index0004,
      O => Inst_UControl_LCD_DB_5_DYMUX_2267
    );
  Inst_UControl_LCD_DB_5_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_UControl_LCD_DB_5_CLKINV_2258
    );
  Inst_UControl_state_FSM_FFd1_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_state_FSM_FFd1_In_2307,
      O => Inst_UControl_state_FSM_FFd1_DXMUX_2310
    );
  Inst_UControl_state_FSM_FFd1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_state_FSM_FFd1_GYMUX_2295,
      O => Inst_UControl_state_FSM_FFd1_DYMUX_2296
    );
  Inst_UControl_state_FSM_FFd1_YUSED : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_state_FSM_FFd1_GYMUX_2295,
      O => Inst_UControl_state_index0002
    );
  Inst_UControl_state_FSM_FFd1_GYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_state_index0002_pack_1,
      O => Inst_UControl_state_FSM_FFd1_GYMUX_2295
    );
  Inst_UControl_state_FSM_FFd1_SRINV : X_INV
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_rst_n_728,
      O => Inst_UControl_state_FSM_FFd1_SRINVNOT
    );
  Inst_UControl_state_FSM_FFd1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_UControl_state_FSM_FFd1_CLKINV_2286
    );
  Inst_UControl_state_Out71 : X_LUT4
    generic map(
      INIT => X"8080"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd2_733,
      ADR1 => Inst_UControl_state_FSM_FFd3_731,
      ADR2 => Inst_UControl_state_FSM_FFd4_730,
      ADR3 => VCC,
      O => Inst_UControl_state_index0002_pack_1
    );
  Inst_UControl_state_FSM_FFd5_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_state_FSM_FFd5_In,
      O => Inst_UControl_state_FSM_FFd5_DYMUX_2333
    );
  Inst_UControl_state_FSM_FFd5_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_UControl_state_FSM_FFd5_CLKINV_2322
    );
  Inst_UControl_tiempo_1_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_state_index0000,
      O => Inst_UControl_tiempo_1_DXMUX_2375
    );
  Inst_UControl_tiempo_1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_state_index0001,
      O => Inst_UControl_tiempo_1_DYMUX_2361
    );
  Inst_UControl_tiempo_1_SRINV : X_INV
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_rst_n_728,
      O => Inst_UControl_tiempo_1_SRINVNOT
    );
  Inst_UControl_tiempo_1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_UControl_tiempo_1_CLKINV_2352
    );
  Inst_UControl_state_FSM_Out41 : X_LUT4
    generic map(
      INIT => X"0301"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd1_734,
      ADR1 => Inst_UControl_state_FSM_FFd2_733,
      ADR2 => Inst_UControl_state_FSM_FFd4_730,
      ADR3 => Inst_UControl_state_FSM_FFd3_731,
      O => Inst_UControl_state_index0001
    );
  leds_out_1_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Mshreg_leds_out_1,
      O => leds_out_1_DXMUX_2431
    );
  leds_out_1_DIF_MUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd2_752,
      O => leds_out_1_DIF_MUX_2420
    );
  leds_out_1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Mshreg_leds_out_0,
      O => leds_out_1_DYMUX_2415
    );
  leds_out_1_DIG_MUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => modo_int_753,
      O => leds_out_1_DIG_MUX_2404
    );
  leds_out_1_SRINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => leds_out_1_SRINV_2396
    );
  leds_out_1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => leds_out_1_CLKINV_2402
    );
  leds_out_3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_LEDS_led(3),
      O => leds_out_3_DXMUX_2447
    );
  leds_out_3_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_LEDS_led(2),
      O => leds_out_3_DYMUX_2442
    );
  leds_out_3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => leds_out_3_CLKINV_2440
    );
  Inst_Interfaz_rotary_event_not00011 : X_LUT4
    generic map(
      INIT => X"DDDD"
    )
    port map (
      ADR0 => Inst_Interfaz_rotary_q1_744,
      ADR1 => Inst_Interfaz_delay_rotary_q1_756,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Interfaz_rotary_event_not0001
    );
  Inst_Interfaz_delay_rotary_q1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_rotary_q1_744,
      O => Inst_Interfaz_delay_rotary_q1_DYMUX_2480
    );
  Inst_Interfaz_delay_rotary_q1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Interfaz_delay_rotary_q1_CLKINV_2478
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_10_LOGIC_ZERO : X_ZERO
    port map (
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_10_LOGIC_ZERO_1072
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_10_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_10_XORF_1073,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_10_DXMUX_1075
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_10_XORF : X_XOR2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_contador_10_CYINIT_1071,
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_contador_10_F,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_10_XORF_1073
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_10_CYMUXF : X_MUX2
    port map (
      IA => Inst_Interfaz_Inst_divDEBOUNCER_contador_10_LOGIC_ZERO_1072,
      IB => Inst_Interfaz_Inst_divDEBOUNCER_contador_10_CYINIT_1071,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_contador_10_CYSELF_1062,
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_10_Q
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_10_CYINIT : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYMUXFAST_1008,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_10_CYINIT_1071
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_10_CYSELF : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_10_F,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_10_CYSELF_1062
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_10_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_10_XORG_1054,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_10_DYMUX_1056
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_10_XORG : X_XOR2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_10_Q,
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_contador_11_rt_1051,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_10_XORG_1054
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_10_SRINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000_0,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_10_SRINV_1043
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_10_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_10_CLKINV_1042
    );
  Inst_Counter_temp_0_LOGIC_ZERO : X_ZERO
    port map (
      O => Inst_Counter_temp_0_LOGIC_ZERO_1100
    );
  Inst_Counter_temp_0_LOGIC_ONE : X_ONE
    port map (
      O => Inst_Counter_temp_0_LOGIC_ONE_1124
    );
  Inst_Counter_temp_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_Mcount_temp_lut(0),
      O => Inst_Counter_temp_0_DXMUX_1126
    );
  Inst_Counter_temp_0_CYMUXF : X_MUX2
    port map (
      IA => Inst_Counter_temp_0_LOGIC_ONE_1124,
      IB => Inst_Counter_temp_0_CYINIT_1123,
      SEL => Inst_Counter_temp_0_CYSELF_1114,
      O => Inst_Counter_Mcount_temp_cy(0)
    );
  Inst_Counter_temp_0_CYINIT : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => GLOBAL_LOGIC0,
      O => Inst_Counter_temp_0_CYINIT_1123
    );
  Inst_Counter_temp_0_CYSELF : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_Mcount_temp_lut(0),
      O => Inst_Counter_temp_0_CYSELF_1114
    );
  Inst_Counter_temp_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_0_XORG_1103,
      O => Inst_Counter_temp_0_DYMUX_1105
    );
  Inst_Counter_temp_0_XORG : X_XOR2
    port map (
      I0 => Inst_Counter_Mcount_temp_cy(0),
      I1 => Inst_Counter_temp_0_G,
      O => Inst_Counter_temp_0_XORG_1103
    );
  Inst_Counter_temp_0_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_0_CYMUXG_1102,
      O => Inst_Counter_Mcount_temp_cy(1)
    );
  Inst_Counter_temp_0_CYMUXG : X_MUX2
    port map (
      IA => Inst_Counter_temp_0_LOGIC_ZERO_1100,
      IB => Inst_Counter_Mcount_temp_cy(0),
      SEL => Inst_Counter_temp_0_CYSELG_1091,
      O => Inst_Counter_temp_0_CYMUXG_1102
    );
  Inst_Counter_temp_0_CYSELG : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_0_G,
      O => Inst_Counter_temp_0_CYSELG_1091
    );
  Inst_Counter_temp_0_SRINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_clr_timer_673,
      O => Inst_Counter_temp_0_SRINV_1089
    );
  Inst_Counter_temp_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Counter_temp_0_CLKINV_1088
    );
  Inst_Counter_temp_2_LOGIC_ZERO : X_ZERO
    port map (
      O => Inst_Counter_temp_2_LOGIC_ZERO_1153
    );
  Inst_Counter_temp_2_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_2_XORF_1180,
      O => Inst_Counter_temp_2_DXMUX_1182
    );
  Inst_Counter_temp_2_XORF : X_XOR2
    port map (
      I0 => Inst_Counter_temp_2_CYINIT_1179,
      I1 => Inst_Counter_temp_2_F,
      O => Inst_Counter_temp_2_XORF_1180
    );
  Inst_Counter_temp_2_CYMUXF : X_MUX2
    port map (
      IA => Inst_Counter_temp_2_LOGIC_ZERO_1153,
      IB => Inst_Counter_temp_2_CYINIT_1179,
      SEL => Inst_Counter_temp_2_CYSELF_1159,
      O => Inst_Counter_Mcount_temp_cy(2)
    );
  Inst_Counter_temp_2_CYMUXF2 : X_MUX2
    port map (
      IA => Inst_Counter_temp_2_LOGIC_ZERO_1153,
      IB => Inst_Counter_temp_2_LOGIC_ZERO_1153,
      SEL => Inst_Counter_temp_2_CYSELF_1159,
      O => Inst_Counter_temp_2_CYMUXF2_1154
    );
  Inst_Counter_temp_2_CYINIT : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_Mcount_temp_cy(1),
      O => Inst_Counter_temp_2_CYINIT_1179
    );
  Inst_Counter_temp_2_CYSELF : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_2_F,
      O => Inst_Counter_temp_2_CYSELF_1159
    );
  Inst_Counter_temp_2_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_2_XORG_1161,
      O => Inst_Counter_temp_2_DYMUX_1163
    );
  Inst_Counter_temp_2_XORG : X_XOR2
    port map (
      I0 => Inst_Counter_Mcount_temp_cy(2),
      I1 => Inst_Counter_temp_2_G,
      O => Inst_Counter_temp_2_XORG_1161
    );
  Inst_Counter_temp_2_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_2_CYMUXFAST_1158,
      O => Inst_Counter_Mcount_temp_cy(3)
    );
  Inst_Counter_temp_2_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_Mcount_temp_cy(1),
      O => Inst_Counter_temp_2_FASTCARRY_1156
    );
  Inst_Counter_temp_2_CYAND : X_AND2
    port map (
      I0 => Inst_Counter_temp_2_CYSELG_1144,
      I1 => Inst_Counter_temp_2_CYSELF_1159,
      O => Inst_Counter_temp_2_CYAND_1157
    );
  Inst_Counter_temp_2_CYMUXFAST : X_MUX2
    port map (
      IA => Inst_Counter_temp_2_CYMUXG2_1155,
      IB => Inst_Counter_temp_2_FASTCARRY_1156,
      SEL => Inst_Counter_temp_2_CYAND_1157,
      O => Inst_Counter_temp_2_CYMUXFAST_1158
    );
  Inst_Counter_temp_2_CYMUXG2 : X_MUX2
    port map (
      IA => Inst_Counter_temp_2_LOGIC_ZERO_1153,
      IB => Inst_Counter_temp_2_CYMUXF2_1154,
      SEL => Inst_Counter_temp_2_CYSELG_1144,
      O => Inst_Counter_temp_2_CYMUXG2_1155
    );
  Inst_Counter_temp_2_CYSELG : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_2_G,
      O => Inst_Counter_temp_2_CYSELG_1144
    );
  Inst_Counter_temp_2_SRINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_clr_timer_673,
      O => Inst_Counter_temp_2_SRINV_1142
    );
  Inst_Counter_temp_2_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Counter_temp_2_CLKINV_1141
    );
  Inst_Counter_temp_4_LOGIC_ZERO : X_ZERO
    port map (
      O => Inst_Counter_temp_4_LOGIC_ZERO_1209
    );
  Inst_Counter_temp_4_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_4_XORF_1236,
      O => Inst_Counter_temp_4_DXMUX_1238
    );
  Inst_Counter_temp_4_XORF : X_XOR2
    port map (
      I0 => Inst_Counter_temp_4_CYINIT_1235,
      I1 => Inst_Counter_temp_4_F,
      O => Inst_Counter_temp_4_XORF_1236
    );
  Inst_Counter_temp_4_CYMUXF : X_MUX2
    port map (
      IA => Inst_Counter_temp_4_LOGIC_ZERO_1209,
      IB => Inst_Counter_temp_4_CYINIT_1235,
      SEL => Inst_Counter_temp_4_CYSELF_1215,
      O => Inst_Counter_Mcount_temp_cy(4)
    );
  Inst_Counter_temp_4_CYMUXF2 : X_MUX2
    port map (
      IA => Inst_Counter_temp_4_LOGIC_ZERO_1209,
      IB => Inst_Counter_temp_4_LOGIC_ZERO_1209,
      SEL => Inst_Counter_temp_4_CYSELF_1215,
      O => Inst_Counter_temp_4_CYMUXF2_1210
    );
  Inst_Counter_temp_4_CYINIT : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_Mcount_temp_cy(3),
      O => Inst_Counter_temp_4_CYINIT_1235
    );
  Inst_Counter_temp_4_CYSELF : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_4_F,
      O => Inst_Counter_temp_4_CYSELF_1215
    );
  Inst_Counter_temp_4_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_4_XORG_1217,
      O => Inst_Counter_temp_4_DYMUX_1219
    );
  Inst_Counter_temp_4_XORG : X_XOR2
    port map (
      I0 => Inst_Counter_Mcount_temp_cy(4),
      I1 => Inst_Counter_temp_4_G,
      O => Inst_Counter_temp_4_XORG_1217
    );
  Inst_Counter_temp_4_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_4_CYMUXFAST_1214,
      O => Inst_Counter_Mcount_temp_cy(5)
    );
  Inst_Counter_temp_4_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_Mcount_temp_cy(3),
      O => Inst_Counter_temp_4_FASTCARRY_1212
    );
  Inst_Counter_temp_4_CYAND : X_AND2
    port map (
      I0 => Inst_Counter_temp_4_CYSELG_1200,
      I1 => Inst_Counter_temp_4_CYSELF_1215,
      O => Inst_Counter_temp_4_CYAND_1213
    );
  Inst_Counter_temp_4_CYMUXFAST : X_MUX2
    port map (
      IA => Inst_Counter_temp_4_CYMUXG2_1211,
      IB => Inst_Counter_temp_4_FASTCARRY_1212,
      SEL => Inst_Counter_temp_4_CYAND_1213,
      O => Inst_Counter_temp_4_CYMUXFAST_1214
    );
  Inst_Counter_temp_4_CYMUXG2 : X_MUX2
    port map (
      IA => Inst_Counter_temp_4_LOGIC_ZERO_1209,
      IB => Inst_Counter_temp_4_CYMUXF2_1210,
      SEL => Inst_Counter_temp_4_CYSELG_1200,
      O => Inst_Counter_temp_4_CYMUXG2_1211
    );
  Inst_Counter_temp_4_CYSELG : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_4_G,
      O => Inst_Counter_temp_4_CYSELG_1200
    );
  Inst_Counter_temp_4_SRINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_clr_timer_673,
      O => Inst_Counter_temp_4_SRINV_1198
    );
  Inst_Counter_temp_4_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Counter_temp_4_CLKINV_1197
    );
  Inst_Counter_temp_6_LOGIC_ZERO : X_ZERO
    port map (
      O => Inst_Counter_temp_6_LOGIC_ZERO_1265
    );
  Inst_Counter_temp_6_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_6_XORF_1292,
      O => Inst_Counter_temp_6_DXMUX_1294
    );
  Inst_Counter_temp_6_XORF : X_XOR2
    port map (
      I0 => Inst_Counter_temp_6_CYINIT_1291,
      I1 => Inst_Counter_temp_6_F,
      O => Inst_Counter_temp_6_XORF_1292
    );
  Inst_Counter_temp_6_CYMUXF : X_MUX2
    port map (
      IA => Inst_Counter_temp_6_LOGIC_ZERO_1265,
      IB => Inst_Counter_temp_6_CYINIT_1291,
      SEL => Inst_Counter_temp_6_CYSELF_1271,
      O => Inst_Counter_Mcount_temp_cy(6)
    );
  Inst_Counter_temp_6_CYMUXF2 : X_MUX2
    port map (
      IA => Inst_Counter_temp_6_LOGIC_ZERO_1265,
      IB => Inst_Counter_temp_6_LOGIC_ZERO_1265,
      SEL => Inst_Counter_temp_6_CYSELF_1271,
      O => Inst_Counter_temp_6_CYMUXF2_1266
    );
  Inst_Counter_temp_6_CYINIT : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_Mcount_temp_cy(5),
      O => Inst_Counter_temp_6_CYINIT_1291
    );
  Inst_Counter_temp_6_CYSELF : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_6_F,
      O => Inst_Counter_temp_6_CYSELF_1271
    );
  Inst_Counter_temp_6_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_6_XORG_1273,
      O => Inst_Counter_temp_6_DYMUX_1275
    );
  Inst_Counter_temp_6_XORG : X_XOR2
    port map (
      I0 => Inst_Counter_Mcount_temp_cy(6),
      I1 => Inst_Counter_temp_6_G,
      O => Inst_Counter_temp_6_XORG_1273
    );
  Inst_Counter_temp_6_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_6_CYMUXFAST_1270,
      O => Inst_Counter_Mcount_temp_cy(7)
    );
  Inst_Counter_temp_6_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_Mcount_temp_cy(5),
      O => Inst_Counter_temp_6_FASTCARRY_1268
    );
  Inst_Counter_temp_6_CYAND : X_AND2
    port map (
      I0 => Inst_Counter_temp_6_CYSELG_1256,
      I1 => Inst_Counter_temp_6_CYSELF_1271,
      O => Inst_Counter_temp_6_CYAND_1269
    );
  Inst_Counter_temp_6_CYMUXFAST : X_MUX2
    port map (
      IA => Inst_Counter_temp_6_CYMUXG2_1267,
      IB => Inst_Counter_temp_6_FASTCARRY_1268,
      SEL => Inst_Counter_temp_6_CYAND_1269,
      O => Inst_Counter_temp_6_CYMUXFAST_1270
    );
  Inst_Counter_temp_6_CYMUXG2 : X_MUX2
    port map (
      IA => Inst_Counter_temp_6_LOGIC_ZERO_1265,
      IB => Inst_Counter_temp_6_CYMUXF2_1266,
      SEL => Inst_Counter_temp_6_CYSELG_1256,
      O => Inst_Counter_temp_6_CYMUXG2_1267
    );
  Inst_Counter_temp_6_CYSELG : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_6_G,
      O => Inst_Counter_temp_6_CYSELG_1256
    );
  Inst_Counter_temp_6_SRINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_clr_timer_673,
      O => Inst_Counter_temp_6_SRINV_1254
    );
  Inst_Counter_temp_6_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Counter_temp_6_CLKINV_1253
    );
  Inst_Counter_temp_8_LOGIC_ZERO : X_ZERO
    port map (
      O => Inst_Counter_temp_8_LOGIC_ZERO_1321
    );
  Inst_Counter_temp_8_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_8_XORF_1348,
      O => Inst_Counter_temp_8_DXMUX_1350
    );
  Inst_Counter_temp_8_XORF : X_XOR2
    port map (
      I0 => Inst_Counter_temp_8_CYINIT_1347,
      I1 => Inst_Counter_temp_8_F,
      O => Inst_Counter_temp_8_XORF_1348
    );
  Inst_Counter_temp_8_CYMUXF : X_MUX2
    port map (
      IA => Inst_Counter_temp_8_LOGIC_ZERO_1321,
      IB => Inst_Counter_temp_8_CYINIT_1347,
      SEL => Inst_Counter_temp_8_CYSELF_1327,
      O => Inst_Counter_Mcount_temp_cy(8)
    );
  Inst_Counter_temp_8_CYMUXF2 : X_MUX2
    port map (
      IA => Inst_Counter_temp_8_LOGIC_ZERO_1321,
      IB => Inst_Counter_temp_8_LOGIC_ZERO_1321,
      SEL => Inst_Counter_temp_8_CYSELF_1327,
      O => Inst_Counter_temp_8_CYMUXF2_1322
    );
  Inst_Counter_temp_8_CYINIT : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_Mcount_temp_cy(7),
      O => Inst_Counter_temp_8_CYINIT_1347
    );
  Inst_Counter_temp_8_CYSELF : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_8_F,
      O => Inst_Counter_temp_8_CYSELF_1327
    );
  Inst_Counter_temp_8_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_8_XORG_1329,
      O => Inst_Counter_temp_8_DYMUX_1331
    );
  Inst_Counter_temp_8_XORG : X_XOR2
    port map (
      I0 => Inst_Counter_Mcount_temp_cy(8),
      I1 => Inst_Counter_temp_8_G,
      O => Inst_Counter_temp_8_XORG_1329
    );
  Inst_Counter_temp_8_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_8_CYMUXFAST_1326,
      O => Inst_Counter_Mcount_temp_cy(9)
    );
  Inst_Counter_temp_8_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_Mcount_temp_cy(7),
      O => Inst_Counter_temp_8_FASTCARRY_1324
    );
  Inst_Counter_temp_8_CYAND : X_AND2
    port map (
      I0 => Inst_Counter_temp_8_CYSELG_1312,
      I1 => Inst_Counter_temp_8_CYSELF_1327,
      O => Inst_Counter_temp_8_CYAND_1325
    );
  Inst_Counter_temp_8_CYMUXFAST : X_MUX2
    port map (
      IA => Inst_Counter_temp_8_CYMUXG2_1323,
      IB => Inst_Counter_temp_8_FASTCARRY_1324,
      SEL => Inst_Counter_temp_8_CYAND_1325,
      O => Inst_Counter_temp_8_CYMUXFAST_1326
    );
  Inst_Counter_temp_8_CYMUXG2 : X_MUX2
    port map (
      IA => Inst_Counter_temp_8_LOGIC_ZERO_1321,
      IB => Inst_Counter_temp_8_CYMUXF2_1322,
      SEL => Inst_Counter_temp_8_CYSELG_1312,
      O => Inst_Counter_temp_8_CYMUXG2_1323
    );
  Inst_Counter_temp_8_CYSELG : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_8_G,
      O => Inst_Counter_temp_8_CYSELG_1312
    );
  Inst_Counter_temp_8_SRINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_clr_timer_673,
      O => Inst_Counter_temp_8_SRINV_1310
    );
  Inst_Counter_temp_8_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Counter_temp_8_CLKINV_1309
    );
  Inst_Counter_temp_10_LOGIC_ZERO : X_ZERO
    port map (
      O => Inst_Counter_temp_10_LOGIC_ZERO_1377
    );
  Inst_Counter_temp_10_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_10_XORF_1404,
      O => Inst_Counter_temp_10_DXMUX_1406
    );
  Inst_Counter_temp_10_XORF : X_XOR2
    port map (
      I0 => Inst_Counter_temp_10_CYINIT_1403,
      I1 => Inst_Counter_temp_10_F,
      O => Inst_Counter_temp_10_XORF_1404
    );
  Inst_Counter_temp_10_CYMUXF : X_MUX2
    port map (
      IA => Inst_Counter_temp_10_LOGIC_ZERO_1377,
      IB => Inst_Counter_temp_10_CYINIT_1403,
      SEL => Inst_Counter_temp_10_CYSELF_1383,
      O => Inst_Counter_Mcount_temp_cy(10)
    );
  Inst_Counter_temp_10_CYMUXF2 : X_MUX2
    port map (
      IA => Inst_Counter_temp_10_LOGIC_ZERO_1377,
      IB => Inst_Counter_temp_10_LOGIC_ZERO_1377,
      SEL => Inst_Counter_temp_10_CYSELF_1383,
      O => Inst_Counter_temp_10_CYMUXF2_1378
    );
  Inst_Counter_temp_10_CYINIT : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_Mcount_temp_cy(9),
      O => Inst_Counter_temp_10_CYINIT_1403
    );
  Inst_Counter_temp_10_CYSELF : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_10_F,
      O => Inst_Counter_temp_10_CYSELF_1383
    );
  Inst_Counter_temp_10_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_10_XORG_1385,
      O => Inst_Counter_temp_10_DYMUX_1387
    );
  Inst_Counter_temp_10_XORG : X_XOR2
    port map (
      I0 => Inst_Counter_Mcount_temp_cy(10),
      I1 => Inst_Counter_temp_10_G,
      O => Inst_Counter_temp_10_XORG_1385
    );
  Inst_Counter_temp_10_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_10_CYMUXFAST_1382,
      O => Inst_Counter_Mcount_temp_cy(11)
    );
  Inst_Counter_temp_10_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_Mcount_temp_cy(9),
      O => Inst_Counter_temp_10_FASTCARRY_1380
    );
  Inst_Counter_temp_10_CYAND : X_AND2
    port map (
      I0 => Inst_Counter_temp_10_CYSELG_1368,
      I1 => Inst_Counter_temp_10_CYSELF_1383,
      O => Inst_Counter_temp_10_CYAND_1381
    );
  Inst_Counter_temp_10_CYMUXFAST : X_MUX2
    port map (
      IA => Inst_Counter_temp_10_CYMUXG2_1379,
      IB => Inst_Counter_temp_10_FASTCARRY_1380,
      SEL => Inst_Counter_temp_10_CYAND_1381,
      O => Inst_Counter_temp_10_CYMUXFAST_1382
    );
  Inst_Counter_temp_10_CYMUXG2 : X_MUX2
    port map (
      IA => Inst_Counter_temp_10_LOGIC_ZERO_1377,
      IB => Inst_Counter_temp_10_CYMUXF2_1378,
      SEL => Inst_Counter_temp_10_CYSELG_1368,
      O => Inst_Counter_temp_10_CYMUXG2_1379
    );
  Inst_Counter_temp_10_CYSELG : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_10_G,
      O => Inst_Counter_temp_10_CYSELG_1368
    );
  Inst_Counter_temp_10_SRINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_clr_timer_673,
      O => Inst_Counter_temp_10_SRINV_1366
    );
  Inst_Counter_temp_10_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Counter_temp_10_CLKINV_1365
    );
  Inst_Counter_temp_12_LOGIC_ZERO : X_ZERO
    port map (
      O => Inst_Counter_temp_12_LOGIC_ZERO_1433
    );
  Inst_Counter_temp_12_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_12_XORF_1460,
      O => Inst_Counter_temp_12_DXMUX_1462
    );
  Inst_Counter_temp_12_XORF : X_XOR2
    port map (
      I0 => Inst_Counter_temp_12_CYINIT_1459,
      I1 => Inst_Counter_temp_12_F,
      O => Inst_Counter_temp_12_XORF_1460
    );
  Inst_Counter_temp_12_CYMUXF : X_MUX2
    port map (
      IA => Inst_Counter_temp_12_LOGIC_ZERO_1433,
      IB => Inst_Counter_temp_12_CYINIT_1459,
      SEL => Inst_Counter_temp_12_CYSELF_1439,
      O => Inst_Counter_Mcount_temp_cy(12)
    );
  Inst_Counter_temp_12_CYMUXF2 : X_MUX2
    port map (
      IA => Inst_Counter_temp_12_LOGIC_ZERO_1433,
      IB => Inst_Counter_temp_12_LOGIC_ZERO_1433,
      SEL => Inst_Counter_temp_12_CYSELF_1439,
      O => Inst_Counter_temp_12_CYMUXF2_1434
    );
  Inst_Counter_temp_12_CYINIT : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_Mcount_temp_cy(11),
      O => Inst_Counter_temp_12_CYINIT_1459
    );
  Inst_Counter_temp_12_CYSELF : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_12_F,
      O => Inst_Counter_temp_12_CYSELF_1439
    );
  Inst_Counter_temp_12_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_12_XORG_1441,
      O => Inst_Counter_temp_12_DYMUX_1443
    );
  Inst_Counter_temp_12_XORG : X_XOR2
    port map (
      I0 => Inst_Counter_Mcount_temp_cy(12),
      I1 => Inst_Counter_temp_12_G,
      O => Inst_Counter_temp_12_XORG_1441
    );
  Inst_Counter_temp_12_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_Mcount_temp_cy(11),
      O => Inst_Counter_temp_12_FASTCARRY_1436
    );
  Inst_Counter_temp_12_CYAND : X_AND2
    port map (
      I0 => Inst_Counter_temp_12_CYSELG_1424,
      I1 => Inst_Counter_temp_12_CYSELF_1439,
      O => Inst_Counter_temp_12_CYAND_1437
    );
  Inst_Counter_temp_12_CYMUXFAST : X_MUX2
    port map (
      IA => Inst_Counter_temp_12_CYMUXG2_1435,
      IB => Inst_Counter_temp_12_FASTCARRY_1436,
      SEL => Inst_Counter_temp_12_CYAND_1437,
      O => Inst_Counter_temp_12_CYMUXFAST_1438
    );
  Inst_Counter_temp_12_CYMUXG2 : X_MUX2
    port map (
      IA => Inst_Counter_temp_12_LOGIC_ZERO_1433,
      IB => Inst_Counter_temp_12_CYMUXF2_1434,
      SEL => Inst_Counter_temp_12_CYSELG_1424,
      O => Inst_Counter_temp_12_CYMUXG2_1435
    );
  Inst_Counter_temp_12_CYSELG : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Counter_temp_12_G,
      O => Inst_Counter_temp_12_CYSELG_1424
    );
  Inst_Counter_temp_12_SRINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_clr_timer_673,
      O => Inst_Counter_temp_12_SRINV_1422
    );
  Inst_Counter_temp_12_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Counter_temp_12_CLKINV_1421
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_0_LOGIC_ZERO : X_ZERO
    port map (
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_LOGIC_ZERO_798
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_0_LOGIC_ONE : X_ONE
    port map (
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_LOGIC_ONE_820
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_lut(0),
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_DXMUX_822
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_0_CYMUXF : X_MUX2
    port map (
      IA => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_LOGIC_ONE_820,
      IB => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_CYINIT_819,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_CYSELF_810,
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_0_Q
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_0_CYINIT : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => GLOBAL_LOGIC0,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_CYINIT_819
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_0_CYSELF : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_lut(0),
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_CYSELF_810
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_XORG_801,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_DYMUX_803
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_0_XORG : X_XOR2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_0_Q,
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_G,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_XORG_801
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_0_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_CYMUXG_800,
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_1_Q
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_0_CYMUXG : X_MUX2
    port map (
      IA => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_LOGIC_ZERO_798,
      IB => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_0_Q,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_CYSELG_789,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_CYMUXG_800
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_0_CYSELG : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_G,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_CYSELG_789
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_0_SRINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000_0,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_SRINV_787
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_CLKINV_786
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_2_LOGIC_ZERO : X_ZERO
    port map (
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_LOGIC_ZERO_847
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_2_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_XORF_872,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_DXMUX_874
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_2_XORF : X_XOR2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYINIT_871,
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_F,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_XORF_872
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYMUXF : X_MUX2
    port map (
      IA => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_LOGIC_ZERO_847,
      IB => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYINIT_871,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYSELF_853,
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_2_Q
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYMUXF2 : X_MUX2
    port map (
      IA => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_LOGIC_ZERO_847,
      IB => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_LOGIC_ZERO_847,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYSELF_853,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYMUXF2_848
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYINIT : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_1_Q,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYINIT_871
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYSELF : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_F,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYSELF_853
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_2_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_XORG_855,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_DYMUX_857
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_2_XORG : X_XOR2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_2_Q,
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_G,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_XORG_855
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_2_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYMUXFAST_852,
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_3_Q
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_2_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_1_Q,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_FASTCARRY_850
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYAND : X_AND2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYSELG_838,
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYSELF_853,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYAND_851
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYMUXFAST : X_MUX2
    port map (
      IA => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYMUXG2_849,
      IB => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_FASTCARRY_850,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYAND_851,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYMUXFAST_852
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYMUXG2 : X_MUX2
    port map (
      IA => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_LOGIC_ZERO_847,
      IB => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYMUXF2_848,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYSELG_838,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYMUXG2_849
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYSELG : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_G,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CYSELG_838
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_2_SRINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000_0,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_SRINV_836
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CLKINV_835
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_4_LOGIC_ZERO : X_ZERO
    port map (
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_LOGIC_ZERO_899
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_4_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_XORF_924,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_DXMUX_926
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_4_XORF : X_XOR2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYINIT_923,
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_F,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_XORF_924
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYMUXF : X_MUX2
    port map (
      IA => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_LOGIC_ZERO_899,
      IB => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYINIT_923,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYSELF_905,
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_4_Q
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYMUXF2 : X_MUX2
    port map (
      IA => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_LOGIC_ZERO_899,
      IB => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_LOGIC_ZERO_899,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYSELF_905,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYMUXF2_900
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYINIT : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_3_Q,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYINIT_923
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYSELF : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_F,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYSELF_905
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_4_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_XORG_907,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_DYMUX_909
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_4_XORG : X_XOR2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_4_Q,
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_G,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_XORG_907
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_4_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYMUXFAST_904,
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_5_Q
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_4_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_3_Q,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_FASTCARRY_902
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYAND : X_AND2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYSELG_890,
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYSELF_905,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYAND_903
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYMUXFAST : X_MUX2
    port map (
      IA => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYMUXG2_901,
      IB => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_FASTCARRY_902,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYAND_903,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYMUXFAST_904
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYMUXG2 : X_MUX2
    port map (
      IA => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_LOGIC_ZERO_899,
      IB => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYMUXF2_900,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYSELG_890,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYMUXG2_901
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYSELG : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_G,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CYSELG_890
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_4_SRINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000_0,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_SRINV_888
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CLKINV_887
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_6_LOGIC_ZERO : X_ZERO
    port map (
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_LOGIC_ZERO_951
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_6_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_XORF_976,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_DXMUX_978
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_6_XORF : X_XOR2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYINIT_975,
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_F,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_XORF_976
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYMUXF : X_MUX2
    port map (
      IA => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_LOGIC_ZERO_951,
      IB => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYINIT_975,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYSELF_957,
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_6_Q
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYMUXF2 : X_MUX2
    port map (
      IA => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_LOGIC_ZERO_951,
      IB => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_LOGIC_ZERO_951,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYSELF_957,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYMUXF2_952
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYINIT : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_5_Q,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYINIT_975
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYSELF : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_F,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYSELF_957
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_6_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_XORG_959,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_DYMUX_961
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_6_XORG : X_XOR2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_6_Q,
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_G,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_XORG_959
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_6_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYMUXFAST_956,
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_7_Q
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_6_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_5_Q,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_FASTCARRY_954
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYAND : X_AND2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYSELG_942,
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYSELF_957,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYAND_955
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYMUXFAST : X_MUX2
    port map (
      IA => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYMUXG2_953,
      IB => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_FASTCARRY_954,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYAND_955,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYMUXFAST_956
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYMUXG2 : X_MUX2
    port map (
      IA => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_LOGIC_ZERO_951,
      IB => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYMUXF2_952,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYSELG_942,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYMUXG2_953
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYSELG : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_G,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CYSELG_942
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_6_SRINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000_0,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_SRINV_940
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CLKINV_939
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_8_LOGIC_ZERO : X_ZERO
    port map (
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_LOGIC_ZERO_1003
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_8_DXMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_XORF_1028,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_DXMUX_1030
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_8_XORF : X_XOR2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYINIT_1027,
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_F,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_XORF_1028
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYMUXF : X_MUX2
    port map (
      IA => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_LOGIC_ZERO_1003,
      IB => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYINIT_1027,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYSELF_1009,
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_8_Q
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYMUXF2 : X_MUX2
    port map (
      IA => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_LOGIC_ZERO_1003,
      IB => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_LOGIC_ZERO_1003,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYSELF_1009,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYMUXF2_1004
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYINIT : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_7_Q,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYINIT_1027
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYSELF : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_F,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYSELF_1009
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_8_DYMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_XORG_1011,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_DYMUX_1013
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_8_XORG : X_XOR2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_8_Q,
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_G,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_XORG_1011
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_8_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_cy_7_Q,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_FASTCARRY_1006
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYAND : X_AND2
    port map (
      I0 => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYSELG_994,
      I1 => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYSELF_1009,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYAND_1007
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYMUXFAST : X_MUX2
    port map (
      IA => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYMUXG2_1005,
      IB => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_FASTCARRY_1006,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYAND_1007,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYMUXFAST_1008
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYMUXG2 : X_MUX2
    port map (
      IA => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_LOGIC_ZERO_1003,
      IB => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYMUXF2_1004,
      SEL => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYSELG_994,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYMUXG2_1005
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYSELG : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_G,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CYSELG_994
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_8_SRINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000_0,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_SRINV_992
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CLKINV : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => clk640,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CLKINV_991
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_11 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_10_DYMUX_1056,
      CE => VCC,
      CLK => Inst_Interfaz_Inst_divDEBOUNCER_contador_10_CLKINV_1042,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_contador_10_SRINV_1043,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador(11)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_11_rt : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(11),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_11_rt_1051
    );
  Inst_UControl_state_FSM_FFd5_In1 : X_LUT4
    generic map(
      INIT => X"7777"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd5_729,
      ADR1 => Inst_Counter_tic_727,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_UControl_state_FSM_FFd5_In
    );
  Mshreg_leds_out_0_SRL16E : X_SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => GLOBAL_LOGIC1,
      A1 => GLOBAL_LOGIC0,
      A2 => GLOBAL_LOGIC0,
      A3 => GLOBAL_LOGIC0,
      D => leds_out_1_DIG_MUX_2404,
      CE => leds_out_1_SRINV_2396,
      CLK => leds_out_1_CLKINV_2402,
      Q => Mshreg_leds_out_0,
      Q15 => NLW_Mshreg_leds_out_0_SRL16E_Q15_UNCONNECTED
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_DYMUX_803,
      CE => VCC,
      CLK => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_CLKINV_786,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_SRINV_787,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador(1)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"5555"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Interfaz_Inst_divDEBOUNCER_Mcount_contador_lut(0)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_DXMUX_822,
      CE => VCC,
      CLK => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_CLKINV_786,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_SRINV_787,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador(0)
    );
  Inst_Counter_Mmux_tic_mux0001_3 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => Inst_UControl_tiempo(0),
      ADR1 => Inst_Counter_temp(12),
      ADR2 => Inst_Counter_temp(14),
      ADR3 => VCC,
      O => Inst_Counter_Mmux_tic_mux0001_3_1771
    );
  Inst_UControl_state_FSM_FFd3_In_SW1 : X_LUT4
    generic map(
      INIT => X"9D99"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd3_731,
      ADR1 => Inst_Counter_tic_727,
      ADR2 => Inst_UControl_state_FSM_FFd2_733,
      ADR3 => Inst_UControl_state_FSM_FFd1_734,
      O => Inst_UControl_state_FSM_FFd3_In_SW1_O_pack_1
    );
  Mshreg_leds_out_4_SRL16E : X_SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => GLOBAL_LOGIC1,
      A1 => GLOBAL_LOGIC0,
      A2 => GLOBAL_LOGIC0,
      A3 => GLOBAL_LOGIC0,
      D => leds_out_5_DIG_MUX_1988,
      CE => leds_out_5_SRINV_1980,
      CLK => leds_out_5_CLKINV_1986,
      Q => Mshreg_leds_out_4,
      Q15 => NLW_Mshreg_leds_out_4_SRL16E_Q15_UNCONNECTED
    );
  Mshreg_leds_out_6_SRL16E : X_SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => GLOBAL_LOGIC1,
      A1 => GLOBAL_LOGIC0,
      A2 => GLOBAL_LOGIC0,
      A3 => GLOBAL_LOGIC0,
      D => leds_out_7_DIG_MUX_2041,
      CE => leds_out_7_SRINV_2033,
      CLK => leds_out_7_CLKINV_2039,
      Q => Mshreg_leds_out_6,
      Q15 => NLW_Mshreg_leds_out_6_SRL16E_Q15_UNCONNECTED
    );
  Inst_Interfaz_Mshreg_rotary_in_0_SRL16E : X_SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => GLOBAL_LOGIC0,
      A1 => GLOBAL_LOGIC0,
      A2 => GLOBAL_LOGIC0,
      A3 => GLOBAL_LOGIC0,
      D => Inst_Interfaz_rotary_in_1_DIG_MUX_2094,
      CE => Inst_Interfaz_rotary_in_1_SRINV_2086,
      CLK => Inst_Interfaz_rotary_in_1_CLKINV_2092,
      Q => Inst_Interfaz_Mshreg_rotary_in_0,
      Q15 => NLW_Inst_Interfaz_Mshreg_rotary_in_0_SRL16E_Q15_UNCONNECTED
    );
  Inst_UControl_state_Out91 : X_LUT4
    generic map(
      INIT => X"45F4"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd2_733,
      ADR1 => Inst_UControl_state_FSM_FFd3_731,
      ADR2 => Inst_UControl_state_FSM_FFd1_734,
      ADR3 => Inst_UControl_state_FSM_FFd4_730,
      O => Inst_UControl_state_index0004
    );
  Inst_UControl_LCD_DB_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_UControl_LCD_DB_1_DXMUX_2202,
      CE => VCC,
      CLK => Inst_UControl_LCD_DB_1_CLKINV_2178,
      SET => GND,
      RST => Inst_UControl_LCD_DB_1_SRINVNOT,
      O => Inst_UControl_LCD_DB_1_Q
    );
  Inst_UControl_LCD_DB_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_UControl_LCD_DB_3_DYMUX_2230,
      CE => VCC,
      CLK => Inst_UControl_LCD_DB_3_CLKINV_2219,
      SET => GND,
      RST => Inst_UControl_LCD_DB_3_SRINVNOT,
      O => Inst_UControl_LCD_DB_2_Q
    );
  Inst_UControl_state_FSM_Out101 : X_LUT4
    generic map(
      INIT => X"6272"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd3_731,
      ADR1 => Inst_UControl_state_FSM_FFd2_733,
      ADR2 => Inst_UControl_state_FSM_FFd4_730,
      ADR3 => Inst_UControl_state_FSM_FFd1_734,
      O => Inst_UControl_state_index0006
    );
  Inst_UControl_LCD_DB_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_UControl_LCD_DB_3_DXMUX_2244,
      CE => VCC,
      CLK => Inst_UControl_LCD_DB_3_CLKINV_2219,
      SET => GND,
      RST => Inst_UControl_LCD_DB_3_SRINVNOT,
      O => Inst_UControl_LCD_DB_3_Q
    );
  Inst_UControl_LCD_DB_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_UControl_LCD_DB_5_DYMUX_2267,
      CE => VCC,
      CLK => Inst_UControl_LCD_DB_5_CLKINV_2258,
      SET => GND,
      RST => Inst_UControl_LCD_DB_5_FFY_RSTAND_2272,
      O => Inst_UControl_LCD_DB_5_Q
    );
  Inst_UControl_LCD_DB_5_FFY_RSTAND : X_INV
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_rst_n_728,
      O => Inst_UControl_LCD_DB_5_FFY_RSTAND_2272
    );
  Inst_UControl_LCD_DB_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_UControl_state_FSM_FFd1_DYMUX_2296,
      CE => VCC,
      CLK => Inst_UControl_state_FSM_FFd1_CLKINV_2286,
      SET => GND,
      RST => Inst_UControl_state_FSM_FFd1_SRINVNOT,
      O => Inst_UControl_LCD_DB_7_Q
    );
  Inst_UControl_state_FSM_FFd1_In : X_LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      ADR0 => Inst_Counter_tic_727,
      ADR1 => Inst_UControl_state_FSM_FFd5_729,
      ADR2 => Inst_UControl_state_index0002,
      ADR3 => Inst_UControl_state_FSM_FFd1_734,
      O => Inst_UControl_state_FSM_FFd1_In_2307
    );
  Inst_UControl_state_FSM_FFd1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_UControl_state_FSM_FFd1_DXMUX_2310,
      CE => VCC,
      CLK => Inst_UControl_state_FSM_FFd1_CLKINV_2286,
      SET => GND,
      RST => Inst_UControl_state_FSM_FFd1_SRINVNOT,
      O => Inst_UControl_state_FSM_FFd1_734
    );
  Inst_UControl_state_FSM_FFd5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_UControl_state_FSM_FFd5_DYMUX_2333,
      CE => VCC,
      CLK => Inst_UControl_state_FSM_FFd5_CLKINV_2322,
      SET => GND,
      RST => Inst_UControl_state_FSM_FFd5_FFY_RSTAND_2338,
      O => Inst_UControl_state_FSM_FFd5_729
    );
  Inst_UControl_state_FSM_FFd5_FFY_RSTAND : X_INV
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_rst_n_728,
      O => Inst_UControl_state_FSM_FFd5_FFY_RSTAND_2338
    );
  Inst_Counter_temp_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Counter_temp_2_DYMUX_1163,
      CE => VCC,
      CLK => Inst_Counter_temp_2_CLKINV_1141,
      SET => GND,
      RST => Inst_Counter_temp_2_SRINV_1142,
      O => Inst_Counter_temp(3)
    );
  Inst_Counter_temp_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Counter_temp_2_DXMUX_1182,
      CE => VCC,
      CLK => Inst_Counter_temp_2_CLKINV_1141,
      SET => GND,
      RST => Inst_Counter_temp_2_SRINV_1142,
      O => Inst_Counter_temp(2)
    );
  Inst_Counter_temp_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Counter_temp_4_DYMUX_1219,
      CE => VCC,
      CLK => Inst_Counter_temp_4_CLKINV_1197,
      SET => GND,
      RST => Inst_Counter_temp_4_SRINV_1198,
      O => Inst_Counter_temp(5)
    );
  Inst_Counter_temp_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Counter_temp_4_DXMUX_1238,
      CE => VCC,
      CLK => Inst_Counter_temp_4_CLKINV_1197,
      SET => GND,
      RST => Inst_Counter_temp_4_SRINV_1198,
      O => Inst_Counter_temp(4)
    );
  Inst_Counter_temp_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Counter_temp_6_DYMUX_1275,
      CE => VCC,
      CLK => Inst_Counter_temp_6_CLKINV_1253,
      SET => GND,
      RST => Inst_Counter_temp_6_SRINV_1254,
      O => Inst_Counter_temp(7)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_DYMUX_857,
      CE => VCC,
      CLK => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CLKINV_835,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_SRINV_836,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador(3)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_DXMUX_874,
      CE => VCC,
      CLK => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_CLKINV_835,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_SRINV_836,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador(2)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_DYMUX_909,
      CE => VCC,
      CLK => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CLKINV_887,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_SRINV_888,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador(5)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_DXMUX_926,
      CE => VCC,
      CLK => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_CLKINV_887,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_SRINV_888,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador(4)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_DYMUX_961,
      CE => VCC,
      CLK => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CLKINV_939,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_SRINV_940,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador(7)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_6 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_DXMUX_978,
      CE => VCC,
      CLK => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_CLKINV_939,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_SRINV_940,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador(6)
    );
  Inst_Interfaz_rotary_left : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_rotary_left_DYMUX_2748,
      CE => Inst_Interfaz_rotary_left_CEINV_2745,
      CLK => Inst_Interfaz_rotary_left_CLKINV_2746,
      SET => GND,
      RST => GND,
      O => Inst_Interfaz_rotary_left_768
    );
  Inst_Interfaz_Inst_pb1_state_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_Inst_pb1_state_FSM_FFd1_DYMUX_2793,
      CE => VCC,
      CLK => Inst_Interfaz_Inst_pb1_state_FSM_FFd1_CLKINV_2783,
      SET => GND,
      RST => GND,
      O => Inst_Interfaz_Inst_pb1_state_FSM_FFd2_745
    );
  Inst_Interfaz_Inst_pb1_state_FSM_FFd1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Inst_Interfaz_Inst_pb1_state_FSM_FFd1_DXMUX_2798,
      CE => VCC,
      CLK => Inst_Interfaz_Inst_pb1_state_FSM_FFd1_CLKINV_2783,
      SET => GND,
      RST => GND,
      O => Inst_Interfaz_Inst_pb1_state_FSM_FFd1_777
    );
  Inst_Interfaz_rst_n : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_rst_n_DYMUX_2809,
      CE => VCC,
      CLK => Inst_Interfaz_rst_n_CLKINV_2806,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_Interfaz_rst_n_SRINV_2807,
      O => Inst_Interfaz_rst_n_728
    );
  Inst_Interfaz_Inst_divDEBOUNCER_clk10ms : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_DYMUX_2821,
      CE => VCC,
      CLK => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_CLKINV_2818,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_SRINV_2819,
      O => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_771
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_9 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_DYMUX_1013,
      CE => VCC,
      CLK => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CLKINV_991,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_SRINV_992,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador(9)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_8 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_DXMUX_1030,
      CE => VCC,
      CLK => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_CLKINV_991,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_SRINV_992,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador(8)
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_10 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_Inst_divDEBOUNCER_contador_10_DXMUX_1075,
      CE => VCC,
      CLK => Inst_Interfaz_Inst_divDEBOUNCER_contador_10_CLKINV_1042,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_Interfaz_Inst_divDEBOUNCER_contador_10_SRINV_1043,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador(10)
    );
  Inst_Counter_temp_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Counter_temp_0_DYMUX_1105,
      CE => VCC,
      CLK => Inst_Counter_temp_0_CLKINV_1088,
      SET => GND,
      RST => Inst_Counter_temp_0_SRINV_1089,
      O => Inst_Counter_temp(1)
    );
  Inst_Counter_Mcount_temp_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"5555"
    )
    port map (
      ADR0 => Inst_Counter_temp(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Counter_Mcount_temp_lut(0)
    );
  Inst_Counter_temp_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Counter_temp_0_DXMUX_1126,
      CE => VCC,
      CLK => Inst_Counter_temp_0_CLKINV_1088,
      SET => GND,
      RST => Inst_Counter_temp_0_SRINV_1089,
      O => Inst_Counter_temp(0)
    );
  Inst_Counter_temp_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Counter_temp_10_DXMUX_1406,
      CE => VCC,
      CLK => Inst_Counter_temp_10_CLKINV_1365,
      SET => GND,
      RST => Inst_Counter_temp_10_SRINV_1366,
      O => Inst_Counter_temp(10)
    );
  Inst_Counter_temp_13 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Counter_temp_12_DYMUX_1443,
      CE => VCC,
      CLK => Inst_Counter_temp_12_CLKINV_1421,
      SET => GND,
      RST => Inst_Counter_temp_12_SRINV_1422,
      O => Inst_Counter_temp(13)
    );
  Inst_Counter_temp_12 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Counter_temp_12_DXMUX_1462,
      CE => VCC,
      CLK => Inst_Counter_temp_12_CLKINV_1421,
      SET => GND,
      RST => Inst_Counter_temp_12_SRINV_1422,
      O => Inst_Counter_temp(12)
    );
  Inst_Counter_temp_14 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Counter_temp_14_DXMUX_1488,
      CE => VCC,
      CLK => Inst_Counter_temp_14_CLKINV_1474,
      SET => GND,
      RST => Inst_Counter_temp_14_FFX_RSTAND_1493,
      O => Inst_Counter_temp(14)
    );
  Inst_Counter_temp_14_FFX_RSTAND : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_clr_timer_673,
      O => Inst_Counter_temp_14_FFX_RSTAND_1493
    );
  Inst_Counter_temp_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Counter_temp_6_DXMUX_1294,
      CE => VCC,
      CLK => Inst_Counter_temp_6_CLKINV_1253,
      SET => GND,
      RST => Inst_Counter_temp_6_SRINV_1254,
      O => Inst_Counter_temp(6)
    );
  Inst_Counter_temp_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Counter_temp_8_DYMUX_1331,
      CE => VCC,
      CLK => Inst_Counter_temp_8_CLKINV_1309,
      SET => GND,
      RST => Inst_Counter_temp_8_SRINV_1310,
      O => Inst_Counter_temp(9)
    );
  Inst_Counter_temp_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Counter_temp_8_DXMUX_1350,
      CE => VCC,
      CLK => Inst_Counter_temp_8_CLKINV_1309,
      SET => GND,
      RST => Inst_Counter_temp_8_SRINV_1310,
      O => Inst_Counter_temp(8)
    );
  Inst_Counter_temp_11 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Counter_temp_10_DYMUX_1387,
      CE => VCC,
      CLK => Inst_Counter_temp_10_CLKINV_1365,
      SET => GND,
      RST => Inst_Counter_temp_10_SRINV_1366,
      O => Inst_Counter_temp(11)
    );
  Inst_Counter_tic : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Counter_tic_DXMUX_1775,
      CE => VCC,
      CLK => Inst_Counter_tic_CLKINV_1757,
      SET => GND,
      RST => GND,
      O => Inst_Counter_tic_727
    );
  Inst_UControl_state_FSM_Out2 : X_LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd5_729,
      ADR1 => Inst_UControl_state_FSM_FFd4_730,
      ADR2 => Inst_UControl_state_FSM_FFd3_731,
      ADR3 => Inst_UControl_state_FSM_Out2_SW0_O,
      O => Inst_UControl_mux0000
    );
  Inst_UControl_LCD_E : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_UControl_LCD_E_DXMUX_1807,
      CE => VCC,
      CLK => Inst_UControl_LCD_E_CLKINV_1789,
      SET => GND,
      RST => Inst_UControl_LCD_E_FFX_RSTAND_1812,
      O => Inst_UControl_LCD_E_697
    );
  Inst_UControl_LCD_E_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_rst_n_728,
      O => Inst_UControl_LCD_E_FFX_RSTAND_1812
    );
  Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_not00011 : X_LUT4
    generic map(
      INIT => X"7F7F"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000011_735,
      ADR1 => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000016_736,
      ADR2 => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000028_0,
      ADR3 => VCC,
      O => Inst_Interfaz_Inst_divDEBOUNCER_clk10ms_not0001
    );
  Inst_UControl_state_FSM_FFd2_In : X_LUT4
    generic map(
      INIT => X"CC6C"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd5_729,
      ADR1 => Inst_UControl_state_FSM_FFd2_733,
      ADR2 => Inst_UControl_state_FSM_FFd4_730,
      ADR3 => Inst_UControl_state_FSM_FFd2_In_SW2_O,
      O => Inst_UControl_state_FSM_FFd2_In_1863
    );
  Inst_UControl_state_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_UControl_state_FSM_FFd2_DXMUX_1866,
      CE => VCC,
      CLK => Inst_UControl_state_FSM_FFd2_CLKINV_1848,
      SET => GND,
      RST => Inst_UControl_state_FSM_FFd2_FFX_RSTAND_1871,
      O => Inst_UControl_state_FSM_FFd2_733
    );
  Inst_UControl_state_FSM_FFd2_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_rst_n_728,
      O => Inst_UControl_state_FSM_FFd2_FFX_RSTAND_1871
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000039 : X_LUT4
    generic map(
      INIT => X"8080"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000011_735,
      ADR1 => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000016_736,
      ADR2 => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq000028_0,
      ADR3 => VCC,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_cmp_eq0000
    );
  Inst_UControl_state_FSM_FFd3_In : X_LUT4
    generic map(
      INIT => X"4CEC"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd5_729,
      ADR1 => Inst_UControl_state_FSM_FFd3_731,
      ADR2 => Inst_UControl_state_FSM_FFd4_730,
      ADR3 => Inst_UControl_state_FSM_FFd3_In_SW1_O,
      O => Inst_UControl_state_FSM_FFd3_In_1922
    );
  Inst_UControl_state_FSM_FFd3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_UControl_state_FSM_FFd3_DXMUX_1925,
      CE => VCC,
      CLK => Inst_UControl_state_FSM_FFd3_CLKINV_1909,
      SET => GND,
      RST => Inst_UControl_state_FSM_FFd3_FFX_RSTAND_1930,
      O => Inst_UControl_state_FSM_FFd3_731
    );
  Inst_UControl_state_FSM_FFd3_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_rst_n_728,
      O => Inst_UControl_state_FSM_FFd3_FFX_RSTAND_1930
    );
  Inst_Interfaz_rotary_q1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_rotary_q2_DYMUX_1950,
      CE => VCC,
      CLK => Inst_Interfaz_rotary_q2_CLKINV_1941,
      SET => GND,
      RST => GND,
      O => Inst_Interfaz_rotary_q1_744
    );
  Inst_Interfaz_Mmux_rotary_q2_mux000011 : X_LUT4
    generic map(
      INIT => X"B2B2"
    )
    port map (
      ADR0 => Inst_Interfaz_rotary_q2_741,
      ADR1 => Inst_Interfaz_rotary_in(0),
      ADR2 => Inst_Interfaz_rotary_in(1),
      ADR3 => VCC,
      O => Inst_Interfaz_rotary_q2_mux0000
    );
  Inst_Interfaz_rotary_q2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_rotary_q2_DXMUX_1962,
      CE => VCC,
      CLK => Inst_Interfaz_rotary_q2_CLKINV_1941,
      SET => GND,
      RST => GND,
      O => Inst_Interfaz_rotary_q2_741
    );
  leds_out_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => leds_out_5_DYMUX_1999,
      CE => VCC,
      CLK => leds_out_5_CLKINV_1986,
      SET => GND,
      RST => GND,
      O => leds_out_4_704
    );
  Mshreg_leds_out_5_SRL16E : X_SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => GLOBAL_LOGIC1,
      A1 => GLOBAL_LOGIC0,
      A2 => GLOBAL_LOGIC0,
      A3 => GLOBAL_LOGIC0,
      D => leds_out_5_DIF_MUX_2004,
      CE => leds_out_5_SRINV_1980,
      CLK => leds_out_5_CLKINV_1986,
      Q => Mshreg_leds_out_5,
      Q15 => NLW_Mshreg_leds_out_5_SRL16E_Q15_UNCONNECTED
    );
  leds_out_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => leds_out_5_DXMUX_2015,
      CE => VCC,
      CLK => leds_out_5_CLKINV_1986,
      SET => GND,
      RST => GND,
      O => leds_out_5_705
    );
  leds_out_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => leds_out_7_DYMUX_2052,
      CE => VCC,
      CLK => leds_out_7_CLKINV_2039,
      SET => GND,
      RST => GND,
      O => leds_out_6_706
    );
  Mshreg_leds_out_7_SRL16E : X_SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => GLOBAL_LOGIC1,
      A1 => GLOBAL_LOGIC0,
      A2 => GLOBAL_LOGIC0,
      A3 => GLOBAL_LOGIC0,
      D => leds_out_7_DIF_MUX_2057,
      CE => leds_out_7_SRINV_2033,
      CLK => leds_out_7_CLKINV_2039,
      Q => Mshreg_leds_out_7,
      Q15 => NLW_Mshreg_leds_out_7_SRL16E_Q15_UNCONNECTED
    );
  leds_out_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => leds_out_7_DXMUX_2068,
      CE => VCC,
      CLK => leds_out_7_CLKINV_2039,
      SET => GND,
      RST => GND,
      O => leds_out_7_707
    );
  Inst_Interfaz_rotary_in_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_rotary_in_1_DYMUX_2105,
      CE => VCC,
      CLK => Inst_Interfaz_rotary_in_1_CLKINV_2092,
      SET => GND,
      RST => GND,
      O => Inst_Interfaz_rotary_in(0)
    );
  Inst_Interfaz_Mshreg_rotary_in_1_SRL16E : X_SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => GLOBAL_LOGIC0,
      A1 => GLOBAL_LOGIC0,
      A2 => GLOBAL_LOGIC0,
      A3 => GLOBAL_LOGIC0,
      D => Inst_Interfaz_rotary_in_1_DIF_MUX_2110,
      CE => Inst_Interfaz_rotary_in_1_SRINV_2086,
      CLK => Inst_Interfaz_rotary_in_1_CLKINV_2092,
      Q => Inst_Interfaz_Mshreg_rotary_in_1,
      Q15 => NLW_Inst_Interfaz_Mshreg_rotary_in_1_SRL16E_Q15_UNCONNECTED
    );
  Inst_Interfaz_rotary_in_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_rotary_in_1_DXMUX_2121,
      CE => VCC,
      CLK => Inst_Interfaz_rotary_in_1_CLKINV_2092,
      SET => GND,
      RST => GND,
      O => Inst_Interfaz_rotary_in(1)
    );
  Inst_UControl_LCD_RS : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_UControl_state_FSM_FFd4_DYMUX_2146,
      CE => VCC,
      CLK => Inst_UControl_state_FSM_FFd4_CLKINV_2136,
      SET => GND,
      RST => Inst_UControl_state_FSM_FFd4_SRINVNOT,
      O => Inst_UControl_LCD_RS_698
    );
  Inst_UControl_state_FSM_FFd4_In1 : X_LUT4
    generic map(
      INIT => X"EA6A"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd4_730,
      ADR1 => Inst_UControl_state_FSM_FFd5_729,
      ADR2 => Inst_Counter_tic_727,
      ADR3 => Inst_UControl_state_FSM_FFd1_734,
      O => Inst_UControl_state_FSM_FFd4_In
    );
  Inst_UControl_state_FSM_FFd4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_UControl_state_FSM_FFd4_DXMUX_2160,
      CE => VCC,
      CLK => Inst_UControl_state_FSM_FFd4_CLKINV_2136,
      SET => GND,
      RST => Inst_UControl_state_FSM_FFd4_SRINVNOT,
      O => Inst_UControl_state_FSM_FFd4_730
    );
  Inst_UControl_LCD_DB_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_UControl_LCD_DB_1_DYMUX_2187,
      CE => VCC,
      CLK => Inst_UControl_LCD_DB_1_CLKINV_2178,
      SET => GND,
      RST => Inst_UControl_LCD_DB_1_SRINVNOT,
      O => Inst_UControl_LCD_DB_0_Q
    );
  Inst_UControl_state_FSM_Out121 : X_LUT4
    generic map(
      INIT => X"0202"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd2_733,
      ADR1 => Inst_UControl_state_FSM_FFd4_730,
      ADR2 => Inst_UControl_state_FSM_FFd3_731,
      ADR3 => VCC,
      O => Inst_UControl_state_index0008
    );
  Inst_UControl_tiempo_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_UControl_tiempo_1_DYMUX_2361,
      CE => VCC,
      CLK => Inst_UControl_tiempo_1_CLKINV_2352,
      SET => GND,
      RST => Inst_UControl_tiempo_1_SRINVNOT,
      O => Inst_UControl_tiempo(0)
    );
  Inst_UControl_state_FSM_Out31 : X_LUT4
    generic map(
      INIT => X"F819"
    )
    port map (
      ADR0 => Inst_UControl_state_FSM_FFd2_733,
      ADR1 => Inst_UControl_state_FSM_FFd3_731,
      ADR2 => Inst_UControl_state_FSM_FFd4_730,
      ADR3 => Inst_UControl_state_FSM_FFd1_734,
      O => Inst_UControl_state_index0000
    );
  Inst_UControl_tiempo_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_UControl_tiempo_1_DXMUX_2375,
      CE => VCC,
      CLK => Inst_UControl_tiempo_1_CLKINV_2352,
      SET => GND,
      RST => Inst_UControl_tiempo_1_SRINVNOT,
      O => Inst_UControl_tiempo(1)
    );
  leds_out_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => leds_out_1_DYMUX_2415,
      CE => VCC,
      CLK => leds_out_1_CLKINV_2402,
      SET => GND,
      RST => GND,
      O => leds_out_0_699
    );
  Mshreg_leds_out_1_SRL16E : X_SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => GLOBAL_LOGIC1,
      A1 => GLOBAL_LOGIC0,
      A2 => GLOBAL_LOGIC0,
      A3 => GLOBAL_LOGIC0,
      D => leds_out_1_DIF_MUX_2420,
      CE => leds_out_1_SRINV_2396,
      CLK => leds_out_1_CLKINV_2402,
      Q => Mshreg_leds_out_1,
      Q15 => NLW_Mshreg_leds_out_1_SRL16E_Q15_UNCONNECTED
    );
  leds_out_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => leds_out_1_DXMUX_2431,
      CE => VCC,
      CLK => leds_out_1_CLKINV_2402,
      SET => GND,
      RST => GND,
      O => leds_out_1_700
    );
  leds_out_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => leds_out_3_DYMUX_2442,
      CE => VCC,
      CLK => leds_out_3_CLKINV_2440,
      SET => GND,
      RST => GND,
      O => leds_out_2_701
    );
  leds_out_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => leds_out_3_DXMUX_2447,
      CE => VCC,
      CLK => leds_out_3_CLKINV_2440,
      SET => GND,
      RST => GND,
      O => leds_out_3_703
    );
  Inst_Interfaz_rotary_left_and00001 : X_LUT4
    generic map(
      INIT => X"4444"
    )
    port map (
      ADR0 => Inst_Interfaz_delay_rotary_q1_756,
      ADR1 => Inst_Interfaz_rotary_q1_744,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Interfaz_rotary_left_and0000
    );
  Inst_Interfaz_delay_rotary_q1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_delay_rotary_q1_DYMUX_2480,
      CE => VCC,
      CLK => Inst_Interfaz_delay_rotary_q1_CLKINV_2478,
      SET => GND,
      RST => GND,
      O => Inst_Interfaz_delay_rotary_q1_756
    );
  Inst_Interfaz_pb0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_pb1_DYMUX_2491,
      CE => VCC,
      CLK => Inst_Interfaz_pb1_CLKINV_2489,
      SET => GND,
      RST => GND,
      O => Inst_Interfaz_pb0_762
    );
  pb_int_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => pb_int_1_DXMUX_2621,
      CE => VCC,
      CLK => pb_int_1_CLKINV_2614,
      SET => GND,
      RST => GND,
      O => pb_int(1)
    );
  pb_int_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => pb_int_3_DYMUX_2632,
      CE => VCC,
      CLK => pb_int_3_CLKINV_2630,
      SET => GND,
      RST => GND,
      O => pb_int(2)
    );
  pb_int_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => pb_int_3_DXMUX_2637,
      CE => VCC,
      CLK => pb_int_3_CLKINV_2630,
      SET => GND,
      RST => GND,
      O => pb_int(3)
    );
  Inst_Interfaz_Inst_pb0_state_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_Inst_pb0_state_FSM_FFd1_DYMUX_2657,
      CE => VCC,
      CLK => Inst_Interfaz_Inst_pb0_state_FSM_FFd1_CLKINV_2647,
      SET => GND,
      RST => GND,
      O => Inst_Interfaz_Inst_pb0_state_FSM_FFd2_746
    );
  Inst_Interfaz_Inst_pb0_state_FSM_FFd1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Inst_Interfaz_Inst_pb0_state_FSM_FFd1_DXMUX_2662,
      CE => VCC,
      CLK => Inst_Interfaz_Inst_pb0_state_FSM_FFd1_CLKINV_2647,
      SET => GND,
      RST => GND,
      O => Inst_Interfaz_Inst_pb0_state_FSM_FFd1_773
    );
  Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1_DYMUX_2682,
      CE => VCC,
      CLK => Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1_CLKINV_2672,
      SET => GND,
      RST => GND,
      O => Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd2_752
    );
  Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1_DXMUX_2687,
      CE => VCC,
      CLK => Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1_CLKINV_2672,
      SET => GND,
      RST => GND,
      O => Inst_Interfaz_Inst_rotatory_press_state_FSM_FFd1_774
    );
  modo_int : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => modo_int_DYMUX_2696,
      CE => VCC,
      CLK => modo_int_CLKINV_2694,
      SET => GND,
      RST => GND,
      O => modo_int_753
    );
  Inst_Interfaz_Inst_pb3_state_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_Inst_pb3_state_FSM_FFd1_DYMUX_2716,
      CE => VCC,
      CLK => Inst_Interfaz_Inst_pb3_state_FSM_FFd1_CLKINV_2706,
      SET => GND,
      RST => GND,
      O => Inst_Interfaz_Inst_pb3_state_FSM_FFd2_747
    );
  Inst_Interfaz_Inst_pb3_state_FSM_FFd1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Inst_Interfaz_Inst_pb3_state_FSM_FFd1_DXMUX_2721,
      CE => VCC,
      CLK => Inst_Interfaz_Inst_pb3_state_FSM_FFd1_CLKINV_2706,
      SET => GND,
      RST => GND,
      O => Inst_Interfaz_Inst_pb3_state_FSM_FFd1_775
    );
  rot_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => rot_1_DYMUX_2732,
      CE => VCC,
      CLK => rot_1_CLKINV_2730,
      SET => GND,
      RST => GND,
      O => rot(0)
    );
  rot_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => rot_1_DXMUX_2737,
      CE => VCC,
      CLK => rot_1_CLKINV_2730,
      SET => GND,
      RST => GND,
      O => rot(1)
    );
  Inst_Interfaz_pb1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_pb1_DXMUX_2496,
      CE => VCC,
      CLK => Inst_Interfaz_pb1_CLKINV_2489,
      SET => GND,
      RST => GND,
      O => Inst_Interfaz_pb1_761
    );
  Inst_Interfaz_pb2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_pb3_DYMUX_2507,
      CE => VCC,
      CLK => Inst_Interfaz_pb3_CLKINV_2505,
      SET => GND,
      RST => GND,
      O => Inst_Interfaz_pb2_766
    );
  Inst_Interfaz_pb3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_pb3_DXMUX_2512,
      CE => VCC,
      CLK => Inst_Interfaz_pb3_CLKINV_2505,
      SET => GND,
      RST => GND,
      O => Inst_Interfaz_pb3_765
    );
  Inst_Interfaz_rotary_event : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_rotary_event_DYMUX_2523,
      CE => VCC,
      CLK => Inst_Interfaz_rotary_event_CLKINV_2520,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_Interfaz_rotary_event_SRINV_2521,
      O => Inst_Interfaz_rotary_event_767
    );
  Inst_LEDS_led_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_LEDS_led_2_DYMUX_2535,
      CE => Inst_LEDS_led_2_CEINV_2532,
      CLK => Inst_LEDS_led_2_CLKINV_2533,
      SET => GND,
      RST => GND,
      O => Inst_LEDS_led(2)
    );
  Inst_LEDS_led_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_LEDS_led_3_DYMUX_2547,
      CE => Inst_LEDS_led_3_CEINV_2544,
      CLK => Inst_LEDS_led_3_CLKINV_2545,
      SET => GND,
      RST => GND,
      O => Inst_LEDS_led(3)
    );
  Inst_UControl_clr_timer : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_UControl_clr_timer_DYMUX_2559,
      CE => VCC,
      CLK => Inst_UControl_clr_timer_CLKINV_2556,
      SET => GND,
      RST => Inst_UControl_clr_timer_FFY_RSTAND_2564,
      O => Inst_UControl_clr_timer_673
    );
  Inst_UControl_clr_timer_FFY_RSTAND : X_INV
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_Interfaz_rst_n_728,
      O => Inst_UControl_clr_timer_FFY_RSTAND_2564
    );
  Inst_Interfaz_rotatory_press : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_rotatory_press_DYMUX_2571,
      CE => VCC,
      CLK => Inst_Interfaz_rotatory_press_CLKINV_2569,
      SET => GND,
      RST => GND,
      O => Inst_Interfaz_rotatory_press_770
    );
  Inst_Interfaz_Inst_pb2_state_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Interfaz_Inst_pb2_state_FSM_FFd1_DYMUX_2591,
      CE => VCC,
      CLK => Inst_Interfaz_Inst_pb2_state_FSM_FFd1_CLKINV_2581,
      SET => GND,
      RST => GND,
      O => Inst_Interfaz_Inst_pb2_state_FSM_FFd2_748
    );
  Inst_Interfaz_Inst_pb2_state_FSM_FFd1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Inst_Interfaz_Inst_pb2_state_FSM_FFd1_DXMUX_2596,
      CE => VCC,
      CLK => Inst_Interfaz_Inst_pb2_state_FSM_FFd1_CLKINV_2581,
      SET => GND,
      RST => GND,
      O => Inst_Interfaz_Inst_pb2_state_FSM_FFd1_772
    );
  rot_press : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => rot_press_DYMUX_2605,
      CE => VCC,
      CLK => rot_press_CLKINV_2603,
      SET => GND,
      RST => GND,
      O => rot_press_769
    );
  pb_int_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => pb_int_1_DYMUX_2616,
      CE => VCC,
      CLK => pb_int_1_CLKINV_2614,
      SET => GND,
      RST => GND,
      O => pb_int(0)
    );
  GLOBAL_LOGIC0_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  GLOBAL_LOGIC1_VCC : X_ONE
    port map (
      O => GLOBAL_LOGIC1
    );
  lcd_data_out_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_LCD_DB_0_Q,
      O => lcd_data_out_0_O
    );
  lcd_data_out_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_LCD_DB_1_Q,
      O => lcd_data_out_1_O
    );
  lcd_data_out_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_LCD_DB_2_Q,
      O => lcd_data_out_2_O
    );
  lcd_rw_out_OUTPUT_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  lcd_rw_out_OUTPUT_OFF_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  lcd_rw_out_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => GLOBAL_LOGIC0,
      O => lcd_rw_out_O
    );
  lcd_data_out_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_LCD_DB_3_Q,
      O => lcd_data_out_3_O
    );
  lcd_data_out_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_LCD_DB_5_Q,
      O => lcd_data_out_4_O
    );
  lcd_data_out_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_LCD_DB_5_Q,
      O => lcd_data_out_5_O
    );
  lcd_data_out_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_LCD_DB_7_Q,
      O => lcd_data_out_6_O
    );
  lcd_data_out_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_LCD_DB_7_Q,
      O => lcd_data_out_7_O
    );
  lcd_e_out_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_LCD_E_697,
      O => lcd_e_out_O
    );
  lcd_rs_out_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_UControl_LCD_RS_698,
      O => lcd_rs_out_O
    );
  leds_out_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => leds_out_0_699,
      O => leds_out_0_O
    );
  leds_out_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => leds_out_1_700,
      O => leds_out_1_O
    );
  leds_out_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => leds_out_2_701,
      O => leds_out_2_O
    );
  leds_out_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => leds_out_3_703,
      O => leds_out_3_O
    );
  leds_out_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => leds_out_4_704,
      O => leds_out_4_O
    );
  leds_out_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => leds_out_5_705,
      O => leds_out_5_O
    );
  leds_out_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => leds_out_6_706,
      O => leds_out_6_O
    );
  leds_out_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 741 ps
    )
    port map (
      I => leds_out_7_707,
      O => leds_out_7_O
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(10),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_10_F
    );
  Inst_Counter_temp_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Counter_temp(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Counter_temp_0_G
    );
  Inst_Counter_temp_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Counter_temp(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Counter_temp_2_F
    );
  Inst_Counter_temp_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Counter_temp(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Counter_temp_2_G
    );
  Inst_Counter_temp_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Counter_temp(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Counter_temp_4_F
    );
  Inst_Counter_temp_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Counter_temp(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Counter_temp_4_G
    );
  Inst_Counter_temp_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Counter_temp(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Counter_temp_6_F
    );
  Inst_Counter_temp_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Counter_temp(7),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Counter_temp_6_G
    );
  Inst_Counter_temp_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Counter_temp(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Counter_temp_8_F
    );
  Inst_Counter_temp_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Counter_temp(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Counter_temp_8_G
    );
  Inst_Counter_temp_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Counter_temp(10),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Counter_temp_10_F
    );
  Inst_Counter_temp_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Counter_temp(11),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Counter_temp_10_G
    );
  Inst_Counter_temp_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Counter_temp(12),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Counter_temp_12_F
    );
  Inst_Counter_temp_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Counter_temp(13),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Counter_temp_12_G
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_0_G
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_F
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_2_G
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_F
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_4_G
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_F
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(7),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_6_G
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_F
    );
  Inst_Interfaz_Inst_divDEBOUNCER_contador_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => Inst_Interfaz_Inst_divDEBOUNCER_contador(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Interfaz_Inst_divDEBOUNCER_contador_8_G
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

