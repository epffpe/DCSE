--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:13:56 08/20/2009
-- Design Name:   
-- Module Name:   D:/Designs/DCSE/FPGA Prototyping/UART/uart_test_tb.vhd
-- Project Name:  UART
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: uart_test
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
 
ENTITY uart_test_tb IS
END uart_test_tb;
 
ARCHITECTURE behavior OF uart_test_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT uart_test
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         btn : IN  std_logic;
         rx : IN  std_logic;
         tx : OUT  std_logic;
         led : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal btn : std_logic := '0';
   signal rx : std_logic := '0';

 	--Outputs
   signal tx : std_logic;
   signal led : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: uart_test PORT MAP (
          clk => clk,
          reset => reset,
          btn => btn,
          rx => rx,
          tx => tx,
          led => led
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
		btn <='0';
		rx <='1';
      -- hold reset state for 100ms.
      wait for 1us;	
		rx <= '0';
		wait for 52us;	
		rx <= '1';
		wait for 52us;	
		rx <= '0';
		wait for 52us;	
		rx <= '1';
		wait for 52us;	
		rx <= '0';
		wait for 52us;	
		rx <= '1';
		wait for 52us;	
		rx <= '0';
		wait for 52us;	
		rx <= '1';
		wait for 52us;	
		rx <= '0';
		wait for 52us;	
		rx <= '1';
      wait for 1ms;
		btn <= '1';
		wait for 30ms;
		
      -- insert stimulus here 

      wait;
   end process;

END;
