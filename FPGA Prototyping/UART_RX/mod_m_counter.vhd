----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:53:09 08/19/2009 
-- Design Name: 
-- Module Name:    mod_m_counter - Behavioral 
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
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;
---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mod_m_counter is
	generic(
			N: integer := 8;		--numero de bits
			M: integer := 163		-- mod M
			);
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           max_tick : out  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (N-1 downto 0));
end mod_m_counter;

architecture Behavioral of mod_m_counter is
	signal r_reg, r_next: unsigned(N-1 downto 0);
begin
	--registro
	process(clk, reset)
	begin
		if reset='1' then
			r_reg <= (others => '0');
		elsif (clk'event and clk='1') then
			r_reg <= r_next;
		end if;
	end process;
	
	-- logica de estado siguiente
	r_next <= (others => '0') when r_reg = (M-1) else
					r_reg + 1;
	-- logica de salida
	q <= std_logic_vector(r_reg);
	max_tick <= '1' when r_reg=(M-1) else '0';
end Behavioral;

