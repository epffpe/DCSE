----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:58:08 01/20/2009 
-- Design Name: 
-- Module Name:    UnidadControl - Behavioral 
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

--	state <= s0;
--	pc0 <= '0';
--	inc_pc <= '0'
--	reg <= "000";
--	reg_w <='1';
--	RW <='0';
--	count_rst_n <='0';
--	count_en <='0';
--	sel2 <='0';
--	sel_out <='0';
-- dr <= '0';
-- E <= '0';
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

entity UnidadControl is
    Port ( clk : in  STD_LOGIC;
           rst_n : in  STD_LOGIC;
           init : in  STD_LOGIC;
           espera : in  STD_LOGIC;
           pc0 : out  STD_LOGIC;
           inc_pc : out  STD_LOGIC;
           reg : out  STD_LOGIC_VECTOR (2 downto 0);
           reg_w : out  STD_LOGIC;
           RW : out  STD_LOGIC;
           count_rst_n : out  STD_LOGIC;
           count_en : out  STD_LOGIC;
           sel2 : out  STD_LOGIC;
			  dr : out STD_LOGIC;
           sel_out : out  STD_LOGIC;
			  E : out  STD_LOGIC);
end UnidadControl;

architecture Behavioral of UnidadControl is

type state_type is (s0, s1, s2, s3, s4, s5, s6);
signal state : state_type;

begin

process(clk, rst_n)
begin

if (rst='0') then
	state <= s0;
	pc0 <= '0';
	inc_pc <= '0'
	reg <= "000";
	reg_w <='1';
	RW <='0';
	count_rst_n <='0';
	count_en <='0';
	sel2 <='0';
	sel_out <='0';
elsif (clk='1' and clk'event) then
	case state is
		when s0 => if (init='0') then
							pc0 <= '0';
							inc_pc <= '1';
							state <=s1;
						else
							pc0 <='1';
							inc_pc <='0';
							state <= s0;
						end if;
						reg <= "000";
						reg_w <='1';
						RW <='0';
						count_rst_n <='1';
						count_en <='0';
						sel2 <='1';
						sel_out <='0';
						dr <= '1';
						E='0';
		when s1 => 	state <= s2;
						pc0 <= '0';
						inc_pc <= '0'
						reg <= "000";
						reg_w <='0';
						RW <='0';
						count_rst_n <='0';
						count_en <='1';
						sel2 <='1';
						dr <= '0';
						sel_out <='0';
						E <= '1';
		when s2 =>  if (espera='0') then
							count_en <='1';
							state <= s2;
						else
							count_en <='0';
							state <= s3;
						end if;
						pc0 <= '0';
						inc_pc <= '0'
						reg <= "000";
						reg_w <='0';
						RW <='0';
						count_rst_n <='0';
						--count_en <='1';
						sel2 <='1';
						sel_out <='0';
						dr <= '0';
						E <= '1';
		when s3 =>  state <= s4;
						pc0 <= '0';
						inc_pc <= '0'
						reg <= "000";
						reg_w <='0';
						RW <='0';
						count_rst_n <='0';
						count_en <='1';
						sel2 <='1';
						dr <= '0';
						sel_out <='0';
						E <= '1';
		when s4 =>  if (init='0') then
							if (espera = '0') then
								count_en <='1';
								state <=s4;
							else
								count_en <='0';
								state <=s0;
							end if;
						else
							count_en <='0';
							state <= s5
						end if;
						state <= s4;
						pc0 <= '0';
						inc_pc <= '0'
						reg <= "000";
						reg_w <='0';
						RW <='0';
						count_rst_n <='0';
						count_en <='1';
						sel2 <='1';
						dr <= '0';
						sel_out <='0';
						E <= '1';
		when s5 => ;
		when s6 => ;
end if;

end


end Behavioral;

