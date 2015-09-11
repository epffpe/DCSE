
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:36:33 05/10/2008
-- Design Name:   prueba_leds
-- Module Name:   D:/Designs/DCSE/Spartan3a/Proyecto1_prueba/prueba_leds_techbench.vhd
-- Project Name:  Proyecto1_prueba
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: prueba_leds
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

ENTITY prueba_leds_techbench_vhd IS
END prueba_leds_techbench_vhd;

ARCHITECTURE behavior OF prueba_leds_techbench_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT prueba_leds
	PORT(
		clk50in : IN std_logic;
		rst : IN std_logic;
		i_switch : IN std_logic_vector(3 downto 0);          
		o_leds : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL clk50in :  std_logic := '0';
	SIGNAL rst :  std_logic := '0';
	SIGNAL i_switch :  std_logic_vector(3 downto 0) := (others=>'0');

	--Outputs
	SIGNAL o_leds :  std_logic_vector(3 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: prueba_leds PORT MAP(
		clk50in => clk50in,
		rst => rst,
		i_switch => i_switch,
		o_leds => o_leds
	);

rst <= '1' after 30 ns;
i_switch <= "0001" after 50 ns, "0101" after 70 ns;
	tb : PROCESS
	BEGIN

		-- Wait 20 ns for global reset to finish
		wait for 20 ns;

		clk50in <= not clk50in;

		--wait; -- will wait forever
	END PROCESS;

END;
