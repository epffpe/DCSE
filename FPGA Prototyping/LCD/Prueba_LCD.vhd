----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:04:57 08/20/2009 
-- Design Name: 
-- Module Name:    Prueba_LCD - Behavioral 
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
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;
---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Prueba_LCD is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           lcd_db : out  STD_LOGIC_VECTOR (7 downto 0);
           lcd_e : out  STD_LOGIC;
           lcd_rs : out  STD_LOGIC;
           lcd_rw : out  STD_LOGIC;
			  leds: out std_logic_vector(1 downto 0));
end Prueba_LCD;

architecture Behavioral of Prueba_LCD is
	constant N: natural :=8;	--Numero de bits para el contador de configuracion
	type state_type is (idle, poi1, poi2, poi3, poi4, poi5, poi6, poi7, poi8, poi9, 
--								fs_hsetup,fs_hhold, fs_unus, fs_lsetup,fs_lhold,fs_40us,
--								ems_hsetup,ems_hhold, ems_unus, ems_lsetup,ems_lhold,ems_40us,
--								do_hsetup,do_hhold, do_unus, do_lsetup,do_lhold,do_40us,
--								cd_hsetup,cd_hhold, cd_unus, cd_lsetup,cd_lhold,cd_40us,
--								sa_hsetup,sa_hhold, sa_unus, sa_lsetup,sa_lhold,sa_40us,
--								ce_hsetup,ce_hhold, ce_unus, ce_lsetup,ce_lhold,ce_40us,
--								cp_hsetup,cp_hhold, cp_unus, cp_lsetup,cp_lhold,cp_40us,
--								cf_hsetup,cf_hhold, cf_unus, cf_lsetup,cf_lhold,cf_40us,
								conf_hsetup,conf_hhold, conf_unus, conf_lsetup,conf_lhold,conf_40us);
	signal state_reg, state_next : state_type;
	signal c_reg, c_next, c_dec: unsigned(19 downto 0);
	signal n_reg, n_next, n_inc: unsigned(N-1 downto 0);
	signal lcd_data : std_logic_vector(3 downto 0);
	signal led_reg, led_next : unsigned(1 downto 0);
	signal data_conf: std_logic_vector(7 downto 0);
	signal rs_conf: std_logic;
