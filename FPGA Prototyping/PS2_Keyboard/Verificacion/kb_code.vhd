----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:23:43 08/22/2009 
-- Design Name: 
-- Module Name:    kb_code - Behavioral 
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

entity kb_code is
	generic(W_SIZE: integer :=2);		--2^W_SIZE words in Fifo
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ps2d : in  STD_LOGIC;
           ps2c : in  STD_LOGIC;
           rd_key_code : in  STD_LOGIC;
           key_code : out  STD_LOGIC_VECTOR (7 downto 0);
           kb_buf_empty : out  STD_LOGIC);
end kb_code;

architecture Behavioral of kb_code is
	constant BRK: std_logic_vector (7 downto 0) := "11110000";
	type statetype is (wait_brk, get_code);
	signal state_reg, state_next: statetype;
	signal scan_out, w_data: std_logic_vector(7 downto 0);
	signal scan_done_tick, got_code_tick: std_logic;
begin

	--===============================================================================
	--Instanciacion
	--===============================================================================
	
	ps2_rx_unit: entity work.ps2_rx(Behavioral)
		port map(
			clk => clk,
			reset => reset,
			ps2d => ps2d,
			ps2c => ps2c,
			rx_en => '1',
			rx_done_tick => scan_done_tick,
			dout => scan_out);
	fifo_key_unit: entity work.fifo(Behavioral)
		port map(
			clk => clk,
			reset => reset,
			rd => rd_key_code,
			wr => got_code_tick,
			w_data => scan_out,
			empty => kb_buf_empty,
			full => open,
			r_data => key_code);

	--===============================================================================
	--Instanciacion
	--===============================================================================
	process(clk, reset)
	begin
		if reset = '1' then
			state_reg <= wait_brk;
		elsif (clk'event and clk='1') then
			state_reg <= state_next;
		end if;
	end process;
	
	process(state_reg, scan_done_tick, scan_out)
	begin
	got_code_tick <= '0';
	state_next <= state_reg;
	case state_reg is 
		when wait_brk => --wait for F0 of break code
			if scan_done_tick ='1' and scan_out =BRK then
				state_next <=get_code;
			end if;
		when get_code =>-- get the following scan code
			if scan_done_tick='1' then
				got_code_tick <= '1';
				state_next <= wait_brk;
			end if;
	end case;
	end process;
end Behavioral;

