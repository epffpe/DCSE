----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:22:37 02/05/2009 
-- Design Name: 
-- Module Name:    Interfaz - Behavioral 
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

entity Interfaz is
    Port ( clk : in  STD_LOGIC;
           rotatory_in : in  STD_LOGIC_VECTOR(1 downto 0);
           rotatory_press : in  STD_LOGIC;
           pb : in  STD_LOGIC_VECTOR (3 downto 0);
			  modo_in : in std_logic;
           rst : out  STD_LOGIC;
           rotatory_event : out  STD_LOGIC;
           rotatory_left : out  STD_LOGIC;
           press_out : out  STD_LOGIC;
           pb_out : out  STD_LOGIC_VECTOR (3 downto 0);
			  modo_out : out std_logic);
end Interfaz;

architecture Behavioral of Interfaz is
--
--	COMPONENT div_debouncer
--	PORT(
--		clk : IN std_logic;          
--		clk10ms : OUT std_logic
--		);
--	END COMPONENT;
--
--	COMPONENT DEBOUNCER
--	PORT(
--		clk10ms : IN std_logic;
--		rst_n : IN std_logic;
--		hold_in : IN std_logic;          
--		hold_out : OUT std_logic
--		);
--	END COMPONENT;
--	
	
------------------------------------------------------------------------------------
--
-- Signals used to interface to rotary encoder
--
signal      rotary_a_in : std_logic;
signal      rotary_b_in : std_logic;
signal  rotary_press_in : std_logic;
signal        rotary_in : std_logic_vector(1 downto 0);
signal        rotary_q1 : std_logic;
signal        rotary_q2 : std_logic;
signal  delay_rotary_q1 : std_logic;
signal     rotary_event : std_logic;
signal      rotary_left : std_logic;

-----------------------------------------------------------------------------------------
-- Contador
-----------------------------------------------------------------------------------------
--signal temp : std_logic_vector (13 downto 0);
--signal clk10ms : std_logic;
-----------------------------------------------------------------------------------------
-- Botones
-----------------------------------------------------------------------------------------
--signal rst_n : std_logic;
signal btn_north : std_logic;
signal btn_south : std_logic;
signal btn_east : std_logic;
signal btn_west : std_logic;
--signal pb_east : std_logic;
--signal pb_west : std_logic;
signal modo : std_logic;

begin

----------------------------------------------------------------------------------------------------------
-- Asignacion Señales de entrada
----------------------------------------------------------------------------------------------------------
--Synchronise inputs to clock domain using flip-flops in input/output blocks.
process(clk)
begin
	if clk'event and clk='1' then
 		btn_north <= pb(3);
		btn_south <= pb(2);
		btn_east <= pb(1);
		btn_west <= pb(0);
		modo <= modo_in;
		rotary_press_in <= rotatory_press;
----------------------------------------------------------------------------------------------------------
-- Reset interno
----------------------------------------------------------------------------------------------------------
--		rst_n <= btn_east and btn_west;
	end if;
end process;




----------------------------------------------------------------------------------------------------------
-- Asignacion Señales de Salida
----------------------------------------------------------------------------------------------------------
process(clk)
begin
	if clk'event and clk='1' then
		
		rotatory_event <= rotary_event;
		rotatory_left <= rotary_left;
	end if;
end process;
		rst <= btn_east and btn_west;
		pb_out(3) <= btn_north;
		pb_out(2) <= btn_south;
		pb_out(1) <= btn_east;
		pb_out(0) <= btn_west;
		press_out <= rotary_press_in;
		modo_out <= modo;



------------------------------------------------------------------------------------------------------------
-- Divisor de Reloj   10ms/640ns ~= 2^13
------------------------------------------------------------------------------------------------------------

--process (clk)
--begin
--	if (clk'event and clk='1') then
--		temp <= temp + '1';
--	end if;
--  
--end process;
--clk10ms <= temp(13);

--	Inst_div_debouncer: div_debouncer PORT MAP(
--		clk => clk,
--		clk10ms => clk10ms
--	);
--
----------------------------------------------------------------------------------------------------------------
---- Instanciados -> Botones
-------------------------------------------------------------------------------------------------------------
--	Inst_Norte: DEBOUNCER PORT MAP(
--		clk10ms => clk10ms,
--		rst_n => rst_n,
--		hold_in => btn_north,
--		hold_out => pb_out(3)
--	);
--	Inst_Sur: DEBOUNCER PORT MAP(
--		clk10ms => clk10ms,
--		rst_n => rst_n,
--		hold_in => btn_south,
--		hold_out => pb_out(2)
--	);
--	Inst_este: DEBOUNCER PORT MAP(
--		clk10ms => clk10ms,
--		rst_n => rst_n,
--		hold_in => btn_east,
--		hold_out => pb_east
--	);
--	Inst_oeste: DEBOUNCER PORT MAP(
--		clk10ms => clk10ms,
--		rst_n => rst_n,
--		hold_in => btn_west,
--		hold_out => pb_west
--	);
--	Inst_rotatory_press: DEBOUNCER PORT MAP(
--		clk10ms => clk10ms,
--		rst_n => rst_n,
--		hold_in => rotary_press_in,
--		hold_out => press_out
--	);
--	Inst_Modo: DEBOUNCER PORT MAP(
--		clk10ms => clk10ms,
--		rst_n => rst_n,
--		hold_in => modo,
--		hold_out => modo_out
--	);
	

----------------------------------------------------------------------------------------------------------------------------------
-- Interface to rotary encoder.
-- Detection of movement and direction.
----------------------------------------------------------------------------------------------------------------------------------


rotary_filter: process(clk)
  begin
    if clk'event and clk='1' then
		--Synchronise inputs to clock domain using flip-flops in input/output blocks.
      rotary_a_in <= rotatory_in(0);
      rotary_b_in <= rotatory_in(1);
      --concatinate rotary input signals to form vector for case construct.
      rotary_in <= rotary_b_in & rotary_a_in;

      case rotary_in is

        when "00" => rotary_q1 <= '0';         
                     rotary_q2 <= rotary_q2;
 
        when "01" => rotary_q1 <= rotary_q1;
                     rotary_q2 <= '0';

        when "10" => rotary_q1 <= rotary_q1;
                     rotary_q2 <= '1';

        when "11" => rotary_q1 <= '1';
                     rotary_q2 <= rotary_q2; 

        when others => rotary_q1 <= rotary_q1; 
                       rotary_q2 <= rotary_q2; 
      end case;

    end if;
  end process rotary_filter;
  --
  -- The rising edges of 'rotary_q1' indicate that a rotation has occurred and the 
  -- state of 'rotary_q2' at that time will indicate the direction. 
  --
  direction: process(clk)
  begin
    if clk'event and clk='1' then

      delay_rotary_q1 <= rotary_q1;
      if rotary_q1='1' and delay_rotary_q1='0' then
        rotary_event <= '1';
        rotary_left <= rotary_q2;
       else
        rotary_event <= '0';
        rotary_left <= rotary_left;
      end if;

    end if;
  end process direction;


end Behavioral;

