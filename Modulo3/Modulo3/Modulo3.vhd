----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:47:37 02/10/2009 
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
           modo_in : in  STD_LOGIC;
           pb_in : in  STD_LOGIC_VECTOR (3 downto 0);
           rot_in : in  STD_LOGIC_VECTOR (1 downto 0);
           rot_press_in : in  STD_LOGIC;
           lcd_data_out : out  STD_LOGIC_VECTOR (7 downto 0);
           lcd_e_out : out  STD_LOGIC;
           lcd_rs_out : out  STD_LOGIC;
           lcd_rw_out : out  STD_LOGIC;
           leds_out : out  STD_LOGIC_VECTOR (7 downto 0));
end Modulo3;

architecture Behavioral of Modulo3 is

begin


end Behavioral;

