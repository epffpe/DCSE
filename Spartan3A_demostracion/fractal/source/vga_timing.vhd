------------------------------------------------------------------------------
-- Copyright (c) 2006 Xilinx, Inc.
-- This design is confidential and proprietary of Xilinx, All Rights Reserved.
------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /   Vendor:        Xilinx
-- \   \   \/    Version:       1.0.0
--  \   \        Filename:      vga_timing.vhd
--  /   /        Date Created:  December 25, 2006
-- /___/   /\    Last Modified: December 25, 2006
-- \   \  /  \
--  \___\/\___\
--
-- Devices:   Spartan-3 Generation FPGA
-- Purpose:   Submodule for fractal demo
-- Contact:   crabill@xilinx.com
-- Reference: None
--
-- Revision History:
--   Rev 1.0.0 - (crabill) Derived December 25, 2006.
--
--   This is an original work by Matthias Alles, with some minor
--   modifications so that the design will run on a Spartan-3A
--   Starter Kit without any additional peripherals.  The source
--   files were obtained from the URL:
--
--   http://www.student.uni-kl.de/~alles/fpga
--   http://www.student.uni-kl.de/~alles/fpga/files.htm
--   http://www.student.uni-kl.de/~alles/fpga/files/fractal.tgz
--
--   The original header comments in this source file are preserved:
--
--   -- Project: Fractal for Spartan-3
--   -- Author : Matthias Alles
--   -- Mail   : alles(at) rhrk.uni-kk.de
--   --
--   -- Simple VGA timing generation.
--   -- Generates a 640*480 screen at 60Hz
--   -- The pixelclock was 24,576MHz.
--   -- Some day I will do this generic I think.
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

entity vga_timing is
  port (
    clk   : in std_logic;
    rst   : in std_logic;
    hsync : out std_logic;
    vsync : out std_logic;
    blank : out std_logic;
    x     : out std_logic_vector(9 downto 0);
    y     : out std_logic_vector(9 downto 0)
  );
end vga_timing;

architecture rtl of vga_timing is

  signal x_counter: unsigned(9 downto 0);
  signal y_counter: unsigned(9 downto 0);

begin

  x <= std_logic_vector(x_counter);
  y <= std_logic_vector(y_counter);

  generate_timing: process(clk, rst) is
    begin
      if rst = '1' then
        x_counter <= (others => '0');
        y_counter <= (others => '0');
        hsync     <= '1';
        vsync     <= '1';
        blank     <= '0';
      elsif clk'event and clk = '1' then
        x_counter <= x_counter + 1;
        if x_counter = 799 then
          x_counter <= (others => '0');
          y_counter <= y_counter + 1;
          if y_counter = 524 then
            y_counter <= (others => '0');
          end if;
        end if;
        if x_counter >= 624 then
          blank <= '1';
          if x_counter >= 655 and x_counter < 751 then
            hsync <= '0';
          else
            hsync <= '1';
          end if;
        else
          blank <= '0';
          hsync <= '1';
        end if;
        if y_counter >= 480 then
          blank <= '1';
          if y_counter >= 490 and y_counter < 492 then
            vsync <= '0';
          else
            vsync <= '1';
          end if;
        end if;
      end if;
    end process generate_timing;

end rtl;
