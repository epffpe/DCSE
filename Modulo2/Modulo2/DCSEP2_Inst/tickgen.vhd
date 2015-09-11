------------------------------------------------------------------------------
-- Fichero: tickgen
-- Modulo: 
-- Autor: Eugenio Pe�ate Fari�as <epf.supersonic@gmail.com>
-- Fecha: 14/10/2008
-- Descripci�n:
--        
-- Modificaciones:
--    Quien:
--    Fecha:
--    Motivo:
--------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity tickgen is
    port(clk, rst_n : in std_logic;
         tick : out std_logic );
end tickgen;

architecture compor of tickgen is

signal contador: integer range 0 to 39062;

begin
    
process(clk,rst_n)
begin
if rst_n ='0' then
	contador <= 0;
	tick <='0';
elsif clk'event and clk='1' then
	 if contador = 39062 then
		  contador <=0;
		  tick <='1';
	 else
		  contador <= contador +1;
		  tick <='0';
	 end if;
end if;
                       
end process;
    

end compor;