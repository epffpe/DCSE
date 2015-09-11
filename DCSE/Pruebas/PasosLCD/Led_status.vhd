----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:38:46 02/07/2009 
-- Design Name: 
-- Module Name:    Led_status - Behavioral 
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

entity Led_status is
    Port ( clk : in  STD_LOGIC;
			  pb : in  STD_LOGIC;
           status : in  STD_LOGIC_VECTOR (7 downto 0);
           leds : out  STD_LOGIC_VECTOR (7 downto 0));
end Led_status;

architecture Behavioral of Led_status is

begin
process(clk)
begin
	if clk'event and clk='1' then
		leds(6 downto 0) <= status(6 downto 0);
		leds(7) <= pb;
	end if;
end process;

end Behavioral;

