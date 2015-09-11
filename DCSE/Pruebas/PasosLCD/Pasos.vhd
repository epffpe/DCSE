----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:59:26 02/07/2009 
-- Design Name: 
-- Module Name:    Pasos - Behavioral 
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

entity Pasos is
    Port ( clk50 : in  STD_LOGIC;
           modo_in : in  STD_LOGIC;
           pb_in : in  STD_LOGIC_VECTOR (3 downto 0);
           rot_in : in  STD_LOGIC_VECTOR (1 downto 0);
           rot_press_in : in  STD_LOGIC;
           lcd_data_out : out  STD_LOGIC_VECTOR (7 downto 0);
           lcd_e_out : out  STD_LOGIC;
           lcd_rs_out : out  STD_LOGIC;
           lcd_rw_out : out  STD_LOGIC;
           leds_out : out  STD_LOGIC_VECTOR (7 downto 0));
end Pasos;

architecture Behavioral of Pasos is


	COMPONENT clock
	PORT(
		U1_CLKIN_IN : IN std_logic;
		U1_RST_IN : IN std_logic;          
		U1_CLKDV_OUT : OUT std_logic;
		U1_CLKIN_IBUFG_OUT : OUT std_logic;
		U1_CLK0_OUT : OUT std_logic;
		U2_CLKDV_OUT : OUT std_logic;
		U2_CLK0_OUT : OUT std_logic;
		U2_LOCKED_OUT : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT UControl
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		siguiente : IN std_logic;          
		LCD_DB : OUT std_logic_vector(7 downto 0);
		LCD_E : OUT std_logic;
		LCD_RS : OUT std_logic;
		status : OUT std_logic_vector(7 downto 0)
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
	COMPONENT Led_status
	PORT(
		clk : IN std_logic;
		pb : in  STD_LOGIC;
		status : IN std_logic_vector(7 downto 0);          
		leds : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

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


signal status : std_logic_vector (7 downto 0);






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
	
	

signal		U1_RST_IN :  std_logic;          
signal		U1_CLKDV_OUT : std_logic;
signal		U1_CLKIN_IBUFG_OUT :  std_logic;
signal		U1_CLK0_OUT : std_logic;
signal		reloj :std_logic;
signal		U2_CLK0_OUT : std_logic;
signal		U2_LOCKED_OUT : std_logic;


begin
U1_RST_IN <= '0';

	Inst_clock: clock PORT MAP(
		U1_CLKIN_IN => clk50,
		U1_RST_IN => U1_RST_IN,
		U1_CLKDV_OUT => U1_CLKDV_OUT,
		U1_CLKIN_IBUFG_OUT => U1_CLKIN_IBUFG_OUT,
		U1_CLK0_OUT => U1_CLK0_OUT,
		U2_CLKDV_OUT => reloj,
		U2_CLK0_OUT => U2_CLK0_OUT,
		U2_LOCKED_OUT => U2_LOCKED_OUT
	);



-----------------------------------------------------------------------------------------------------
-- Sincronizacion de las I/O
-----------------------------------------------------------------------------------------------------
	process(reloj)
	begin
	if reloj'event and reloj='1' then
	  -----------------------------Entradas------------
	  modo_int <= modo_in;
	  pb_int <= pb_in;
	  rot <= rot_in;
	  rot_press <= rot_press_in;
	  ------------------------------Salidas-------------
--	  lcd_data_out <= lcd_data;
	  lcd_e_out <= lcd_e;
--	  lcd_e_int <= lcd_e; -- Retardo de la señal LCD_E
--	  lcd_rs_out <= lcd_rs;
	  lcd_rw_out <= lcd_rw;
	  leds_out <= leds_int;
	end if;
	end process;
	lcd_data_out <= lcd_data;
	--lcd_e_out <= lcd_e;
	lcd_rs_out <= lcd_rs;
	
lcd_rw <= '0';









	Inst_UControl: UControl PORT MAP(
		clk => reloj,
		rst_n => rst_n,
		siguiente => pb(2),
		LCD_DB => lcd_data,
		LCD_E => lcd_e,
		LCD_RS => lcd_rs,
		status => status
	);

	Inst_Interfaz: Interfaz PORT MAP(
		clk => reloj,
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




	Inst_Led_status: Led_status PORT MAP(
		clk => reloj,
		pb => pb(2),
		status => status,
		leds => leds_int
	);







end Behavioral;

