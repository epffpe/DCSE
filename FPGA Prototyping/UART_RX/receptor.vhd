----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:57:07 08/23/2009 
-- Design Name: 
-- Module Name:    receptor - Behavioral 
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

entity receptor is
    Port ( clk : in  STD_LOGIC;
           btn : in  STD_LOGIC;
           rx : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end receptor;

architecture Behavioral of receptor is
	COMPONENT uart_rx
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		rx : IN std_logic;
		s_tick : IN std_logic;          
		rx_done_tick : OUT std_logic;
		dout : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	COMPONENT mod_m_counter
	generic(
			N: integer := 8;		--numero de bits
			M: integer := 163		-- mod M
			);
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;          
		max_tick : OUT std_logic;
		q : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;	
	signal tick, rx_done: std_logic;
	signal q,p: std_logic_vector(7 downto 0);
begin
--	process(clk, btn)
--	begin
--		if btn='1' then
--			q <= (others =>'0');
--		elsif (clk'event and clk='1') then
--			if rx_done='1' then
--				q <= p;
--			end if;
--		end if;
--	end process;
--	led <= q;
	Inst_uart_rx: uart_rx PORT MAP(
		clk => clk,
		reset => btn,
		rx => rx,
		s_tick => tick,
		rx_done_tick => rx_done,
		dout => q
	);
	Inst_mod_m_counter: mod_m_counter 
	generic map(N=> 8, M=> 163)
	PORT MAP(
		clk => clk,
		reset => btn,
		max_tick => tick,
		q => open
	);

	led <= rx_done & q(6 downto 0);

end Behavioral;

