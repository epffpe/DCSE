----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:39:08 08/19/2009 
-- Design Name: 
-- Module Name:    sqr_wave - Behavioral 
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

entity sqr_wave is
	 generic(W : natural :=2);--Numero de bits de switches
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           a : in  STD_LOGIC_VECTOR (W-1 downto 0);
           b : in  STD_LOGIC_VECTOR (W-1 downto 0);
           senal_cuadrada : out  STD_LOGIC);
end sqr_wave;

architecture Behavioral of sqr_wave is
signal c_reg, c_next : unsigned(2 downto 0);
signal m_reg, m_next, n_reg, n_next : unsigned(W-1 downto 0);
signal senal_reg, senal_next: std_logic;
signal c_tick, m_tick, n_tick : std_logic;
begin

	--Registro
	process(clk,rst)
	begin
		if(rst='1') then
			c_reg <=(others=>'0');
			m_reg <=(others=>'0');
			n_reg <=(others=>'0');
			senal_reg <= '0';
		elsif(clk'event and clk='1') then
			c_reg <= c_next;
			m_reg <= m_next;
			n_reg <= n_next;
			senal_reg <= senal_next;
		end if;
	end process;
	
	--Logica de estado siguiente
	c_next <= (others=>'0') when c_reg = 4 else c_reg+1;
	c_tick <= '1' when c_next=0 else '0';
	
	m_next <= (others => '0') when (m_reg = unsigned(a)) else 
					m_reg +1 when (c_tick='1' and senal_reg ='1') else
					m_reg;
	m_tick <= '1' when (m_next = unsigned(a)) else '0';
	
	n_next <= (others => '0') when (n_reg = unsigned(b)) else 
					n_reg +1 when (c_tick='1' and senal_reg='0') else
					n_reg;
	n_tick <= '1' when (n_next = unsigned(b)) else '0';
	
	senal_next <= '0' when m_tick ='1' else 
					  '1' when n_tick ='1' else
					  senal_reg;
	--Salida
	senal_cuadrada <= senal_reg;
end Behavioral;

