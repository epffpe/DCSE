
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:27:32 02/06/2009
-- Design Name:   DatosLCD
-- Module Name:   D:/Desings/Xilinx/ModuloLCD/DatosLCD_tb.vhd
-- Project Name:  ModuloLCD
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DatosLCD
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

ENTITY DatosLCD_tb_vhd IS
END DatosLCD_tb_vhd;

ARCHITECTURE behavior OF DatosLCD_tb_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT DatosLCD
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		pb_sel : IN std_logic_vector(1 downto 0);
		incrementa : IN std_logic;          
		caracteres : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL clk :  std_logic := '0';
	SIGNAL rst_n :  std_logic := '0';
	SIGNAL incrementa :  std_logic := '1';
	SIGNAL pb_sel :  std_logic_vector(1 downto 0) := (others=>'0');

	--Outputs
	SIGNAL caracteres :  std_logic_vector(7 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: DatosLCD PORT MAP(
		clk => clk,
		rst_n => rst_n,
		pb_sel => pb_sel,
		incrementa => incrementa,
		caracteres => caracteres
	);

	tb : PROCESS
	BEGIN

		
		wait for 320 ns;
      clk <= not clk;
	END PROCESS;
rst_n <= '1' after 100ns;
pb_sel <= "01" after 10us, "10" after 50us, "11" after 100us;
END;
