--Written by Rahul Vora
--for the University of New Mexico
--rhlvora@gmail.com

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lcd is
	port(
	clk, reset : in bit;
	SF_D, LCD_DB : out bit_vector(3 downto 0);
	LCD_E, LCD_RS, LCD_RW : out bit; -- SF_CE0 
	LED : out bit_vector(7 downto 0) );
end lcd;

architecture behavior of lcd is

type tx_sequence is (high_setup, high_hold, oneus, low_setup, low_hold, fortyus, done);
signal tx_state : tx_sequence := done;
signal tx_byte : bit_vector(7 downto 0);
signal tx_init : bit := '0';

type init_sequence is (idle, fifteenms, one, two, three, four, five, six, seven, eight, done);
signal init_state : init_sequence := idle;
signal init_init, init_done : bit := '0';

signal i : integer range 0 to 750000 := 0;
signal i2 : integer range 0 to 2000 := 0;
signal i3 : integer range 0 to 82000 := 0;

signal SF_D0, SF_D1 : bit_vector(3 downto 0);
signal LCD_E0, LCD_E1 : bit;
signal mux : bit;

type display_state is (init, function_set, entry_set, set_display, clr_display, pause, set_addr, char_f, char_p, char_g, char_a, done);
signal cur_state : display_state := init;

begin
	LED <= tx_byte; --for diagnostic purposes
	LCD_DB <= "1111";
