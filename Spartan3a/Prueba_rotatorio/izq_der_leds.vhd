----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:23:01 05/11/2008 
-- Design Name: 
-- Module Name:    izq_der_leds - Behavioral 
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

entity izq_der_leds is
    Port ( led : out  STD_LOGIC_VECTOR (7 downto 0);
           rotary_a : in  STD_LOGIC;
           rotary_b : in  STD_LOGIC;
           rotary_press : in  STD_LOGIC;
           clk_in : in  STD_LOGIC);
end izq_der_leds;

architecture Behavioral of izq_der_leds is

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
--
-- Signals used to drive LEDs
--
signal      led_pattern : std_logic_vector(7 downto 0):= "00010000"; --initial value puts one LED on near the middle.
signal        led_drive : std_logic_vector(7 downto 0);
--
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
signal clkbuff : std_logic;
signal clk0_out : std_logic;
signal clk : std_logic;

	COMPONENT Reloj
	PORT(
		CLKIN_IN : IN std_logic;          
		CLKDV_OUT : OUT std_logic;
		CLKIN_IBUFG_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic
		);
	END COMPONENT;

-- 
--
--	COMPONENT kcpsm3
--	PORT(
--		instruction : IN std_logic_vector(17 downto 0);
--		in_port : IN std_logic_vector(7 downto 0);
--		interrupt : IN std_logic;
--		reset : IN std_logic;
--		clk : IN std_logic;          
--		address : OUT std_logic_vector(9 downto 0);
--		port_id : OUT std_logic_vector(7 downto 0);
--		write_strobe : OUT std_logic;
--		out_port : OUT std_logic_vector(7 downto 0);
--		read_strobe : OUT std_logic;
--		interrupt_ack : OUT std_logic
--		);
--	END COMPONENT;
----
--signal instruction : std_logic_vector(17 downto 0);
--signal in_port : std_logic_vector(7 downto 0);
--signal interrupt : std_logic;
--signal reset : IN std_logic;
--signal address : std_logic_vector(9 downto 0);
--signal port_id : std_logic_vector(7 downto 0);
--signal write_strobe : std_logic;
--signal out_port : std_logic_vector(7 downto 0);
--signal read_strobe : std_logic;
--signal interrupt_ack : std_logic

begin
  --
  ----------------------------------------------------------------------------------------------------------------------------------
  -- Interface to rotary encoder.
  -- Detection of movement and direction.
  ----------------------------------------------------------------------------------------------------------------------------------
  --
  -- The rotary switch contacts are filtered using their offset (one-hot) style to  
  -- clean them. Circuit concept by Peter Alfke.
  -- Note that the clock rate is fast compared with the switch rate.
--  
  	Inst_Reloj: Reloj PORT MAP(
		CLKIN_IN => clk_in,
		CLKDV_OUT => clk,
		CLKIN_IBUFG_OUT => clkbuff,
		CLK0_OUT => clk0_out
	);
	
	
	
--	Inst_kcpsm3: kcpsm3 PORT MAP(
--		address => address,
--		instruction => instruction,
--		port_id => port_id,
--		write_strobe => write_strobe,
--		out_port => out_port,
--		read_strobe => read_strobe,
--		in_port => in_port,
--		interrupt => interrupt,
--		interrupt_ack => interrupt_ack,
--		reset => reset,
--		clk => clk
--	);


  rotary_filter: process(clk)
  begin
    if clk'event and clk='1' then

      --Synchronise inputs to clock domain using flip-flops in input/output blocks.
      rotary_a_in <= rotary_a;
      rotary_b_in <= rotary_b;
      rotary_press_in <= rotary_press;

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
  --
  --
  ----------------------------------------------------------------------------------------------------------------------------------
  -- LED control.
  ----------------------------------------------------------------------------------------------------------------------------------
  --
  -- The LED pattern is provided by a shift register which has been initialised in the signal 
  -- definition to have only one bit active (High). 
  --
  led_display: process(clk)
  begin
    if clk'event and clk='1' then

      if rotary_event='1' then
        if rotary_left='1' then 
          led_pattern <= led_pattern(6 downto 0) & led_pattern(7); --rotate LEDs to left
         else
          led_pattern <= led_pattern(0) & led_pattern(7 downto 1); --rotate LEDs to right
        end if;
      end if;

     --
     -- Pressing the rotary encoder will cause all LED drive bits to be inverted.
     --

      if rotary_press_in='0' then
        led_drive <= led_pattern; 
       else
        led_drive <= led_pattern xor "11111111";  
      end if;

      --Ouput LED drive to the pins making use of the output flip-flops in input/output blocks.
      led <= led_drive; 

    end if;
  end process led_display;
  --


end Behavioral;

