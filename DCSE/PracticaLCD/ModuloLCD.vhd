----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:49:48 02/06/2009 
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
           modo_in : in  STD_LOGIC;
           pb_in : in  STD_LOGIC_VECTOR (3 downto 0);
           rot_in : in  STD_LOGIC_VECTOR (1 downto 0);
           rot_press_in : in  STD_LOGIC;
           lcd_data_out : out  STD_LOGIC_VECTOR (7 downto 0);
           lcd_e_out : out  STD_LOGIC;
           lcd_rs_out : out  STD_LOGIC;
           lcd_rw_out : out  STD_LOGIC;
			  leds_out : out std_logic_vector(7 downto 0));
end ModuloLCD;

architecture Behavioral of ModuloLCD is
-----------------------------------------------------------------------------------------------------
-- Componentes
-----------------------------------------------------------------------------------------------------

	COMPONENT Clock1562
	PORT(
		CLKIN_IN : IN std_logic;
		RST_IN : IN std_logic;          
		CLKDV_OUT : OUT std_logic;
		CLKIN_IBUFG_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic
		);
	END COMPONENT;
	
	
	COMPONENT Interfaz
	PORT(
		clk : IN std_logic;
		rotatory_in : IN std_logic_vector(1 downto 0);
		rotatory_press_in : IN std_logic;
		pb_in : IN std_logic_vector(3 downto 0);
		modo_in : IN std_logic;          
		rst_n : OUT std_logic;
		rotatory_event : OUT std_logic;
		rotatory_left : OUT std_logic;
		rot_press_out : OUT std_logic;
		modo_out : OUT std_logic;
		pb_out : OUT std_logic_vector(3 downto 0)
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

	COMPONENT DatosLCD
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		pb_sel : IN std_logic_vector(1 downto 0);
		incrementa : IN std_logic;          
		caracteres_out : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	COMPONENT Direccion
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		addr_en : IN std_logic;
		rotatory_left : IN std_logic;          
		addr : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;


	COMPONENT UControl
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		timer : IN std_logic;
		rotatory_event : IN std_logic;
		rotatory_left : IN std_logic;
		rot_press : IN std_logic;
		pb : IN std_logic_vector(3 downto 0);
		modo : IN std_logic;
		addr : IN std_logic_Vector(3 downto 0);
		caracter : IN std_logic_vector(7 downto 0);          
		LCD_DB : OUT std_logic_vector(7 downto 0);
		LCD_E : OUT std_logic;
		LCD_RS : OUT std_logic;
		clr_timer : OUT std_logic;
		tiempo : OUT std_logic_vector(1 downto 0);
		pb_sel : OUT std_logic_vector(1 downto 0);
		incrementa_pb : OUT std_logic;
		addr_en : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT LEDS
	PORT(
		clk : IN std_logic;
		rotatory_event : IN std_logic;
		rotatory_left : IN std_logic;
		rotatory_press : IN std_logic;
		pb : IN std_logic_vector(3 downto 0);
		modo : IN std_logic;          
		leds : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	

-----------------------------------------------------------------------------------------------------
-- Señales del DCM
-----------------------------------------------------------------------------------------------------
signal rst_DCM : std_logic;
signal clk640 : std_logic;
signal clk0 : std_logic;
signal clk_ibuf : std_logic;
	
------------------------------------------------------------------------------------
--
-- Señales para sincronizar I/O
--
signal	modo_int : STD_LOGIC;
signal	pb_int :  STD_LOGIC_VECTOR (3 downto 0);
signal	rot :   STD_LOGIC_VECTOR (1 downto 0);
signal	rot_press :  STD_LOGIC;
signal	lcd_data :  STD_LOGIC_VECTOR (7 downto 0);
signal	lcd_e :   STD_LOGIC;
signal	lcd_e_int :   STD_LOGIC;
signal	lcd_rs :  STD_LOGIC;
signal	lcd_rw :  STD_LOGIC;
signal	leds_int : std_logic_vector(7 downto 0);	

-----------------------------------------------------------------------------------------------------
-- Señales de interconeccion de modulos
-----------------------------------------------------------------------------------------------------
signal rst_n : std_logic;
signal timer :   std_logic;          
signal tiempo :  std_logic_vector(1 downto 0);
signal clr_timer : std_logic;
signal rotatory_event : std_logic;
signal rotatory_left : std_logic;
signal pb : std_logic_vector(3 downto 0);
signal rotatory_press : std_logic;
signal modo : std_logic;

signal addr : std_logic_vector(3 downto 0);
signal caracter : std_logic_vector(7 downto 0);
signal pb_sel : std_logic_vector(1 downto 0);
signal incrementa : std_logic;
signal addr_en : std_logic; 

signal rst_div : std_logic;
signal clock_control : std_logic;
	COMPONENT div_control
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;          
		clk_out : OUT std_logic
		);
	END COMPONENT;


begin


-----------------------------------------------------------------------------------------------------
-- Reloj del sistema
-----------------------------------------------------------------------------------------------------

	Inst_Clock1562: Clock1562 PORT MAP(
		CLKIN_IN => clk50,
		RST_IN => rst_DCM,
		CLKDV_OUT => clk640,
		CLKIN_IBUFG_OUT => clk_ibuf,
		CLK0_OUT => clk0
	);
	
	   	Inst_div_control: div_control PORT MAP(
		clk => clk0,
		rst_n => rst_div,
		clk_out => clock_control
	);

rst_div <= '1';
rst_DCM <= '0';
-----------------------------------------------------------------------------------------------------
-- Sincronizacion de las I/O
-----------------------------------------------------------------------------------------------------
	process(clk640)
	begin
	if clk640'event and clk640='1' then
	  -----------------------------Entradas------------
	  modo_int <= modo_in;
	  pb_int <= pb_in;
	  rot <= rot_in;
	  rot_press <= rot_press_in;
	  ------------------------------Salidas-------------
--	  lcd_data_out <= lcd_data;
	  lcd_e_out <= lcd_e;
	  lcd_e_int <= lcd_e; -- Retardo de la señal LCD_E
--	  lcd_rs_out <= lcd_rs;
	  lcd_rw_out <= lcd_rw;
	  leds_out <= leds_int;
	end if;
	end process;
	lcd_data_out <= lcd_data;
	--lcd_e_out <= lcd_e;
	lcd_rs_out <= lcd_rs;
	
lcd_rw <= '0';

-----------------------------------------------------------------------------------------------------
-- Componentes
-----------------------------------------------------------------------------------------------------
	Inst_Interfaz: Interfaz PORT MAP(
		clk => clk640,
		rotatory_in => rot,
		rotatory_press_in => rot_press,
		pb_in => pb_int,
		modo_in => modo_int,
		rst_n => rst_n,
		rotatory_event => rotatory_event,
		rotatory_left => rotatory_left,
		rot_press_out => rotatory_press,
		modo_out => modo,
		pb_out => pb
	);



	Inst_Counter: Counter PORT MAP(
		clk => clk640,
		clr => clr_timer,
		tiempo => tiempo,
		tic => timer
	);

	Inst_DatosLCD: DatosLCD PORT MAP(
		clk => clk640,
		rst_n => rst_n,
		pb_sel => pb_sel,
		incrementa => incrementa,
		caracteres_out => caracter
	);
	
	Inst_Direccion: Direccion PORT MAP(
		clk => clk640,
		rst_n => rst_n,
		addr_en => addr_en,
		rotatory_left => rotatory_left,
		addr => addr
	);


	Inst_UControl: UControl PORT MAP(
		clk => clock_control,
		rst_n => rst_n,
		timer => timer,
		rotatory_event => rotatory_event,
		rotatory_left => rotatory_left,
		rot_press => rotatory_press,
		pb => pb,
		modo => modo,
		addr => addr,
		caracter => caracter,
		LCD_DB => lcd_data,
		LCD_E => lcd_e,
		LCD_RS => lcd_rs,
		clr_timer => clr_timer,
		tiempo => tiempo,
		pb_sel => pb_sel,
		incrementa_pb => incrementa,
		addr_en => addr_en
	);


	Inst_LEDS: LEDS PORT MAP(
		clk => clk640,
		rotatory_event => rotatory_event,
		rotatory_left => rotatory_left,
		rotatory_press => rotatory_press,
		pb => pb,
		modo => modo,
		leds => leds_int
	);

end Behavioral;

