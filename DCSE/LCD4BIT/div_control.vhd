----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:04:39 02/07/2009 
-- Design Name: 
-- Module Name:    div_control - Behavioral 
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

entity div_control is
    Port ( clk : in  STD_LOGIC;
           rst_n : in  STD_LOGIC;
           clk_out : out  STD_LOGIC);
end div_control;

architecture Behavioral of div_control is
signal contador: integer range 0 to 99;
begin

process(clk,rst_n)
begin
if rst_n ='0' then
	contador <= 0;
	clk_out <='0';
elsif clk'event and clk='1' then
	 if contador = 99 then
		  contador <=0;
		  clk_out <='1';
	 else
		  contador <= contador +1;
		  clk_out <='0';
	 end if;
end if;
                       
end process;


end Behavioral;

