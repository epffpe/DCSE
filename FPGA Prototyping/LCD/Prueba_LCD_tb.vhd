--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:39:10 08/20/2009
-- Design Name:   
-- Module Name:   D:/Designs/DCSE/FPGA Prototyping/LCD/Prueba_LCD_tb.vhd
-- Project Name:  LCD
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Prueba_LCD
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
 
ENTITY Prueba_LCD_tb IS
END Prueba_LCD_tb;
 
ARCHITECTURE behavior OF Prueba_LCD_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Prueba_LCD
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         lcd_db : OUT  std_logic_vector(7 downto 0);
         lcd_e : OUT  std_logic;
         lcd_rs : OUT  std_logic;
         lcd_rw : OUT  std_logic;
			leds: out std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal lcd_db : std_logic_vector(7 downto 0);
   signal lcd_e : std_logic;
   signal lcd_rs : std_logic;
   signal lcd_rw : std_logic;
	signal leds: std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Prueba_LCD PORT MAP (
          clk => clk,
          rst => rst,
          lcd_db => lcd_db,
          lcd_e => lcd_e,
          lcd_rs => lcd_rs,
          lcd_rw => lcd_rw,
			 leds => leds
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
	rst <= '1', '0' after clk_period;
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100ms.
      wait for 100ms;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
