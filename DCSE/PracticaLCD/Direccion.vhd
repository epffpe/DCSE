----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:55:58 02/05/2009 
-- Design Name: 
-- Module Name:    Direccion - Behavioral 
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

entity Direccion is
    Port ( clk : in  STD_LOGIC;
			  rst_n : in STD_LOGIC;
			  addr_en : in  STD_LOGIC;
           rotatory_left : in  STD_LOGIC;
           addr : out  STD_LOGIC_VECTOR (3 downto 0));
end Direccion;

architecture Behavioral of Direccion is

signal direccion : std_logic_vector(3 downto 0);
signal en : std_logic;
signal sentido : std_logic;

begin

--process(clk)
--begin
--	if clk'event and clk='1' then
--		en <= addr_en;
--		sentido <= rotatory_left;
--	end if;
--end process;

en <= addr_en;
sentido <= rotatory_left;

process (clk,rst_n)
begin
	if (rst_n='0') then
		direccion <= (others => '0');
	elsif (clk'event and clk='1') then
		if (en = '1') then
			if (sentido='1') then
				direccion <= direccion - 1;
			else
				direccion <= direccion + 1;
			end if;
		end if;
	end if;
end process;
addr <= direccion;
end Behavioral;