--	SF_CE0 <= '1'; --disable intel strataflash
	LCD_RW <= '0'; --write only

	--The following "with" statements simplify the process of adding and removing states.

	--when to transmit a command/data and when not to
	with cur_state select
		tx_init <= '0' when init | pause | done,
			'1' when others;

	--control the bus
	with cur_state select
		mux <= '1' when init,
			'0' when others;

	--control the initialization sequence
	with cur_state select
		init_init <= '1' when init,
			'0' when others;
	
	--register select
	with cur_state select
		LCD_RS <= '0' when function_set|entry_set|set_display|clr_display|set_addr,
			'1' when others;

	--what byte to transmit to lcd
	--refer to datasheet for an explanation of these values
	with cur_state select
		tx_byte <= "00101000" when function_set,
			"00000110" when entry_set,
			"00001100" when set_display,
			"00000001" when clr_display,
			"10000000" when set_addr,
			"01000110" when char_f,
			"01010000" when char_p,
			"01000111" when char_g,
			"01000001" when char_a,
			"00000000" when others;
		
	--main state machine
	display: process(clk, reset)
	begin
		if(reset='1') then
			cur_state <= function_set;
		elsif(clk='1' and clk'event) then
			case cur_state is
				--refer to intialize state machine below
				when init =>
					if(init_done = '1') then
						cur_state <= function_set;
					else
						cur_state <= init;
					end if;

				--every other state but pause uses the transmit state machine
				when function_set =>
					if(i2 = 2000) then
						cur_state <= entry_set;
					else
						cur_state <= function_set;
					end if;	
				
				when entry_set =>
					if(i2 = 2000) then
						cur_state <= set_display;
					else
						cur_state <= entry_set;
					end if;
				
				when set_display =>
					if(i2 = 2000) then
						cur_state <= clr_display;
					else
						cur_state <= set_display;
					end if;
				
				when clr_display =>
					i3 <= 0;
					if(i2 = 2000) then
						cur_state <= pause;
					else
						cur_state <= clr_display;
					end if;

				when pause =>
					if(i3 = 82000) then
						cur_state <= set_addr;
						i3 <= 0;
					else
						cur_state <= pause;
						i3 <= i3 + 1;
					end if;

				when set_addr =>
					if(i2 = 2000) then
						cur_state <= char_f;
					else
						cur_state <= set_addr;
					end if;

				when char_f =>
					if(i2 = 2000) then
						cur_state <= char_p;
					else
						cur_state <= char_f;
					end if;

				when char_p =>
					if(i2 = 2000) then
						cur_state <= char_g;
					else
						cur_state <= char_p;
					end if;

				when char_g =>
					if(i2 = 2000) then
						cur_state <= char_a;
					else
						cur_state <= char_g;
					end if;

				when char_a =>
					if(i2 = 2000) then
						cur_state <= done;
					else
						cur_state <= char_a;
					end if;

				when done =>
					cur_state <= done;

			end case;
		end if;
	end process display;

	with mux select
		SF_D <= SF_D0 when '0', --transmit
			SF_D1 when others;	--initialize
	with mux select
		LCD_E <= LCD_E0 when '0', --transmit
			LCD_E1 when others; --initialize

	--specified by datasheet
	transmit : process(clk, reset, tx_init)
	begin
		if(reset='1') then
			tx_state <= done;
		elsif(clk='1' and clk'event) then
			case tx_state is
				when high_setup => --40ns
					LCD_E0 <= '0';
					SF_D0 <= tx_byte(7 downto 4);
					if(i2 = 2) then
						tx_state <= high_hold;
						i2 <= 0;
					else
						tx_state <= high_setup;
						i2 <= i2 + 1;
					end if;

				when high_hold => --230ns
					LCD_E0 <= '1';
					SF_D0 <= tx_byte(7 downto 4);
					if(i2 = 12) then
						tx_state <= oneus;
						i2 <= 0;
					else
						tx_state <= high_hold;
						i2 <= i2 + 1;
					end if;

				when oneus =>
					LCD_E0 <= '0';
					if(i2 = 50) then
						tx_state <= low_setup;
						i2 <= 0;
					else
						tx_state <= oneus;
						i2 <= i2 + 1;
					end if;

				when low_setup =>
					LCD_E0 <= '0';
					SF_D0 <= tx_byte(3 downto 0);
					if(i2 = 2) then
						tx_state <= low_hold;
						i2 <= 0;
					else
						tx_state <= low_setup;
						i2 <= i2 + 1;
					end if;

				when low_hold =>
					LCD_E0 <= '1';
					SF_D0 <= tx_byte(3 downto 0);
					if(i2 = 12) then
						tx_state <= fortyus;
						i2 <= 0;
					else
						tx_state <= low_hold;
						i2 <= i2 + 1;
					end if;

				when fortyus =>
					LCD_E0 <= '0';
					if(i2 = 2000) then
						tx_state <= done;
						i2 <= 0;
					else
						tx_state <= fortyus;
						i2 <= i2 + 1;
					end if;

				when done =>
					LCD_E0 <= '0';
					if(tx_init = '1') then
						tx_state <= high_setup;
						i2 <= 0;
					else
						tx_state <= done;
						i2 <= 0;
					end if;

			end case;
		end if;
	end process transmit;
					
	--specified by datasheet
	power_on_initialize: process(clk, reset, init_init) --power on initialization sequence
	begin
		if(reset='1') then
			init_state <= idle;
			init_done <= '0';
		elsif(clk='1' and clk'event) then
			case init_state is
				when idle =>	
					init_done <= '0';
					if(init_init = '1') then
						init_state <= fifteenms;
						i <= 0;
					else
						init_state <= idle;
						i <= i + 1;
					end if;
				
				when fifteenms =>
					init_done <= '0';
					if(i = 750000) then
						init_state <= one;
						i <= 0;
					else
						init_state <= fifteenms;
						i <= i + 1;
					end if;

				when one =>
					SF_D1 <= "0011";
					LCD_E1 <= '1';
					init_done <= '0';
					if(i = 11) then
						init_state<=two;
						i <= 0;
					else
						init_state<=one;
						i <= i + 1;
					end if;

				when two =>
					LCD_E1 <= '0';
					init_done <= '0';
					if(i = 205000) then
						init_state<=three;
						i <= 0;
					else
						init_state<=two;
						i <= i + 1;
					end if;

				when three =>
					SF_D1 <= "0011";
					LCD_E1 <= '1';
					init_done <= '0';
					if(i = 11) then	
						init_state<=four;
						i <= 0;
					else
						init_state<=three;
						i <= i + 1;
					end if;

				when four =>
					LCD_E1 <= '0';
					init_done <= '0';
					if(i = 5000) then
						init_state<=five;
						i <= 0;
					else
						init_state<=four;
						i <= i + 1;
					end if;

				when five =>
					SF_D1 <= "0011";
					LCD_E1 <= '1';
					init_done <= '0';
					if(i = 11) then
						init_state<=six;
						i <= 0;
					else
						init_state<=five;
						i <= i + 1;
					end if;

				when six =>
					LCD_E1 <= '0';
					init_done <= '0';
					if(i = 2000) then
						init_state<=seven;
						i <= 0;
					else
						init_state<=six;
						i <= i + 1;
					end if;

				when seven =>
					SF_D1 <= "0010";
					LCD_E1 <= '1';
					init_done <= '0';
					if(i = 11) then
						init_state<=eight;
						i <= 0;
					else
						init_state<=seven;
						i <= i + 1;
					end if;

				when eight =>
					LCD_E1 <= '0';
					init_done <= '0';
					if(i = 2000) then
						init_state<=done;
						i <= 0;
					else
						init_state<=eight;
						i <= i + 1;
					end if;

				when done =>
					init_state <= done;
					init_done <= '1';

			end case;

		end if;
	end process power_on_initialize;

end behavior;
