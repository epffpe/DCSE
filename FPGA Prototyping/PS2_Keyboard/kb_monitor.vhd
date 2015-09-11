----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:26:26 08/21/2009 
-- Design Name: 
-- Module Name:    kb_monitor - Behavioral 
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
use ieee.numeric_std.all;
---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity kb_monitor is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ps2d : in  STD_LOGIC;
           ps2c : in  STD_LOGIC;
           tx : out  STD_LOGIC;
			  leds: out std_logic_vector(7 downto 0));
end kb_monitor;

architecture Behavioral of kb_monitor is
	constant SP: std_logic_vector(7 downto 0) :="00100000";--Caracter espacio en blanco en ASCII
	type statetype is (idle, send1, send0, sendb);
	signal state_reg, state_next: statetype;
	signal scan_data, w_data: std_logic_vector(7 downto 0);
	signal scan_done_tick, wr_uart: std_logic;
	signal ascii_code: std_logic_vector(7 downto 0);
	signal ascii_char: character;
	signal hex_in: std_logic_vector(3 downto 0);
begin
	--======================================================================
	--Instanciacion
	--======================================================================
	-- receptor PS2
	ps2_rx_unit: entity work.ps2_rx(Behavioral)
		port map(
					clk => clk,
					reset => reset,
					ps2d => ps2d,
					ps2c => ps2c,
					rx_en => '1',
					rx_done_tick => scan_done_tick,
					dout => scan_data);
	uart_unit: entity work.uart(Behavioral)
		port map(
					clk => clk,
					reset => reset,
					rd_uart => '0',
					wr_uart => wr_uart,
					rx => '1',
					w_data => w_data,
					tx_full => open,
					rx_empty => open,
					r_data => open,
					tx => tx);
	--======================================================================
	--FSM para enviar 3 caracteres ASCII
	--======================================================================
	--registro de estado
	process(clk,reset)
	begin
		if reset='1' then
			state_reg <= idle;
		elsif (clk'event and clk='1') then
			state_reg <= state_next;
		end if;
	end process;
	--logica de estado siguiente
	process(state_reg, scan_done_tick, ascii_code)
	begin
		wr_uart <= '0';
		w_data <= SP;
		state_next <= state_reg;
		case state_reg is
			when idle => --empieza cuando se recibe scan code
				if scan_done_tick ='1' then
					state_next <= send1;
				end if;
			when send1 => -- envia el caracter hex mas significativo
				w_data <= ascii_code;
				wr_uart <= '1';
				state_next <= send0;
			when send0 => -- envia el caracter hex menos significativo
				w_data <= ascii_code;
				wr_uart <= '1';
				state_next <=sendb;
			when sendb =>
				w_data <= SP;
				wr_uart <= '1';
				state_next <= idle;
		end case;
	end process;
	
	--======================================================================
	--scan code a ASCII 
	--======================================================================
	--divide el scan code en dos 4bits-hex
	hex_in <= scan_data(7 downto 4) when state_reg=send1 else
				 scan_data(3 downto 0);
	-- de hex a ASCII
	
--	with hex_in select
--		ascii_char <= 
--						'0' when X"0";
--						'1' when X"1";
--						'2' when X"2";
--						'3' when X"3";
--						'4' when X"4";
--						'5' when X"5";
--						'6' when X"6";
--						'7' when X"7";
--						'8' when X"8";
--						'9' when X"9";
--						'A' when X"A";
--						'B' when X"B";
--						'C' when X"C";
--						'D' when X"D";
--						'E' when X"E";
--						'F' when others;
--	ascii_code <=std_logic_vector(to_unsigned(character'pos(ascii_char), 8));
--	
	process(hex_in)
	begin
	case hex_in is
		when X"0" => ascii_char <= '0';
		when X"1" => ascii_char <= '1';
		when X"2" => ascii_char <= '2';
		when X"3" => ascii_char <= '3';
		when X"4" => ascii_char <= '4';
		when X"5" => ascii_char <= '5';
		when X"6" => ascii_char <= '6';
		when X"7" => ascii_char <= '7';
		when X"8" => ascii_char <= '8';
		when X"9" => ascii_char <= '9';
		when X"A" => ascii_char <= 'A';
		when X"B" => ascii_char <= 'B';
		when X"C" => ascii_char <= 'C';
		when X"D" => ascii_char <= 'D';
		when X"E" => ascii_char <= 'E';
		when others => ascii_char <= 'F';
	end case;
	ascii_code <=std_logic_vector(to_unsigned(character'pos(ascii_char), 8));
	end process;
	--************************************************************
	--otra forma de hacerlo con menos codigo
	--************************************************************
--	ascii_code <= "00110000" + (X"0" & hex_in);
	leds <= scan_data;
end Behavioral;

