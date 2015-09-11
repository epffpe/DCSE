----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:20:46 02/04/2009 
-- Design Name: 
-- Module Name:    Control - Behavioral 
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

entity Control is
    Port ( clk : in  STD_LOGIC;
           rst_n : in  STD_LOGIC;
			  tic : in  STD_LOGIC;
           DB : out  STD_LOGIC_VECTOR (7 downto 0);
           E : out  STD_LOGIC;
           RS : out  STD_LOGIC;
			  clr : out STD_LOGIC;
			  tiempo : out  STD_LOGIC_VECTOR (1 downto 0));
end Control;

architecture Behavioral of Control is

type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13);--,s14,s15);
signal state : state_type;

begin


process(clk, rst_n)
begin
	if (rst_n='0') then
		state <= s0;
		DB <= (others => '0');
		E <= '0';
		RS <= '0';
		clr <= '0';
		tiempo<="00";
	elsif (clk'event and clk='1') then
		case state is
			when s0 =>--------------------------------Pre espera
							state <= s1;
							DB <= (others => '0');
							E <= '0';
							RS <= '0';
							clr <= '1';
							tiempo<="11";
			when s1 =>--------------------------------Espera 40ms 
							if (tic='0') then
									state <= s1;
								else
									state <= s2;
							end if;
							DB <= (others => '0');
							E <= '0';
							RS <= '0';
							clr <= '0';
							tiempo<="11";
			when s2 => --------------------------------Function set => 0x38
							state <= s3;
							DB <= X"38";
							E <= '1';
							RS <= '0';
							clr <= '1';
							tiempo<="10";
			when s3 =>  --------------------------------Espera 4.1ms
							if (tic='0') then
									state <= s3;
								else
									state <= s4;
							end if;
							DB <= X"38";
							E <= '0';
							RS <= '0';
							clr <= '0';
							tiempo<="10";
			when s4 =>  --------------------------------Function set => 0x38
							state <= s5;
							DB <= X"38";
							E <= '1';
							RS <= '0';
							clr <= '1';
							tiempo<="01";
			when s5 => ----------------------------------Espera 100us 
							if (tic='0') then
									state <= s5;
								else
									state <= s6;
							end if;
							DB <= X"38";
							E <= '0';
							RS <= '0';
							clr <= '0';
							tiempo<="01";
			when s6 =>  --------------------------------Function set => 0x38
							state <= s7;
							DB <= X"38";
							E <= '1';
							RS <= '0';
							clr <= '1';
							tiempo<="00";
			when s7 => ----------------------------------Espera 40us 
							if (tic='0') then
									state <= s7;
								else
									state <= s8;
							end if;
							DB <= X"38";
							E <= '0';
							RS <= '0';
							clr <= '0';
							tiempo<="00";
			when s8 => ---------------------------------Entry mode set 0x06
							state <= s9;
							DB <= X"06";
							E <= '1';
							RS <= '0';
							clr <= '1';
							tiempo<="00";
			when s9 => ----------------------------------Espera 40us 
							if (tic='0') then
									state <= s9;
								else
									state <= s10;
							end if;
							DB <= X"06";
							E <= '0';
							RS <= '0';
							clr <= '0';
							tiempo<="00";
			when s10 => ---------------------------------Display ON
							state <= s11;
							DB <= X"0C";
							E <= '1';
							RS <= '0';
							clr <= '1';
							tiempo<="00";
			when s11 => ----------------------------------Espera 40us 
							if (tic='0') then
									state <= s11;
								else
									state <= s12;
							end if;
							DB <= X"0C";
							E <= '0';
							RS <= '0';
							clr <= '0';
							tiempo<="00";
			when s12 => ---------------------------------Clear Display
							state <= s13;
							DB <= X"01";
							E <= '1';
							RS <= '0';
							clr <= '1';
							tiempo<="10";
			when s13 => ----------------------------------Espera >1.64ms 
							if (tic='0') then
									state <= s13;
								else
									state <= s12;
							end if;
							DB <= X"0C";
							E <= '0';
							RS <= '0';
							clr <= '0';
							tiempo<="10";


							
		end case;
			
	end if;
end process;



end Behavioral;

