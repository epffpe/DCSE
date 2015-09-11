------------------------------------------------------------------------------
-- Copyright (c) 2006 Xilinx, Inc.
-- This design is confidential and proprietary of Xilinx, All Rights Reserved.
------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /   Vendor:        Xilinx
-- \   \   \/    Version:       1.0.0
--  \   \        Filename:      frac_controller.vhd
--  /   /        Date Created:  December 25, 2006
-- /___/   /\    Last Modified: December 25, 2006
-- \   \  /  \
--  \___\/\___\
--
-- Devices:   Spartan-3 Generation FPGA
-- Purpose:   Fractal demo
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
--   -- This is the top-module that builds the connectivity
--   -- of all used components and controls these.
--   -- clk_pad was 49,152 MHz
--   -- clk_2, the pixel clock, is 24,576 MHz
--   -- if you want to use different clocks you have to adapt
--   -- the timing constants in the vga_timing component to
--   -- get a 640*480*60Hz timing. Also the initialization of
--   -- the mouse might need some adaptions (read the comments
--   -- in the component).
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

entity frac_controller is
  port (
    clk_pad    : in std_logic;
    hsync      : out std_logic;
    vsync      : out std_logic;
    btn_east   : in std_logic;
    btn_north  : in std_logic;
    btn_south  : in std_logic;
    btn_west   : in std_logic;
    rot_center : in std_logic;
    rot_a      : in std_logic;
    rot_b      : in std_logic;
    fpga_init_b: out std_logic;
    rgb        : out std_logic_vector(11 downto 0)
  );
end frac_controller;

architecture rtl of frac_controller is

  component picoboot port(
    internal_addr : in std_logic_vector(31 downto 0);
    internal_mode : in std_logic_vector( 2 downto 0);
    internal_vsel : in std_logic_vector( 2 downto 0);
    internal_use  : in std_logic;
    reboot        : in std_logic;
    clk           : in std_logic);
  end component;

  component vga_timing port(
    clk   : in std_logic;
    rst   : in std_logic;
    hsync : out std_logic;
    vsync : out std_logic;
    blank : out std_logic;
    x     : out std_logic_vector(9 downto 0);
    y     : out std_logic_vector(9 downto 0));
  end component;

  signal x : std_logic_vector(9 downto 0);
  signal y : std_logic_vector(9 downto 0);
  signal clk_2  : std_logic;
  signal blank : std_logic;

  component pixel_calc port(
    clk    : in std_logic;
    rst    : in std_logic;
    start  : in std_logic;
    c_x    : in signed(17 downto 0);
    c_y    : in signed(17 downto 0);
    result : out unsigned(4 downto 0));
  end component;

  component clocking is port(
    clk_in : in std_logic;
    rst    : in std_logic;
    clk1x  : out std_logic;
    clk_div  : out std_logic;
    lock   : out std_logic);
  end component;

  signal lock : std_logic;
  signal clk : std_logic;
  signal rst : std_logic;
  signal gnd : std_logic;

  signal start : std_logic;

  type c_vector is array(0 to 7) of signed(17 downto 0);
  signal c_x : c_vector;
  signal c_y : signed(17 downto 0);
  type result_vector is array(0 to 7) of unsigned(4 downto 0);
  signal result : result_vector;
  signal result_reg : result_vector;
  signal y_offset : signed(17 downto 0);
  signal x_offset : c_vector;

  signal hsync_int : std_logic;
  signal vsync_int : std_logic;
  signal hsync_int_t : std_logic;
  signal vsync_int_t : std_logic;
  signal blank_delay: std_logic_vector(17 downto 0);

  constant start_x : integer := -111072/4;
  constant start_y : integer := 65536/3;

  signal internal_addr : std_logic_vector(31 downto 0);
  signal internal_mode : std_logic_vector( 2 downto 0);
  signal internal_vsel : std_logic_vector( 2 downto 0);
  signal internal_use : std_logic;
  
  signal clock_counter : unsigned(3 downto 0);
  type master_ctrl_type is (idle, running);
  signal master_ctrl_state: master_ctrl_type;
  
  signal index : integer range 0 to 7;
  signal start_x_sig : signed(17 downto 0);
  signal start_y_sig : signed(17 downto 0);

  signal rotary_a_in : std_logic;
  signal rotary_b_in : std_logic;
  signal rotary_in : std_logic_vector(1 downto 0);
  signal rotary_q1 : std_logic;
  signal rotary_q2 : std_logic;
  signal delay_rotary_q1 : std_logic;
  signal rotary_event : std_logic;
  signal rotary_left : std_logic;
  signal sticky_l : std_logic;
  signal sticky_r : std_logic;

  function clut(input : in unsigned(4 downto 0)) return std_logic_vector is
  begin
    case to_integer(input) is
      when 15 => return "0000" & "0000" & "0000";
      when 14 => return "0001" & "0001" & "0001";
      when 13 => return "0010" & "0010" & "0010";
      when 12 => return "0011" & "0011" & "0011";
      when 11 => return "0100" & "0100" & "0100";
      when 10 => return "0101" & "0101" & "0101";
      when  9 => return "0110" & "0110" & "0110";
      when  8 => return "0111" & "0111" & "0111";
      when  7 => return "1000" & "1000" & "1000";
      when  6 => return "1001" & "1001" & "1001";
      when  5 => return "1010" & "1010" & "1010";
      when  4 => return "1011" & "1011" & "1011";
      when  3 => return "1100" & "1100" & "1100";
      when  2 => return "1101" & "1101" & "1101";
      when  1 => return "1110" & "1110" & "1110";
      when  0 => return "1111" & "1111" & "1111";
      when others => return "1111" & "1111" & "1111";
    end case;
  end function clut;

