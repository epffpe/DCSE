----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:12:10 12/05/2008 
-- Design Name: 
-- Module Name:    DEBOUNCER - Behavioral 
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

entity DEBOUNCER is
    Port ( clk10ms : in  STD_LOGIC;
			  rst_n   : in  STD_LOGIC;
           hold_in : in  STD_LOGIC;
           hold_out : out  STD_LOGIC);
end DEBOUNCER;

architecture Behavioral of DEBOUNCER is

type state_type is (s0,s1,s2);
signal state : state_type;

begin

process (clk10ms, rst_n)
	begin
		if (rst_n = '0') then
			state <= s0;
			--hold_out <='0';
		elsif (clk10ms='1' and clk10ms'event) then
			case state is
				when s0 => if hold_in='0' then state <= s0;
								else state <= s1;
								end if;
								
				when s1 => if hold_in='0' then state <= s0;
								else state <= s2;
								end if;
								
				when s2 => if hold_in='0' then state <= s0;
								else state <= s2;
								end if;
								
				
			end case;
		end if;


end process;

process (state)
begin
case state is
	when s0 => hold_out <= '0';
	when s1 => hold_out <= '0';
	when s2 => hold_out <= '1';
end case;
end process;

end Behavioral;

