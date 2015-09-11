----------------------------------------------------------------------------------
-- Company: Supersonic
-- Engineer: Eugenio Peñate Fariñas
-- 
-- Create Date:    19:43:44 08/19/2009 
-- Design Name: 
-- Module Name:    uart - Behavioral 
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

entity uart is
	generic(
			--Valores por defecto
			--19200 baud, 8 bit datos, 1 bit stop, 2^2 fifo
			DBIT: integer :=8;		--nº bits datos
			SB_TICK: integer :=16;	--ticks for stop bits, 16/24/32 para 1/1.5/2 bits de stop
			DVSR: integer :=163;		--baud rate divisor
			DVSR_BIT: integer :=8;	--bits de DVSR
			FIFO_W: integer :=2		--bits de dir en fifo, las palabras en FIFO=2^FIFO_W
			);
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           rd_uart, wr_uart : in  STD_LOGIC;
           rx : in  STD_LOGIC;
           w_data : in  STD_LOGIC_VECTOR (7 downto 0);
           tx_full : out  STD_LOGIC;
           rx_empty : out  STD_LOGIC;
           r_data : out  STD_LOGIC_VECTOR (7 downto 0);
           tx : out  STD_LOGIC);
end uart;

architecture Behavioral of uart is
	signal tick: std_logic;
	signal rx_done_tick: std_logic;
	signal tx_fifo_out: std_logic_vector(7 downto 0);
	signal rx_data_out: std_logic_vector(7 downto 0);
	signal tx_empty, tx_fifo_not_empty: std_logic;
	signal tx_done_tick: std_logic;
	signal rx_full, rx_fifo_not_full: std_logic;
	signal recibe: std_logic;
begin
	baud_gen_unit: entity work.mod_m_counter(Behavioral)
		generic map(M=>DVSR, N=>DVSR_BIT)
		port map(clk => clk, reset => reset, q => open, max_tick=>tick);
	uart_rx_unit: entity work.uart_rx(Behavioral)
		generic map(DBIT=>DBIT, SB_TICK=>SB_TICK)
		port map(
					clk => clk,
					reset => reset,
					rx => recibe,
					s_tick => tick,
					rx_done_tick => rx_done_tick,
					dout => rx_data_out
				);
	fifo_rx_unit: entity work.fifo(Behavioral)
		generic map(B=>DBIT, W=>FIFO_W)
		port map( 
					clk => clk,
					reset => reset,
					rd => rd_uart,
					wr => rx_done_tick,
					w_data => rx_data_out,
					empty => rx_empty,
					full => rx_full,
					r_data => r_data
				);
	rx_fifo_not_full <= not rx_full;
	recibe <= rx and rx_fifo_not_full;
	
	fifo_tx_unit: entity work.fifo(Behavioral)
		generic map(B=>DBIT, W=>FIFO_W)
		port map( 
					clk => clk,
					reset => reset,
					rd => tx_done_tick,
					wr => wr_uart,
					w_data => w_data,
					empty => tx_empty,
					full => tx_full,
					r_data => tx_fifo_out
				);
	uart_tx_unit: entity work.uart_tx(Behavioral)
		generic map(DBIT=>DBIT, SB_TICK=>SB_TICK)
		port map(
					clk => clk,
					reset => reset,
					tx_start => tx_fifo_not_empty,
					s_tick => tick,
					din => tx_fifo_out,
					tx_done_tick => tx_done_tick,
					tx => tx
				);
	tx_fifo_not_empty <= not tx_empty;
end Behavioral;

