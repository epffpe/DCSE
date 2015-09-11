----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:52:28 08/19/2009 
-- Design Name: 
-- Module Name:    flag_buf - Behavioral 
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

entity flag_buf is
	 generic(W:integer :=8);
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clr_flag : in  STD_LOGIC;
           set_flag : in  STD_LOGIC;
           din : in  STD_LOGIC_VECTOR (W-1 downto 0);
           dout : out  STD_LOGIC_VECTOR (W-1 downto 0);
           flag : out  STD_LOGIC);
end flag_buf;

architecture Behavioral of flag_buf is
	signal buf_reg, buf_next : std_logic_vector(W-1 downto 0);
	signal flag_reg, flag_next : std_logic;
begin

	--FF & registros
	process(clk,reset)
	begin
		if reset = '1' then
			buf_reg <= (others => '0');
			flag_reg <= '0';
		elsif (clk'event and clk='1') then
			buf_reg <= buf_next;
			flag_reg <= flag_next;
		end if;
	end process;
	
	--logica de estado siguiente
	process(buf_reg, flag_reg,set_flag,clr_flag,din)
	begin
		buf_next <= buf_reg;
		flag_next <= flag_reg;
		if ( set_flag ='1') then
			buf_next <= din;
			flag_next <= '1';
		elsif (clr_flag = '1') then
			flag_next <= '0';
		end if;
	end process;

	--logica de salida
	dout <= buf_reg;
	flag <= flag_reg;

end Behavioral;

