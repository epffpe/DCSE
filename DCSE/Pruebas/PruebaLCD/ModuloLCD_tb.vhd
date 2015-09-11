--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:00:13 02/04/2009
-- Design Name:   
-- Module Name:   D:/Desings/Xilinx/PruebaLCD/ModuloLCD_tb.vhd
-- Project Name:  PruebaLCD
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
         rst : IN  std_logic;
         LCD_DB : OUT  std_logic_vector(7 downto 0);
         LCD_E : OUT  std_logic;
         LCD_RS : OUT  std_logic;
         LCD_RW : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk50 : std_logic := '0';
   signal rst : std_logic := '1';

 	--Outputs
   signal LCD_DB : std_logic_vector(7 downto 0);
   signal LCD_E : std_logic;
   signal LCD_RS : std_logic;
   signal LCD_RW : std_logic;

   -- Clock period definitions
   constant clk50_period : time := 20ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ModuloLCD PORT MAP (
          clk50 => clk50,
          rst => rst,
          LCD_DB => LCD_DB,
          LCD_E => LCD_E,
          LCD_RS => LCD_RS,
          LCD_RW => LCD_RW
        );

   -- Clock process definitions
   clk50_process :process
   begin
		clk50 <= '0';
		wait for clk50_period/2;
		clk50 <= '1';
		wait for clk50_period/2;
   end process;
 
	rst <= '0' after 100ns;
--
--   -- Stimulus process
--   stim_proc: process
--   begin		
--      rst_n <='0';
--      wait for 100ns;	
--
--      wait for clk50_period*10;
--
--      -- insert stimulus here 
--
--      wait;
--   end process;

END;
