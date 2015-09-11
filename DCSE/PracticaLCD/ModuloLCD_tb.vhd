--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:13:48 02/07/2009
-- Design Name:   
-- Module Name:   D:/Desings/DCSE/PracticaLCD/ModuloLCD_tb.vhd
-- Project Name:  PracticaLCD
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ModuloLCD
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
 
ENTITY ModuloLCD_tb IS
END ModuloLCD_tb;
 
ARCHITECTURE behavior OF ModuloLCD_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ModuloLCD
    PORT(
         clk50 : IN  std_logic;
         modo_in : IN  std_logic;
         pb_in : IN  std_logic_vector(3 downto 0);
         rot_in : IN  std_logic_vector(1 downto 0);
         rot_press_in : IN  std_logic;
         lcd_data_out : OUT  std_logic_vector(7 downto 0);
         lcd_e_out : OUT  std_logic;
         lcd_rs_out : OUT  std_logic;
         lcd_rw_out : OUT  std_logic;
         leds_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk50 : std_logic := '0';
   signal modo_in : std_logic := '0';
   signal pb_in : std_logic_vector(3 downto 0) := (others => '1');
   signal rot_in : std_logic_vector(1 downto 0) := (others => '0');
   signal rot_press_in : std_logic := '0';

 	--Outputs
   signal lcd_data_out : std_logic_vector(7 downto 0);
   signal lcd_e_out : std_logic;
   signal lcd_rs_out : std_logic;
   signal lcd_rw_out : std_logic;
   signal leds_out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk50_period : time := 20ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ModuloLCD PORT MAP (
          clk50 => clk50,
          modo_in => modo_in,
          pb_in => pb_in,
          rot_in => rot_in,
          rot_press_in => rot_press_in,
          lcd_data_out => lcd_data_out,
          lcd_e_out => lcd_e_out,
          lcd_rs_out => lcd_rs_out,
          lcd_rw_out => lcd_rw_out,
          leds_out => leds_out
        );

   -- Clock process definitions
   clk50_process :process
   begin
		clk50 <= '0';
		wait for clk50_period/2;
		clk50 <= '1';
		wait for clk50_period/2;
   end process;
 
pb_in <= X"0" after 1us;
--   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100ms.
--      wait for 100ms;	
--
--      wait for clk50_period*10;
--
--      -- insert stimulus here 
--
--      wait;
--   end process;

END;
