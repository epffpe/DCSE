------------------------------------------------------------------------------
-- Fichero: RAMDUMP
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

entity reader is
    port(clk, rst_n : in std_logic;
         persel : in std_logic_vector(1 downto 0);
         data   : out std_logic_vector(7 downto 0));
end reader;

architecture compor of reader is
type RAM_type is array (0 to (2047)) of std_logic_vector(7 downto 0);

signal contador: std_logic_vector(2 downto 0);
signal RAM : RAM_type := ("00000000","00000001","00000010","00000011","00000100","00000101","00000110",
									"00000111",others =>"00000010");
signal rate : std_logic;
signal contador1: integer range 0 to 4 ;
signal clk2Hz : std_logic;
signal addr   : std_logic_vector(10 downto 0);

begin

--Divisor -------------------------------------------------------------------
      process(clk)
        begin
           if clk'event and clk='1' then
                if contador1 = 4 then
                    contador1 <=0;
                    clk2Hz <='1';
                else
                    contador1 <= contador1 +1;
                    clk2Hz <='0';
                end if;
            end if;
                       
     end process;    
----------------------
     process(clk2Hz, rst_n)
     begin
         if rst_n='0' then
             contador   <= "000";
         elsif clk2Hz'event and clk2Hz='1' then
              contador <= contador + "001";
         end if;
     end process;
-------------------       
     
    with persel select
        rate   <= clk2Hz		when "00",   --no divide
                  contador(0) when "01" ,   -- divide por 2
                  contador(1) when "10",   -- divide por 4   
                  'X'         when others;   -- no divide
-------------------------------------------------------------------------                  
-------------------------------------------------------------------------
--Direccion de la RAM   
    process(rate, rst_n)
     begin
         if rst_n='0' then
              addr <= "00000000000";
         elsif rate'event and rate='1' then
              addr <= addr + "00000000001";
         end if;
     end process;
-------------------------------------------------------------------------
data <= RAM(CONV_INTEGER(addr));
     
end compor;