begin

  fpga_init_b <= '0';
  rst <= not lock;
  gnd <= '0';

  internal_addr <= X"03000000";
  internal_mode <= "001";
  internal_vsel <= "111";
  internal_use  <= '0';

  -- include picoboot to loader
  picoboot_inst: picoboot port map(
    internal_addr => internal_addr,
    internal_mode => internal_mode,
    internal_vsel => internal_vsel,
    internal_use => internal_use,
    reboot => rot_center,
    clk => clk_2);

  -- use dcm to generate clock signals
  clocking_inst: clocking port map(
    clk_in => clk_pad,
    rst    => gnd,
    clk1x  => clk,
    clk_div => clk_2,
    lock   => lock);

  -- the vga timing component
  vga_timing_inst: vga_timing port map(
    clk   => clk_2,
    rst   => rst,
    hsync => hsync_int,
    vsync => vsync_int,
    blank => blank,
    x     => x,
    y     => y);

  hsync <= hsync_int;
  vsync <= vsync_int;

  -- the 8 pixel calculating units
  gen_loop: for i in 0 to 7 generate
    calc_inst: pixel_calc port map(
      clk    => clk,
      rst    => rst,
      start  => start,
      c_x    => c_x(i),
      c_y    => c_y,
      result => result(i));
    end generate;

  master_ctrl: process(clk, rst) is
  begin
    if rst = '1' then
      clock_counter     <= (others => '0');
      master_ctrl_state <= idle;
      for i in 0 to 7 loop
        c_x(i)        <= (others => '0');
        result_reg(i) <= (others => '0');
      end loop;
      c_y   <= to_signed(start_y, 18);
      start <= '0';
    elsif clk'event and clk = '1' then
      start       <= '0';
      if hsync_int = '0' and hsync_int_t = '1' then
        -- reset c_x, increment c_y
        for i in 0 to 7 loop
          c_x(i) <= start_x_sig + x_offset(i);
        end loop;
        c_y <= c_y - y_offset;
      end if;
      if vsync_int = '0' and vsync_int_t = '1' then
        -- reset c_y
        c_y <= start_y_sig;
      end if;
      case master_ctrl_state is
        when idle => 
          if blank = '0' then
            master_ctrl_state <= running;
            start             <= '1';
          end if;
        when running => 
          clock_counter <= clock_counter + 1;
          if clock_counter = 15 then
            clock_counter <= (others => '0');
            start <= '1';
            -- increment by x_offset*8 each 8 pixel block
            for i in 0 to 7 loop
              c_x(i) <= c_x(i) + (x_offset(0)(14 downto 0) & "000");
              result_reg(i) <= result(i);
            end loop;
            if blank = '1' then
              master_ctrl_state <= idle;
              start <= '0';
            end if;
          end if;
      end case;
    end if;
  end process master_ctrl;

  vga_output: process(clk_2, rst) is
  begin
    if rst = '1' then
      rgb(11 downto 0) <= (others => '0');
    elsif clk_2'event and clk_2 = '1' then
      if blank_delay(17) = '0' then
        rgb(11 downto 0) <= clut(result_reg(to_integer(unsigned(x(2 downto 0))-1)));
      else
        rgb(11 downto 0) <= (others => '0');
      end if;
    end if;
  end process vga_output;

  misc_stuff: process(clk, rst) is
  begin
    if rst = '1' then
      hsync_int_t <= '0';
      vsync_int_t <= '0';
    elsif clk'event and clk = '1' then
      vsync_int_t <= vsync_int;
      hsync_int_t <= hsync_int;
      blank_delay(0) <= blank;
      blank_delay(17 downto 1) <= blank_delay(16 downto 0);
    end if;
  end process misc_stuff;

  zoom_control: process(clk, rst) is
  begin
    if rst = '1' then
      start_x_sig <= to_signed(start_x, 18);
      start_y_sig <= to_signed(start_y, 18);
      index     <= 0;
      x_offset(0) <= to_signed(127, 18);
      for i in 1 to 7 loop
        x_offset(i) <= (others => '0');
      end loop;
      y_offset <= to_signed(127, 18);
    elsif clk = '1' and clk'event then
      if vsync_int = '0' and vsync_int_t = '1' then
        index <= 1;
        if (btn_east = '1' and btn_west = '0') then
          start_x_sig <= start_x_sig + "0000010000000000";
        end if;
        if (btn_west = '1' and btn_east = '0') then
          start_x_sig <= start_x_sig - "0000010000000000";
        end if;
        if (btn_north = '1' and btn_south = '0') then
          start_y_sig <= start_y_sig + "0000010000000000";
        end if;
        if (btn_south = '1' and btn_north = '0') then
          start_y_sig <= start_y_sig - "0000010000000000";
        end if;
        if sticky_r='1' then 
          x_offset(0) <= x_offset(0) - 2;
          y_offset <= y_offset - 2;
        elsif sticky_l='1' then
          x_offset(0) <= x_offset(0) + 2;
          y_offset <= y_offset + 2;
        end if;
      end if;
      -- hardware loop index of (0..7) to initialise x_offset vector
      if index /= 0 then
        x_offset(index) <= x_offset(0) + x_offset(index-1);
        if index = 7 then
          index <= 0;
        else
          index <= index + 1;
        end if;
      end if;
    end if;
  end process;

  rotary_filter: process(clk)
  begin
    if clk'event and clk='1' then
      --synchronise inputs to clock domain using flip-flops in input/output blocks.
      rotary_a_in <= rot_a;
      rotary_b_in <= rot_b;
      --concatinate rotary input signals to form vector for case construct.
      rotary_in <= rotary_b_in & rotary_a_in;
      case rotary_in is
        when "00" => rotary_q1 <= '0';         
                     rotary_q2 <= rotary_q2;
        when "01" => rotary_q1 <= rotary_q1;
                     rotary_q2 <= '0';
        when "10" => rotary_q1 <= rotary_q1;
                     rotary_q2 <= '1';
        when "11" => rotary_q1 <= '1';
                     rotary_q2 <= rotary_q2; 
        when others => rotary_q1 <= rotary_q1; 
                       rotary_q2 <= rotary_q2; 
      end case;
    end if;
  end process rotary_filter;

  direction: process(clk)
  begin
    if clk'event and clk='1' then
      delay_rotary_q1 <= rotary_q1;
      if rotary_q1='1' and delay_rotary_q1='0' then
        rotary_event <= '1';
        rotary_left <= rotary_q2;
       else
        rotary_event <= '0';
        rotary_left <= rotary_left;
      end if;
    end if;
  end process direction;

  sticky: process(clk)
  begin
    if clk'event and clk='1' then
      if vsync_int = '0' and vsync_int_t = '1' then
        sticky_l <= '0';
        sticky_r <= '0';
      elsif rotary_event='1' then
        if rotary_left='1' then sticky_l <= '1';
        else sticky_r <= '1';
        end if;
      end if;
    end if;
  end process sticky;

end architecture rtl;
