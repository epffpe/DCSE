----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:01:40 02/07/2009 
-- Design Name: 
-- Module Name:    UControl - Behavioral 
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

entity UControl is
    Port ( clk : in  STD_LOGIC;
           rst_n : in  STD_LOGIC;
           siguiente : in  STD_LOGIC;
           LCD_DB : out  STD_LOGIC_VECTOR (7 downto 0);
			  LCD_E : out  STD_LOGIC;
           LCD_RS : out  STD_LOGIC;
           status : out  STD_LOGIC_VECTOR (7 downto 0));
end UControl;

architecture Behavioral of UControl is


type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,
							s13,s14,s15,s16,s17,
							s18,s19,s20);--,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,
							--s35,s36,s37,s38);
signal state : state_type;

signal fila1 : std_logic_vector(3 downto 0); --Parte alta de la direccion, LCD_RS=0


begin

process(clk, rst_n)
begin
	if (rst_n='0') then
		state <= s0;
		LCD_DB <= (others => '0');
		LCD_E <= '0';
		LCD_RS <= '0';
		status <=X"ff";
	elsif (clk'event and clk='1') then
		case state is
-----------------------------------------------------------------------------------------------------------
-- Power On del Display
-----------------------------------------------------------------------------------------------------------
			when s0 =>--------------------------------Pre espera
							if siguiente ='1' then
								state <= s1;
							else
								state <= s0;
							end if;
							LCD_DB <= (others => '0');
							LCD_E <= '0';
							LCD_RS <= '0';
							status <=X"00";
			when s1 =>--------------------------------Function set 38
							state <= s2;
							LCD_DB <= X"38";
							LCD_E <= '1';
							LCD_RS <= '0';
							status <=X"01";

			when s2 =>--------------------------------Pre espera
							if siguiente ='1' then
								state <= s3;
							else
								state <= s2;
							end if;
							LCD_DB <= X"38";
							LCD_E <= '0';
							LCD_RS <= '0';
							status <=X"02";

			when s3 =>--------------------------------Function set 38
							state <= s4;
							LCD_DB <= X"38";
							LCD_E <= '1';
							LCD_RS <= '0';
							status <=X"03";

			when s4 =>--------------------------------Pre espera
							if siguiente ='1' then
								state <= s5;
							else
								state <= s4;
							end if;
							LCD_DB <= X"38";
							LCD_E <= '0';
							LCD_RS <= '0';
							status <=X"04";

			when s5 =>--------------------------------Function set 38
							state <= s6;
							LCD_DB <= X"38";
							LCD_E <= '1';
							LCD_RS <= '0';
							status <=X"05";

			when s6 =>--------------------------------Pre espera
							if siguiente ='1' then
								state <= s7;
							else
								state <= s6;
							end if;
							LCD_DB <= X"38";
							LCD_E <= '0';
							LCD_RS <= '0';
							status <=X"06";

			when s7 =>--------------------------------Function set 38
							state <= s8;
							LCD_DB <= X"38";
							LCD_E <= '1';
							LCD_RS <= '0';
							status <=X"05";

			when s8 =>--------------------------------Pre espera
							if siguiente ='1' then
								state <= s9;
							else
								state <= s8;
							end if;
							LCD_DB <= X"38";
							LCD_E <= '0';
							LCD_RS <= '0';
							status <=X"08";


			when s9 =>--------------------------------Entry Mode set 06
							state <= s10;
							LCD_DB <= X"06";
							LCD_E <= '1';
							LCD_RS <= '0';
							status <=X"09";

			when s10 =>--------------------------------Pre espera
							if siguiente ='1' then
								state <= s11;
							else
								state <= s10;
							end if;
							LCD_DB <= X"06";
							LCD_E <= '0';
							LCD_RS <= '0';
							status <=X"0A";



			when s11 =>--------------------------------Dsiplay On
							state <= s12;
							LCD_DB <= X"01";
							LCD_E <= '1';
							LCD_RS <= '0';
							status <=X"0B";

			when s12 =>--------------------------------Pre espera
							if siguiente ='1' then
								state <= s13;
							else
								state <= s12;
							end if;
							LCD_DB <= X"01";
							LCD_E <= '0';
							LCD_RS <= '0';
							status <=X"0C";



			when s13 =>--------------------------------Dsiplay On
							state <= s14;
							LCD_DB <= X"0C";
							LCD_E <= '1';
							LCD_RS <= '0';
							status <=X"0D";

			when s14 =>--------------------------------Pre espera
							if siguiente ='1' then
								state <= s15;
							else
								state <= s14;
							end if;
							LCD_DB <= X"0C";
							LCD_E <= '0';
							LCD_RS <= '0';
							status <=X"0E";




			when s15 =>--------------------------------Clear Display 01
							state <= s16;
							LCD_DB <= X"01";
							LCD_E <= '1';
							LCD_RS <= '0';
							status <=X"0F";

			when s16 =>--------------------------------Pre espera
							if siguiente ='1' then
								state <= s17;
							else
								state <= s17;
							end if;
							LCD_DB <= X"01";
							LCD_E <= '0';
							LCD_RS <= '0';
							status <=X"10";

			when s17 =>--------------------------------Direccion
							state <= s18;
							LCD_DB <= fila1 & X"1";
							LCD_E <= '1';
							LCD_RS <= '0';
							status <=X"11";

			when s18 =>--------------------------------Pre espera
							if siguiente ='1' then
								state <= s19;
							else
								state <= s18;
							end if;
							LCD_DB <= fila1 & X"1";
							LCD_E <= '0';
							LCD_RS <= '0';
							status <=X"12";

			when s19 =>--------------------------------escribir 30
							state <= s20;
							LCD_DB <= X"30";
							LCD_E <= '1';
							LCD_RS <= '1';
							status <=X"13";

			when s20 =>--------------------------------Pre espera
							if siguiente ='1' then
								state <= s20;
							else
								state <= s20;
							end if;
							LCD_DB <= X"30";
							LCD_E <= '0';
							LCD_RS <= '1';
							status <=X"14";







							
		end case;
	end if;
end process;

end Behavioral;

