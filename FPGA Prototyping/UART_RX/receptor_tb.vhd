--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:13:19 08/23/2009
-- Design Name:   
-- Module Name:   D:/Designs/DCSE/FPGA Prototyping/UART_RX/receptor_tb.vhd
-- Project Name:  UART_RX
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: receptor
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
 
ENTITY receptor_tb IS
END receptor_tb;
 
ARCHITECTURE behavior OF receptor_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT receptor
    PORT(
         clk : IN  std_logic;
         btn : IN  std_logic;
         rx : IN  std_logic;
         led : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal btn : std_logic := '0';
   signal rx : std_logic := '0';

 	--Outputs
   signal led : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: receptor PORT MAP (
          clk => clk,
          btn => btn,
          rx => rx,
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
 
	btn <= '1', '0' after clk_period;
   -- Stimulus process
   stim_proc: process
   begin	
		rx <= '1';
      -- hold reset state for 100ms.
      wait for 10us;	
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
      wait for 384us;
      -- insert stimulus here 

      wait;
   end process;

END;
