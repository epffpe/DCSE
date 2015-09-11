----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:41:57 08/19/2009 
-- Design Name: 
-- Module Name:    debounce - Behavioral 
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

entity debounce is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           sw : in  STD_LOGIC;
           db_level : out  STD_LOGIC;
           db_tick : out  STD_LOGIC);
end debounce;

architecture imp_fsmd_arch of debounce is
	constant N: integer :=21; --filtro de 2^N*20ns=40ms
	type state_type is (zero, wait0, one, wait1);
	signal state_reg, state_next : state_type;
	signal q_reg, q_next : unsigned (N-1 downto 0);
	signal q_load, q_dec, q_zero :std_logic;
begin
	--FSMD estados y registros de datos
	process(clk, reset)
	begin
		if reset='1' then
			state_reg <= zero;
			q_reg <= (others=>'0');
		elsif (clk'event and clk='1') then
			state_reg <= state_next;
			q_reg <= q_next;
		end if;
	end process;

	--FSMD camino de datos y logica de estado siguiente
	process(state_reg, sw, q_reg, q_next)
	begin
		q_next <=q_reg;
		db_tick <= '0';
		state_next <= state_reg;
		case state_reg is
			when zero =>
				db_level <='0';
				if (sw='1') then
					state_next <= wait1;
					q_next <= (others =>'1');
				end if;
			when wait1 =>
				db_level <= '0';
				if (sw='1') then
					q_next <= q_reg - 1;
					if (q_next=0) then
						db_tick <='1';
						state_next <= one;
					end if;
				else --sw=0
					state_next <= zero;
				end if;
			when one =>
				db_level <= '1';
				if (sw='0') then
					q_next <= (others => '1');
					state_next <= wait0;
				end if;
			when wait0 =>
				db_level <= '1';
				if (sw='0') then
					q_next <= q_reg -1;
					if (q_next=0) then
						state_next <= zero;
					end if;
				else --sw='1'
					state_next <= one;
				end if;
		end case;
	end process;
end imp_fsmd_arch;

