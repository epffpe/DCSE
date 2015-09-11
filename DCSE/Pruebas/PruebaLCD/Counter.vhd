----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:53:40 02/05/2009 
-- Design Name: 
-- Module Name:    Counter - Behavioral 
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

entity Counter is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           tiempo : in  STD_LOGIC_VECTOR (1 downto 0);
           tic : out  STD_LOGIC);
end Counter;

architecture Behavioral of Counter is

signal temp : std_logic_vector (14 downto 0);

begin

process (clk,clr)
begin
	if (clr='1') then
		temp <= (others => '0');
	elsif (clk'event and clk='1') then
		temp <= temp + '1';
	end if;

	case tiempo is
		when "00" => tic <= temp(5);		-- 40.96 us, cuenta  64=2^6
		when "01" => tic <= temp(7);		--163.84 us, cuenta 256=2^8
		when "10" => tic <= temp(12);		-- 5.2 ms,   cuenta 8192=2^13
		when others => tic <= temp(14);		-- 21 ms, 	 cuenta 32768=2^15
	end case;
end process;


end Behavioral;

