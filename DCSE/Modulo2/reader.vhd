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
signal RAM: ram_type := ("00000000","00000001","00000010","00000011","00000100","00000101","00000110",
									"00000111",others =>"00000010");

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



--
----increments time counter for 7-segment display based on 1 hertz signal
--process (clk50, rst)
--begin
--if rst = '1' then
--	bcdint <= (others => '0') ;
--elsif clk50'event and clk50 = '1' then	
--	if hertz_en = '1' then	
--		if bcdint(3 downto 0) = "1001" then 					
--			if bcdint(7 downto 4) = "0101" then 					
--				if bcdint(11 downto 8) = "1001" then 					
--					if bcdint(15 downto 12) = "0101" then 					
--						bcdint <= "0000000000000000" ;
--					else
--						bcdint <= (bcdint(15 downto 12) + 1) & "000000000000" ;
--					end if ;
--				else
--					bcdint <= bcdint(15 downto 12) & (bcdint(11 downto 8) + 1) & "00000000" ;
--				end if ;
--			else
--				bcdint <= bcdint(15 downto 8) & (bcdint(7 downto 4) + 1) & "0000" ;
--			end if ;
--		else
--			bcdint <= bcdint(15 downto 4) & (bcdint(3 downto 0) + 1) ;
--		end if ;
--	end if ;
--end if ;
--end process ;
--
--
---- shows how to multiplex outputs time counter to 7-segment display
--process (clk50, rst)
--begin
--if rst = '1' then
--	seg <= (others => '1') ;
--	digit <= (others => '1') ;
--	cd <= (others => '0') ;
--	curr <= (others => '0') ;
--elsif clk50'event and clk50 = '1' then
--	cd(2) <= '1' ;
--	if khertz_en = '1' then
--		cd(1 downto 0) <= cd(1 downto 0) + 1 ;
--	end if ;
--	case cd(1 downto 0) is 
--		when "00" =>   curr <= bcdint(3 downto 0) ;   digit <= "1110" ;
--		when "01" =>   curr <= bcdint(7 downto 4) ;   digit <= "1101" ;
--		when "10" =>   curr <= bcdint(11 downto 8) ;  digit <= "1011" ;
--		when others => curr <= bcdint(15 downto 12) ; digit <= "0111" ;
--	end case ;
--	if cd(2) = '1' then 
--		case curr is 
--			when "0000" => seg <= "0000001" & dp ; 
--			when "0001" => seg <= "1001111" & dp ;
--			when "0010" => seg <= "0010010" & dp ;
--			when "0011" => seg <= "0000110" & dp ;
--			when "0100" => seg <= "1001100" & dp ;
--			when "0101" => seg <= "0100100" & dp ;
--			when "0110" => seg <= "0100000" & dp ;
--			when "0111" => seg <= "0001111" & dp ;
--			when "1000" => seg <= "0000000" & dp ;
--			when others => seg <= "0000100" & dp ;
--		end case ;
--	else
--		seg <= (others => '1') ;
--	end if ;
--end if ;
--end process ;						
--


     
end compor;