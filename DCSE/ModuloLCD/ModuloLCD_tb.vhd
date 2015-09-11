
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:27:23 02/05/2009
-- Design Name:   ModuloLCD
-- Module Name:   D:/Desings/Xilinx/ModuloLCD/ModuloLCD_tb.vhd
-- Project Name:  ModuloLCD
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ModuloLCD
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

ENTITY ModuloLCD_tb_vhd IS
END ModuloLCD_tb_vhd;

ARCHITECTURE behavior OF ModuloLCD_tb_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT ModuloLCD
	PORT(
		clk50 : IN std_logic;
		modo_in : IN std_logic;
		pb_in : IN std_logic_vector(3 downto 0);
		rot : IN std_logic_vector(2 downto 0);          
		LCD_DB : OUT std_logic_vector(7 downto 0);
		LCD_E : OUT std_logic;
		LCD_RS : OUT std_logic;
		LCD_RW : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL clk50 :  std_logic := '0';
	SIGNAL modo_in :  std_logic := '0';
	SIGNAL pb_in :  std_logic_vector(3 downto 0) := (others=>'1');
	SIGNAL rot :  std_logic_vector(2 downto 0) := (others=>'0');

	--Outputs
	SIGNAL LCD_DB :  std_logic_vector(7 downto 0);
	SIGNAL LCD_E :  std_logic;
	SIGNAL LCD_RS :  std_logic;
	SIGNAL LCD_RW :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: ModuloLCD PORT MAP(
		clk50 => clk50,
		modo_in => modo_in,
		pb_in => pb_in,
		rot => rot,
		LCD_DB => LCD_DB,
		LCD_E => LCD_E,
		LCD_RS => LCD_RS,
		LCD_RW => LCD_RW
	);

	tb : PROCESS
	BEGIN

		
		wait for 10 ns;
		clk50 <= not clk50;
	END PROCESS;
	
	pb_in<=(others => '0') after 100us;

END;
