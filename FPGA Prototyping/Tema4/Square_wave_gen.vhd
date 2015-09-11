----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:49:51 08/15/2009 
-- Design Name: 
-- Module Name:    Square_wave_gen - Behavioral 
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

entity Square_wave_gen is
    Port ( clk : in  STD_LOGIC;
           m : in  STD_LOGIC_VECTOR (3 downto 0);
           n : in  STD_LOGIC_VECTOR (3 downto 0);
           square : out  STD_LOGIC);
end Square_wave_gen;

architecture Behavioral of Square_wave_gen is

	constant div5 : integer :=5;
	signal estado, estado_next : std_logic;
	signal contador, contador_next: unsigned(2 downto 0);
	signal c_reg, c_next : unsigned(3 downto 0);
	signal temp : unsigned(3 downto 0);
	signal tick : std_logic;
begin
	
	
	-- Registros
	process(clk)
	begin
		if (clk'event and clk='1') then
			estado <= estado_next;
			contador <= contador_next;
			c_reg <= c_next;
		end if;
	end process;

	--contador 5
	contador_next <= (others => '0') when contador=div5 else	contador + 1;
	tick <= '1' when contador=div5 else '0';
	--

	with estado select
		temp <= 
				unsigned(m) when '1',
				unsigned(n) when others;
	
	estado_next <= not estado when (c_reg=temp and tick='1') else estado;
	c_next <= (others => '0') when (c_reg=temp and tick='1') else c_reg + 1;
	
	-- Salida
	square <= estado;
end Behavioral;

