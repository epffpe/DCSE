----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:53:14 12/05/2008 
-- Design Name: 
-- Module Name:    divDEBOUNCER - Behavioral 
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

entity divDEBOUNCER is
    Port ( clk390 : in  STD_LOGIC;
			  rst_n	: in STD_LOGIC;
           clk10ms : out  STD_LOGIC);
end divDEBOUNCER;

architecture Behavioral of divDEBOUNCER is

--signal count : std_logic_vector(11 downto 0);
--signal count_en : std_logic;
signal contador: integer range 0 to 3906;

begin





--generates a 10ms signal from a 390.625 kHz signal
--process (clk390, rst_n)
--begin
--if rst_n = '0' then
--	count <= (others => '0') ;
--	count_en <= '0' ;
--elsif clk390'event and clk390  = '1' then
--		if count = "111101000010" then	--3906
--			count_en <= '1' ;
--			count <= (others => '0') ;
--		else
--			count_en <= '0' ;
--			count <= count + 1;
--		end if ;
--end if ;
--end process ;
--clk10ms <= count_en;


process(clk390,rst_n)
begin
if rst_n ='0' then
	contador <= 0;
	clk10ms <='0';
elsif clk390'event and clk390='1' then
	 if contador = 3906 then
		  contador <=0;
		  clk10ms <='1';
	 else
		  contador <= contador +1;
		  clk10ms <='0';
	 end if;
end if;
                       
end process;



end Behavioral;

