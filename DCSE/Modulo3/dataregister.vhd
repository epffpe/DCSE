----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:10:19 01/20/2009 
-- Design Name: 
-- Module Name:    dataregister - Behavioral 
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

entity dataregister is
    Port ( clk : in  STD_LOGIC;
           rst_n : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (8 downto 0);
           sel2 : in  STD_LOGIC;
           dr : in  STD_LOGIC;
           sel_out : in  STD_LOGIC;
           rs : out  STD_LOGIC;
           data_out : out  STD_LOGIC_VECTOR (3 downto 0));
end dataregister;

architecture Behavioral of dataregister is

-- type registro_type is array of std_logic_vector (8 downto 0);
signal registro : std_logic_vector (8 downto 0);
signal data :  STD_LOGIC_VECTOR (3 downto 0);
begin

data <= "0000" when (sel2='0') else data_in(7 downto 4);

-- Usage of Asynchronous resets may negatively impact FPGA resources 
-- and timing. In general faster and smaller FPGA designs will 
-- result from not using Asynchronous Resets. Please refer to 
-- the Synthesis and Simulation Design Guide for more information.
process (clk, rst_n)
begin
   if rst_n='0' then   
      registro <= (others =>'0');
   elsif (clk'event and clk='1') then 
      if dr = '1' then 
         registro <= data_in(8) & data & data_in(3 downto 0);
      end if; 
   end if;
end process;

rs <= registro(8);

data_out <= registro(7 downto 4) when (sel_out='0') else registro(3 downto 0);

						


end Behavioral;

