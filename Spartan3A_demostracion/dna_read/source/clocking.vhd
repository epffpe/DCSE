------------------------------------------------------------------------------
-- Copyright (c) 2006 Xilinx, Inc.
-- This design is confidential and proprietary of Xilinx, All Rights Reserved.
------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /   Vendor:        Xilinx
-- \   \   \/    Version:       1.0.0
--  \   \        Filename:      clocking.vhd
--  /   /        Date Created:  December 25, 2006
-- /___/   /\    Last Modified: December 25, 2006
-- \   \  /  \
--  \___\/\___\
--
-- Devices:   Spartan-3 Generation FPGA
-- Purpose:   Submodule for demo
-- Contact:   crabill@xilinx.com
-- Reference: None
--
-- Revision History:
--   Rev 1.0.0 - (crabill) First created December 25, 2006.
--
------------------------------------------------------------------------------
--
-- LIMITED WARRANTY AND DISCLAIMER. These designs are provided to you "as is".
-- Xilinx and its licensors make and you receive no warranties or conditions,
-- express, implied, statutory or otherwise, and Xilinx specifically disclaims
-- any implied warranties of merchantability, non-infringement, or fitness for
-- a particular purpose. Xilinx does not warrant that the functions contained
-- in these designs will meet your requirements, or that the operation of
-- these designs will be uninterrupted or error free, or that defects in the
-- designs will be corrected. Furthermore, Xilinx does not warrant or make any
-- representations regarding use or the results of the use of the designs in
-- terms of correctness, accuracy, reliability, or otherwise.
--
-- LIMITATION OF LIABILITY. In no event will Xilinx or its licensors be liable
-- for any loss of data, lost profits, cost or procurement of substitute goods
-- or services, or for any special, incidental, consequential, or indirect
-- damages arising from the use or operation of the designs or accompanying
-- documentation, however caused and on any theory of liability. This
-- limitation will apply even if Xilinx has been advised of the possibility
-- of such damage. This limitation shall apply not-withstanding the failure
-- of the essential purpose of any limited remedies herein.
--
------------------------------------------------------------------------------
-- Copyright (c) 2006 Xilinx, Inc.
-- This design is confidential and proprietary of Xilinx, All Rights Reserved.
------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

entity clocking is
  port ( 
    clk_in  : in std_logic;
    rst     : in std_logic;
    clk1x   : out std_logic;
    clk_div : out std_logic;
    lock    : out std_logic
  );
end clocking;

architecture clocking_arch of clocking is

component bufg
  port (
    i : in std_logic;
    o : out std_logic
  ); 
end component;

component dcm
  generic ( 
    clkdv_divide : real := 2.0
  );  
  port (
    clkin    : in  std_logic;
    clkfb    : in  std_logic;
    dssen    : in  std_logic;
    psincdec : in  std_logic;
    psen     : in  std_logic;
    psclk    : in  std_logic;
    rst      : in  std_logic;
    clk0     : out std_logic;
    clk90    : out std_logic;
    clk180   : out std_logic;
    clk270   : out std_logic;
    clk2x    : out std_logic;
    clk2x180 : out std_logic;
    clkdv    : out std_logic;
    clkfx    : out std_logic;
    clkfx180 : out std_logic;
    locked   : out std_logic;
    psdone   : out std_logic;
    status   : out std_logic_vector(7 downto 0)
  );
end component;

attribute clkdv_divide : real; 
attribute clkdv_divide of u_dcm: label is 2.0;

signal gnd : std_logic;
signal clk0_w: std_logic;
signal clk1x_w: std_logic;
signal clkdv_w: std_logic;
signal clk_div_w: std_logic;

begin
gnd <= '0';
clk1x <= clk1x_w;
clk_div <= clk_div_w;

u_dcm: dcm
  port map (
    clkin =>    clk_in,
    clkfb =>    clk1x_w,
    dssen =>    gnd,
    psincdec => gnd,
    psen =>     gnd,
    psclk =>    gnd,
    rst =>      rst,
    clk0 =>     clk0_w,
    clkdv =>    clkdv_w,
    clk90 =>    open,
    clk180 =>   open,
    clk270 =>   open,
    clk2x =>    open,
    clk2x180 => open,
    clkfx =>    open,
    clkfx180 => open,
    locked =>   lock,
    psdone =>   open,
    status =>   open
  ); 

u0_bufg: bufg
  port map (
    i => clk0_w,
    o => clk1x_w
  );

u1_bufg: bufg
  port map (
    i => clkdv_w,
    o => clk_div_w
  );

end clocking_arch;
