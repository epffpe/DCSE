----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Eugenio Peñate Fariñas <epf.supersonic@gmail.com>
-- 
-- Create Date:    19:39:12 12/05/2008 
-- Design Name: 
-- Module Name:    divisorRAM - Behavioral 
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

entity divisorRAM is
    Port ( clk : in  STD_LOGIC;
           rst_n : in  STD_LOGIC;
           persel : in  STD_LOGIC_VECTOR (1 downto 0);
			  clkRAM : out std_logic);
end divisorRAM;

architecture Behavioral of divisorRAM is

signal rate : std_logic;
signal contador1: integer range 0 to 4 ;
signal clk2Hz : std_logic;
signal contador : std_logic_vector(2 downto 0);


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
              contador <= contador + 1;
         end if;
     end process;
------------------- 

    
    with persel select
        rate   <= clk2Hz		when "00",   --no divide
                  contador(0) when "01" ,   -- divide por 2
                  contador(1) when "10",   -- divide por 4   
                  'X'         when others;   -- no divide
-------------------------------------------------------------------------
clkRAM <= rate;

end Behavioral;