begin
	
	--Estados FSM y registros
	process(clk,rst)
	begin
		if rst='1' then
			state_reg <= idle;
			c_reg <= (others => '0' );
			n_reg <= (others => '1' );
			led_reg <= (others => '0' );
		elsif (clk'event and clk='1') then
			state_reg <= state_next;
			c_reg <= c_next;
			n_reg <= n_next;
			led_reg <= led_next;
		end if;
	end process;
	--***************************************************************
	-- Multiplexor para la configuracion
	--===============================================================
	process(n_reg)
	begin
		rs_conf <= '0';
		case n_reg is 
			when X"00" =>		--Function set cmd 0x28
				data_conf <= X"28";
			when X"01" =>		--Entry Mode Set cmd 0x06
				data_conf <= X"06";
			when X"02" =>		--Display On/Off cmd 0x0C
				data_conf <= X"0C";
			when X"03" =>		--Clear display cmd 0x01, recordar esperar 1.64ms
				data_conf <= X"01";
			when X"04" =>		--Caracter E cmd 0x45,RS='1'
				data_conf <= X"45";
				rs_conf <= '1';
			when X"05" =>		--Caracter P cmd 0x50,RS='1'
				data_conf <= X"50";
				rs_conf <= '1';
			when X"06" =>		--Caracter F cmd 0x46,RS='1'
				data_conf <= X"46";
				rs_conf <= '1';
			when X"07" =>		--Caracter spc cmd 0x20,RS='1'
				data_conf <= X"20";
				rs_conf <= '1';
			when X"08" =>		--Caracter S cmd 0x53,RS='1'
				data_conf <= X"53";
				rs_conf <= '1';
			when X"09" =>		--Caracter u cmd 0x75,RS='1'
				data_conf <= X"75";
				rs_conf <= '1';
			when X"0A" =>		--Caracter p cmd 0x70,RS='1'
				data_conf <= X"70";
				rs_conf <= '1';
			when X"0B" =>		--Caracter e cmd 0x65,RS='1'
				data_conf <= X"65";
				rs_conf <= '1';
			when X"0C" =>		--Caracter r cmd 0x72,RS='1'
				data_conf <= X"72";
				rs_conf <= '1';
			when X"0D" =>		--Caracter s cmd 0x73,RS='1'
				data_conf <= X"73";
				rs_conf <= '1';
			when X"0E" =>		--Caracter o cmd 0x6F,RS='1'
				data_conf <= X"6F";
				rs_conf <= '1';
			when X"0F" =>		--Caracter n cmd 0x6E,RS='1'
				data_conf <= X"6E";
				rs_conf <= '1';
			when X"10" =>		--Caracter i cmd 0x69,RS='1'
				data_conf <= X"69";
				rs_conf <= '1';
			when X"11" =>		--Caracter c cmd 0x63,RS='1'
				data_conf <= X"63";
				rs_conf <= '1';
			when others =>
				data_conf <= X"00";
		end case;
	end process;
	--***************************************************************	
	--======================================================================
	--logica de estado siguiente & salidas
	--======================================================================
	lcd_db <= lcd_data & "1111";
	leds <= std_logic_vector(led_reg);
	c_dec <= c_reg - 1;
	n_inc <= n_reg + 1;
	process(state_reg,c_reg, led_reg, c_dec, n_reg, n_inc, data_conf, rs_conf)
	begin
		state_next <= state_reg;
		c_next <= c_reg;
		n_next <= n_reg;
		lcd_data <= (others => '0');
		lcd_e <= '0';
		lcd_rs <= '0';
		lcd_rw <= '0';
		led_next <= led_reg;
		case state_reg is
			when idle =>
				c_next <= to_unsigned(750000,20);--750000
				state_next <= poi1;
				led_next <= "01";
	--======================================================================
	--Power ON
	--======================================================================
			when poi1 =>
				if (c_reg=0) then
					state_next <= poi2;
					c_next <= to_unsigned(11,20);
				else
					c_next <= c_dec;
				end if;
			when poi2 =>
				lcd_data <= X"3";
				lcd_e <= '1';
				if c_reg=0 then
					state_next <= poi3;
					c_next <= to_unsigned(205000,20);--205000
				else
					c_next <= c_dec;
				end if;
			when poi3 =>
				if (c_reg=0) then
					state_next <= poi4;
					c_next <= to_unsigned(11,20);
				else
					c_next <= c_dec;
				end if;
			when poi4 =>
				lcd_data <= X"3";
				lcd_e <= '1';
				if c_reg=0 then
					state_next <= poi5;
					c_next <= to_unsigned(5000,20);--5000
				else
					c_next <= c_dec;
				end if;
			when poi5 =>
				if (c_reg=0) then
					state_next <= poi6;
					c_next <= to_unsigned(11,20);
				else
					c_next <= c_dec;
				end if;
			when poi6 =>
				lcd_data <= X"3";
				lcd_e <= '1';
				if c_reg=0 then
					state_next <= poi7;
					c_next <= to_unsigned(2000,20);--2000
				else
					c_next <= c_dec;
				end if;
			when poi7 =>
				if (c_reg=0) then
					state_next <= poi8;
					c_next <= to_unsigned(11,20);
				else
					c_next <= c_dec;
				end if;
			when poi8 =>
				lcd_data <= X"2";
				lcd_e <= '1';
				if c_reg=0 then
					state_next <= poi9;
					c_next <= to_unsigned(2000,20);--2000
				else
					c_next <= c_dec;
				end if;
			when poi9 =>
				if (c_reg=0) then
					state_next <= conf_hsetup;
					c_next <= to_unsigned(1,20);
					n_next <= (others =>'0');
					led_next <= "10";
				else
					c_next <= c_dec;
				end if;
	--======================================================================
	--Configuracion LCD
	--======================================================================
			when conf_hsetup =>
				lcd_data <= data_conf(7 downto 4);
				lcd_rs <= rs_conf;
				lcd_e <= '0';
				if c_reg=0 then
					state_next <= conf_hhold;
					c_next <= to_unsigned(11,20);
				else
					c_next <= c_dec;
				end if;
			when conf_hhold =>
				lcd_data <= data_conf(7 downto 4);
				lcd_rs <= rs_conf;
				lcd_e <= '1';
				if c_reg=0 then
					state_next <= conf_unus;
					c_next <= to_unsigned(49,20); --1us
				else
					c_next <= c_dec;
				end if;
			when conf_unus =>
				if c_reg=0 then
					state_next <= conf_lsetup;
					c_next <= to_unsigned(1,20);
				else
					c_next <= c_dec;
				end if;
			when conf_lsetup =>
				lcd_data <= data_conf(3 downto 0);
				lcd_rs <= rs_conf;
				lcd_e <= '0';
				if c_reg=0 then
					state_next <= conf_lhold;
					c_next <= to_unsigned(11,20);
				else
					c_next <= c_dec;
				end if;
			when conf_lhold =>
				lcd_data <= data_conf(3 downto 0);
				lcd_rs <= rs_conf;
				lcd_e <= '1';
				if c_reg=0 then
					state_next <= conf_40us;
					if n_reg=3 then			--Espera 1.64ms cuando clear display
						c_next <= to_unsigned(82000,20); --1.64ms
						led_next <= "11";
					else							--En cualq otro caso espera 40us
						c_next <= to_unsigned(2000,20); --40us
					end if;
				else
					c_next <= c_dec;
				end if;
			when conf_40us =>
				if (c_reg=0) then
					if (n_reg < X"11") then		-- Cuenta hasta que se inicialice el LCD
						state_next <= conf_hsetup;
						n_next <= n_inc;
					else
						state_next <= conf_40us;
					end if;
					c_next <= to_unsigned(1,20);
				else
					c_next <= c_dec;
				end if;
--	--======================================================================
--	--Function set comand 0x28
--	--======================================================================
--			when fs_hsetup =>
--				lcd_data <= X"2";
--				lcd_e <= '0';
--				if c_reg=0 then
--					state_next <= fs_hhold;
--					c_next <= to_unsigned(11,20);
--				else
--					c_next <= c_dec;
--				end if;
--			when fs_hhold =>
--				lcd_data <= X"2";
--				lcd_e <= '1';
--				if c_reg=0 then
--					state_next <= fs_unus;
--					c_next <= to_unsigned(49,20); --1us
--				else
--					c_next <= c_dec;
--				end if;
--			when fs_unus =>
--				if c_reg=0 then
--					state_next <= fs_lsetup;
--					c_next <= to_unsigned(1,20);
--				else
--					c_next <= c_dec;
--				end if;
--			when fs_lsetup =>
--				lcd_data <= X"8";
--				lcd_e <= '0';
--				if c_reg=0 then
--					state_next <= fs_lhold;
--					c_next <= to_unsigned(11,20);
--				else
--					c_next <= c_dec;
--				end if;
--			when fs_lhold =>
--				lcd_data <= X"8";
--				lcd_e <= '1';
--				if c_reg=0 then
--					state_next <= fs_40us;
--					c_next <= to_unsigned(2000,20); --40us
--				else
--					c_next <= c_dec;
--				end if;
--			when fs_40us =>
--				if (c_reg=0) then
--					state_next <= ems_hsetup;
--					c_next <= to_unsigned(1,20);
--				else
--					c_next <= c_dec;
--				end if;
--	--======================================================================
--	--Entry Mode Set comand 0x06
--	--======================================================================
--			when ems_hsetup =>
--				lcd_data <= X"0";
--				lcd_e <= '0';
--				if c_reg=0 then
--					state_next <= ems_hhold;
--					c_next <= to_unsigned(11,20);
--				else
--					c_next <= c_dec;
--				end if;
--			when ems_hhold =>
--				lcd_data <= X"0";
--				lcd_e <= '1';
--				if c_reg=0 then
--					state_next <= ems_unus;
--					c_next <= to_unsigned(49,20); --1us
--				else
--					c_next <= c_dec;
--				end if;
--			when ems_unus =>
--				if c_reg=0 then
--					state_next <= ems_lsetup;
--					c_next <= to_unsigned(1,20);
--				else
--					c_next <= c_dec;
--				end if;
--			when ems_lsetup =>
--				lcd_data <= X"6";
--				lcd_e <= '0';
--				if c_reg=0 then
--					state_next <= ems_lhold;
--					c_next <= to_unsigned(11,20);
--				else
--					c_next <= c_dec;
--				end if;
--			when ems_lhold =>
--				lcd_data <= X"6";
--				lcd_e <= '1';
--				if c_reg=0 then
--					state_next <= ems_40us;
--					c_next <= to_unsigned(2000,20); --40us
--				else
--					c_next <= c_dec;
--				end if;
--			when ems_40us =>
--				if (c_reg=0) then
--					state_next <= do_hsetup;
--					c_next <= to_unsigned(1,20);
--				else
--					c_next <= c_dec;
--				end if;
--	--======================================================================
--	--Display ON/OFF comand 0x0C
--	--======================================================================
--			when do_hsetup =>
--				lcd_data <= X"0";
--				lcd_e <= '0';
--				if c_reg=0 then
--					state_next <= do_hhold;
--					c_next <= to_unsigned(11,20);
--				else
--					c_next <= c_dec;
--				end if;
--			when do_hhold =>
--				lcd_data <= X"0";
--				lcd_e <= '1';
--				if c_reg=0 then
--					state_next <= do_unus;
--					c_next <= to_unsigned(49,20); --1us
--				else
--					c_next <= c_dec;
--				end if;
--			when do_unus =>
--				if c_reg=0 then
--					state_next <= do_lsetup;
--					c_next <= to_unsigned(1,20);
--				else
--					c_next <= c_dec;
--				end if;
--			when do_lsetup =>
--				lcd_data <= X"C";
--				lcd_e <= '0';
--				if c_reg=0 then
--					state_next <= do_lhold;
--					c_next <= to_unsigned(11,20);
--				else
--					c_next <= c_dec;
--				end if;
--			when do_lhold =>
--				lcd_data <= X"C";
--				lcd_e <= '1';
--				if c_reg=0 then
--					state_next <= do_40us;
--					c_next <= to_unsigned(2000,20); --40us
--				else
--					c_next <= c_dec;
--				end if;
--			when do_40us =>
--				if (c_reg=0) then
--					state_next <= cd_hsetup;
--					c_next <= to_unsigned(1,20);
--				else
--					c_next <= c_dec;
--				end if;
--	--======================================================================
--	--Clear Display comand 0x01
--	--======================================================================
--			when cd_hsetup =>
--				lcd_data <= X"0";
--				lcd_e <= '0';
--				if c_reg=0 then
--					state_next <= cd_hhold;
--					c_next <= to_unsigned(11,20);
--				else
--					c_next <= c_dec;
--				end if;
--			when cd_hhold =>
--				lcd_data <= X"0";
--				lcd_e <= '1';
--				if c_reg=0 then
--					state_next <= cd_unus;
--					c_next <= to_unsigned(49,20); --1us
--				else
--					c_next <= c_dec;
--				end if;
--			when cd_unus =>
--				if c_reg=0 then
--					state_next <= cd_lsetup;
--					c_next <= to_unsigned(1,20);
--				else
--					c_next <= c_dec;
--				end if;
--			when cd_lsetup =>
--				lcd_data <= X"1";
--				lcd_e <= '0';
--				if c_reg=0 then
--					state_next <= cd_lhold;
--					c_next <= to_unsigned(11,20);
--				else
--					c_next <= c_dec;
--				end if;
--			when cd_lhold =>
--				lcd_data <= X"1";
--				lcd_e <= '1';
--				if c_reg=0 then
--					state_next <= cd_40us;
--					c_next <= to_unsigned(82000,20); --1,64ms
--				else
--					c_next <= c_dec;
--				end if;
--			when cd_40us =>
--				if (c_reg=0) then
--					state_next <= sa_hsetup;
--					c_next <= to_unsigned(1,20);
--				else
--					c_next <= c_dec;
--				end if;
--	--======================================================================
--	--Set Addres comand 0x80
--	--======================================================================
--			when sa_hsetup =>
--				lcd_data <= X"8";
--				lcd_e <= '0';
--				if c_reg=0 then
--					state_next <= sa_hhold;
--					c_next <= to_unsigned(11,20);
--				else
--					c_next <= c_dec;
--				end if;
--			when sa_hhold =>
--				lcd_data <= X"8";
--				lcd_e <= '1';
--				if c_reg=0 then
--					state_next <= sa_unus;
--					c_next <= to_unsigned(49,20); --1us
--				else
--					c_next <= c_dec;
--				end if;
--			when sa_unus =>
--				if c_reg=0 then
--					state_next <= sa_lsetup;
--					c_next <= to_unsigned(1,20);
--				else
--					c_next <= c_dec;
--				end if;
--			when sa_lsetup =>
--				lcd_data <= X"0";
--				lcd_e <= '0';
--				if c_reg=0 then
--					state_next <= sa_lhold;
--					c_next <= to_unsigned(11,20);
--				else
--					c_next <= c_dec;
--				end if;
--			when sa_lhold =>
--				lcd_data <= X"0";
--				lcd_e <= '1';
--				if c_reg=0 then
--					state_next <= sa_40us;
--					c_next <= to_unsigned(2000,20); --40us
--				else
--					c_next <= c_dec;
--				end if;
--			when sa_40us =>
--				if (c_reg=0) then
--					state_next <= ce_hsetup;
--					c_next <= to_unsigned(1,20);
--					led_next <= "11";
--				else
--					c_next <= c_dec;
--				end if;
--	--======================================================================
--	--Char E comand 0x45
--	--======================================================================
--			when ce_hsetup =>
--				lcd_data <= X"4";
--				lcd_rs <= '1';
--				lcd_e <= '0';
--				if c_reg=0 then
--					state_next <= ce_hhold;
--					c_next <= to_unsigned(11,20);
--				else
--					c_next <= c_dec;
--				end if;
--			when ce_hhold =>
--				lcd_data <= X"4";
--				lcd_rs <= '1';
--				lcd_e <= '1';
--				if c_reg=0 then
--					state_next <= ce_unus;
--					c_next <= to_unsigned(49,20); --1us
--				else
--					c_next <= c_dec;
--				end if;
--			when ce_unus =>
--				if c_reg=0 then
--					state_next <= ce_lsetup;
--					c_next <= to_unsigned(1,20);
--				else
--					c_next <= c_dec;
--				end if;
--			when ce_lsetup =>
--				lcd_data <= X"5";
--				lcd_rs <= '1';
--				lcd_e <= '0';
--				if c_reg=0 then
--					state_next <= ce_lhold;
--					c_next <= to_unsigned(11,20);
--				else
--					c_next <= c_dec;
--				end if;
--			when ce_lhold =>
--				lcd_data <= X"5";
--				lcd_rs <= '1';
--				lcd_e <= '1';
--				if c_reg=0 then
--					state_next <= ce_40us;
--					c_next <= to_unsigned(2000,20); --40us
--				else
--					c_next <= c_dec;
--				end if;
--			when ce_40us =>
--				if (c_reg=0) then
--					state_next <= cp_hsetup;
--					c_next <= to_unsigned(1,20);
--				else
--					c_next <= c_dec;
--				end if;
--	--======================================================================
--	--Char P comand 0x50
--	--======================================================================
--			when cp_hsetup =>
--				lcd_data <= X"5";
--				lcd_rs <= '1';
--				lcd_e <= '0';
--				if c_reg=0 then
--					state_next <= cp_hhold;
--					c_next <= to_unsigned(11,20);
--				else
--					c_next <= c_dec;
--				end if;
--			when cp_hhold =>
--				lcd_data <= X"5";
--				lcd_rs <= '1';
--				lcd_e <= '1';
--				if c_reg=0 then
--					state_next <= cp_unus;
--					c_next <= to_unsigned(49,20); --1us
--				else
--					c_next <= c_dec;
--				end if;
--			when cp_unus =>
--				if c_reg=0 then
--					state_next <= cp_lsetup;
--					c_next <= to_unsigned(1,20);
--				else
--					c_next <= c_dec;
--				end if;
--			when cp_lsetup =>
--				lcd_data <= X"0";
--				lcd_rs <= '1';
--				lcd_e <= '0';
--				if c_reg=0 then
--					state_next <= cp_lhold;
--					c_next <= to_unsigned(11,20);
--				else
--					c_next <= c_dec;
--				end if;
--			when cp_lhold =>
--				lcd_data <= X"0";
--				lcd_rs <= '1';
--				lcd_e <= '1';
--				if c_reg=0 then
--					state_next <= cp_40us;
--					c_next <= to_unsigned(2000,20); --40us
--				else
--					c_next <= c_dec;
--				end if;
--			when cp_40us =>
--				if (c_reg=0) then
--					state_next <= cf_hsetup;
--					c_next <= to_unsigned(1,20);
--				else
--					c_next <= c_dec;
--				end if;
--	--======================================================================
--	--Char F comand 0x46
--	--======================================================================
--			when cf_hsetup =>
--				lcd_data <= X"4";
--				lcd_rs <= '1';
--				lcd_e <= '0';
--				if c_reg=0 then
--					state_next <= cf_hhold;
--					c_next <= to_unsigned(11,20);
--				else
--					c_next <= c_dec;
--				end if;
--			when cf_hhold =>
--				lcd_data <= X"4";
--				lcd_rs <= '1';
--				lcd_e <= '1';
--				if c_reg=0 then
--					state_next <= cf_unus;
--					c_next <= to_unsigned(49,20); --1us
--				else
--					c_next <= c_dec;
--				end if;
--			when cf_unus =>
--				if c_reg=0 then
--					state_next <= cf_lsetup;
--					c_next <= to_unsigned(1,20);
--				else
--					c_next <= c_dec;
--				end if;
--			when cf_lsetup =>
--				lcd_data <= X"6";
--				lcd_rs <= '1';
--				lcd_e <= '0';
--				if c_reg=0 then
--					state_next <= cf_lhold;
--					c_next <= to_unsigned(11,20);
--				else
--					c_next <= c_dec;
--				end if;
--			when cf_lhold =>
--				lcd_data <= X"6";
--				lcd_rs <= '1';
--				lcd_e <= '1';
--				if c_reg=0 then
--					state_next <= cf_40us;
--					c_next <= to_unsigned(2000,20); --40us
--				else
--					c_next <= c_dec;
--				end if;
--			when cf_40us =>
--				if (c_reg=0) then
--					state_next <= cf_40us;
--					c_next <= to_unsigned(1,20);
--				else
--					c_next <= c_dec;
--				end if;
		end case;
	end process;


end Behavioral;

