----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:26:05 08/19/2009 
-- Design Name: 
-- Module Name:    uart_test - Behavioral 
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

entity uart_test is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           btn : in  STD_LOGIC;
--           rx : in  STD_LOGIC;
--           tx : out  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end uart_test;

architecture Behavioral of uart_test is
	signal tx_full, rx_empty: std_logic;
	signal rec_data, rec_data1: std_logic_vector(7 downto 0);
	signal btn_tick: std_logic;
	signal tx: std_logic;
begin
	uart_unit: entity work.uart(Behavioral)
		PORT MAP(
					clk => clk,
					reset => reset,
					rd_uart => btn_tick,
					wr_uart => btn_tick,
					rx => tx,
					w_data => rec_data1,
					tx_full => tx_full,
					rx_empty => rx_empty,
					r_data => rec_data,
					tx => tx
				);
	btn_db_unit: entity work.debounce(imp_fsmd_arch)
		PORT MAP(
					clk => clk,
					reset => reset,
					sw => btn,
					db_level => open,
					db_tick => btn_tick
				);
	--incremented data loop back			
--	rec_data1 <= std_logic_vector(unsigned(rec_data) + 1);
	rec_data1 <= "10101010";
	--leds
	led <= rec_data;
	
end Behavioral;

