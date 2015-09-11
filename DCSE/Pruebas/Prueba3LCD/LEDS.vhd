----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:12:19 02/06/2009 
-- Design Name: 
-- Module Name:    LEDS - Behavioral 
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

entity LEDS is
    Port ( clk : in  STD_LOGIC;
           rst_n : in  STD_LOGIC;
           rotatory_event : in  STD_LOGIC;
           rotatory_left : in  STD_LOGIC;
           rotatory_press : in  STD_LOGIC;
           pb : in  STD_LOGIC_VECTOR (3 downto 0);
			  modo : in  STD_LOGIC;
			  leds : out  STD_LOGIC_VECTOR (7 downto 0));
end LEDS;

architecture Behavioral of LEDS is
signal led : std_logic_vector(7 downto 0);
begin
process(clk)
begin
if clk'event and clk='1' then
	led(7 downto 4) <= pb;
	 if rotatory_event='1' then
        if rotatory_left='1' then 
           led(3)<='1';--rotate LEDs to left
			  led(2)<='0';
         else
          led(3)<='0';--rotate LEDs to right
			  led(2)<='1';
        end if;
	else
	end if;

end if;
end process;

process(clk)
begin
if clk'event and clk='1' then
	led(7 downto 4) <= pb;
	led(1) <= rotatory_press;
	led(0) <= modo;
end if;
end process;

leds <= led;
end Behavioral;

