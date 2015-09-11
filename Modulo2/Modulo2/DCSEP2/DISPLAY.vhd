----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:10:25 12/06/2008 
-- Design Name: 
-- Module Name:    DISPLAY - Behavioral 
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

entity DISPLAY is
    Port ( clk50 : in  STD_LOGIC;
           rst_n : in  STD_LOGIC;
           data : in  STD_LOGIC_VECTOR (7 downto 0);
           digit_out : out  STD_LOGIC_VECTOR (3 downto 0);
           seg_out : out  STD_LOGIC_VECTOR (7 downto 0));
end DISPLAY;

architecture Behavioral of DISPLAY is

signal digit 		: std_logic_vector(3 downto 0) ;	-- 
signal seg 		: std_logic_vector(7 downto 0) ;	-- 
signal mhertz_count	: std_logic_vector(5 downto 0) ;	-- 
signal khertz_count	: std_logic_vector(9 downto 0) ;	-- 
signal hertz_count	: std_logic_vector(9 downto 0) ;	-- 
signal mhertz_en	: std_logic ;				-- 
signal khertz_en	: std_logic ;				-- 
signal hertz_en		: std_logic ;				-- 
signal bcdint		: std_logic_vector(15 downto 0) ;	-- 
signal curr		: std_logic_vector(3 downto 0) ;	-- 
signal cd		: std_logic_vector(2 downto 0) ;	-- 
signal point		: std_logic ;				-- 
signal dp		: std_logic ;				-- 





begin


-- generates a 1 Mhz signal from a 50 Mhz signal
process (clk50, rst_n)
begin
if rst_n = '0' then
	mhertz_count <= (others => '0') ;
	mhertz_en <= '0' ;
elsif clk50'event and clk50 = '1' then
	mhertz_count <= mhertz_count + 1 ;
	if mhertz_count = "110010" then
		mhertz_en <= '1' ;
		mhertz_count <= (others => '0') ;
	else 
		mhertz_en <= '0' ;
	end if ;
end if ;
end process ;												

-- generates a 1 kHz signal from a 1Mhz signal
process (clk50, rst_n)
begin
if rst_n = '0' then
	khertz_count <= (others => '0') ;
	khertz_en <= '0' ;
elsif clk50'event and clk50 = '1' then
	if mhertz_en = '1' then
		khertz_count <= khertz_count + 1 ;
		if khertz_count = "1111101000" then
			khertz_en <= '1' ;
			khertz_count <= (others => '0') ;
		else
			khertz_en <= '0' ;
		end if ;
	else
		khertz_en <= '0' ;
	end if ;
end if ;
end process ;

--generates a 1 Hz signal from a 1 kHz signal
process (clk50, rst_n)
begin
if rst_n= '0' then
	hertz_count <= (others => '0') ;
	hertz_en <= '0' ;
elsif clk50'event and clk50 = '1' then
	if khertz_en = '1' then
		hertz_count <= hertz_count + 1 ;
		if hertz_count = "1111101000" then
			hertz_en <= '1' ;
			hertz_count <= (others => '0') ;
		else
			hertz_en <= '0' ;
		end if ;
	else
		hertz_en <= '0' ;
	end if ;
end if ;
end process ;



bcdint(15 downto 8) <= (others => '0');
bcdint(7 downto 0) <= data;

dp <= '1';

-- shows how to multiplex outputs time counter to 7-segment display
process (clk50, rst_n)
begin
if rst_n= '0' then
	seg <= (others => '1') ;
	digit <= (others => '1') ;
	cd <= (others => '0') ;
	curr <= (others => '0') ;
elsif clk50'event and clk50 = '1' then
	cd(2) <= '1' ;
	if khertz_en = '1' then
		cd(1 downto 0) <= cd(1 downto 0) + 1 ;
	end if ;
	case cd(1 downto 0) is 
		when "00" =>   curr <= bcdint(3 downto 0) ;   digit <= "1110" ;
		when "01" =>   curr <= bcdint(7 downto 4) ;   digit <= "1101" ;
		when "10" =>   curr <= bcdint(11 downto 8) ;  digit <= "1011" ;
		when others => curr <= bcdint(15 downto 12) ; digit <= "0111" ;
	end case ;
	if cd(2) = '1' then 
		case curr is 
			when "0000" => seg <= "0000001" & dp ; 
			when "0001" => seg <= "1001111" & dp ;
			when "0010" => seg <= "0010010" & dp ;
			when "0011" => seg <= "0000110" & dp ;
			when "0100" => seg <= "1001100" & dp ;
			when "0101" => seg <= "0100100" & dp ;
			when "0110" => seg <= "0100000" & dp ;
			when "0111" => seg <= "0001111" & dp ;
			when "1000" => seg <= "0000000" & dp ;
			when "1001" => seg <= "0000100" & dp ;
			when "1010" => seg <= "0001001" & dp ;   --> A
			when "1011" => seg <= "0000000" & '0';   --> B.
			when "1100" => seg <= "0110001" & dp ;   --> C
			when "1101" => seg <= "0000001" & '0' ;  --> D.
			when "1110" => seg <= "0110000" & dp ;	  --> E
			when "1111" => seg <= "0111000" & dp ;   --> F
			when others => seg <= "1111110" & '0';   --> -
		end case ;
	else
		seg <= (others => '1') ;
	end if ;
end if ;
end process ;
seg_out <= seg;
digit_out <= digit;

end Behavioral;

