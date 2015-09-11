----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:52:26 08/21/2009 
-- Design Name: 
-- Module Name:    ps2_rx - Behavioral 
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

entity ps2_rx is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ps2d : in  STD_LOGIC;
           ps2c : in  STD_LOGIC;
           rx_en : in  STD_LOGIC;
           rx_done_tick : out  STD_LOGIC;
           dout : out  STD_LOGIC_VECTOR (7 downto 0));
end ps2_rx;

architecture Behavioral of ps2_rx is
	type statetype is (idle, dps, load);
	signal state_reg, state_next: statetype;
	signal filter_reg, filter_next: std_logic_vector(7 downto 0);
	signal f_ps2c_reg, f_ps2c_next: std_logic;
	signal b_reg, b_next: std_logic_vector(8 downto 0);
	signal n_reg, n_next: unsigned(3 downto 0);
	signal fall_edge: std_logic;
--	signal paridad: std_logic;
begin
	--===================================================================
	--Filtro y flanco de bajada para ps2c
	--===================================================================
	process(clk, reset)
	begin
		if reset= '1' then
			filter_reg <= (others=>'0');
			f_ps2c_reg <= '0';
		elsif (clk'event and clk='1') then
			filter_reg <= filter_next;
			f_ps2c_reg <= f_ps2c_next;
		end if;
	end process;
	
	filter_next <= ps2c & filter_reg(7 downto 1);
	f_ps2c_next <= '1' when filter_reg = X"FF" else
						'0' when filter_reg = X"00" else
						f_ps2c_reg;
	fall_edge <= f_ps2c_reg and (not f_ps2c_next);
	--===================================================================
	--fsmd para extraer los 8bits de datos
	--===================================================================
	-- registros
	process(clk,reset)
	begin
		if reset='1' then
			state_reg <= idle;
			n_reg <= (others => '0');
			b_reg <= (others => '0');
		elsif (clk'event and clk='1') then
			state_reg <= state_next;
			n_reg <= n_next;
			b_reg <= b_next;
		end if;
	end process;
	--logica de estado siguiente
	process(state_reg, n_reg, b_reg, fall_edge, rx_en, ps2d)
	begin
		rx_done_tick <='0';
		state_next <= state_reg;
		n_next <= n_reg;
		b_next <= b_reg;
		case state_reg is
			when idle =>
				if fall_edge='1' and rx_en='1' then
					-- estoy en el bit de start
--					b_next <= ps2d & b_reg(10 downto 1);
					n_next <= "1001"; -- 9 = 10-1
					state_next <= dps;
				end if;
			when dps => 	--8 bits datos + 1 paridad + 1 stop
				if fall_edge='1' then
					
					if n_reg = 0 then
						state_next <= load;
					else
						b_next <= ps2d & b_reg(8 downto 1);
						n_next <= n_reg - 1;
					end  if;
				end if;
			when load =>
				-- 1 ultimo ciclo para completar el ultimo desplazamiento
				state_next <= idle;
				rx_done_tick <= '1';
		end case;
	end process;
	--Salida
	dout <= b_reg(7 downto 0); --bits de datos
--	paridad <= b_reg(8);
end Behavioral;

