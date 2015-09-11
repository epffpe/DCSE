----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:56:32 02/05/2009 
-- Design Name: 
-- Module Name:    borrar - Behavioral 
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

entity borrar is
    Port ( clk1 : in  STD_LOGIC;
           clk2 : in  STD_LOGIC);
end borrar;

architecture Behavioral of borrar is
	COMPONENT Control
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		tic : IN std_logic;          
		E : OUT std_logic;
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
	
	
	COMPONENT ModuloLCD
	PORT(
		clk50 : IN std_logic;
		rst : IN std_logic;          
		LCD_DB : OUT std_logic_vector(7 downto 0);
		LCD_E : OUT std_logic;
		LCD_RS : OUT std_logic;
		LCD_RW : OUT std_logic
		);
	END COMPONENT;
	
	
signal		rst_n :   std_logic;
signal		tic :   std_logic;          
signal		E :  std_logic;
signal		tiempo :  std_logic_vector(1 downto 0);
signal 		clr : std_logic;
signal		LCD_RS : std_logic;
signal		LCD_RW : std_logic;
signal		LCD_DB : std_logic_vector(7 downto 0);
signal		LCD_E : std_logic;

begin

	Inst_Control: Control PORT MAP(
		clk => clk2,
		rst_n => rst_n,
		tic => tic,
		E => E,
		tiempo => tiempo
	);
	
		Inst_Counter: Counter PORT MAP(
		clk => clk2,
		clr => clr,
		tiempo => tiempo,
		tic => tic
	);
	
		Inst_ModuloLCD: ModuloLCD PORT MAP(
		clk50 => clk1,
		rst => rst_n,
		LCD_DB => LCD_DB,
		LCD_E => LCD_E,
		LCD_RS => LCD_RS,
		LCD_RW => LCD_RW
	);


end Behavioral;

