--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:14:05 08/15/2009
-- Design Name:   
-- Module Name:   D:/Designs/DCSE/FPGA Prototyping/Tema4/tb_sq_wave_gen.vhd
-- Project Name:  Tema4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Square_wave_gen
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
 
ENTITY tb_sq_wave_gen IS
END tb_sq_wave_gen;
 
ARCHITECTURE behavior OF tb_sq_wave_gen IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Square_wave_gen
    PORT(
         clk : IN  std_logic;
         m : IN  std_logic_vector(3 downto 0);
         n : IN  std_logic_vector(3 downto 0);
         square : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal m : std_logic_vector(3 downto 0) := (others => '0');
   signal n : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal square : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Square_wave_gen PORT MAP (
          clk => clk,
          m => m,
          n => n,
          square => square
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      m <="0000";
		m <="0000";
      wait until falling_edge(clk);
		m <= "0010";
		n <= "0010";
		for i in 1 to 10 loop
			wait until falling_edge(clk);
		end loop;
		m <= "0011";
		n <= "0100";
		
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
