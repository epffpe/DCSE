----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:15:26 02/04/2009 
-- Design Name: 
-- Module Name:    ModuloLCD - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ModuloLCD is
    Port ( clk50 : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           LCD_DB : out  STD_LOGIC_VECTOR (7 downto 0);
           LCD_E : out  STD_LOGIC;
           LCD_RS : out  STD_LOGIC;
           LCD_RW : out  STD_LOGIC);
end ModuloLCD;

architecture Behavioral of ModuloLCD is
----------------------------------------------------------------------------------------
--
--		Componentes
--

	COMPONENT Clock
	PORT(
		CLKIN_IN : IN std_logic;
		RST_IN : IN std_logic;          
		CLKDV_OUT : OUT std_logic;
		CLKIN_IBUFG_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic
		);
	END COMPONENT;
	
	
	COMPONENT Control
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		tic : IN std_logic;          
		DB : OUT std_logic_vector(7 downto 0);
		E : OUT std_logic;
		RS : OUT std_logic;
		clr : OUT std_logic;
		tiempo : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;
	
		COMPONENT Counter
	PORT(
		clk : IN std_logic;
		clr : IN std_logic;
		tiempo : IN std_logic_vector(1 downto 0);          
		tic : OUT std_logic
		);
	END COMPONENT;
	


------------------------------------------------------------------------------------------
--
--		Señales
--

signal clkbuf : std_logic;
signal clkdv : std_logic;
signal clk0: std_logic;
signal rst_n : std_logic;
signal tic :   std_logic;          
signal tiempo :  std_logic_vector(1 downto 0);
signal clr : std_logic;

begin
	LCD_RW <= '0';
	rst_n <= not rst;
---------------------------------------------------------------------------
--
--- Generacion de un reloj de 1.5MHz => 640ns 
--
	Inst_Clock: Clock PORT MAP(		-- 50/32=1.5625MHz -> 640ns
		CLKIN_IN => clk50,
		RST_IN => rst,
		CLKDV_OUT => clkdv,
		CLKIN_IBUFG_OUT => clkbuf,
		CLK0_OUT => clk0
	);
------------------------------------------------------------------------	
	
	Inst_Control: Control PORT MAP(
		clk => clkdv,
		rst_n => rst_n,
		tic => tic,
		DB => LCD_DB,
		E => LCD_E,
		RS => LCD_RS,
		clr => clr,
		tiempo => tiempo
	);
	
		Inst_Counter: Counter PORT MAP(
		clk => clkdv,
		clr => clr,
		tiempo => tiempo,
		tic => tic
	);




end Behavioral;

