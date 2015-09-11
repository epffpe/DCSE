------------------------------------------------------------------------------
-- Fichero: reader
-- Modulo: 
-- Autor: Eugenio Peñate Fariñas <epf.supersonic@gmail.com>
-- Fecha: 14/10/2008
-- Descripción:
--        
-- Modificaciones:
--    Quien:
--    Fecha:
--    Motivo:
--------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
library UNISIM;
use UNISIM.vcomponents.all; 

entity reader is
    port(clk, rst_n : in std_logic;
			hold_in : in std_logic;
			up_down : in  STD_LOGIC;
			--addr : in std_logic_vector(8 downto 0);
         --DI   : in std_logic_vector(7 downto 0);
			DO   : out std_logic_vector(7 downto 0));
end reader;

architecture compor of reader is

component RAM 
	port (
	clka: IN std_logic;
	dina: IN std_logic_VECTOR(7 downto 0);
	addra: IN std_logic_VECTOR(7 downto 0);
	wea: IN std_logic_VECTOR(0 downto 0);
	douta: OUT std_logic_VECTOR(7 downto 0));
end component;



signal addr : std_logic_vector(7 downto 0);
signal DI : std_logic_vector(7 downto 0);
signal ram_enable : std_logic;
signal write_enable : std_logic_vector(0 downto 0);
signal hold : std_logic;
type state_type is (s0,s1);
signal state : state_type;

begin

ram_enable <= '1';
write_enable <= "0";
DI <= (others => '0');
      
                   
-------------------------------------------------------------------------
--Direccion de la RAM   
process (clk, rst_n)
begin
	if (rst_n='0') then
		state <= s0;
		hold <= '0';
	elsif (clk='0' and clk'event) then 
		case state is
			when s0 => if hold_in='0' then state <= s0;
							else state <= s1;
							end if;
							hold <= '0';
			when s1 => if hold_in ='0' then state <= s1;
							else state <= s0;
							end if;
							hold <= '1';
		end case;
	end if;
end process;




process (clk, rst_n)
begin

	if rst_n='0' then
		addr <="00000000";
	elsif (clk='1' and clk'event) then
		if(hold='0') then
			if (up_down='1') then
				addr <= addr + 1;
			else
				addr <= addr - 1;
			end if;
		end if;
	end if;

end process;


U0 : RAM
		port map (
			clka => clk,
			dina => DI,
			addra => addr,
			wea => write_enable,
			douta => DO);

     
end compor;