----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:27:19 11/11/2008 
-- Design Name: 
-- Module Name:    counter - Behavioral 
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

entity counter is
    Port ( clk : in  STD_LOGIC;
           direction : in  STD_LOGIC;
           counter_out : out  STD_LOGIC_VECTOR (3 downto 0));
end counter;

architecture Behavioral of counter is

signal counter_in : std_logic_vector(3 downto 0) := "0000";

	COMPONENT clkscale
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		divsel : IN std_logic_vector(3 downto 0);          
		clkout : OUT std_logic
		);
	END COMPONENT;
	
		COMPONENT tickgen
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;          
		tick : OUT std_logic
		);
	END COMPONENT;
	
signal rst_n :std_logic :='1';
signal divsel : std_logic_vector(3 downto 0);
signal clkout : std_logic;
signal clk : std_logic;

begin

divsel <= '111';
process (clk) 
begin
   if clk='1' and clk'event then
      if direction='1' then   
         counter_in <= counter_in + 1;
      else
         counter_in <= counter_in - 1;
      end if;
   end if;
end process;
 
counter_out <= counter_in;

	Inst_clkscale: clkscale PORT MAP(
		clk => clock,
		rst_n => rst_n,
		divsel => divsel,
		clkout => clkout
	);

		Inst_tickgen: tickgen PORT MAP(
		clk => clk_out,
		rst_n => rst_n,
		tick => clk
	);					

end Behavioral;

