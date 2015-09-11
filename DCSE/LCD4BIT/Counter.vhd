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
signal contador1: integer range 0 to 750000;
signal contador2: integer range 0 to 205000;
signal contador3: integer range 0 to 5000;
signal contador4: integer range 0 to 2000;

signal clk15ms : std_logic;
signal clk4_1ms : std_logic;
signal clk100us : std_logic;
signal clk40us : std_logic;


begin

--process (clk,clr)
--begin
--	if (clr='1') then
--		temp <= (others => '0');
--	elsif (clk'event and clk='1') then
--		temp <= temp + 1;
--	end if;
--end process;

process(clk,clr)
begin
if clr ='1' then
	contador1 <= 0;
	contador2 <= 0;
	contador3 <= 0;
	contador4 <= 0;
	clk15ms <='0';
	clk4_1ms <='0';
	clk100us <='0';
	clk40us <='0';
elsif clk'event and clk='1' then
--------------------------------------------------------------
	 if contador1 = 750000 then
		  contador1 <=0;
		  clk15ms <='1';
	 else
		  contador1 <= contador1 +1;
		  clk15ms <='0';
	 end if;
--------------------------------------------------------------	 
	 if contador2 = 205000 then
		  contador2 <=0;
		  clk4_1ms <='1';
	 else
		  contador2 <= contador2 +1;
		  clk4_1ms <='0';
	 end if;
--------------------------------------------------------------	 
	 if contador3 = 5000 then
		  contador3 <=0;
		  clk100us <='1';
	 else
		  contador3 <= contador3 +1;
		  clk100us <='0';
	 end if;
--------------------------------------------------------------	 
	 if contador4 = 2000 then
		  contador4 <=0;
		  clk40us <='1';
	 else
		  contador4 <= contador4 +1;
		  clk40us <='0';
	 end if;
--------------------------------------------------------------	 
	 
	 
end if;
                       
end process;




tic <= clk40us	when tiempo = "00" else		
		clk100us	when tiempo = "01" else		
		clk4_1ms	when tiempo = "10" else		
		clk15ms;						

--process(clk, tiempo)
--begin
--	if clk'event and clk='1' then
--		case tiempo is
--			when "00" => tic <= temp(5); -- 40.96 us, cuenta  64=2^6
--			when "01" => tic <= temp(7); --163.84 us, cuenta 256=2^8
--			when "10" => tic <= temp(12); -- 5.2 ms,   cuenta 8192=2^13
--			when others => tic <= temp(14); -- 21 ms, 	 cuenta 32768=2^15
--		end case;
--	end if;
--end process;


end Behavioral;

