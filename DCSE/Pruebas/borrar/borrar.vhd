----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:55:33 02/06/2009 
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
    Port ( clk : in  STD_LOGIC;
           pb : in  STD_LOGIC_VECTOR (3 downto 0);
           rotatory : in  STD_LOGIC_VECTOR (2 downto 0);
           modo : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end borrar;

architecture Behavioral of borrar is

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

        
signal		rotatory_event : std_logic;
signal		rotatory_left : std_logic;
signal		press_out : std_logic;
signal		pb_out : std_logic_vector(3 downto 0);
signal		modo_out : std_logic;
signal 		rst_n : std_logic;

begin

	Inst_Interfaz: Interfaz PORT MAP(
		clk => clk,
		rotatory_in => rotatory(1 downto 0),
		rotatory_press_in => rotatory(2),
		pb_in => pb,
		modo_in => modo,
		rst_n => rst_n,
		rotatory_event => rotatory_event,
		rotatory_left => rotatory_left,
		rot_press_out => press_out,
		modo_out => modo_out,
		pb_out => pb_out
	);


	
		Inst_LEDS: LEDS PORT MAP(
		clk => clk,
		rotatory_event => rotatory_event,
		rotatory_left => rotatory_left,
		rotatory_press => press_out,
		pb => pb_out,
		modo => modo_out,
		leds => led
	);

	









end Behavioral;

