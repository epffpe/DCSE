----------------------------------------------------------------------------------
-- Company: Supersonic
-- Engineer: Eugenio Peñate Fariñas
-- 
-- Create Date:    02:23:04 08/21/2009 
-- Design Name: 
-- Module Name:    Control_interfaz - Behavioral 
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

entity Control_interfaz is
    Port ( clk : in  STD_LOGIC;
           sw : in  STD_LOGIC_vector(2 downto 0);
           btn : in  STD_LOGIC_VECTOR (3 downto 0);
           rotary_a : in  STD_LOGIC;
           rotary_b : in  STD_LOGIC;
           rotary_press : in  STD_LOGIC;
           reset : out  STD_LOGIC;
           btn_level : out  STD_LOGIC_VECTOR (4 downto 0);
           btn_tick : out  STD_LOGIC_VECTOR (3 downto 0);
           sw_level : out  STD_LOGIC_vector(2 downto 0);
			  press_tick : out  STD_LOGIC;
           rotary_tick : out  STD_LOGIC;
           rotary_izq : out  STD_LOGIC);
end Control_interfaz;

architecture Behavioral of Control_interfaz is
	--=========================================================================
	--Señales
	--=========================================================================
	signal btn_press, btn_n, btn_e, btn_s, btn_w: std_logic;
	signal btn_n_tick, btn_e_tick, btn_s_tick, btn_w_tick: std_logic;
	signal sw0,sw1,sw2: std_logic;
	signal rst: std_logic;
	
		-- Signals used to interface to rotary encoder
	--
	signal      rotary_a_in : std_logic;
	signal      rotary_b_in : std_logic;
	signal        rotary_in : std_logic_vector(1 downto 0);
	signal        rotary_q1 : std_logic;
	signal        rotary_q2 : std_logic;
	signal  delay_rotary_q1 : std_logic;
	signal     rotary_event : std_logic;
	signal      rotary_left : std_logic;
	--=========================================================================
	--Componentes
	--=========================================================================
	COMPONENT debounce
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		sw : IN std_logic;          
		db_level : OUT std_logic;
		db_tick : OUT std_logic
		);
	END COMPONENT;
begin

	--=========================================================================
	--Reset a cero
	--=========================================================================
		rst <= '0';
	--=========================================================================
	--Componentes Instanciados para botones y switches
	--=========================================================================	
		btn_n_unit: debounce PORT MAP(
			clk => clk,
			reset => rst,
			sw => btn(3),
			db_level => btn_n,
			db_tick => btn_n_tick
		);
		btn_e_unit: debounce PORT MAP(
			clk => clk,
			reset => rst,
			sw => btn(2),
			db_level => btn_e,
			db_tick => btn_e_tick
		);
		btn_s_unit: debounce PORT MAP(
			clk => clk,
			reset => rst,
			sw => btn(1),
			db_level => btn_s,
			db_tick => btn_s_tick
		);
		btn_w_unit: debounce PORT MAP(
			clk => clk,
			reset => rst,
			sw => btn(0),
			db_level => btn_w,
			db_tick => btn_w_tick
		);
		sw0_unit: debounce PORT MAP(
			clk => clk,
			reset => rst,
			sw => sw(0),
			db_level => sw0,
			db_tick => open
		);
		sw1_unit: debounce PORT MAP(
			clk => clk,
			reset => rst,
			sw => sw(1),
			db_level => sw1,
			db_tick => open
		);
		sw2_unit: debounce PORT MAP(
			clk => clk,
			reset => rst,
			sw => sw(2),
			db_level => sw2,
			db_tick => open
		);
		btn_press_unit: debounce PORT MAP(
			clk => clk,
			reset => rst,
			sw => rotary_press,
			db_level => btn_press,
			db_tick => press_tick
		);
	--=========================================================================
	--Logica de salida para botones y switches
	--=========================================================================
	btn_level <= btn_press & btn_n & btn_e & btn_s & btn_w;
	btn_tick <= btn_n_tick & btn_e_tick & btn_s_tick & btn_w_tick;
	sw_level <= sw2 & sw1 & sw0;
	reset <= btn_e and btn_w;
	
	--=========================================================================
	--Logica para el boton rotatorio
	--=========================================================================
	  rotary_filter: process(clk)
	  begin
		 if clk'event and clk='1' then

			--Sincronizacion de las entradas
			rotary_a_in <= rotary_a;
			rotary_b_in <= rotary_b;

			
			rotary_in <= rotary_b_in & rotary_a_in;

			case rotary_in is

			  when "00" => rotary_q1 <= '0';         
								rotary_q2 <= rotary_q2;
	 
			  when "01" => rotary_q1 <= rotary_q1;
								rotary_q2 <= '0';

			  when "10" => rotary_q1 <= rotary_q1;
								rotary_q2 <= '1';

			  when "11" => rotary_q1 <= '1';
								rotary_q2 <= rotary_q2; 

			  when others => rotary_q1 <= rotary_q1; 
								  rotary_q2 <= rotary_q2; 
			end case;

		 end if;
	  end process rotary_filter;
	  --
	  -- Flanco de subida en rotary_q1 indica que ha habido una rotacion
	  -- y el estado de rotary_q2 indica la direccion. 1 para izq y 0 para derecha 
	  --
	  direccion: process(clk)
	  begin
		 if clk'event and clk='1' then

			delay_rotary_q1 <= rotary_q1;
			if rotary_q1='1' and delay_rotary_q1='0' then
			  rotary_event <= '1';
			  rotary_left <= rotary_q2;
			 else
			  rotary_event <= '0';
			  rotary_left <= rotary_left;
			end if;

		 end if;
  end process direccion;
  
  --****************************************************************************
  rotary_tick <= rotary_event;
  rotary_izq <= rotary_left;
  
end Behavioral;

