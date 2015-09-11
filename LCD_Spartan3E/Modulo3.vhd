----------------------------------------------------------------------------------
-- Company: Supersonic
-- Engineer: Eugenio Peñate Fariñas
-- 
-- Create Date:    21:48:55 09/01/2009 
-- Design Name: 
-- Module Name:    Modulo3 - Behavioral 
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

entity Modulo3 is
    Port ( clk : in  STD_LOGIC;
           modo : in  STD_LOGIC_vector(2 downto 0);
           pb : in  STD_LOGIC_VECTOR (3 downto 0);
           rot_press : in  STD_LOGIC;
           rot_a : in  STD_LOGIC;
           rot_b : in  STD_LOGIC;
			  ps2c, ps2d : in std_logic;
			  rx : in std_logic;
			  tx 		: out std_logic;
           lcd_db : out  STD_LOGIC_VECTOR (3 downto 0);
           lcd_e : out  STD_LOGIC;
           lcd_rs : out  STD_LOGIC;
           lcd_rw : out  STD_LOGIC;
			  lcd_CE0: out std_logic;
           leds : out  STD_LOGIC_VECTOR (7 downto 0));
end Modulo3;

architecture Behavioral of Modulo3 is
	--=========================================================================
	--Señales
	--=========================================================================
	signal reset: std_logic;
	signal btn_tick: std_logic_vector (3 downto 0);
	signal btn_level: std_logic_vector (4 downto 0);
	signal press_tick: std_logic;
	signal rotary_izq, rotary_tick: std_logic;
	signal sw_level: std_logic_vector(2 downto 0);
	signal lcd_data: std_logic_vector (3 downto 0);
	signal ascii_code: std_logic_vector(7 downto 0);
	signal kb_tick: std_logic;
	signal state_fsmd: std_logic_vector(1 downto 0);
	--=========================================================================
	--Componentes
	--=========================================================================
	COMPONENT Control_interfaz
	PORT(
		clk : IN std_logic;
		sw : IN std_logic_vector(2 downto 0);
		btn : IN std_logic_vector(3 downto 0);
		rotary_a : IN std_logic;
		rotary_b : IN std_logic;
		rotary_press : IN std_logic;          
		reset : OUT std_logic;
		btn_level : OUT std_logic_vector(4 downto 0);
		btn_tick : OUT std_logic_vector(3 downto 0);
		sw_level : OUT std_logic_vector(2 downto 0);
		press_tick : OUT std_logic;
		rotary_tick : OUT std_logic;
		rotary_izq : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT LCD_Control
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		sw : IN std_logic_vector(1 downto 0);
		btn_tick : IN std_logic_vector(3 downto 0);
		press_tick : IN std_logic;
		keyboard_tick : IN std_logic;
		rotary_tick : IN std_logic;
		rotary_izq : IN std_logic;
		kb_data : IN std_logic_vector(7 downto 0);          
		lcd_db : OUT std_logic_vector(3 downto 0);
		lcd_e : OUT std_logic;
		lcd_rs : OUT std_logic;
		lcd_rw : OUT std_logic;
		leds : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;
	
	COMPONENT kb_test
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		ps2d : IN std_logic;
		ps2c : IN std_logic;
		sw : in std_logic;
		rx : in std_logic;
		kb_tick : out  STD_LOGIC;
		codigo_ascii: out std_logic_vector(7 downto 0);
		tx : OUT std_logic
		);
	END COMPONENT;

begin
	
	Control_interfaz_unit: Control_interfaz PORT MAP(
		clk => clk,
		sw => modo,
		btn => pb,
		rotary_a => rot_a,
		rotary_b => rot_b,
		rotary_press => rot_press,
		reset => reset,
		btn_level => btn_level,
		btn_tick => btn_tick,
		sw_level => sw_level,
		press_tick => press_tick,
		rotary_tick => rotary_tick,
		rotary_izq => rotary_izq
	);
	
	LCD_Control_unit: LCD_Control PORT MAP(
		clk => clk,
		rst => reset,
		sw => sw_level(1 downto 0),
		btn_tick => btn_tick,
		press_tick => press_tick,
		keyboard_tick => kb_tick,
		rotary_tick => rotary_tick,
		rotary_izq => rotary_izq,
		kb_data => ascii_code,
		lcd_db => lcd_data,
		lcd_e => lcd_e,
		lcd_rs => lcd_rs,
		lcd_rw => lcd_rw,
		leds => state_fsmd
	);
	
	kb_test_unit: kb_test PORT MAP(
		clk => clk,
		reset => reset,
		ps2d => ps2d,
		ps2c => ps2c,
		rx => rx,
		sw => sw_level(2),
		kb_tick => kb_tick,
		codigo_ascii => ascii_code,
		tx => tx
	);

	--=========================================================================
	--Logica
	--=========================================================================
	leds <= state_fsmd & btn_level & rotary_izq;
	lcd_db <= lcd_data;
	lcd_CE0 <='1';

end Behavioral;

