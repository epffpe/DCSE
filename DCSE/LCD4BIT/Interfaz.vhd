----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:29:25 02/06/2009 
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
           rotatory_in : in  STD_LOGIC_VECTOR (1 downto 0);
           rotatory_press_in : in  STD_LOGIC;
           pb_in : in  STD_LOGIC_VECTOR (3 downto 0);
           modo_in : in  STD_LOGIC;
           rst_n : out  STD_LOGIC;
           rotatory_event : out  STD_LOGIC;
           rotatory_left : out  STD_LOGIC;
           rot_press_out : out  STD_LOGIC;
           modo_out : out  STD_LOGIC;
           pb_out : out  STD_LOGIC_VECTOR (3 downto 0));
end Interfaz;

architecture Behavioral of Interfaz is


	COMPONENT DEBOUNCER
	PORT(
		clk10ms : IN std_logic;
		rst_n : IN std_logic;
		hold_in : IN std_logic;          
		hold_out : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT divDEBOUNCER
	PORT(
		clk390 : IN std_logic;
		rst_n : IN std_logic;          
		clk10ms : OUT std_logic
		);
	END COMPONENT;


------------------------------------------------------------------------------------
--
-- Señales usadas para la codificacion del rotatory
--
signal      rotary_a_in : std_logic;
signal      rotary_b_in : std_logic;
signal        rotary_in : std_logic_vector(1 downto 0);
signal        rotary_q1 : std_logic;
signal        rotary_q2 : std_logic;
signal  delay_rotary_q1 : std_logic;
signal     rotary_event : std_logic;
signal      rotary_left : std_logic;

------------------------------------------------------------------------------------
--
-- Señales para sincronizar I/O
--
signal rotatory_press :  STD_LOGIC;
signal event_rotatory_press :  STD_LOGIC;
signal pb0 :  STD_LOGIC;
signal pb1 :  STD_LOGIC;
signal pb2 :  STD_LOGIC;
signal pb3 :  STD_LOGIC;
signal event_pb0 :  STD_LOGIC;
signal event_pb1 :  STD_LOGIC;
signal event_pb2 :  STD_LOGIC;
signal event_pb3 :  STD_LOGIC;
signal modo : STD_LOGIC;
signal rst : STD_LOGIC;

signal reset : std_logic;
signal clk10ms : std_logic;


begin
------------------------------------------------------------------------------------
--
-- Sicronizacion de las I/O con el reloj del sistema
------------------------------------------------------------------------------------
	entradas: process(clk)
					begin
					if clk'event and clk='1' then
						rotatory_press <= rotatory_press_in;
						pb0 <= pb_in(0);
						pb1 <= pb_in(1);
						pb2 <= pb_in(2);
						pb3 <= pb_in(3);
						modo <= modo_in;
					end if;
				end process;

	Salidas:	process(clk)
					begin
					if clk'event and clk='1' then
						pb_out(0) <= event_pb0;
						pb_out(1) <= event_pb1;
						pb_out(2) <= event_pb2;
						pb_out(3) <= event_pb3;
						rot_press_out <= event_rotatory_press;
						rst_n <= rst;
					end if;
				end process;
				
rst <= event_pb1 nand event_pb0;

rotatory_event <= rotary_event;
rotatory_left <= rotary_left;

modo_out <= modo;
-----------------------------------------------------------------------------------------
reset <= '1';
	Inst_divDEBOUNCER: divDEBOUNCER PORT MAP(
		clk390 => clk,
		rst_n => reset,
		clk10ms => clk10ms
	);


-------------------------------------------------------------------------------------------------------
	Inst_pb0: DEBOUNCER PORT MAP(
		clk10ms => clk10ms,
		rst_n => reset,
		hold_in => pb0,
		hold_out => event_pb0
	);
	Inst_pb1: DEBOUNCER PORT MAP(
		clk10ms => clk10ms,
		rst_n => reset,
		hold_in => pb1,
		hold_out => event_pb1
	);

	Inst_pb2: DEBOUNCER PORT MAP(
		clk10ms => clk10ms,
		rst_n => reset,
		hold_in => pb2,
		hold_out => event_pb2
	);

	Inst_pb3: DEBOUNCER PORT MAP(
		clk10ms => clk10ms,
		rst_n => reset,
		hold_in => pb3,
		hold_out => event_pb3
	);

	Inst_rotatory_press: DEBOUNCER PORT MAP(
		clk10ms => clk10ms,
		rst_n => reset,
		hold_in => rotatory_press,
		hold_out => event_rotatory_press
	);



------------------------------------------------------------------------------------
--
-- Filtro del Rotatory
------------------------------------------------------------------------------------
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

