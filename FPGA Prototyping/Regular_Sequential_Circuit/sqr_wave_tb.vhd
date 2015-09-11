--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:21:51 08/19/2009
-- Design Name:   
-- Module Name:   D:/Designs/DCSE/Regular_Sequential_Circuit/sqr_wave_tb.vhd
-- Project Name:  Regular_Sequential_Circuit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sqr_wave
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
 
ENTITY sqr_wave_tb IS
END sqr_wave_tb;
 
ARCHITECTURE behavior OF sqr_wave_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sqr_wave
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         a : IN  std_logic_vector(1 downto 0);
         b : IN  std_logic_vector(1 downto 0);
         senal_cuadrada : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal a : std_logic_vector(1 downto 0) := (others => '0');
   signal b : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal senal_cuadrada : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sqr_wave PORT MAP (
          clk => clk,
          rst => rst,
          a => a,
          b => b,
          senal_cuadrada => senal_cuadrada
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
	rst <='1','0' after clk_period/2;
   -- Stimulus process
   stim_proc: process
   begin		
--      -- hold reset state for 100ms.
--      wait for 100ms;	
--
--      wait for clk_period*10;

      -- insert stimulus here 
		a <= "11";
		b <= "11";
		wait for clk_period*20;
		wait until falling_edge(clk);
		a <= "10";
		b <= "01";
		wait for clk_period*20;
		
      wait;
   end process;

END;
