--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: K.39
--  \   \         Application: netgen
--  /   /         Filename: ramdump_synthesis.vhd
-- /___/   /\     Timestamp: Tue Nov 04 00:53:52 2008
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm ramdump -w -dir netgen/synthesis -ofmt vhdl -sim ramdump.ngc ramdump_synthesis.vhd 
-- Device	: xc3s700a-4-fg484
-- Input file	: ramdump.ngc
-- Output file	: D:\Designs\DCSE\Practica1\netgen\synthesis\ramdump_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: ramdump
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

entity ramdump is
  port (
    rst_n : in STD_LOGIC := 'X'; 
    clk50 : in STD_LOGIC := 'X'; 
    data : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    inter : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end ramdump;

architecture Structure of ramdump is
  signal N0 : STD_LOGIC; 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  data_7_OBUF : OBUF
    port map (
      I => N0,
      O => data(7)
    );
  data_6_OBUF : OBUF
    port map (
      I => N0,
      O => data(6)
    );
  data_5_OBUF : OBUF
    port map (
      I => N0,
      O => data(5)
    );
  data_4_OBUF : OBUF
    port map (
      I => N0,
      O => data(4)
    );
  data_3_OBUF : OBUF
    port map (
      I => N0,
      O => data(3)
    );
  data_2_OBUF : OBUF
    port map (
      I => N0,
      O => data(2)
    );
  data_1_OBUF : OBUF
    port map (
      I => N0,
      O => data(1)
    );
  data_0_OBUF : OBUF
    port map (
      I => N0,
      O => data(0)
    );

end Structure;

