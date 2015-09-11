--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:07:21 02/11/2009
-- Design Name:   
-- Module Name:   D:/Desings/Modulo3/PruebaLCD_tb.vhd
-- Project Name:  Modulo3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UCONTROLLCD
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
 
ENTITY PruebaLCD_tb IS
END PruebaLCD_tb;
 
ARCHITECTURE behavior OF PruebaLCD_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UCONTROLLCD
    PORT(
         status : OUT  std_logic_vector(6 downto 0);
         CLK : IN  std_logic;
         RESET : IN  std_logic;
         lcd_e : OUT  std_logic;
         lcd_rs : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '1';

 	--Outputs
   signal status : std_logic_vector(6 downto 0);
   signal lcd_e : std_logic;
   signal lcd_rs : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UCONTROLLCD PORT MAP (
          status => status,
          CLK => CLK,
          RESET => RESET,
          lcd_e => lcd_e,
          lcd_rs => lcd_rs
        );
 
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant clk_period := 20ns;
 
   clk_process :process
   begin
		CLK <= not CLK;
		wait for 10ns;
--		CLK <= '1';
--		wait for clk_period/2;
   end process;
 
RESET <= '0' after 100ns;
--    Stimulus process
--   stim_proc: process
--   begin		
--       hold reset state for 100ms.
--      wait for 100ms;	
--
--      wait for <clock>_period*10;
--
--       insert stimulus here 
--
--      wait;
--   end process;

END;
