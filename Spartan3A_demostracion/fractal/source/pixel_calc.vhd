------------------------------------------------------------------------------
-- Copyright (c) 2006 Xilinx, Inc.
-- This design is confidential and proprietary of Xilinx, All Rights Reserved.
------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /   Vendor:        Xilinx
-- \   \   \/    Version:       1.0.0
--  \   \        Filename:      pixel_calc.vhd
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
--   -- This modules does the Mandelbrot calculation z_new = z^2 + c
--   -- start resets the module (the iteration counter is set to 0 again)
--   -- c_x and c_y is the position in the complex number area
--   -- result is the iterations we did for this point 
--   -- to save one multiplier we abort when |x| + |y| > an const.
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

entity pixel_calc is
  port (
    clk   : in std_logic;
    rst   : in std_logic;
    start : in std_logic;
    c_x   : in signed(17 downto 0);
    c_y   : in signed(17 downto 0);
    result: out unsigned(4 downto 0)
  );
end pixel_calc;

architecture rtl of pixel_calc is

  signal iterations : unsigned(4 downto 0);
  signal break      : std_logic;
  signal x_new      : signed(16 downto 0);
  signal y_new      : signed(16 downto 0);

  signal mult_result_y : signed(35 downto 0);
  signal sum_x_y       : signed(17 downto 0);
  signal dif_x_y       : signed(17 downto 0);
  signal mult_result_x : signed(35 downto 0);
        
   -- function to calculate magnitude of two's complement values 
  function abs2(input: in signed(8 downto 0)) return unsigned is
    begin
      if input(8) = '1' then -- negative
        return unsigned(((not input(8 downto 0)) + 1));
      else
        return unsigned(input(8 downto 0));
      end if;
    end function abs2;

begin

  mult_result_y <= resize(x_new, 18) * resize(y_new, 18);
  sum_x_y       <= resize(x_new, 18) + resize(y_new, 18);
  dif_x_y       <= resize(x_new, 18) - resize(y_new, 18);
  mult_result_x <= sum_x_y * dif_x_y;

  result  <= iterations;
        
  control: process(clk, rst) is
  begin
    if rst = '1' then
      iterations <= (others => '0');
      break      <= '0';
    elsif clk'event and clk = '1' then
      if break = '0' then
        if iterations = 15 or (abs2(x_new(16 downto 8)) +
           abs2(y_new(16 downto 8))) > 255 then
          break <= '1';
        else
          iterations <= iterations + 1;
        end if;
      end if;
      if start = '1' then
        iterations <= (others => '0');
        break      <= '0';
      end if;
    end if;
  end process control;

  calc: process (clk, rst) is
  begin
    if rst = '1' then
      x_new <= (others => '0');
      y_new <= (others => '0');
    elsif clk'event and clk = '1' then
      if start = '1' then
        x_new <= c_x(16 downto 0);
        y_new <= c_y(16 downto 0);
      else
        y_new <= c_y(16 downto 0) + mult_result_y(29 downto 13);
        x_new <= c_x(16 downto 0) + mult_result_x(30 downto 14);
      end if;
    end if;
  end process calc;

end architecture rtl;
