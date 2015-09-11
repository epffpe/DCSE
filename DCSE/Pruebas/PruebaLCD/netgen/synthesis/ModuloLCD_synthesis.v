////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: K.31
//  \   \         Application: netgen
//  /   /         Filename: ModuloLCD_synthesis.v
// /___/   /\     Timestamp: Wed Feb 04 22:58:10 2009
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim ModuloLCD.ngc ModuloLCD_synthesis.v 
// Device	: xc3s700a-4-fg484
// Input file	: ModuloLCD.ngc
// Output file	: D:\Desings\Xilinx\PruebaLCD\netgen\synthesis\ModuloLCD_synthesis.v
// # of Modules	: 1
// Design Name	: ModuloLCD
// Xilinx        : C:\Xilinx\10.1\ISE
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Development System Reference Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module ModuloLCD (
  rst_n, LCD_E, LCD_RS, LCD_RW, clk50, LCD_DB
);
  input rst_n;
  output LCD_E;
  output LCD_RS;
  output LCD_RW;
  input clk50;
  output [7 : 0] LCD_DB;
  wire \Inst_Clock/CLK0_BUF ;
  wire \Inst_Clock/CLK0_OUT ;
  wire \Inst_Clock/CLKDV_BUF ;
  wire \Inst_Clock/CLKIN_IBUFG_OUT ;
  wire Inst_Clock_not0000;
  wire N2;
  wire rst_n_IBUF_8;
  wire \NLW_Inst_Clock/DCM_SP_INST_CLK90_UNCONNECTED ;
  wire \NLW_Inst_Clock/DCM_SP_INST_CLK180_UNCONNECTED ;
  wire \NLW_Inst_Clock/DCM_SP_INST_CLK270_UNCONNECTED ;
  wire \NLW_Inst_Clock/DCM_SP_INST_CLK2X_UNCONNECTED ;
  wire \NLW_Inst_Clock/DCM_SP_INST_CLK2X180_UNCONNECTED ;
  wire \NLW_Inst_Clock/DCM_SP_INST_CLKFX_UNCONNECTED ;
  wire \NLW_Inst_Clock/DCM_SP_INST_CLKFX180_UNCONNECTED ;
  wire \NLW_Inst_Clock/DCM_SP_INST_LOCKED_UNCONNECTED ;
  wire \NLW_Inst_Clock/DCM_SP_INST_PSDONE_UNCONNECTED ;
  wire \NLW_Inst_Clock/DCM_SP_INST_STATUS<7>_UNCONNECTED ;
  wire \NLW_Inst_Clock/DCM_SP_INST_STATUS<6>_UNCONNECTED ;
  wire \NLW_Inst_Clock/DCM_SP_INST_STATUS<5>_UNCONNECTED ;
  wire \NLW_Inst_Clock/DCM_SP_INST_STATUS<4>_UNCONNECTED ;
  wire \NLW_Inst_Clock/DCM_SP_INST_STATUS<3>_UNCONNECTED ;
  wire \NLW_Inst_Clock/DCM_SP_INST_STATUS<2>_UNCONNECTED ;
  wire \NLW_Inst_Clock/DCM_SP_INST_STATUS<1>_UNCONNECTED ;
  wire \NLW_Inst_Clock/DCM_SP_INST_STATUS<0>_UNCONNECTED ;
  wire \NLW_Inst_Clock/CLKDV_BUFG_INST_O_UNCONNECTED ;
  GND   XST_GND (
    .G(N2)
  );
  DCM_SP #(
    .CLKDV_DIVIDE ( 16.000000 ),
    .CLKFX_DIVIDE ( 1 ),
    .CLKFX_MULTIPLY ( 4 ),
    .CLKIN_DIVIDE_BY_2 ( "TRUE" ),
    .CLKIN_PERIOD ( 40.0000000000000000 ),
    .CLKOUT_PHASE_SHIFT ( "NONE" ),
    .CLK_FEEDBACK ( "1X" ),
    .DESKEW_ADJUST ( "SYSTEM_SYNCHRONOUS" ),
    .DFS_FREQUENCY_MODE ( "LOW" ),
    .DLL_FREQUENCY_MODE ( "LOW" ),
    .DSS_MODE ( "NONE" ),
    .DUTY_CYCLE_CORRECTION ( "TRUE" ),
    .PHASE_SHIFT ( 0 ),
    .STARTUP_WAIT ( "FALSE" ),
    .FACTORY_JF ( 16'hC080 ))
  \Inst_Clock/DCM_SP_INST  (
    .CLKIN(\Inst_Clock/CLKIN_IBUFG_OUT ),
    .CLKFB(\Inst_Clock/CLK0_OUT ),
    .RST(Inst_Clock_not0000),
    .DSSEN(N2),
    .PSINCDEC(N2),
    .PSEN(N2),
    .PSCLK(N2),
    .CLK0(\Inst_Clock/CLK0_BUF ),
    .CLK90(\NLW_Inst_Clock/DCM_SP_INST_CLK90_UNCONNECTED ),
    .CLK180(\NLW_Inst_Clock/DCM_SP_INST_CLK180_UNCONNECTED ),
    .CLK270(\NLW_Inst_Clock/DCM_SP_INST_CLK270_UNCONNECTED ),
    .CLK2X(\NLW_Inst_Clock/DCM_SP_INST_CLK2X_UNCONNECTED ),
    .CLK2X180(\NLW_Inst_Clock/DCM_SP_INST_CLK2X180_UNCONNECTED ),
    .CLKDV(\Inst_Clock/CLKDV_BUF ),
    .CLKFX(\NLW_Inst_Clock/DCM_SP_INST_CLKFX_UNCONNECTED ),
    .CLKFX180(\NLW_Inst_Clock/DCM_SP_INST_CLKFX180_UNCONNECTED ),
    .LOCKED(\NLW_Inst_Clock/DCM_SP_INST_LOCKED_UNCONNECTED ),
    .PSDONE(\NLW_Inst_Clock/DCM_SP_INST_PSDONE_UNCONNECTED ),
    .STATUS({\NLW_Inst_Clock/DCM_SP_INST_STATUS<7>_UNCONNECTED , \NLW_Inst_Clock/DCM_SP_INST_STATUS<6>_UNCONNECTED , 
\NLW_Inst_Clock/DCM_SP_INST_STATUS<5>_UNCONNECTED , \NLW_Inst_Clock/DCM_SP_INST_STATUS<4>_UNCONNECTED , 
\NLW_Inst_Clock/DCM_SP_INST_STATUS<3>_UNCONNECTED , \NLW_Inst_Clock/DCM_SP_INST_STATUS<2>_UNCONNECTED , 
\NLW_Inst_Clock/DCM_SP_INST_STATUS<1>_UNCONNECTED , \NLW_Inst_Clock/DCM_SP_INST_STATUS<0>_UNCONNECTED })
  );
  BUFG   \Inst_Clock/CLK0_BUFG_INST  (
    .I(\Inst_Clock/CLK0_BUF ),
    .O(\Inst_Clock/CLK0_OUT )
  );
  IBUFG #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IOSTANDARD ( "DEFAULT" ))
  \Inst_Clock/CLKIN_IBUFG_INST  (
    .I(clk50),
    .O(\Inst_Clock/CLKIN_IBUFG_OUT )
  );
  BUFG   \Inst_Clock/CLKDV_BUFG_INST  (
    .I(\Inst_Clock/CLKDV_BUF ),
    .O(\NLW_Inst_Clock/CLKDV_BUFG_INST_O_UNCONNECTED )
  );
  IBUF   rst_n_IBUF (
    .I(rst_n),
    .O(rst_n_IBUF_8)
  );
  INV   Inst_Clock_not00001_INV_0 (
    .I(rst_n_IBUF_8),
    .O(Inst_Clock_not0000)
  );
endmodule


`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire PRLD;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

