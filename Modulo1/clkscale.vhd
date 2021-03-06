------------------------------------------------------------------------------
-- Fichero: registro
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
use IEEE.std_logic_unsigned.all;

entity clkscale is
    port(clk, rst_n : in std_logic;
         divsel : in std_logic_vector(3 downto 0);
         clkout : out std_logic );
end clkscale;

architecture compor of clkscale is
    signal contador: std_logic_vector(7 downto 0);
--    signal contador: integer range 0 to 127 :=0;
--    signal PA1,PA2,PI : std_logic;
begin
        
----------------------------------------------------------------------------    
     process(clk, rst_n)
     begin
         if rst_n='0' then
             clkout<='0';
         elsif clk'event and clk='1' then
              contador <= contador + "00000001";
         end if;
     end process;
----------------------------------------------------------------------------       
     
         with divsel select
             clkout <= contador(0) when "0000",   --no divide
                       contador(1) when "0001" ,   -- divide por 2
                       contador(2) when "0010",   -- divide por 4   
                       contador(3) when "0011",   -- divide por 8
                       contador(4) when "0100",   -- divide por 16
                       contador(5) when "0101",   -- divide por 32
                       contador(6) when "0110",   -- divide por 64
                       contador(7) when "0111",   -- divide por 128
                       'X' when others;   -- no divide
                 
end compor;
