----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Eugenio Peñate Fariñas <epf.supersonic@gmail.com>
-- 
-- Create Date:    18:11:33 12/05/2008 
-- Design Name: 
-- Module Name:    DCSEP2 - Behavioral 
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

entity DCSEP2 is
    Port ( clk50 : in  STD_LOGIC;
           rst_n : in  STD_LOGIC;
           hold : in  STD_LOGIC;
			  up_down : in  STD_LOGIC;
           inter : in  STD_LOGIC_VECTOR (1 downto 0);
           seg_out : out  STD_LOGIC_VECTOR (7 downto 0);
           digit_out : out  STD_LOGIC_VECTOR (3 downto 0));
end DCSEP2;

architecture Behavioral of DCSEP2 is

	COMPONENT ramdump
	PORT(
		clk50 : IN std_logic;
		rst_n : IN std_logic;
		inter : IN std_logic_vector(1 downto 0);
		hold : IN std_logic;
		up_down : IN std_logic;          
		data : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	
		COMPONENT DISPLAY
	PORT(
		clk50 : IN std_logic;
		rst_n : IN std_logic;
		data : IN std_logic_vector(7 downto 0);          
		digit_out : OUT std_logic_vector(3 downto 0);
		seg_out : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

signal data : STD_LOGIC_VECTOR (7 downto 0);


begin

	Inst_ramdump: ramdump PORT MAP(
		clk50 => clk50,
		rst_n => rst_n,
		inter => inter,
		hold => hold,
		up_down => up_down,
		data => data
	);
	
	Inst_DISPLAY: DISPLAY PORT MAP(
		clk50 => clk50,
		rst_n => rst_n,
		data => data,
		digit_out => digit_out,
		seg_out => seg_out
	);



end Behavioral;

