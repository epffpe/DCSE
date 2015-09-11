----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:10:54 01/19/2009 
-- Design Name: 
-- Module Name:    Modulo3 - Behavioral 
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

entity Modulo3 is
    Port ( clk50 : in  STD_LOGIC;
           nidi : in  STD_LOGIC;
           pb : in  STD_LOGIC_VECTOR (3 downto 0);
           rot : in  STD_LOGIC_VECTOR (2 downto 0);
           lcd_data : out  STD_LOGIC_VECTOR (3 downto 0);
           lcd_e : out  STD_LOGIC;
           lcd_rs : out  STD_LOGIC;
           lcd_rw : out  STD_LOGIC);
end Modulo3;

architecture Behavioral of Modulo3 is

begin


end Behavioral;

