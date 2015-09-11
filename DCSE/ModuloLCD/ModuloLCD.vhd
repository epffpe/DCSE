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
           modo_in: in  STD_LOGIC;
           pb_in : in  STD_LOGIC_VECTOR (3 downto 0);
           rot : in  STD_LOGIC_VECTOR (2 downto 0);
           LCD_DB : out  STD_LOGIC_VECTOR (7 downto 0);
           LCD_E : out  STD_LOGIC;
           LCD_RS : out  STD_LOGIC;
           LCD_RW : out  STD_LOGIC;
			  leds_out : out std_logic_vector(7 downto 0));
end ModuloLCD;

architecture Behavioral of ModuloLCD is

---------------------------------------------------------------------------
--
--		Componentes
--
	COMPONENT LEDS
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		rotatory_event : IN std_logic;
		rotatory_left : IN std_logic;
		rotatory_press : IN std_logic;
		pb : IN std_logic_vector(3 downto 0);
		modo : in  STD_LOGIC;
		leds : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;


	COMPONENT Interfaz
	PORT(
		clk : IN std_logic;
		rotatory_in : IN std_logic_vector(1 downto 0);
		rotatory_press : IN std_logic;
		pb : IN std_logic_vector(3 downto 0);
		modo_in : IN std_logic; 
		rst : OUT std_logic;
		rotatory_event : OUT std_logic;
		rotatory_left : OUT std_logic;
		press_out : OUT std_logic;
		pb_out : OUT std_logic_vector(3 downto 0);
		modo_out : OUT std_logic
		);
	END COMPONENT;
	
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
		rotatory_event : IN std_logic;
		rotatory_left : IN std_logic;
		press : IN std_logic;
		pb : IN std_logic_vector(3 downto 0);
		modo : IN std_logic;
		addr : IN std_logic_vector(3 downto 0);
		caracter : IN std_logic_vector(7 downto 0);          
		DB : OUT std_logic_vector(7 downto 0);
		E : OUT std_logic;
		RS : OUT std_logic;
		clr : OUT std_logic;
		tiempo : OUT std_logic_vector(1 downto 0);
		pb_sel : OUT std_logic_vector(1 downto 0);
		incrementa_pb : OUT std_logic;
		addr_control : OUT std_logic_vector(1 downto 0)
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
	
		COMPONENT Direccion
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		addr_control : IN std_logic_vector(1 downto 0);          
		addr : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	COMPONENT DatosLCD
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		pb_sel : IN std_logic_vector(1 downto 0);
		incrementa : IN std_logic;          
		caracteres : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;




------------------------------------------------------------------------------------------
--
--		Señales
--
	
	signal clkbuf : std_logic;
	signal clkdv : std_logic;
	signal clk0: std_logic;
	signal rst : std_logic;
	signal rst_n : std_logic;
	signal tic :   std_logic;          
	signal tiempo :  std_logic_vector(1 downto 0);
	signal clr : std_logic;
	
	signal     rotatory_event : std_logic;
	signal      rotatory_left : std_logic;
	signal pb : std_logic_vector(3 downto 0);
	signal rotatory_press : std_logic;
	signal modo : std_logic;
	
	signal addr : std_logic_vector(3 downto 0);
	signal caracter : std_logic_vector(7 downto 0);
	signal pb_sel : std_logic_vector(1 downto 0);
	signal incrementa : std_logic;
	signal addr_control : std_logic_vector(1 downto 0); -- addr_contro <= en & inc/dec

begin


	LCD_RW <= '0';
	rst_n <= not rst;
	
	Inst_LEDS: LEDS PORT MAP(
		clk => clkdv,
		rst_n => rst_n,
		rotatory_event => rotatory_event,
		rotatory_left => rotatory_left,
		rotatory_press => rotatory_press,
		pb => pb,
		modo => modo,
		leds => leds_out
	);
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
------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
	Inst_Interfaz: Interfaz PORT MAP(
		clk => clkdv,
		rotatory_in => rot(1 downto 0),
		rotatory_press => rot(2),
		pb => pb_in,
		modo_in => modo_in,
		rst => rst,
		rotatory_event => rotatory_event,
		rotatory_left => rotatory_left,
		press_out => rotatory_press,
		pb_out => pb,
		modo_out => modo
	);

------------------------------------------------------------------------------------------------------------
-- Maquina de control
------------------------------------------------------------------------------------------------------------	

	Inst_Control: Control PORT MAP(
		clk => clkdv,
		rst_n => rst_n,
		tic => tic,
		rotatory_event => rotatory_event,
		rotatory_left => rotatory_left,
		press => rotatory_press,
		pb => pb,
		modo => modo,
		addr => addr,
		caracter => caracter,
		DB => LCD_DB,
		E => LCD_E,
		RS => LCD_RS,
		clr => clr,
		tiempo => tiempo,
		pb_sel => pb_sel,
		incrementa_pb => incrementa,
		addr_control => addr_control
	);
------------------------------------------------------------------------------------------------------------
-- Contador
------------------------------------------------------------------------------------------------------------	
		Inst_Counter: Counter PORT MAP(
		clk => clkdv,
		clr => clr,
		tiempo => tiempo,
		tic => tic
	);

	Inst_Direccion: Direccion PORT MAP(
		clk => clkdv,
		rst_n => rst_n,
		addr_control => addr_control,
		addr => addr
	);

	Inst_DatosLCD: DatosLCD PORT MAP(
		clk => clkdv,
		rst_n => rst_n,
		pb_sel => pb_sel,
		incrementa => incrementa,
		caracteres => caracter
	);



end Behavioral;

