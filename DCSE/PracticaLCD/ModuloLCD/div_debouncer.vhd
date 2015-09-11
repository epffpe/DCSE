----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:38:03 02/05/2009 
-- Design Name: 
-- Module Name:    div_debouncer - Behavioral 
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

entity div_debouncer is
    Port ( clk : in  STD_LOGIC;
           clk10ms : out  STD_LOGIC);
end div_debouncer;

architecture Behavioral of div_debouncer is
-- signal temp : std_logic_vector (13 downto 0);
signal contador: integer range 0 to 16384;
begin

--process (clk)
--begin
--	if (clk'event and clk='1') then
--		temp <= temp + 1;
--	end if;
--  
--end process;
--clk10ms <= temp(13);

process(clk)
begin
--if rst_n ='0' then
--	contador <= 0;
--	clk10ms <='0';
--els
if clk'event and clk='1' then
	 if contador = 16384 then
		  contador <=0;
		  clk10ms <='1';
	 else
		  contador <= contador +1;
		  clk10ms <='0';
	 end if;
end if;
                       
end process;

end Behavioral;

