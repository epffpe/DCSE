--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:16:01 08/20/2009
-- Design Name:   
-- Module Name:   D:/Designs/DCSE/FPGA Prototyping/UART/mod_m_tb.vhd
-- Project Name:  UART
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mod_m_counter
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
 
ENTITY mod_m_tb IS
END mod_m_tb;
 
ARCHITECTURE behavior OF mod_m_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mod_m_counter
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         max_tick : OUT  std_logic;
         q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal max_tick : std_logic;
   signal q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mod_m_counter PORT MAP (
          clk => clk,
          reset => reset,
          max_tick => max_tick,
          q => q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
	reset <= '1', '0' after clk_period;
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
