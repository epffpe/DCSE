----------------------------------------------------------------------------------
-- Company: Supersonic
-- Engineer: Eugenio Peñate Fariñas
-- 
-- Create Date:    03:23:34 08/22/2009 
-- Design Name: 
-- Module Name:    key2ascii - Behavioral 
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
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;
---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity key2ascii is
    Port ( key_code : in  STD_LOGIC_VECTOR (7 downto 0);
           ascii_code : out  STD_LOGIC_VECTOR (7 downto 0));
end key2ascii;

architecture Behavioral of key2ascii is
	
begin
	with key_code select
		ascii_code <=
			std_logic_vector(to_unsigned(character'pos('0'),8)) when X"45", -- 0
			std_logic_vector(to_unsigned(character'pos('1'),8)) when X"16", -- 1
			std_logic_vector(to_unsigned(character'pos('2'),8)) when X"1E", -- 2
			std_logic_vector(to_unsigned(character'pos('3'),8)) when X"26", -- 3
			std_logic_vector(to_unsigned(character'pos('4'),8)) when X"25", -- 4
			std_logic_vector(to_unsigned(character'pos('5'),8)) when X"2E", -- 5
			std_logic_vector(to_unsigned(character'pos('6'),8)) when X"36", -- 6
			std_logic_vector(to_unsigned(character'pos('7'),8)) when X"3D", -- 7
			std_logic_vector(to_unsigned(character'pos('8'),8)) when X"3E", -- 8
			std_logic_vector(to_unsigned(character'pos('9'),8)) when X"46", -- 9
			
			std_logic_vector(to_unsigned(character'pos('A'),8)) when X"1C", -- A
			std_logic_vector(to_unsigned(character'pos('B'),8)) when X"32", -- B
			std_logic_vector(to_unsigned(character'pos('C'),8)) when X"21", -- C
			std_logic_vector(to_unsigned(character'pos('D'),8)) when X"23", -- D
			std_logic_vector(to_unsigned(character'pos('E'),8)) when X"24", -- E
			std_logic_vector(to_unsigned(character'pos('F'),8)) when X"2B", -- F
			std_logic_vector(to_unsigned(character'pos('G'),8)) when X"34", -- G
			std_logic_vector(to_unsigned(character'pos('H'),8)) when X"33", -- H
			std_logic_vector(to_unsigned(character'pos('I'),8)) when X"43", -- I
			std_logic_vector(to_unsigned(character'pos('J'),8)) when X"3B", -- J
			std_logic_vector(to_unsigned(character'pos('K'),8)) when X"42", -- K
			std_logic_vector(to_unsigned(character'pos('L'),8)) when X"4B", -- L
			std_logic_vector(to_unsigned(character'pos('M'),8)) when X"3A", -- M
			std_logic_vector(to_unsigned(character'pos('N'),8)) when X"31", -- N
			std_logic_vector(to_unsigned(character'pos('O'),8)) when X"44", -- O
			std_logic_vector(to_unsigned(character'pos('P'),8)) when X"4D", -- P
			std_logic_vector(to_unsigned(character'pos('Q'),8)) when X"15", -- Q
			std_logic_vector(to_unsigned(character'pos('R'),8)) when X"2D", -- R
			std_logic_vector(to_unsigned(character'pos('S'),8)) when X"1B", -- S
			std_logic_vector(to_unsigned(character'pos('T'),8)) when X"2C", -- T
			std_logic_vector(to_unsigned(character'pos('U'),8)) when X"3C", -- U
			std_logic_vector(to_unsigned(character'pos('V'),8)) when X"2A", -- V
			std_logic_vector(to_unsigned(character'pos('W'),8)) when X"1D", -- W
			std_logic_vector(to_unsigned(character'pos('X'),8)) when X"22", -- X
			std_logic_vector(to_unsigned(character'pos('Y'),8)) when X"35", -- Y
			std_logic_vector(to_unsigned(character'pos('Z'),8)) when X"1A", -- Z
														 "00100000" when X"29", -- SPACIO
														 "00001101" when X"5A", -- ENTER
														 "00001000" when X"66", -- BACKSPACE
			std_logic_vector(to_unsigned(character'pos('*'),8)) when others; -- 
			
			

end Behavioral;

