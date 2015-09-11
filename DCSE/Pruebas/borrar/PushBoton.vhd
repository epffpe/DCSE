----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:57:23 02/07/2009 
-- Design Name: 
-- Module Name:    PushBoton - Behavioral 
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

entity PushBoton is
    Port ( clk : in  STD_LOGIC;
           pb : in  STD_LOGIC;
           event_pb : out  STD_LOGIC);
end PushBoton;

architecture Behavioral of PushBoton is

signal delay_pb : std_logic;

begin

  process(clk)
  begin
    if clk'event and clk='1' then

      delay_pb <= pb;
      if pb='1' and delay_pb='0' then
        event_pb <= '1';
       else
        event_pb <= '0';
      end if;
    end if;
  end process;

end Behavioral;

