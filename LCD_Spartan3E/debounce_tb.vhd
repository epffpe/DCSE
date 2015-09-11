--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:54:02 08/21/2009
-- Design Name:   
-- Module Name:   D:/Designs/DCSE/FPGA Prototyping/Modulo3/debpimce_tb.vhd
-- Project Name:  Modulo3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: debounce
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
 
ENTITY debpimce_tb IS
END debpimce_tb;
 
ARCHITECTURE behavior OF debpimce_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT debounce
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         sw : IN  std_logic;
         db_level : OUT  std_logic;
         db_tick : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal sw : std_logic := '0';

 	--Outputs
   signal db_level : std_logic;
   signal db_tick : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: debounce PORT MAP (
          clk => clk,
          reset => reset,
          sw => sw,
          db_level => db_level,
          db_tick => db_tick
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
      sw <= '0';
      wait for 100us;	
		sw <= '1';
      wait for clk_period*30;
		sw <= '0';
      -- insert stimulus here 

      wait;
   end process;

END;
