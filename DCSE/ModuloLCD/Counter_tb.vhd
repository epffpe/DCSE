
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:38:42 02/06/2009
-- Design Name:   Counter
-- Module Name:   D:/Desings/Xilinx/ModuloLCD/Counter_tb.vhd
-- Project Name:  ModuloLCD
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Counter
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

ENTITY Counter_tb_vhd IS
END Counter_tb_vhd;

ARCHITECTURE behavior OF Counter_tb_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT Counter
	PORT(
		clk : IN std_logic;
		clr : IN std_logic;
		tiempo : IN std_logic_vector(1 downto 0);          
		tic : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL clk :  std_logic := '0';
	SIGNAL clr :  std_logic := '1';
	SIGNAL tiempo :  std_logic_vector(1 downto 0) := (others=>'0');

	--Outputs
	SIGNAL tic :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: Counter PORT MAP(
		clk => clk,
		clr => clr,
		tiempo => tiempo,
		tic => tic
	);

	tb : PROCESS
	BEGIN

		-- Wait 100 ns for global reset to finish
		wait for 320 ns;
		clk <= not clk;
	END PROCESS;
clr <= '0' after 1us;
tiempo <= "01" after 100us, "10" after 2ms, "11" after 10ms;
END;
