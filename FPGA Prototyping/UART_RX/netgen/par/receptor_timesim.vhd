--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: K.31
--  \   \         Application: netgen
--  /   /         Filename: receptor_timesim.vhd
-- /___/   /\     Timestamp: Tue Sep 01 20:44:30 2009
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf receptor.pcf -rpw 100 -tpw 0 -ar Structure -tm receptor -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim receptor.ncd receptor_timesim.vhd 
-- Device	: 3s700afg484-4 (PRODUCTION 1.39 2008-01-09)
-- Input file	: receptor.ncd
-- Output file	: D:\Designs\DCSE\FPGA Prototyping\UART_RX\netgen\par\receptor_timesim.vhd
-- # of Entities	: 1
-- Design Name	: receptor
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

entity receptor is
  port (
    clk : in STD_LOGIC := 'X'; 
    btn : in STD_LOGIC := 'X'; 
    rx : in STD_LOGIC := 'X'; 
    led : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end receptor;

architecture Structure of receptor is
  signal NlwRenamedSig_IO_btn : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal btn_IBUF_0 : STD_LOGIC; 
  signal N21_0 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal tick_0 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_mux0000_1_19_0 : STD_LOGIC; 
  signal Inst_uart_rx_state_reg_FSM_FFd1_399 : STD_LOGIC; 
  signal N6_0 : STD_LOGIC; 
  signal Inst_uart_rx_state_reg_FSM_FFd2_In40_0 : STD_LOGIC; 
  signal rx_IBUF_0 : STD_LOGIC; 
  signal Inst_uart_rx_b_reg_not0001_0 : STD_LOGIC; 
  signal Inst_uart_rx_state_reg_FSM_FFd2_406 : STD_LOGIC; 
  signal N39_0 : STD_LOGIC; 
  signal N41_0 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_mux0000_0_32_0 : STD_LOGIC; 
  signal Inst_uart_rx_N18 : STD_LOGIC; 
  signal N8_0 : STD_LOGIC; 
  signal Inst_uart_rx_N31_0 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_mux0000_0_44_0 : STD_LOGIC; 
  signal Inst_uart_rx_state_reg_FSM_FFd2_In50_0 : STD_LOGIC; 
  signal Inst_mod_m_counter_r_next_cmp_eq000022_416 : STD_LOGIC; 
  signal N31_0 : STD_LOGIC; 
  signal N10_0 : STD_LOGIC; 
  signal N13_0 : STD_LOGIC; 
  signal Inst_uart_rx_state_reg_cmp_eq0001 : STD_LOGIC; 
  signal N19_0 : STD_LOGIC; 
  signal N18_0 : STD_LOGIC; 
  signal N4_0 : STD_LOGIC; 
  signal GLOBAL_LOGIC1 : STD_LOGIC; 
  signal Inst_mod_m_counter_r_next_cmp_eq000010_437 : STD_LOGIC; 
  signal Inst_mod_m_counter_Madd_r_next_addsub0000_cy_5_11_O : STD_LOGIC; 
  signal N27_0 : STD_LOGIC; 
  signal Inst_uart_rx_state_reg_FSM_FFd2_In45_O : STD_LOGIC; 
  signal N29_0 : STD_LOGIC; 
  signal Inst_uart_rx_N7_0 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_mux0000_0_49_O : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_mux0000_1_33_O : STD_LOGIC; 
  signal Inst_mod_m_counter_r_next_cmp_eq000023_SW0_O : STD_LOGIC; 
  signal Inst_uart_rx_state_reg_FSM_FFd2_In33_SW0_SW0_O : STD_LOGIC; 
  signal Inst_uart_rx_state_reg_cmp_eq0002 : STD_LOGIC; 
  signal Inst_uart_rx_n_reg_mux0000_1_SW1_O : STD_LOGIC; 
  signal N16_0 : STD_LOGIC; 
  signal Inst_uart_rx_n_reg_mux0000_2_SW1_O : STD_LOGIC; 
  signal Inst_uart_rx_n_reg_mux0000_0_1_O : STD_LOGIC; 
  signal Inst_uart_rx_n_reg_0_DXMUX_1317 : STD_LOGIC; 
  signal Inst_uart_rx_n_reg_mux0000_0_1_O_pack_1 : STD_LOGIC; 
  signal Inst_uart_rx_n_reg_0_CLKINV_1301 : STD_LOGIC; 
  signal Inst_uart_rx_b_reg_not0001 : STD_LOGIC; 
  signal Inst_uart_rx_state_reg_cmp_eq0001_pack_1 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal Inst_uart_rx_N18_pack_1 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal Inst_uart_rx_state_reg_cmp_eq0002_pack_1 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal Inst_mod_m_counter_r_next_cmp_eq000010_pack_1 : STD_LOGIC; 
  signal Inst_mod_m_counter_r_reg_1_DXMUX_1455 : STD_LOGIC; 
  signal Inst_mod_m_counter_r_reg_1_DYMUX_1441 : STD_LOGIC; 
  signal Inst_mod_m_counter_r_reg_1_SRINV_1432 : STD_LOGIC; 
  signal Inst_mod_m_counter_r_reg_1_CLKINV_1431 : STD_LOGIC; 
  signal Inst_mod_m_counter_r_reg_3_DXMUX_1497 : STD_LOGIC; 
  signal Inst_mod_m_counter_r_reg_3_DYMUX_1483 : STD_LOGIC; 
  signal Inst_mod_m_counter_r_reg_3_SRINV_1475 : STD_LOGIC; 
  signal Inst_mod_m_counter_r_reg_3_CLKINV_1474 : STD_LOGIC; 
  signal Inst_mod_m_counter_r_reg_6_DXMUX_1539 : STD_LOGIC; 
  signal Inst_mod_m_counter_r_reg_6_DYMUX_1525 : STD_LOGIC; 
  signal Inst_mod_m_counter_r_reg_6_SRINV_1517 : STD_LOGIC; 
  signal Inst_mod_m_counter_r_reg_6_CLKINV_1516 : STD_LOGIC; 
  signal led_4_O : STD_LOGIC; 
  signal led_5_O : STD_LOGIC; 
  signal led_6_O : STD_LOGIC; 
  signal led_7_O : STD_LOGIC; 
  signal btn_IBUF_898 : STD_LOGIC; 
  signal rx_IBUF_905 : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal N22_F5MUX_934 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_mux0000_2_54_SW1 : STD_LOGIC; 
  signal N22_BXINV_927 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_mux0000_2_54_SW11_925 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_0_DXMUX_965 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_0_F5MUX_963 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_mux0000_3_20 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_0_BXINV_956 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_mux0000_3_201_954 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_0_CLKINV_948 : STD_LOGIC; 
  signal Inst_mod_m_counter_r_reg_4_DXMUX_1000 : STD_LOGIC; 
  signal Inst_mod_m_counter_Madd_r_next_addsub0000_cy_3_pack_1 : STD_LOGIC; 
  signal Inst_mod_m_counter_r_reg_4_CLKINV_984 : STD_LOGIC; 
  signal Inst_mod_m_counter_r_reg_7_DXMUX_1035 : STD_LOGIC; 
  signal Inst_mod_m_counter_Madd_r_next_addsub0000_cy_5_11_O_pack_1 : STD_LOGIC; 
  signal Inst_mod_m_counter_r_reg_7_CLKINV_1018 : STD_LOGIC; 
  signal tick : STD_LOGIC; 
  signal Inst_mod_m_counter_r_next_cmp_eq000022_pack_1 : STD_LOGIC; 
  signal Inst_uart_rx_state_reg_FSM_FFd2_DXMUX_1094 : STD_LOGIC; 
  signal Inst_uart_rx_state_reg_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_uart_rx_state_reg_FSM_FFd2_In45_O_pack_1 : STD_LOGIC; 
  signal Inst_uart_rx_state_reg_FSM_FFd2_CLKINV_1078 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_3_DXMUX_1129 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_mux0000_0_49_O_pack_1 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_3_CLKINV_1113 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_2_DXMUX_1164 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_mux0000_1_33_O_pack_1 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_2_CLKINV_1148 : STD_LOGIC; 
  signal Inst_uart_rx_N7 : STD_LOGIC; 
  signal Inst_mod_m_counter_r_next_cmp_eq000023_SW0_O_pack_1 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal Inst_uart_rx_state_reg_FSM_FFd2_In33_SW0_SW0_O_pack_1 : STD_LOGIC; 
  signal Inst_uart_rx_n_reg_1_DXMUX_1247 : STD_LOGIC; 
  signal Inst_uart_rx_n_reg_mux0000_1_SW1_O_pack_1 : STD_LOGIC; 
  signal Inst_uart_rx_n_reg_1_CLKINV_1231 : STD_LOGIC; 
  signal Inst_uart_rx_n_reg_2_DXMUX_1282 : STD_LOGIC; 
  signal Inst_uart_rx_n_reg_mux0000_2_SW1_O_pack_1 : STD_LOGIC; 
  signal Inst_uart_rx_n_reg_2_CLKINV_1266 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_mux0000_1_19_491 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_1_DYMUX_479 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_1_CLKINV_470 : STD_LOGIC; 
  signal Inst_uart_rx_state_reg_FSM_FFd2_In40_526 : STD_LOGIC; 
  signal Inst_uart_rx_state_reg_FSM_FFd1_DYMUX_513 : STD_LOGIC; 
  signal Inst_uart_rx_state_reg_FSM_FFd1_In_510 : STD_LOGIC; 
  signal Inst_uart_rx_state_reg_FSM_FFd1_CLKINV_504 : STD_LOGIC; 
  signal Inst_uart_rx_b_reg_7_DXMUX_549 : STD_LOGIC; 
  signal Inst_uart_rx_b_reg_7_DYMUX_540 : STD_LOGIC; 
  signal Inst_uart_rx_b_reg_7_SRINV_538 : STD_LOGIC; 
  signal Inst_uart_rx_b_reg_7_CLKINV_537 : STD_LOGIC; 
  signal Inst_uart_rx_b_reg_7_CEINV_536 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_mux0000_0_32_594 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal Inst_uart_rx_N31 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_mux0000_0_44 : STD_LOGIC; 
  signal Inst_uart_rx_state_reg_FSM_FFd2_In50_641 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal rx_done : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal Inst_uart_rx_b_reg_1_DXMUX_757 : STD_LOGIC; 
  signal Inst_uart_rx_b_reg_1_DYMUX_748 : STD_LOGIC; 
  signal Inst_uart_rx_b_reg_1_SRINV_746 : STD_LOGIC; 
  signal Inst_uart_rx_b_reg_1_CLKINV_745 : STD_LOGIC; 
  signal Inst_uart_rx_b_reg_1_CEINV_744 : STD_LOGIC; 
  signal Inst_uart_rx_b_reg_3_DXMUX_785 : STD_LOGIC; 
  signal Inst_uart_rx_b_reg_3_DYMUX_776 : STD_LOGIC; 
  signal Inst_uart_rx_b_reg_3_SRINV_774 : STD_LOGIC; 
  signal Inst_uart_rx_b_reg_3_CLKINV_773 : STD_LOGIC; 
  signal Inst_uart_rx_b_reg_3_CEINV_772 : STD_LOGIC; 
  signal Inst_uart_rx_b_reg_5_DXMUX_813 : STD_LOGIC; 
  signal Inst_uart_rx_b_reg_5_DYMUX_804 : STD_LOGIC; 
  signal Inst_uart_rx_b_reg_5_SRINV_802 : STD_LOGIC; 
  signal Inst_uart_rx_b_reg_5_CLKINV_801 : STD_LOGIC; 
  signal Inst_uart_rx_b_reg_5_CEINV_800 : STD_LOGIC; 
  signal led_0_O : STD_LOGIC; 
  signal led_1_O : STD_LOGIC; 
  signal led_2_O : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_851 : STD_LOGIC; 
  signal led_3_O : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_1_FFY_RSTAND_484 : STD_LOGIC; 
  signal Inst_uart_rx_state_reg_FSM_FFd1_FFY_RSTAND_518 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_0_FFX_RSTAND_970 : STD_LOGIC; 
  signal Inst_mod_m_counter_r_reg_4_FFX_RSTAND_1005 : STD_LOGIC; 
  signal Inst_mod_m_counter_r_reg_7_FFX_RSTAND_1040 : STD_LOGIC; 
  signal Inst_uart_rx_state_reg_FSM_FFd2_FFX_RSTAND_1099 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_3_FFX_RSTAND_1134 : STD_LOGIC; 
  signal Inst_uart_rx_s_reg_2_FFX_RSTAND_1169 : STD_LOGIC; 
  signal Inst_uart_rx_n_reg_1_FFX_RSTAND_1252 : STD_LOGIC; 
  signal Inst_uart_rx_n_reg_2_FFX_RSTAND_1287 : STD_LOGIC; 
  signal Inst_uart_rx_n_reg_0_FFX_RSTAND_1322 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal Inst_uart_rx_s_reg : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Inst_uart_rx_b_reg : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Inst_uart_rx_n_reg : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Inst_mod_m_counter_r_reg : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Inst_mod_m_counter_Madd_r_next_addsub0000_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal Inst_uart_rx_n_reg_mux0000 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Inst_mod_m_counter_r_next : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Inst_uart_rx_s_reg_mux0000 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  NlwRenamedSig_IO_btn <= btn;
  Inst_uart_rx_n_reg_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y48",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_n_reg_mux0000(0),
      O => Inst_uart_rx_n_reg_0_DXMUX_1317
    );
  Inst_uart_rx_n_reg_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y48",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_n_reg_mux0000_0_1_O_pack_1,
      O => Inst_uart_rx_n_reg_mux0000_0_1_O
    );
  Inst_uart_rx_n_reg_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y48",
      PATHPULSE => 741 ps
    )
    port map (
      I => clk_BUFGP,
      O => Inst_uart_rx_n_reg_0_CLKINV_1301
    );
  Inst_uart_rx_b_reg_not0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y46",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_b_reg_not0001,
      O => Inst_uart_rx_b_reg_not0001_0
    );
  Inst_uart_rx_b_reg_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y46",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_state_reg_cmp_eq0001_pack_1,
      O => Inst_uart_rx_state_reg_cmp_eq0001
    );
  Inst_uart_rx_state_reg_cmp_eq00011 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X58Y46"
    )
    port map (
      ADR0 => Inst_uart_rx_s_reg(1),
      ADR1 => Inst_uart_rx_s_reg(2),
      ADR2 => Inst_uart_rx_s_reg(0),
      ADR3 => Inst_uart_rx_s_reg(3),
      O => Inst_uart_rx_state_reg_cmp_eq0001_pack_1
    );
  N16_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y50",
      PATHPULSE => 741 ps
    )
    port map (
      I => N16,
      O => N16_0
    );
  N16_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y50",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_N18_pack_1,
      O => Inst_uart_rx_N18
    );
  Inst_uart_rx_state_reg_FSM_FFd1_In21 : X_LUT4
    generic map(
      INIT => X"C000",
      LOC => "SLICE_X58Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Inst_uart_rx_s_reg(2),
      ADR2 => Inst_uart_rx_s_reg(1),
      ADR3 => Inst_uart_rx_s_reg(0),
      O => Inst_uart_rx_N18_pack_1
    );
  N29_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y50",
      PATHPULSE => 741 ps
    )
    port map (
      I => N29,
      O => N29_0
    );
  N29_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y50",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_state_reg_cmp_eq0002_pack_1,
      O => Inst_uart_rx_state_reg_cmp_eq0002
    );
  Inst_uart_rx_state_reg_cmp_eq00021 : X_LUT4
    generic map(
      INIT => X"8800",
      LOC => "SLICE_X56Y50"
    )
    port map (
      ADR0 => Inst_uart_rx_n_reg(1),
      ADR1 => Inst_uart_rx_n_reg(2),
      ADR2 => VCC,
      ADR3 => Inst_uart_rx_n_reg(0),
      O => Inst_uart_rx_state_reg_cmp_eq0002_pack_1
    );
  N31_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y48",
      PATHPULSE => 741 ps
    )
    port map (
      I => N31,
      O => N31_0
    );
  N31_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y48",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_mod_m_counter_r_next_cmp_eq000010_pack_1,
      O => Inst_mod_m_counter_r_next_cmp_eq000010_437
    );
  Inst_mod_m_counter_r_next_cmp_eq000010 : X_LUT4
    generic map(
      INIT => X"0200",
      LOC => "SLICE_X54Y48"
    )
    port map (
      ADR0 => Inst_mod_m_counter_r_reg(5),
      ADR1 => Inst_mod_m_counter_r_reg(4),
      ADR2 => Inst_mod_m_counter_r_reg(6),
      ADR3 => Inst_mod_m_counter_r_reg(7),
      O => Inst_mod_m_counter_r_next_cmp_eq000010_pack_1
    );
  Inst_mod_m_counter_r_reg_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X57Y46",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_mod_m_counter_r_next(1),
      O => Inst_mod_m_counter_r_reg_1_DXMUX_1455
    );
  Inst_mod_m_counter_r_reg_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X57Y46",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_mod_m_counter_r_next(0),
      O => Inst_mod_m_counter_r_reg_1_DYMUX_1441
    );
  Inst_mod_m_counter_r_reg_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y46",
      PATHPULSE => 741 ps
    )
    port map (
      I => btn_IBUF_0,
      O => Inst_mod_m_counter_r_reg_1_SRINV_1432
    );
  Inst_mod_m_counter_r_reg_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y46",
      PATHPULSE => 741 ps
    )
    port map (
      I => clk_BUFGP,
      O => Inst_mod_m_counter_r_reg_1_CLKINV_1431
    );
  Inst_mod_m_counter_r_next_0_1 : X_LUT4
    generic map(
      INIT => X"1155",
      LOC => "SLICE_X57Y46"
    )
    port map (
      ADR0 => Inst_mod_m_counter_r_reg(0),
      ADR1 => Inst_mod_m_counter_r_next_cmp_eq000010_437,
      ADR2 => VCC,
      ADR3 => Inst_mod_m_counter_r_next_cmp_eq000022_416,
      O => Inst_mod_m_counter_r_next(0)
    );
  Inst_mod_m_counter_r_reg_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X57Y48",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_mod_m_counter_r_next(3),
      O => Inst_mod_m_counter_r_reg_3_DXMUX_1497
    );
  Inst_mod_m_counter_r_reg_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X57Y48",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_mod_m_counter_r_next(2),
      O => Inst_mod_m_counter_r_reg_3_DYMUX_1483
    );
  Inst_mod_m_counter_r_reg_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y48",
      PATHPULSE => 741 ps
    )
    port map (
      I => btn_IBUF_0,
      O => Inst_mod_m_counter_r_reg_3_SRINV_1475
    );
  Inst_mod_m_counter_r_reg_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y48",
      PATHPULSE => 741 ps
    )
    port map (
      I => clk_BUFGP,
      O => Inst_mod_m_counter_r_reg_3_CLKINV_1474
    );
  Inst_mod_m_counter_r_next_2_1 : X_LUT4
    generic map(
      INIT => X"006A",
      LOC => "SLICE_X57Y48"
    )
    port map (
      ADR0 => Inst_mod_m_counter_r_reg(2),
      ADR1 => Inst_mod_m_counter_r_reg(1),
      ADR2 => Inst_mod_m_counter_r_reg(0),
      ADR3 => tick_0,
      O => Inst_mod_m_counter_r_next(2)
    );
  Inst_mod_m_counter_r_reg_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y48",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_mod_m_counter_r_next(6),
      O => Inst_mod_m_counter_r_reg_6_DXMUX_1539
    );
  Inst_mod_m_counter_r_reg_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y48",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_mod_m_counter_r_next(5),
      O => Inst_mod_m_counter_r_reg_6_DYMUX_1525
    );
  Inst_mod_m_counter_r_reg_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y48",
      PATHPULSE => 741 ps
    )
    port map (
      I => btn_IBUF_0,
      O => Inst_mod_m_counter_r_reg_6_SRINV_1517
    );
  Inst_mod_m_counter_r_reg_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y48",
      PATHPULSE => 741 ps
    )
    port map (
      I => clk_BUFGP,
      O => Inst_mod_m_counter_r_reg_6_CLKINV_1516
    );
  Inst_mod_m_counter_r_next_5_1 : X_LUT4
    generic map(
      INIT => X"006A",
      LOC => "SLICE_X55Y48"
    )
    port map (
      ADR0 => Inst_mod_m_counter_r_reg(5),
      ADR1 => Inst_mod_m_counter_Madd_r_next_addsub0000_cy(3),
      ADR2 => Inst_mod_m_counter_r_reg(4),
      ADR3 => tick_0,
      O => Inst_mod_m_counter_r_next(5)
    );
  led_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD186"
    )
    port map (
      I => led_4_O,
      O => led(4)
    );
  led_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD185"
    )
    port map (
      I => led_5_O,
      O => led(5)
    );
  led_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD188"
    )
    port map (
      I => led_6_O,
      O => led(6)
    );
  led_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD187"
    )
    port map (
      I => led_7_O,
      O => led(7)
    );
  btn_PULLDOWN : X_PD
    generic map(
      LOC => "IPAD199"
    )
    port map (
      O => NlwRenamedSig_IO_btn
    );
  btn_IBUF : X_BUF
    generic map(
      LOC => "IPAD199",
      PATHPULSE => 741 ps
    )
    port map (
      I => NlwRenamedSig_IO_btn,
      O => btn_IBUF_898
    );
  rx_IBUF : X_BUF
    generic map(
      LOC => "IPAD93",
      PATHPULSE => 741 ps
    )
    port map (
      I => rx,
      O => rx_IBUF_905
    );
  clk_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y11"
    )
    port map (
      I0 => clk_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => clk_BUFGP_BUFG_S_INVNOT,
      O => clk_BUFGP
    );
  clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y11",
      PATHPULSE => 741 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => clk_BUFGP_BUFG_S_INVNOT
    );
  clk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y11",
      PATHPULSE => 741 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_851,
      O => clk_BUFGP_BUFG_I0_INV
    );
  Inst_uart_rx_s_reg_mux0000_2_54_SW12 : X_LUT4
    generic map(
      INIT => X"3388",
      LOC => "SLICE_X59Y50"
    )
    port map (
      ADR0 => rx_IBUF_0,
      ADR1 => Inst_uart_rx_s_reg(1),
      ADR2 => VCC,
      ADR3 => Inst_uart_rx_state_reg_FSM_FFd1_399,
      O => Inst_uart_rx_s_reg_mux0000_2_54_SW11_925
    );
  N22_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y50",
      PATHPULSE => 741 ps
    )
    port map (
      I => N22_F5MUX_934,
      O => N22
    );
  N22_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X59Y50"
    )
    port map (
      IA => Inst_uart_rx_s_reg_mux0000_2_54_SW11_925,
      IB => Inst_uart_rx_s_reg_mux0000_2_54_SW1,
      SEL => N22_BXINV_927,
      O => N22_F5MUX_934
    );
  N22_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y50",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_state_reg_FSM_FFd2_406,
      O => N22_BXINV_927
    );
  Inst_uart_rx_s_reg_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X56Y53",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_s_reg_0_F5MUX_963,
      O => Inst_uart_rx_s_reg_0_DXMUX_965
    );
  Inst_uart_rx_s_reg_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X56Y53"
    )
    port map (
      IA => Inst_uart_rx_s_reg_mux0000_3_201_954,
      IB => Inst_uart_rx_s_reg_mux0000_3_20,
      SEL => Inst_uart_rx_s_reg_0_BXINV_956,
      O => Inst_uart_rx_s_reg_0_F5MUX_963
    );
  Inst_uart_rx_s_reg_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y53",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_state_reg_FSM_FFd2_406,
      O => Inst_uart_rx_s_reg_0_BXINV_956
    );
  Inst_uart_rx_s_reg_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y53",
      PATHPULSE => 741 ps
    )
    port map (
      I => clk_BUFGP,
      O => Inst_uart_rx_s_reg_0_CLKINV_948
    );
  Inst_uart_rx_s_reg_mux0000_3_202 : X_LUT4
    generic map(
      INIT => X"3AC0",
      LOC => "SLICE_X56Y53"
    )
    port map (
      ADR0 => rx_IBUF_0,
      ADR1 => tick_0,
      ADR2 => Inst_uart_rx_state_reg_FSM_FFd1_399,
      ADR3 => Inst_uart_rx_s_reg(0),
      O => Inst_uart_rx_s_reg_mux0000_3_201_954
    );
  Inst_mod_m_counter_r_reg_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y49",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_mod_m_counter_r_next(4),
      O => Inst_mod_m_counter_r_reg_4_DXMUX_1000
    );
  Inst_mod_m_counter_r_reg_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y49",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_mod_m_counter_Madd_r_next_addsub0000_cy_3_pack_1,
      O => Inst_mod_m_counter_Madd_r_next_addsub0000_cy(3)
    );
  Inst_mod_m_counter_r_reg_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y49",
      PATHPULSE => 741 ps
    )
    port map (
      I => clk_BUFGP,
      O => Inst_mod_m_counter_r_reg_4_CLKINV_984
    );
  Inst_mod_m_counter_r_reg_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y49",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_mod_m_counter_r_next(7),
      O => Inst_mod_m_counter_r_reg_7_DXMUX_1035
    );
  Inst_mod_m_counter_r_reg_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y49",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_mod_m_counter_Madd_r_next_addsub0000_cy_5_11_O_pack_1,
      O => Inst_mod_m_counter_Madd_r_next_addsub0000_cy_5_11_O
    );
  Inst_mod_m_counter_r_reg_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y49",
      PATHPULSE => 741 ps
    )
    port map (
      I => clk_BUFGP,
      O => Inst_mod_m_counter_r_reg_7_CLKINV_1018
    );
  tick_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y48",
      PATHPULSE => 741 ps
    )
    port map (
      I => tick,
      O => tick_0
    );
  tick_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y48",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_mod_m_counter_r_next_cmp_eq000022_pack_1,
      O => Inst_mod_m_counter_r_next_cmp_eq000022_416
    );
  Inst_mod_m_counter_r_next_cmp_eq000022 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X56Y48"
    )
    port map (
      ADR0 => Inst_mod_m_counter_r_reg(0),
      ADR1 => Inst_mod_m_counter_r_reg(3),
      ADR2 => Inst_mod_m_counter_r_reg(1),
      ADR3 => Inst_mod_m_counter_r_reg(2),
      O => Inst_mod_m_counter_r_next_cmp_eq000022_pack_1
    );
  Inst_uart_rx_state_reg_FSM_FFd2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X56Y51",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_state_reg_FSM_FFd2_In,
      O => Inst_uart_rx_state_reg_FSM_FFd2_DXMUX_1094
    );
  Inst_uart_rx_state_reg_FSM_FFd2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y51",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_state_reg_FSM_FFd2_In45_O_pack_1,
      O => Inst_uart_rx_state_reg_FSM_FFd2_In45_O
    );
  Inst_uart_rx_state_reg_FSM_FFd2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y51",
      PATHPULSE => 741 ps
    )
    port map (
      I => clk_BUFGP,
      O => Inst_uart_rx_state_reg_FSM_FFd2_CLKINV_1078
    );
  Inst_uart_rx_s_reg_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y52",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_s_reg_mux0000(0),
      O => Inst_uart_rx_s_reg_3_DXMUX_1129
    );
  Inst_uart_rx_s_reg_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y52",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_s_reg_mux0000_0_49_O_pack_1,
      O => Inst_uart_rx_s_reg_mux0000_0_49_O
    );
  Inst_uart_rx_s_reg_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y52",
      PATHPULSE => 741 ps
    )
    port map (
      I => clk_BUFGP,
      O => Inst_uart_rx_s_reg_3_CLKINV_1113
    );
  Inst_uart_rx_s_reg_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y53",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_s_reg_mux0000(1),
      O => Inst_uart_rx_s_reg_2_DXMUX_1164
    );
  Inst_uart_rx_s_reg_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y53",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_s_reg_mux0000_1_33_O_pack_1,
      O => Inst_uart_rx_s_reg_mux0000_1_33_O
    );
  Inst_uart_rx_s_reg_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y53",
      PATHPULSE => 741 ps
    )
    port map (
      I => clk_BUFGP,
      O => Inst_uart_rx_s_reg_2_CLKINV_1148
    );
  Inst_uart_rx_N7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y53",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_N7,
      O => Inst_uart_rx_N7_0
    );
  Inst_uart_rx_N7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y53",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_mod_m_counter_r_next_cmp_eq000023_SW0_O_pack_1,
      O => Inst_mod_m_counter_r_next_cmp_eq000023_SW0_O
    );
  Inst_mod_m_counter_r_next_cmp_eq000023_SW0 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X58Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Inst_uart_rx_state_reg_FSM_FFd1_399,
      ADR2 => VCC,
      ADR3 => Inst_uart_rx_state_reg_FSM_FFd2_406,
      O => Inst_mod_m_counter_r_next_cmp_eq000023_SW0_O_pack_1
    );
  N27_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y52",
      PATHPULSE => 741 ps
    )
    port map (
      I => N27,
      O => N27_0
    );
  N27_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y52",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_state_reg_FSM_FFd2_In33_SW0_SW0_O_pack_1,
      O => Inst_uart_rx_state_reg_FSM_FFd2_In33_SW0_SW0_O
    );
  Inst_uart_rx_state_reg_FSM_FFd2_In33_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"8200",
      LOC => "SLICE_X56Y52"
    )
    port map (
      ADR0 => Inst_uart_rx_s_reg(0),
      ADR1 => Inst_uart_rx_s_reg(3),
      ADR2 => Inst_uart_rx_state_reg_FSM_FFd1_399,
      ADR3 => Inst_uart_rx_s_reg(1),
      O => Inst_uart_rx_state_reg_FSM_FFd2_In33_SW0_SW0_O_pack_1
    );
  Inst_uart_rx_n_reg_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X56Y49",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_n_reg_mux0000(1),
      O => Inst_uart_rx_n_reg_1_DXMUX_1247
    );
  Inst_uart_rx_n_reg_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y49",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_n_reg_mux0000_1_SW1_O_pack_1,
      O => Inst_uart_rx_n_reg_mux0000_1_SW1_O
    );
  Inst_uart_rx_n_reg_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y49",
      PATHPULSE => 741 ps
    )
    port map (
      I => clk_BUFGP,
      O => Inst_uart_rx_n_reg_1_CLKINV_1231
    );
  Inst_uart_rx_n_reg_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y49",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_n_reg_mux0000(2),
      O => Inst_uart_rx_n_reg_2_DXMUX_1282
    );
  Inst_uart_rx_n_reg_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y49",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_n_reg_mux0000_2_SW1_O_pack_1,
      O => Inst_uart_rx_n_reg_mux0000_2_SW1_O
    );
  Inst_uart_rx_n_reg_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y49",
      PATHPULSE => 741 ps
    )
    port map (
      I => clk_BUFGP,
      O => Inst_uart_rx_n_reg_2_CLKINV_1266
    );
  Inst_uart_rx_s_reg_mux0000_2_54 : X_LUT4
    generic map(
      INIT => X"E2AA",
      LOC => "SLICE_X58Y51"
    )
    port map (
      ADR0 => N21_0,
      ADR1 => tick_0,
      ADR2 => N22,
      ADR3 => Inst_uart_rx_s_reg(0),
      O => Inst_uart_rx_s_reg_mux0000(2)
    );
  Inst_uart_rx_s_reg_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y51",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_s_reg_mux0000_1_19_491,
      O => Inst_uart_rx_s_reg_mux0000_1_19_0
    );
  Inst_uart_rx_s_reg_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y51",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_s_reg_mux0000(2),
      O => Inst_uart_rx_s_reg_1_DYMUX_479
    );
  Inst_uart_rx_s_reg_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y51",
      PATHPULSE => 741 ps
    )
    port map (
      I => clk_BUFGP,
      O => Inst_uart_rx_s_reg_1_CLKINV_470
    );
  Inst_uart_rx_state_reg_FSM_FFd1_In : X_LUT4
    generic map(
      INIT => X"7F20",
      LOC => "SLICE_X57Y51"
    )
    port map (
      ADR0 => tick_0,
      ADR1 => Inst_uart_rx_s_reg(3),
      ADR2 => N6_0,
      ADR3 => Inst_uart_rx_state_reg_FSM_FFd1_399,
      O => Inst_uart_rx_state_reg_FSM_FFd1_In_510
    );
  Inst_uart_rx_state_reg_FSM_FFd1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y51",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_state_reg_FSM_FFd2_In40_526,
      O => Inst_uart_rx_state_reg_FSM_FFd2_In40_0
    );
  Inst_uart_rx_state_reg_FSM_FFd1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X57Y51",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_state_reg_FSM_FFd1_In_510,
      O => Inst_uart_rx_state_reg_FSM_FFd1_DYMUX_513
    );
  Inst_uart_rx_state_reg_FSM_FFd1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y51",
      PATHPULSE => 741 ps
    )
    port map (
      I => clk_BUFGP,
      O => Inst_uart_rx_state_reg_FSM_FFd1_CLKINV_504
    );
  Inst_uart_rx_b_reg_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X60Y42",
      PATHPULSE => 741 ps
    )
    port map (
      I => rx_IBUF_0,
      O => Inst_uart_rx_b_reg_7_DXMUX_549
    );
  Inst_uart_rx_b_reg_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X60Y42",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_b_reg(7),
      O => Inst_uart_rx_b_reg_7_DYMUX_540
    );
  Inst_uart_rx_b_reg_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y42",
      PATHPULSE => 741 ps
    )
    port map (
      I => btn_IBUF_0,
      O => Inst_uart_rx_b_reg_7_SRINV_538
    );
  Inst_uart_rx_b_reg_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y42",
      PATHPULSE => 741 ps
    )
    port map (
      I => clk_BUFGP,
      O => Inst_uart_rx_b_reg_7_CLKINV_537
    );
  Inst_uart_rx_b_reg_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y42",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_b_reg_not0001_0,
      O => Inst_uart_rx_b_reg_7_CEINV_536
    );
  N39_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y51",
      PATHPULSE => 741 ps
    )
    port map (
      I => N39,
      O => N39_0
    );
  N39_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y51",
      PATHPULSE => 741 ps
    )
    port map (
      I => N21,
      O => N21_0
    );
  Inst_uart_rx_s_reg_mux0000_2_54_SW0 : X_LUT4
    generic map(
      INIT => X"CCC8",
      LOC => "SLICE_X59Y51"
    )
    port map (
      ADR0 => rx_IBUF_0,
      ADR1 => Inst_uart_rx_s_reg(1),
      ADR2 => Inst_uart_rx_state_reg_FSM_FFd2_406,
      ADR3 => Inst_uart_rx_state_reg_FSM_FFd1_399,
      O => N21
    );
  N41_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y53",
      PATHPULSE => 741 ps
    )
    port map (
      I => N41,
      O => N41_0
    );
  N41_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y53",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_s_reg_mux0000_0_32_594,
      O => Inst_uart_rx_s_reg_mux0000_0_32_0
    );
  Inst_uart_rx_s_reg_mux0000_0_32 : X_LUT4
    generic map(
      INIT => X"78F0",
      LOC => "SLICE_X57Y53"
    )
    port map (
      ADR0 => Inst_uart_rx_s_reg(1),
      ADR1 => Inst_uart_rx_s_reg(2),
      ADR2 => Inst_uart_rx_s_reg(3),
      ADR3 => Inst_uart_rx_s_reg(0),
      O => Inst_uart_rx_s_reg_mux0000_0_32_594
    );
  N8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y49",
      PATHPULSE => 741 ps
    )
    port map (
      I => N8,
      O => N8_0
    );
  N8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y49",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_N31,
      O => Inst_uart_rx_N31_0
    );
  Inst_uart_rx_s_reg_mux0000_0_27 : X_LUT4
    generic map(
      INIT => X"FD4C",
      LOC => "SLICE_X59Y49"
    )
    port map (
      ADR0 => Inst_uart_rx_N18,
      ADR1 => Inst_uart_rx_state_reg_FSM_FFd1_399,
      ADR2 => Inst_uart_rx_s_reg(3),
      ADR3 => Inst_uart_rx_state_reg_FSM_FFd2_406,
      O => Inst_uart_rx_N31
    );
  Inst_uart_rx_s_reg_mux0000_0_44_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y52",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_s_reg_mux0000_0_44,
      O => Inst_uart_rx_s_reg_mux0000_0_44_0
    );
  Inst_uart_rx_s_reg_mux0000_0_44_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y52",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_state_reg_FSM_FFd2_In50_641,
      O => Inst_uart_rx_state_reg_FSM_FFd2_In50_0
    );
  Inst_uart_rx_state_reg_FSM_FFd2_In50 : X_LUT4
    generic map(
      INIT => X"0033",
      LOC => "SLICE_X57Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Inst_uart_rx_state_reg_FSM_FFd1_399,
      ADR2 => VCC,
      ADR3 => rx_IBUF_0,
      O => Inst_uart_rx_state_reg_FSM_FFd2_In50_641
    );
  N10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y49",
      PATHPULSE => 741 ps
    )
    port map (
      I => N10,
      O => N10_0
    );
  N10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y49",
      PATHPULSE => 741 ps
    )
    port map (
      I => N13,
      O => N13_0
    );
  Inst_uart_rx_n_reg_mux0000_2_SW0 : X_LUT4
    generic map(
      INIT => X"DF00",
      LOC => "SLICE_X57Y49"
    )
    port map (
      ADR0 => Inst_uart_rx_N18,
      ADR1 => N31_0,
      ADR2 => Inst_mod_m_counter_r_next_cmp_eq000022_416,
      ADR3 => Inst_uart_rx_n_reg(2),
      O => N13
    );
  rx_done_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y50",
      PATHPULSE => 741 ps
    )
    port map (
      I => N6,
      O => N6_0
    );
  Inst_uart_rx_state_reg_FSM_FFd1_In_SW0 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X57Y50"
    )
    port map (
      ADR0 => Inst_uart_rx_state_reg_FSM_FFd2_406,
      ADR1 => Inst_uart_rx_s_reg(1),
      ADR2 => Inst_uart_rx_s_reg(0),
      ADR3 => Inst_uart_rx_s_reg(2),
      O => N6
    );
  N19_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y48",
      PATHPULSE => 741 ps
    )
    port map (
      I => N19,
      O => N19_0
    );
  N19_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y48",
      PATHPULSE => 741 ps
    )
    port map (
      I => N18,
      O => N18_0
    );
  Inst_uart_rx_n_reg_mux0000_0_1_SW2 : X_LUT4
    generic map(
      INIT => X"FAAA",
      LOC => "SLICE_X59Y48"
    )
    port map (
      ADR0 => Inst_uart_rx_n_reg(2),
      ADR1 => VCC,
      ADR2 => Inst_uart_rx_n_reg(1),
      ADR3 => Inst_uart_rx_n_reg(0),
      O => N18
    );
  N4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y47",
      PATHPULSE => 741 ps
    )
    port map (
      I => N4,
      O => N4_0
    );
  Inst_mod_m_counter_r_next_3_SW0 : X_LUT4
    generic map(
      INIT => X"0FFF",
      LOC => "SLICE_X57Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => Inst_mod_m_counter_r_reg(2),
      ADR3 => Inst_mod_m_counter_r_reg(1),
      O => N4
    );
  Inst_uart_rx_b_reg_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y44",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_b_reg(2),
      O => Inst_uart_rx_b_reg_1_DXMUX_757
    );
  Inst_uart_rx_b_reg_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y44",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_b_reg(1),
      O => Inst_uart_rx_b_reg_1_DYMUX_748
    );
  Inst_uart_rx_b_reg_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y44",
      PATHPULSE => 741 ps
    )
    port map (
      I => btn_IBUF_0,
      O => Inst_uart_rx_b_reg_1_SRINV_746
    );
  Inst_uart_rx_b_reg_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y44",
      PATHPULSE => 741 ps
    )
    port map (
      I => clk_BUFGP,
      O => Inst_uart_rx_b_reg_1_CLKINV_745
    );
  Inst_uart_rx_b_reg_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y44",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_b_reg_not0001_0,
      O => Inst_uart_rx_b_reg_1_CEINV_744
    );
  Inst_uart_rx_b_reg_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y45",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_b_reg(4),
      O => Inst_uart_rx_b_reg_3_DXMUX_785
    );
  Inst_uart_rx_b_reg_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y45",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_b_reg(3),
      O => Inst_uart_rx_b_reg_3_DYMUX_776
    );
  Inst_uart_rx_b_reg_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y45",
      PATHPULSE => 741 ps
    )
    port map (
      I => btn_IBUF_0,
      O => Inst_uart_rx_b_reg_3_SRINV_774
    );
  Inst_uart_rx_b_reg_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y45",
      PATHPULSE => 741 ps
    )
    port map (
      I => clk_BUFGP,
      O => Inst_uart_rx_b_reg_3_CLKINV_773
    );
  Inst_uart_rx_b_reg_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y45",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_b_reg_not0001_0,
      O => Inst_uart_rx_b_reg_3_CEINV_772
    );
  Inst_uart_rx_b_reg_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X56Y44",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_b_reg(6),
      O => Inst_uart_rx_b_reg_5_DXMUX_813
    );
  Inst_uart_rx_b_reg_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X56Y44",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_b_reg(5),
      O => Inst_uart_rx_b_reg_5_DYMUX_804
    );
  Inst_uart_rx_b_reg_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y44",
      PATHPULSE => 741 ps
    )
    port map (
      I => btn_IBUF_0,
      O => Inst_uart_rx_b_reg_5_SRINV_802
    );
  Inst_uart_rx_b_reg_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y44",
      PATHPULSE => 741 ps
    )
    port map (
      I => clk_BUFGP,
      O => Inst_uart_rx_b_reg_5_CLKINV_801
    );
  Inst_uart_rx_b_reg_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y44",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_b_reg_not0001_0,
      O => Inst_uart_rx_b_reg_5_CEINV_800
    );
  led_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD172"
    )
    port map (
      I => led_0_O,
      O => led(0)
    );
  led_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD171"
    )
    port map (
      I => led_1_O,
      O => led(1)
    );
  led_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD178"
    )
    port map (
      I => led_2_O,
      O => led(2)
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 741 ps
    )
    port map (
      I => clk,
      O => clk_BUFGP_IBUFG_851
    );
  led_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD177"
    )
    port map (
      I => led_3_O,
      O => led(3)
    );
  Inst_uart_rx_s_reg_mux0000_2_54_SW11 : X_LUT4
    generic map(
      INIT => X"B333",
      LOC => "SLICE_X59Y50"
    )
    port map (
      ADR0 => Inst_uart_rx_s_reg(3),
      ADR1 => Inst_uart_rx_s_reg(1),
      ADR2 => Inst_uart_rx_s_reg(2),
      ADR3 => Inst_uart_rx_state_reg_FSM_FFd1_399,
      O => Inst_uart_rx_s_reg_mux0000_2_54_SW1
    );
  Inst_uart_rx_s_reg_mux0000_3_201 : X_LUT4
    generic map(
      INIT => X"DA5A",
      LOC => "SLICE_X56Y53"
    )
    port map (
      ADR0 => Inst_uart_rx_s_reg(0),
      ADR1 => Inst_uart_rx_state_reg_FSM_FFd1_399,
      ADR2 => tick_0,
      ADR3 => N41_0,
      O => Inst_uart_rx_s_reg_mux0000_3_20
    );
  Inst_mod_m_counter_Madd_r_next_addsub0000_cy_3_11 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X54Y49"
    )
    port map (
      ADR0 => Inst_mod_m_counter_r_reg(0),
      ADR1 => Inst_mod_m_counter_r_reg(3),
      ADR2 => Inst_mod_m_counter_r_reg(1),
      ADR3 => Inst_mod_m_counter_r_reg(2),
      O => Inst_mod_m_counter_Madd_r_next_addsub0000_cy_3_pack_1
    );
  Inst_mod_m_counter_Madd_r_next_addsub0000_cy_5_11 : X_LUT4
    generic map(
      INIT => X"C000",
      LOC => "SLICE_X55Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Inst_mod_m_counter_Madd_r_next_addsub0000_cy(3),
      ADR2 => Inst_mod_m_counter_r_reg(4),
      ADR3 => Inst_mod_m_counter_r_reg(5),
      O => Inst_mod_m_counter_Madd_r_next_addsub0000_cy_5_11_O_pack_1
    );
  Inst_uart_rx_state_reg_FSM_FFd2_In45 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X56Y51"
    )
    port map (
      ADR0 => N29_0,
      ADR1 => Inst_mod_m_counter_r_next_cmp_eq000010_437,
      ADR2 => Inst_mod_m_counter_r_next_cmp_eq000022_416,
      ADR3 => Inst_uart_rx_state_reg_FSM_FFd2_In40_0,
      O => Inst_uart_rx_state_reg_FSM_FFd2_In45_O_pack_1
    );
  Inst_uart_rx_s_reg_mux0000_0_49 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X59Y52"
    )
    port map (
      ADR0 => Inst_uart_rx_state_reg_cmp_eq0001,
      ADR1 => Inst_uart_rx_s_reg_mux0000_0_32_0,
      ADR2 => Inst_uart_rx_s_reg_mux0000_0_44_0,
      ADR3 => Inst_uart_rx_N31_0,
      O => Inst_uart_rx_s_reg_mux0000_0_49_O_pack_1
    );
  Inst_uart_rx_s_reg_mux0000_1_33 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X59Y53"
    )
    port map (
      ADR0 => Inst_uart_rx_state_reg_cmp_eq0001,
      ADR1 => Inst_uart_rx_N31_0,
      ADR2 => Inst_uart_rx_s_reg_mux0000_0_44_0,
      ADR3 => Inst_uart_rx_s_reg_mux0000_1_19_0,
      O => Inst_uart_rx_s_reg_mux0000_1_33_O_pack_1
    );
  Inst_uart_rx_n_reg_mux0000_1_SW1 : X_LUT4
    generic map(
      INIT => X"DFF0",
      LOC => "SLICE_X56Y49"
    )
    port map (
      ADR0 => tick_0,
      ADR1 => N16_0,
      ADR2 => Inst_uart_rx_n_reg(1),
      ADR3 => Inst_uart_rx_n_reg(0),
      O => Inst_uart_rx_n_reg_mux0000_1_SW1_O_pack_1
    );
  Inst_uart_rx_n_reg_mux0000_2_SW1 : X_LUT4
    generic map(
      INIT => X"CCE4",
      LOC => "SLICE_X58Y49"
    )
    port map (
      ADR0 => Inst_mod_m_counter_r_next_cmp_eq000022_416,
      ADR1 => N18_0,
      ADR2 => N19_0,
      ADR3 => N31_0,
      O => Inst_uart_rx_n_reg_mux0000_2_SW1_O_pack_1
    );
  Inst_uart_rx_n_reg_mux0000_0_1 : X_LUT4
    generic map(
      INIT => X"FF7F",
      LOC => "SLICE_X58Y48"
    )
    port map (
      ADR0 => Inst_mod_m_counter_r_next_cmp_eq000022_416,
      ADR1 => Inst_mod_m_counter_r_next_cmp_eq000010_437,
      ADR2 => Inst_uart_rx_N18,
      ADR3 => N8_0,
      O => Inst_uart_rx_n_reg_mux0000_0_1_O_pack_1
    );
  Inst_uart_rx_s_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X58Y51",
      INIT => '0'
    )
    port map (
      I => Inst_uart_rx_s_reg_1_DYMUX_479,
      CE => VCC,
      CLK => Inst_uart_rx_s_reg_1_CLKINV_470,
      SET => GND,
      RST => Inst_uart_rx_s_reg_1_FFY_RSTAND_484,
      O => Inst_uart_rx_s_reg(1)
    );
  Inst_uart_rx_s_reg_1_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X58Y51",
      PATHPULSE => 741 ps
    )
    port map (
      I => btn_IBUF_0,
      O => Inst_uart_rx_s_reg_1_FFY_RSTAND_484
    );
  Inst_uart_rx_n_reg_mux0000_0_1_SW0 : X_LUT4
    generic map(
      INIT => X"EE77",
      LOC => "SLICE_X59Y49"
    )
    port map (
      ADR0 => Inst_uart_rx_s_reg(3),
      ADR1 => Inst_uart_rx_state_reg_FSM_FFd1_399,
      ADR2 => VCC,
      ADR3 => Inst_uart_rx_state_reg_FSM_FFd2_406,
      O => N8
    );
  Inst_uart_rx_s_reg_mux0000_1_28 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X57Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Inst_uart_rx_state_reg_FSM_FFd1_399,
      ADR2 => VCC,
      ADR3 => Inst_uart_rx_state_reg_FSM_FFd2_406,
      O => Inst_uart_rx_s_reg_mux0000_0_44
    );
  Inst_uart_rx_n_reg_mux0000_1_SW0 : X_LUT4
    generic map(
      INIT => X"DF00",
      LOC => "SLICE_X57Y49"
    )
    port map (
      ADR0 => Inst_uart_rx_N18,
      ADR1 => N31_0,
      ADR2 => Inst_mod_m_counter_r_next_cmp_eq000022_416,
      ADR3 => Inst_uart_rx_n_reg(1),
      O => N10
    );
  Inst_uart_rx_rx_done_tick1 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X57Y50"
    )
    port map (
      ADR0 => Inst_uart_rx_state_reg_FSM_FFd2_406,
      ADR1 => Inst_uart_rx_state_reg_cmp_eq0001,
      ADR2 => tick_0,
      ADR3 => Inst_uart_rx_state_reg_FSM_FFd1_399,
      O => rx_done
    );
  Inst_uart_rx_n_reg_mux0000_0_1_SW3 : X_LUT4
    generic map(
      INIT => X"7CF0",
      LOC => "SLICE_X59Y48"
    )
    port map (
      ADR0 => Inst_uart_rx_N18,
      ADR1 => Inst_uart_rx_n_reg(0),
      ADR2 => Inst_uart_rx_n_reg(2),
      ADR3 => Inst_uart_rx_n_reg(1),
      O => N19
    );
  Inst_uart_rx_b_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X58Y44",
      INIT => '0'
    )
    port map (
      I => Inst_uart_rx_b_reg_1_DYMUX_748,
      CE => Inst_uart_rx_b_reg_1_CEINV_744,
      CLK => Inst_uart_rx_b_reg_1_CLKINV_745,
      SET => GND,
      RST => Inst_uart_rx_b_reg_1_SRINV_746,
      O => Inst_uart_rx_b_reg(0)
    );
  Inst_uart_rx_b_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X58Y44",
      INIT => '0'
    )
    port map (
      I => Inst_uart_rx_b_reg_1_DXMUX_757,
      CE => Inst_uart_rx_b_reg_1_CEINV_744,
      CLK => Inst_uart_rx_b_reg_1_CLKINV_745,
      SET => GND,
      RST => Inst_uart_rx_b_reg_1_SRINV_746,
      O => Inst_uart_rx_b_reg(1)
    );
  Inst_uart_rx_s_reg_mux0000_1_19 : X_LUT4
    generic map(
      INIT => X"3CCC",
      LOC => "SLICE_X58Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Inst_uart_rx_s_reg(2),
      ADR2 => Inst_uart_rx_s_reg(1),
      ADR3 => Inst_uart_rx_s_reg(0),
      O => Inst_uart_rx_s_reg_mux0000_1_19_491
    );
  Inst_uart_rx_state_reg_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X57Y51",
      INIT => '0'
    )
    port map (
      I => Inst_uart_rx_state_reg_FSM_FFd1_DYMUX_513,
      CE => VCC,
      CLK => Inst_uart_rx_state_reg_FSM_FFd1_CLKINV_504,
      SET => GND,
      RST => Inst_uart_rx_state_reg_FSM_FFd1_FFY_RSTAND_518,
      O => Inst_uart_rx_state_reg_FSM_FFd1_399
    );
  Inst_uart_rx_state_reg_FSM_FFd1_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X57Y51",
      PATHPULSE => 741 ps
    )
    port map (
      I => btn_IBUF_0,
      O => Inst_uart_rx_state_reg_FSM_FFd1_FFY_RSTAND_518
    );
  Inst_uart_rx_state_reg_FSM_FFd2_In40 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X57Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Inst_uart_rx_s_reg(3),
      ADR2 => VCC,
      ADR3 => Inst_uart_rx_state_reg_FSM_FFd1_399,
      O => Inst_uart_rx_state_reg_FSM_FFd2_In40_526
    );
  Inst_uart_rx_b_reg_6 : X_FF
    generic map(
      LOC => "SLICE_X60Y42",
      INIT => '0'
    )
    port map (
      I => Inst_uart_rx_b_reg_7_DYMUX_540,
      CE => Inst_uart_rx_b_reg_7_CEINV_536,
      CLK => Inst_uart_rx_b_reg_7_CLKINV_537,
      SET => GND,
      RST => Inst_uart_rx_b_reg_7_SRINV_538,
      O => Inst_uart_rx_b_reg(6)
    );
  Inst_uart_rx_b_reg_7 : X_FF
    generic map(
      LOC => "SLICE_X60Y42",
      INIT => '0'
    )
    port map (
      I => Inst_uart_rx_b_reg_7_DXMUX_549,
      CE => Inst_uart_rx_b_reg_7_CEINV_536,
      CLK => Inst_uart_rx_b_reg_7_CLKINV_537,
      SET => GND,
      RST => Inst_uart_rx_b_reg_7_SRINV_538,
      O => Inst_uart_rx_b_reg(7)
    );
  Inst_mod_m_counter_r_next_cmp_eq000023_SW1 : X_LUT4
    generic map(
      INIT => X"CCFF",
      LOC => "SLICE_X59Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Inst_uart_rx_state_reg_FSM_FFd2_406,
      ADR2 => VCC,
      ADR3 => Inst_uart_rx_state_reg_FSM_FFd1_399,
      O => N39
    );
  Inst_uart_rx_s_reg_mux0000_3_9_SW0 : X_LUT4
    generic map(
      INIT => X"8080",
      LOC => "SLICE_X57Y53"
    )
    port map (
      ADR0 => Inst_uart_rx_s_reg(1),
      ADR1 => Inst_uart_rx_s_reg(2),
      ADR2 => Inst_uart_rx_s_reg(3),
      ADR3 => VCC,
      O => N41
    );
  Inst_uart_rx_s_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X56Y53",
      INIT => '0'
    )
    port map (
      I => Inst_uart_rx_s_reg_0_DXMUX_965,
      CE => VCC,
      CLK => Inst_uart_rx_s_reg_0_CLKINV_948,
      SET => GND,
      RST => Inst_uart_rx_s_reg_0_FFX_RSTAND_970,
      O => Inst_uart_rx_s_reg(0)
    );
  Inst_uart_rx_s_reg_0_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X56Y53",
      PATHPULSE => 741 ps
    )
    port map (
      I => btn_IBUF_0,
      O => Inst_uart_rx_s_reg_0_FFX_RSTAND_970
    );
  Inst_mod_m_counter_r_next_4_1 : X_LUT4
    generic map(
      INIT => X"143C",
      LOC => "SLICE_X54Y49"
    )
    port map (
      ADR0 => Inst_mod_m_counter_r_next_cmp_eq000022_416,
      ADR1 => Inst_mod_m_counter_r_reg(4),
      ADR2 => Inst_mod_m_counter_Madd_r_next_addsub0000_cy(3),
      ADR3 => Inst_mod_m_counter_r_next_cmp_eq000010_437,
      O => Inst_mod_m_counter_r_next(4)
    );
  Inst_mod_m_counter_r_reg_4 : X_FF
    generic map(
      LOC => "SLICE_X54Y49",
      INIT => '0'
    )
    port map (
      I => Inst_mod_m_counter_r_reg_4_DXMUX_1000,
      CE => VCC,
      CLK => Inst_mod_m_counter_r_reg_4_CLKINV_984,
      SET => GND,
      RST => Inst_mod_m_counter_r_reg_4_FFX_RSTAND_1005,
      O => Inst_mod_m_counter_r_reg(4)
    );
  Inst_mod_m_counter_r_reg_4_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X54Y49",
      PATHPULSE => 741 ps
    )
    port map (
      I => btn_IBUF_0,
      O => Inst_mod_m_counter_r_reg_4_FFX_RSTAND_1005
    );
  Inst_mod_m_counter_r_next_7_1 : X_LUT4
    generic map(
      INIT => X"1222",
      LOC => "SLICE_X55Y49"
    )
    port map (
      ADR0 => Inst_mod_m_counter_r_reg(7),
      ADR1 => tick_0,
      ADR2 => Inst_mod_m_counter_r_reg(6),
      ADR3 => Inst_mod_m_counter_Madd_r_next_addsub0000_cy_5_11_O,
      O => Inst_mod_m_counter_r_next(7)
    );
  Inst_mod_m_counter_r_reg_7 : X_FF
    generic map(
      LOC => "SLICE_X55Y49",
      INIT => '0'
    )
    port map (
      I => Inst_mod_m_counter_r_reg_7_DXMUX_1035,
      CE => VCC,
      CLK => Inst_mod_m_counter_r_reg_7_CLKINV_1018,
      SET => GND,
      RST => Inst_mod_m_counter_r_reg_7_FFX_RSTAND_1040,
      O => Inst_mod_m_counter_r_reg(7)
    );
  Inst_mod_m_counter_r_reg_7_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X55Y49",
      PATHPULSE => 741 ps
    )
    port map (
      I => btn_IBUF_0,
      O => Inst_mod_m_counter_r_reg_7_FFX_RSTAND_1040
    );
  Inst_mod_m_counter_r_next_cmp_eq000023 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X56Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Inst_mod_m_counter_r_next_cmp_eq000010_437,
      ADR2 => VCC,
      ADR3 => Inst_mod_m_counter_r_next_cmp_eq000022_416,
      O => tick
    );
  Inst_uart_rx_b_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X58Y45",
      INIT => '0'
    )
    port map (
      I => Inst_uart_rx_b_reg_3_DYMUX_776,
      CE => Inst_uart_rx_b_reg_3_CEINV_772,
      CLK => Inst_uart_rx_b_reg_3_CLKINV_773,
      SET => GND,
      RST => Inst_uart_rx_b_reg_3_SRINV_774,
      O => Inst_uart_rx_b_reg(2)
    );
  Inst_uart_rx_b_reg_3 : X_FF
    generic map(
      LOC => "SLICE_X58Y45",
      INIT => '0'
    )
    port map (
      I => Inst_uart_rx_b_reg_3_DXMUX_785,
      CE => Inst_uart_rx_b_reg_3_CEINV_772,
      CLK => Inst_uart_rx_b_reg_3_CLKINV_773,
      SET => GND,
      RST => Inst_uart_rx_b_reg_3_SRINV_774,
      O => Inst_uart_rx_b_reg(3)
    );
  Inst_uart_rx_b_reg_4 : X_FF
    generic map(
      LOC => "SLICE_X56Y44",
      INIT => '0'
    )
    port map (
      I => Inst_uart_rx_b_reg_5_DYMUX_804,
      CE => Inst_uart_rx_b_reg_5_CEINV_800,
      CLK => Inst_uart_rx_b_reg_5_CLKINV_801,
      SET => GND,
      RST => Inst_uart_rx_b_reg_5_SRINV_802,
      O => Inst_uart_rx_b_reg(4)
    );
  Inst_uart_rx_b_reg_5 : X_FF
    generic map(
      LOC => "SLICE_X56Y44",
      INIT => '0'
    )
    port map (
      I => Inst_uart_rx_b_reg_5_DXMUX_813,
      CE => Inst_uart_rx_b_reg_5_CEINV_800,
      CLK => Inst_uart_rx_b_reg_5_CLKINV_801,
      SET => GND,
      RST => Inst_uart_rx_b_reg_5_SRINV_802,
      O => Inst_uart_rx_b_reg(5)
    );
  Inst_uart_rx_state_reg_FSM_FFd2_In71 : X_LUT4
    generic map(
      INIT => X"FE54",
      LOC => "SLICE_X56Y51"
    )
    port map (
      ADR0 => Inst_uart_rx_state_reg_FSM_FFd2_406,
      ADR1 => Inst_uart_rx_state_reg_FSM_FFd2_In50_0,
      ADR2 => Inst_uart_rx_state_reg_FSM_FFd2_In45_O,
      ADR3 => N27_0,
      O => Inst_uart_rx_state_reg_FSM_FFd2_In
    );
  Inst_uart_rx_state_reg_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X56Y51",
      INIT => '0'
    )
    port map (
      I => Inst_uart_rx_state_reg_FSM_FFd2_DXMUX_1094,
      CE => VCC,
      CLK => Inst_uart_rx_state_reg_FSM_FFd2_CLKINV_1078,
      SET => GND,
      RST => Inst_uart_rx_state_reg_FSM_FFd2_FFX_RSTAND_1099,
      O => Inst_uart_rx_state_reg_FSM_FFd2_406
    );
  Inst_uart_rx_state_reg_FSM_FFd2_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X56Y51",
      PATHPULSE => 741 ps
    )
    port map (
      I => btn_IBUF_0,
      O => Inst_uart_rx_state_reg_FSM_FFd2_FFX_RSTAND_1099
    );
  Inst_uart_rx_s_reg_mux0000_0_77 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X59Y52"
    )
    port map (
      ADR0 => Inst_uart_rx_s_reg(3),
      ADR1 => tick_0,
      ADR2 => Inst_uart_rx_s_reg_mux0000_0_49_O,
      ADR3 => Inst_uart_rx_N7_0,
      O => Inst_uart_rx_s_reg_mux0000(0)
    );
  Inst_uart_rx_s_reg_3 : X_FF
    generic map(
      LOC => "SLICE_X59Y52",
      INIT => '0'
    )
    port map (
      I => Inst_uart_rx_s_reg_3_DXMUX_1129,
      CE => VCC,
      CLK => Inst_uart_rx_s_reg_3_CLKINV_1113,
      SET => GND,
      RST => Inst_uart_rx_s_reg_3_FFX_RSTAND_1134,
      O => Inst_uart_rx_s_reg(3)
    );
  Inst_uart_rx_s_reg_3_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X59Y52",
      PATHPULSE => 741 ps
    )
    port map (
      I => btn_IBUF_0,
      O => Inst_uart_rx_s_reg_3_FFX_RSTAND_1134
    );
  Inst_uart_rx_s_reg_mux0000_1_56 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X59Y53"
    )
    port map (
      ADR0 => tick_0,
      ADR1 => Inst_uart_rx_s_reg(2),
      ADR2 => Inst_uart_rx_N7_0,
      ADR3 => Inst_uart_rx_s_reg_mux0000_1_33_O,
      O => Inst_uart_rx_s_reg_mux0000(1)
    );
  Inst_uart_rx_s_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X59Y53",
      INIT => '0'
    )
    port map (
      I => Inst_uart_rx_s_reg_2_DXMUX_1164,
      CE => VCC,
      CLK => Inst_uart_rx_s_reg_2_CLKINV_1148,
      SET => GND,
      RST => Inst_uart_rx_s_reg_2_FFX_RSTAND_1169,
      O => Inst_uart_rx_s_reg(2)
    );
  Inst_uart_rx_s_reg_2_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X59Y53",
      PATHPULSE => 741 ps
    )
    port map (
      I => btn_IBUF_0,
      O => Inst_uart_rx_s_reg_2_FFX_RSTAND_1169
    );
  Inst_uart_rx_s_reg_mux0000_3_11 : X_LUT4
    generic map(
      INIT => X"7F70",
      LOC => "SLICE_X58Y53"
    )
    port map (
      ADR0 => Inst_mod_m_counter_r_next_cmp_eq000010_437,
      ADR1 => Inst_mod_m_counter_r_next_cmp_eq000022_416,
      ADR2 => Inst_mod_m_counter_r_next_cmp_eq000023_SW0_O,
      ADR3 => rx_IBUF_0,
      O => Inst_uart_rx_N7
    );
  Inst_uart_rx_state_reg_FSM_FFd2_In33_SW0 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "SLICE_X56Y52"
    )
    port map (
      ADR0 => Inst_uart_rx_s_reg(2),
      ADR1 => Inst_mod_m_counter_r_next_cmp_eq000022_416,
      ADR2 => Inst_mod_m_counter_r_next_cmp_eq000010_437,
      ADR3 => Inst_uart_rx_state_reg_FSM_FFd2_In33_SW0_SW0_O,
      O => N27
    );
  Inst_uart_rx_n_reg_mux0000_1_Q : X_LUT4
    generic map(
      INIT => X"FBC8",
      LOC => "SLICE_X56Y49"
    )
    port map (
      ADR0 => Inst_uart_rx_state_reg_cmp_eq0002,
      ADR1 => Inst_uart_rx_b_reg_not0001_0,
      ADR2 => Inst_uart_rx_n_reg_mux0000_1_SW1_O,
      ADR3 => N10_0,
      O => Inst_uart_rx_n_reg_mux0000(1)
    );
  Inst_uart_rx_n_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X56Y49",
      INIT => '0'
    )
    port map (
      I => Inst_uart_rx_n_reg_1_DXMUX_1247,
      CE => VCC,
      CLK => Inst_uart_rx_n_reg_1_CLKINV_1231,
      SET => GND,
      RST => Inst_uart_rx_n_reg_1_FFX_RSTAND_1252,
      O => Inst_uart_rx_n_reg(1)
    );
  Inst_uart_rx_n_reg_1_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X56Y49",
      PATHPULSE => 741 ps
    )
    port map (
      I => btn_IBUF_0,
      O => Inst_uart_rx_n_reg_1_FFX_RSTAND_1252
    );
  Inst_uart_rx_n_reg_mux0000_2_Q : X_LUT4
    generic map(
      INIT => X"FACC",
      LOC => "SLICE_X58Y49"
    )
    port map (
      ADR0 => Inst_uart_rx_state_reg_cmp_eq0002,
      ADR1 => N13_0,
      ADR2 => Inst_uart_rx_n_reg_mux0000_2_SW1_O,
      ADR3 => Inst_uart_rx_b_reg_not0001_0,
      O => Inst_uart_rx_n_reg_mux0000(2)
    );
  Inst_uart_rx_n_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X58Y49",
      INIT => '0'
    )
    port map (
      I => Inst_uart_rx_n_reg_2_DXMUX_1282,
      CE => VCC,
      CLK => Inst_uart_rx_n_reg_2_CLKINV_1266,
      SET => GND,
      RST => Inst_uart_rx_n_reg_2_FFX_RSTAND_1287,
      O => Inst_uart_rx_n_reg(2)
    );
  Inst_uart_rx_n_reg_2_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X58Y49",
      PATHPULSE => 741 ps
    )
    port map (
      I => btn_IBUF_0,
      O => Inst_uart_rx_n_reg_2_FFX_RSTAND_1287
    );
  Inst_uart_rx_n_reg_mux0000_0_2 : X_LUT4
    generic map(
      INIT => X"FC8C",
      LOC => "SLICE_X58Y48"
    )
    port map (
      ADR0 => Inst_uart_rx_state_reg_cmp_eq0002,
      ADR1 => Inst_uart_rx_b_reg_not0001_0,
      ADR2 => Inst_uart_rx_n_reg(0),
      ADR3 => Inst_uart_rx_n_reg_mux0000_0_1_O,
      O => Inst_uart_rx_n_reg_mux0000(0)
    );
  Inst_uart_rx_n_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X58Y48",
      INIT => '0'
    )
    port map (
      I => Inst_uart_rx_n_reg_0_DXMUX_1317,
      CE => VCC,
      CLK => Inst_uart_rx_n_reg_0_CLKINV_1301,
      SET => GND,
      RST => Inst_uart_rx_n_reg_0_FFX_RSTAND_1322,
      O => Inst_uart_rx_n_reg(0)
    );
  Inst_uart_rx_n_reg_0_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X58Y48",
      PATHPULSE => 741 ps
    )
    port map (
      I => btn_IBUF_0,
      O => Inst_uart_rx_n_reg_0_FFX_RSTAND_1322
    );
  Inst_uart_rx_b_reg_not00011 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X58Y46"
    )
    port map (
      ADR0 => N39_0,
      ADR1 => Inst_mod_m_counter_r_next_cmp_eq000010_437,
      ADR2 => Inst_mod_m_counter_r_next_cmp_eq000022_416,
      ADR3 => Inst_uart_rx_state_reg_cmp_eq0001,
      O => Inst_uart_rx_b_reg_not0001
    );
  Inst_uart_rx_n_reg_mux0000_0_1_SW1 : X_LUT4
    generic map(
      INIT => X"E7FF",
      LOC => "SLICE_X58Y50"
    )
    port map (
      ADR0 => Inst_uart_rx_state_reg_FSM_FFd1_399,
      ADR1 => Inst_uart_rx_s_reg(3),
      ADR2 => Inst_uart_rx_state_reg_FSM_FFd2_406,
      ADR3 => Inst_uart_rx_N18,
      O => N16
    );
  Inst_uart_rx_state_reg_FSM_FFd2_In45_SW0 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X56Y50"
    )
    port map (
      ADR0 => Inst_uart_rx_s_reg(2),
      ADR1 => Inst_uart_rx_s_reg(0),
      ADR2 => Inst_uart_rx_s_reg(1),
      ADR3 => Inst_uart_rx_state_reg_cmp_eq0002,
      O => N29
    );
  Inst_uart_rx_n_reg_mux0000_1_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"DBFF",
      LOC => "SLICE_X54Y48"
    )
    port map (
      ADR0 => Inst_uart_rx_state_reg_FSM_FFd1_399,
      ADR1 => Inst_uart_rx_state_reg_FSM_FFd2_406,
      ADR2 => Inst_uart_rx_s_reg(3),
      ADR3 => Inst_mod_m_counter_r_next_cmp_eq000010_437,
      O => N31
    );
  Inst_mod_m_counter_r_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X57Y46",
      INIT => '0'
    )
    port map (
      I => Inst_mod_m_counter_r_reg_1_DYMUX_1441,
      CE => VCC,
      CLK => Inst_mod_m_counter_r_reg_1_CLKINV_1431,
      SET => GND,
      RST => Inst_mod_m_counter_r_reg_1_SRINV_1432,
      O => Inst_mod_m_counter_r_reg(0)
    );
  Inst_mod_m_counter_r_next_1_1 : X_LUT4
    generic map(
      INIT => X"152A",
      LOC => "SLICE_X57Y46"
    )
    port map (
      ADR0 => Inst_mod_m_counter_r_reg(0),
      ADR1 => Inst_mod_m_counter_r_next_cmp_eq000010_437,
      ADR2 => Inst_mod_m_counter_r_next_cmp_eq000022_416,
      ADR3 => Inst_mod_m_counter_r_reg(1),
      O => Inst_mod_m_counter_r_next(1)
    );
  Inst_mod_m_counter_r_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X57Y46",
      INIT => '0'
    )
    port map (
      I => Inst_mod_m_counter_r_reg_1_DXMUX_1455,
      CE => VCC,
      CLK => Inst_mod_m_counter_r_reg_1_CLKINV_1431,
      SET => GND,
      RST => Inst_mod_m_counter_r_reg_1_SRINV_1432,
      O => Inst_mod_m_counter_r_reg(1)
    );
  Inst_mod_m_counter_r_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X57Y48",
      INIT => '0'
    )
    port map (
      I => Inst_mod_m_counter_r_reg_3_DYMUX_1483,
      CE => VCC,
      CLK => Inst_mod_m_counter_r_reg_3_CLKINV_1474,
      SET => GND,
      RST => Inst_mod_m_counter_r_reg_3_SRINV_1475,
      O => Inst_mod_m_counter_r_reg(2)
    );
  Inst_mod_m_counter_r_next_3_Q : X_LUT4
    generic map(
      INIT => X"009A",
      LOC => "SLICE_X57Y48"
    )
    port map (
      ADR0 => Inst_mod_m_counter_r_reg(3),
      ADR1 => N4_0,
      ADR2 => Inst_mod_m_counter_r_reg(0),
      ADR3 => tick_0,
      O => Inst_mod_m_counter_r_next(3)
    );
  Inst_mod_m_counter_r_reg_3 : X_FF
    generic map(
      LOC => "SLICE_X57Y48",
      INIT => '0'
    )
    port map (
      I => Inst_mod_m_counter_r_reg_3_DXMUX_1497,
      CE => VCC,
      CLK => Inst_mod_m_counter_r_reg_3_CLKINV_1474,
      SET => GND,
      RST => Inst_mod_m_counter_r_reg_3_SRINV_1475,
      O => Inst_mod_m_counter_r_reg(3)
    );
  Inst_mod_m_counter_r_reg_5 : X_FF
    generic map(
      LOC => "SLICE_X55Y48",
      INIT => '0'
    )
    port map (
      I => Inst_mod_m_counter_r_reg_6_DYMUX_1525,
      CE => VCC,
      CLK => Inst_mod_m_counter_r_reg_6_CLKINV_1516,
      SET => GND,
      RST => Inst_mod_m_counter_r_reg_6_SRINV_1517,
      O => Inst_mod_m_counter_r_reg(5)
    );
  Inst_mod_m_counter_r_next_6_1 : X_LUT4
    generic map(
      INIT => X"6AAA",
      LOC => "SLICE_X55Y48"
    )
    port map (
      ADR0 => Inst_mod_m_counter_r_reg(6),
      ADR1 => Inst_mod_m_counter_Madd_r_next_addsub0000_cy(3),
      ADR2 => Inst_mod_m_counter_r_reg(4),
      ADR3 => Inst_mod_m_counter_r_reg(5),
      O => Inst_mod_m_counter_r_next(6)
    );
  Inst_mod_m_counter_r_reg_6 : X_FF
    generic map(
      LOC => "SLICE_X55Y48",
      INIT => '0'
    )
    port map (
      I => Inst_mod_m_counter_r_reg_6_DXMUX_1539,
      CE => VCC,
      CLK => Inst_mod_m_counter_r_reg_6_CLKINV_1516,
      SET => GND,
      RST => Inst_mod_m_counter_r_reg_6_SRINV_1517,
      O => Inst_mod_m_counter_r_reg(6)
    );
  GLOBAL_LOGIC1_VCC : X_ONE
    port map (
      O => GLOBAL_LOGIC1
    );
  led_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD186",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_b_reg(4),
      O => led_4_O
    );
  led_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD185",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_b_reg(5),
      O => led_5_O
    );
  led_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD188",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_b_reg(6),
      O => led_6_O
    );
  led_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD187",
      PATHPULSE => 741 ps
    )
    port map (
      I => rx_done,
      O => led_7_O
    );
  btn_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD199",
      PATHPULSE => 741 ps
    )
    port map (
      I => btn_IBUF_898,
      O => btn_IBUF_0
    );
  rx_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD93",
      PATHPULSE => 741 ps
    )
    port map (
      I => rx_IBUF_905,
      O => rx_IBUF_0
    );
  led_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_b_reg(0),
      O => led_0_O
    );
  led_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_b_reg(1),
      O => led_1_O
    );
  led_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD178",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_b_reg(2),
      O => led_2_O
    );
  led_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD177",
      PATHPULSE => 741 ps
    )
    port map (
      I => Inst_uart_rx_b_reg(3),
      O => led_3_O
    );
  NlwBlock_receptor_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_receptor_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

