----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:19:36 02/05/2009 
-- Design Name: 
-- Module Name:    DatosLCD - Behavioral 
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

entity DatosLCD is
    Port ( clk : in  STD_LOGIC;
           rst_n : in  STD_LOGIC;
           pb_sel : in  STD_LOGIC_VECTOR (1 downto 0);
           incrementa : in  STD_LOGIC;
           caracteres : out  STD_LOGIC_VECTOR (7 downto 0));
end DatosLCD;

architecture Behavioral of DatosLCD is

signal sel : std_logic_vector(3 downto 0);
------------------------------------------------------------------------------------------------------------
-- Contador de caracteres
------------------------------------------------------------------------------------------------------------	
signal norte : std_logic_vector (7 downto 0);-- := (others => '0');
signal sur : std_logic_vector (7 downto 0); --:= (others => '0');
signal este : std_logic_vector (3 downto 0); --:= (others => '0');
signal oeste : std_logic_vector (3 downto 0); --:= (others => '0'); -- 16 caracteres
------------------------------------------------------------------------------------------------------------
-- Inicio de cuenta
------------------------------------------------------------------------------------------------------------	
signal offset_norte : std_logic_vector (7 downto 0);
signal offset_sur : std_logic_vector (7 downto 0);
signal offset_este : std_logic_vector (7 downto 0);
signal offset_oeste : std_logic_vector (7 downto 0);
------------------------------------------------------------------------------------------------------------
-- Habilitadores de incremento
------------------------------------------------------------------------------------------------------------	
signal inc_north : std_logic;
signal inc_south : std_logic;
signal inc_east : std_logic;
signal inc_west : std_logic;

begin

offset_norte <=X"41";--A 
offset_sur <=X"61";  --a
offset_este <=X"30"; --0
offset_oeste <=X"20";--espacio en blanco


process(pb_sel)
begin
case pb_sel is
	when "00"=> sel <="0001";	
	when "01"=> sel <="0010";
	when "10"=> sel <="0100";
	when others => sel <="1000";
end case;
end process;
inc_north <= incrementa and sel(3);
inc_south <= incrementa and sel(2);
inc_east <=  incrementa and sel(1);
inc_west <=  incrementa and sel (0);


--inc_north <= pb_control(3);
--inc_south <= pb_control(2);
--inc_east <= pb_control(1);
--inc_west <= pb_control(0);

BTN_North:	process (clk,rst_n)
				begin
					if (rst_n='0') then
						norte <= (others => '0');
					elsif (clk'event and clk='1') then
						if (inc_north='1') then
							if (norte < X"1B") then  -- Cuenta hasta 27
								norte <= norte + 1;
							else
								norte <= (others => '0');
							end if;
						end if;
					end if;
					
				end process;
BTN_South:	process (clk,rst_n)
				begin
					if (rst_n='0') then
						sur <= (others => '0');
					elsif (clk'event and clk='1') then
						if (inc_south='1') then
							if (sur < X"1B") then  -- Cuenta hasta 27
								sur <= sur + 1;
							else
								sur <= (others => '0');
							end if;
						end if;
					end if;
					
				end process;
BTN_East:	process (clk,rst_n)
				begin
					if (rst_n='0') then
						este <= (others => '0');
					elsif (clk'event and clk='1') then
						if (inc_east='1') then
							if (este < X"A") then  -- Cuenta hasta 10
								este <= este + 1;
							else
								este <= (others => '0');
							end if;
						end if;
					end if;
					
				end process;
BTN_West:	process (clk,rst_n)
				begin
					if (rst_n='0') then
						oeste <= (others => '0');
					elsif (clk'event and clk='1') then
						if (inc_west='1') then
							oeste <= oeste + 1;
						end if;
					end if;
					
				end process;

process(norte,sur,este,oeste,pb_sel)
begin
case pb_sel is
	when "00" => caracteres <= offset_oeste + (X"0" & oeste);
	when "01" => caracteres <= offset_este + (X"0" & este);
	when "10" => caracteres <= offset_sur + sur;
	when others => caracteres <= offset_norte + norte;
end case;

end process;

end Behavioral;

