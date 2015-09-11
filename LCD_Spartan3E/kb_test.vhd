----------------------------------------------------------------------------------
-- Company: Supersonic
-- Engineer: Eugenio Peñate Fariñas
-- 
-- Create Date:    04:16:31 08/22/2009 
-- Design Name: 
-- Module Name:    kb_test - Behavioral 
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

entity kb_test is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ps2d : in  STD_LOGIC;
           ps2c : in  STD_LOGIC;
			  sw : in std_logic;
			  rx : in std_logic;
			  kb_tick : out  STD_LOGIC;
			  codigo_ascii: out std_logic_vector(7 downto 0);
           tx : out  STD_LOGIC);
end kb_test;

architecture Behavioral of kb_test is
	-- signal scan_data, w_data: std_logic_vector(7 downto 0);
	signal kb_not_empty, kb_buf_empty: std_logic;
	signal key_code, ascii_code, uart_data: std_logic_vector(7 downto 0);
	signal rx_empty, rx_not_empty: std_logic;
	signal wr_uart: std_logic;
	
begin
	kb_code_unit: entity work.kb_code(Behavioral)
		port map( 
				clk => clk,
				reset => reset,
				ps2d => ps2d,
				ps2c => ps2c,
				rd_key_code => kb_not_empty,
				key_code => key_code,
				kb_buf_empty => kb_buf_empty);
				
	uart_unit: entity work.uart(Behavioral)
		port map(
				clk => clk,
				reset => reset,
				rd_uart => '1',
				wr_uart => wr_uart,
				rx => rx,
				w_data => ascii_code,
				tx_full => open,
				rx_empty => rx_empty,
				r_data => uart_data,
				tx => tx);
	key2a_unit: entity work.key2ascii(Behavioral)
		port map(
				key_code => key_code,
				ascii_code => ascii_code);
	
	rx_not_empty <= not rx_empty;			
	kb_not_empty <= not kb_buf_empty;
	wr_uart <= kb_not_empty  when sw='0' else rx_not_empty;
	codigo_ascii <= ascii_code when sw='0' else uart_data;
	kb_tick <= kb_not_empty when sw='0' else rx_not_empty;
end Behavioral;

