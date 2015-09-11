
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:41:46 11/11/2008
-- Design Name:   counter
-- Module Name:   U:/Modulo2/Tutorial/counter_tbw.vhd
-- Project Name:  Tutorial
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counter
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

ENTITY counter_tbw_vhd IS
END counter_tbw_vhd;

ARCHITECTURE behavior OF counter_tbw_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT counter
	PORT(
		clock : IN std_logic;
		direction : IN std_logic;          
		counter_out : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL clock :  std_logic := '0';
	SIGNAL direction :  std_logic := '0';

	--Outputs
	SIGNAL counter_out :  std_logic_vector(3 downto 0);
	constant PERIOD: time :=20 ns;
BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: counter PORT MAP(
		clock => clock,
		direction => direction,
		counter_out => counter_out
	);

	clock <= not clock after PERIOD/2;
	
	direction <= '1', '0' after 320ns;

END;
