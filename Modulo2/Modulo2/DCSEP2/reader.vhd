------------------------------------------------------------------------------
-- Fichero: RAMDUMP
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


-- The following code must appear before the "begin" keyword in the architecture
-- body.
constant ADDR_WIDTH : integer := 8;
constant DATA_WIDTH : integer := 8; 

type ram_type is array (2**ADDR_WIDTH-1 downto 0) of std_logic_vector (DATA_WIDTH-1 downto 0);
signal RAM: ram_type := (
    (X"44") , (X"69") , (X"73") , (X"65") , (X"f1") , (X"6f") , (X"20") , (X"64") , (X"65") , (X"20") ,
    (X"43") , (X"69") , (X"72") , (X"63") , (X"75") , (X"69") , (X"74") , (X"6f") , (X"73") , (X"20") ,
    (X"79") , (X"20") , (X"53") , (X"69") , (X"73") , (X"74") , (X"65") , (X"6d") , (X"61") , (X"73") ,
    (X"20") , (X"45") , (X"6c") , (X"65") , (X"63") , (X"74") , (X"72") , (X"f3") , (X"6e") , (X"69") ,
    (X"63") , (X"6f") , (X"73") , (X"2e") , (X"0a") , (X"45") , (X"73") , (X"74") , (X"61") , (X"20") ,
    (X"70") , (X"72") , (X"e1") , (X"63") , (X"74") , (X"69") , (X"63") , (X"61") , (X"20") , (X"66") ,
    (X"75") , (X"6e") , (X"63") , (X"69") , (X"6f") , (X"6e") , (X"61") , (X"20") , (X"73") , (X"6f") ,
    (X"62") , (X"72") , (X"65") , (X"20") , (X"6c") , (X"61") , (X"20") , (X"70") , (X"6c") , (X"61") ,
    (X"63") , (X"61") , (X"20") , (X"44") , (X"69") , (X"67") , (X"69") , (X"6c") , (X"65") , (X"6e") ,
    (X"74") , (X"20") , (X"53") , (X"70") , (X"61") , (X"72") , (X"74") , (X"61") , (X"6e") , (X"2d") ,
    (X"33") , (X"20") , (X"53") , (X"74") , (X"61") , (X"72") , (X"74") , (X"65") , (X"72") , (X"20") ,
    (X"42") , (X"6f") , (X"61") , (X"72") , (X"64") , (X"2e") , (X"0a") , (X"50") , (X"72") , (X"e1") ,
    (X"63") , (X"74") , (X"69") , (X"63") , (X"61") , (X"20") , (X"72") , (X"65") , (X"61") , (X"6c") ,
    (X"69") , (X"7a") , (X"61") , (X"64") , (X"61") , (X"20") , (X"70") , (X"6f") , (X"72") , (X"3a") ,
    (X"20") , (X"3c") , (X"64") , (X"63") , (X"73") , (X"65") , (X"30") , (X"38") , (X"33") , (X"31") ,
    (X"30") , (X"3e") , (X"2e") , (X"20") , (X"20") , (X"46") , (X"65") , (X"63") , (X"68") , (X"61") ,
    (X"3a") , (X"20") , (X"3c") , (X"30") , (X"32") , (X"2f") , (X"31") , (X"32") , (X"2f") , (X"32") ,
    (X"30") , (X"30") , (X"38") , (X"3e") , (X"2e") , (X"0a") , others => (X"00"));

-- If using Dual Port, 2 Clocks, 2 Read/Write Ports use the following definition for <ram_name>
--shared variable <ram_name>: <ram_type>;


--************************************************************************
--************************************************************************
--Falta la inicializacion




--
--type RAM_type is array (0 to (2047)) of std_logic_vector(7 downto 0);
--
--signal contador: std_logic_vector(2 downto 0);
--signal RAM : RAM_type := ("00000000","00000001","00000010","00000011","00000100","00000101","00000110",
--									"00000111",others =>"00000010");


signal addr : std_logic_vector(7 downto 0);
signal DI : std_logic_vector(7 downto 0);
signal ram_enable : std_logic;
signal write_enable : std_logic;
signal hold : std_logic;
type state_type is (s0,s1);
signal state : state_type;

begin

ram_enable <= '1';
write_enable <= '0';
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


process (clk)
begin
   if (clk'event and clk = '1') then
      if (ram_enable = '1') then 
         if (write_enable = '1') then
            RAM(conv_integer(addr)) <= DI;
            DO <= DI;
         else
            DO <= RAM(conv_integer(addr));
         end if;
      end if;
   end if;
end process;




     
end compor;