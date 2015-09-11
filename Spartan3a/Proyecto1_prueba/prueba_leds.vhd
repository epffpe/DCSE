----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:02:55 05/10/2008 
-- Design Name: 
-- Module Name:    prueba_leds - Behavioral 
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

entity prueba_leds is
    Port ( clk50in : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           i_switch : in  STD_LOGIC_VECTOR (3 downto 0);
           o_leds : out  STD_LOGIC_VECTOR (3 downto 0));
end prueba_leds;

architecture Behavioral of prueba_leds is

signal clk_int : std_logic;
signal clkdv_int : std_logic;
signal clk_buff : std_logic;
signal sw : std_logic_vector ( 3 downto 0); 
signal leds : std_logic_vector ( 3 downto 0);
signal reset : std_logic;
--Reloj
	COMPONENT Reloj_ent
	PORT(
		CLKIN_IN : IN std_logic;
		RST_IN : IN std_logic;          
		CLKDV_OUT : OUT std_logic;
		CLKIN_IBUFG_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic
		);
	END COMPONENT;
	
begin

	Inst_Reloj_ent: Reloj_ent PORT MAP(
		CLKIN_IN => clk50in,
		RST_IN => rst,
		CLKDV_OUT => clkdv_int,
		CLKIN_IBUFG_OUT => clk_buff,
		CLK0_OUT => clk_int
	);
--
process(clk_int,reset)
begin	
	if clk_int'event and clk_int='1' then
		o_leds <= i_switch;
	end if;
end process;
--

end Behavioral;