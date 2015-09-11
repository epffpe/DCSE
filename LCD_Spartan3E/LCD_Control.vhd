----------------------------------------------------------------------------------
-- Company: Supersonic
-- Engineer: Eugenio Peñate Fariñas
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

entity LCD_Control is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
			  sw : in std_logic_vector(1 downto 0);
			  btn_tick : in  STD_LOGIC_VECTOR (3 downto 0);
			  press_tick : in  STD_LOGIC;
			  keyboard_tick:in std_logic;
           rotary_tick : in  STD_LOGIC;
           rotary_izq : in  STD_LOGIC;
			  kb_data: in std_logic_vector(7 downto 0);
           lcd_db : out  STD_LOGIC_VECTOR (3 downto 0);
           lcd_e : out  STD_LOGIC;
           lcd_rs : out  STD_LOGIC;
           lcd_rw : out  STD_LOGIC;
			  leds: out std_logic_vector(1 downto 0));
end LCD_Control;

architecture Behavioral of LCD_Control is
	constant N: natural :=8;	--Numero de bits para el contador de palabras de configuracion
	constant M: natural := 26;  --Numero de bits para el contador de tiempos
	constant SP: std_logic_vector(7 downto 0) :=X"20"; -- Espacio en blanco en ASCII
	type state_type is (idle, poi1, poi2, poi3, poi4, poi5, poi6, poi7, poi8, poi9,
								conf_hsetup,conf_hhold, conf_unus, conf_lsetup,conf_lhold,conf_40us,
								modo,
								tx_hsetup,tx_hhold, tx_unus, tx_lsetup,tx_lhold,tx_40us);
	signal state_reg, state_next : state_type;
	signal c_reg, c_next, c_dec: unsigned(M-1 downto 0);
	signal n_reg, n_next, n_inc: unsigned(N-1 downto 0);
	signal lcd_data : std_logic_vector(3 downto 0);
	signal led_reg, led_next : unsigned(1 downto 0);
	signal data_conf: std_logic_vector(7 downto 0);
	signal rs_conf,rs_reg, rs_next: std_logic;
	signal btnn_reg, btne_reg, btns_reg, btnw_reg: unsigned(7 downto 0);
	signal btnn_next, btne_next, btns_next, btnw_next: unsigned(7 downto 0);
	signal btnn_en, btne_en, btns_en, btnw_en: std_logic;
	signal evento: std_logic_vector(6 downto 0);
	signal ascii_reg, ascii_next: std_logic_vector(7 downto 0);
	signal display_reg, display_next, display_sum: unsigned(3 downto 0); -- display_rest: unsigned(3 downto 0);
	signal updown_reg, updown_next: std_logic;
	--signal caracter : character;
begin
	--***************************************************************
	-- 
	--===============================================================
	evento <= keyboard_tick & rotary_tick & press_tick & btn_tick;
	
	--***************************************************************
	-- Logica secuencial FSMD
	--===============================================================
	--Estados FSM y registros
	process(clk,rst)
	begin
		if rst='1' then
			state_reg <= idle;
			c_reg <= (others => '0' );
			n_reg <= (others => '1' );
			led_reg <= (others => '0');
			btnn_reg <= X"41";
			btne_reg <= X"30";
			btns_reg <= X"61";
			btnw_reg <= X"20";
			ascii_reg <= (others => '0');
			rs_reg <='0';
			display_reg <= (others => '0');
			updown_reg <= '0';
		elsif (clk'event and clk='1') then
			state_reg <= state_next;
			c_reg <= c_next;
			n_reg <= n_next;
			led_reg <= led_next;
			btnn_reg <= btnn_next;
			btne_reg <= btne_next;
			btns_reg <= btns_next;
			btnw_reg <= btnw_next;
			ascii_reg <= ascii_next;
			rs_reg <= rs_next;
			display_reg <= display_next;
			updown_reg <= updown_next;
		end if;
	end process;
	--***************************************************************
	-- Logica de estado siguiente para los botones
	--===============================================================
	btnn_next <= X"41" when (btnn_en='1' and btnn_reg= X"5A") else
					 btnn_reg + 1 when btnn_en='1' else
					 btnn_reg;
	btne_next <= X"30" when (btne_en='1' and btne_reg= X"39") else
					 btne_reg + 1 when btne_en='1' else
					 btne_reg;
	btns_next <= X"61" when (btns_en='1' and btns_reg= X"7A") else
					 btns_reg + 1 when btns_en='1' else
					 btns_reg;
	btnw_next <= X"20" when (btnw_en='1' and btnw_reg= X"2F") else
					 btnw_reg + 1 when btnw_en='1' else
					 btnw_reg;
	
	--***************************************************************
	-- Multiplexor para la configuracion
	--===============================================================
	process(n_reg,ascii_reg,rs_reg)
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
		--**************************************************************
		-- Display configurado, ahora se escribe la bienvenida inicial
		--**************************************************************
			when X"04" =>		--Caracter E cmd 0x45,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('B'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"05" =>		--Caracter P cmd 0x50,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('i'),8));
				rs_conf <= '1';
			when X"06" =>		--Caracter F cmd 0x46,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('e'),8));
				rs_conf <= '1';
			when X"07" =>		--Caracter spc cmd 0x20,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('n'),8));
				rs_conf <= '1';
			when X"08" =>		--Caracter S cmd 0x53,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('v'),8));
				rs_conf <= '1';
			when X"09" =>		--Caracter u cmd 0x75,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('e'),8));
				rs_conf <= '1';
			when X"0A" =>		--Caracter p cmd 0x70,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('n'),8));
				rs_conf <= '1';
			when X"0B" =>		--Caracter e cmd 0x65,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('i'),8));
				rs_conf <= '1';
			when X"0C" =>		--Caracter r cmd 0x72,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('d'),8));
				rs_conf <= '1';
			when X"0D" =>		--Caracter r cmd 0x72,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('o'),8));
				rs_conf <= '1';
			when X"0E" =>		--Salto a la siguiente linea
				data_conf <= X"C0";
				rs_conf <= '0';
			when X"0F" =>		--Caracter o cmd 0x6F,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('E'),8));
				rs_conf <= '1';
			when X"10" =>		--Caracter n cmd 0x6E,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('p'),8));
				rs_conf <= '1';
			when X"11" =>		--Caracter i cmd 0x69,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('f'),8));
				rs_conf <= '1';
			when X"12" =>		--Caracter c cmd 0x63,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos(' '),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"13" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('S'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"14" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('u'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"15" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('p'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"16" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('e'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"17" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('r'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"18" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('s'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"19" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('o'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"1A" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('n'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"1B" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('i'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"1C" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('c'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"1D" =>		
				data_conf <= X"08"; --apaga display
				rs_conf <= '0';
			when X"1E" =>		
				data_conf <= X"0C"; --enciende display
				rs_conf <= '0';
			when X"1F" =>		
				data_conf <= X"08";--apaga display
				rs_conf <= '0';
			when X"20" =>		
				data_conf <= X"0C"; --enciende display
				rs_conf <= '0';
			when X"21" =>		--Clear display cmd 0x01, recordar esperar 1.64ms
				data_conf <= X"01";
			when X"22" =>		--Caracter P cmd 0x50,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('P'),8));
				rs_conf <= '1';
			when X"23" =>		--Caracter F cmd 0x46,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('r'),8));
				rs_conf <= '1';
			when X"24" =>		--Caracter spc cmd 0x20,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('a'),8));
				rs_conf <= '1';
			when X"25" =>		--Caracter S cmd 0x53,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('c'),8));
				rs_conf <= '1';
			when X"26" =>		--Caracter u cmd 0x75,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('t'),8));
				rs_conf <= '1';
			when X"27" =>		--Caracter p cmd 0x70,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('i'),8));
				rs_conf <= '1';
			when X"28" =>		--Caracter e cmd 0x65,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('c'),8));
				rs_conf <= '1';
			when X"29" =>		--Caracter r cmd 0x72,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('a'),8));
				rs_conf <= '1';
			when X"2A" =>		--Caracter r cmd 0x72,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos(' '),8));
				rs_conf <= '1';
			when X"2B" =>		--Caracter r cmd 0x72,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('3'),8));
				rs_conf <= '1';
			when X"2C" =>		--Salto a la siguiente linea'
				data_conf <= X"C0";
				rs_conf <= '0';
			when X"2D" =>		--Caracter o cmd 0x6F,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('D'),8));
				rs_conf <= '1';
			when X"2E" =>		--Caracter n cmd 0x6E,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('C'),8));
				rs_conf <= '1';
			when X"2F" =>		--Caracter i cmd 0x69,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('S'),8));
				rs_conf <= '1';
			when X"30" =>		--Caracter c cmd 0x63,RS='1'
				data_conf <= std_logic_vector(to_unsigned(character'pos('E'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"31" =>		--Clear display cmd 0x01, recordar esperar 1.64ms
				data_conf <= X"01";
			when X"32" =>		--Salto a la siguiente linea'
				data_conf <= X"C0";
			when X"33" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('0'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"34" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('1'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"35" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('2'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"36" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('3'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"37" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('4'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"38" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('5'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"39" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('6'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"3A" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('7'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"3B" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('8'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"3C" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('9'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"3D" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('A'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"3E" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('B'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"3F" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('C'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"40" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('D'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"41" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('E'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"42" =>		
				data_conf <= std_logic_vector(to_unsigned(character'pos('F'),8)); --Conversion de ASCII->std_logic
				rs_conf <= '1';
			when X"43" =>		--Regreso al comienzo'
				data_conf <= X"02";
			when X"44" =>		--Muestra cursor
				data_conf <= X"0E";
			when X"45" =>		--Cursor
				data_conf <= X"10";
			--*******************************************************************
			when X"FB" =>		--Display left
				data_conf <= X"1C";
			when X"FC" =>		--Display derecha
				data_conf <= X"18";
			when X"FD" =>		--Cursor display
				data_conf <= ascii_reg;
			when X"FE" =>		--Datos de entrada
				data_conf <= ascii_reg;
				rs_conf <= rs_reg;
			when X"FF" =>		--Cursor una posicion a la izq
				data_conf <= X"10";
			when others =>
				data_conf <= X"00";
		end case;
	end process;
	--***************************************************************	
	--======================================================================
	--logica de estado siguiente & salidas
	--======================================================================
	lcd_db <= lcd_data;
	leds <= std_logic_vector(led_reg);
	c_dec <= c_reg - 1;
	n_inc <= n_reg + 1;
	display_sum <= display_reg + 1;
--	display_rest <= display_reg - 1;
	process(state_reg,c_reg, led_reg, c_dec, n_reg, n_inc, data_conf, rs_conf,sw,display_reg,display_sum,--display_rest,
				updown_reg,evento,ascii_reg,rs_reg,btnn_reg, btne_reg,btns_reg,btnw_reg,kb_data,rotary_izq)
	begin
		state_next <= state_reg;
		c_next <= c_reg;
		n_next <= n_reg;
		lcd_data <= (others => '0');
		lcd_e <= '0';
		lcd_rs <= '0';
		lcd_rw <= '0';
		btnn_en <= '0';
		btne_en <= '0';
		btns_en <= '0';
		btnw_en <= '0';
		led_next <= led_reg;
		ascii_next <= ascii_reg;
		rs_next <= rs_reg;
		display_next <= display_reg;
		updown_next <= updown_reg;
		case state_reg is
			when idle =>
				c_next <= to_unsigned(750000,M);--750000
				state_next <= poi1;
				led_next <= "01";
	--======================================================================
	--Power ON
	--======================================================================
			when poi1 =>
				if (c_reg=0) then
					state_next <= poi2;
					c_next <= to_unsigned(11,M);
				else
					c_next <= c_dec;
				end if;
			when poi2 =>
				lcd_data <= X"3";
				lcd_e <= '1';
				if c_reg=0 then
					state_next <= poi3;
					c_next <= to_unsigned(205000,M);--205000
				else
					c_next <= c_dec;
				end if;
			when poi3 =>
				if (c_reg=0) then
					state_next <= poi4;
					c_next <= to_unsigned(11,M);
				else
					c_next <= c_dec;
				end if;
			when poi4 =>
				lcd_data <= X"3";
				lcd_e <= '1';
				if c_reg=0 then
					state_next <= poi5;
					c_next <= to_unsigned(5000,M);--5000
				else
					c_next <= c_dec;
				end if;
			when poi5 =>
				if (c_reg=0) then
					state_next <= poi6;
					c_next <= to_unsigned(11,M);
				else
					c_next <= c_dec;
				end if;
			when poi6 =>
				lcd_data <= X"3";
				lcd_e <= '1';
				if c_reg=0 then
					state_next <= poi7;
					c_next <= to_unsigned(2000,M);--2000
				else
					c_next <= c_dec;
				end if;
			when poi7 =>
				if (c_reg=0) then
					state_next <= poi8;
					c_next <= to_unsigned(11,M);
				else
					c_next <= c_dec;
				end if;
			when poi8 =>
				lcd_data <= X"2";
				lcd_e <= '1';
				if c_reg=0 then
					state_next <= poi9;
					c_next <= to_unsigned(2000,M);--2000
				else
					c_next <= c_dec;
				end if;
			when poi9 =>
				if (c_reg=0) then
					state_next <= conf_hsetup;
					c_next <= to_unsigned(1,M);
					n_next <= (others =>'0');
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
					c_next <= to_unsigned(11,M);
				else
					c_next <= c_dec;
				end if;
			when conf_hhold =>
				lcd_data <= data_conf(7 downto 4);
				lcd_rs <= rs_conf;
				lcd_e <= '1';
				if c_reg=0 then
					state_next <= conf_unus;
					c_next <= to_unsigned(49,M); --1us
				else
					c_next <= c_dec;
				end if;
			when conf_unus =>
				if c_reg=0 then
					state_next <= conf_lsetup;
					c_next <= to_unsigned(1,M);
				else
					c_next <= c_dec;
				end if;
			when conf_lsetup =>
				lcd_data <= data_conf(3 downto 0);
				lcd_rs <= rs_conf;
				lcd_e <= '0';
				if c_reg=0 then
					state_next <= conf_lhold;
					c_next <= to_unsigned(11,M);
				else
					c_next <= c_dec;
				end if;
			when conf_lhold =>
				lcd_data <= data_conf(3 downto 0);
				lcd_rs <= rs_conf;
				lcd_e <= '1';
				if c_reg=0 then
					state_next <= conf_40us;
					if ((n_reg=3) or (n_reg=X"21") or (n_reg=X"31")) then	--Espera 1.64ms cuando clear display
						c_next <= to_unsigned(82000,M); --1.64ms
					elsif ((n_reg = X"1D") or (n_reg =X"1E") or (n_reg =X"1F") or (n_reg =X"20")) then	
						c_next <= "01"& X"FFFFFF";
					elsif n_reg=X"30" then
						c_next <= (others => '1');
					else										--En cualq otro caso espera 40us
						c_next <= to_unsigned(2000,M); --40us
					
					end if;
				else
					c_next <= c_dec;
				end if;
			when conf_40us =>
				if (c_reg=0) then
					if (n_reg < X"44") then		-- Cuenta hasta que se inicialice el LCD
						state_next <= conf_hsetup;
						n_next <= n_inc;
					else
						state_next <= modo;
					end if;
					c_next <= to_unsigned(1,M);
				else
					c_next <= c_dec;
				end if;					
	--======================================================================
	--Interfaz		evento <= keyboard_tick & rotary_tick & press_tick & btn_tick;
	--======================================================================
			when modo =>
			led_next <= "10";
			c_next <= to_unsigned(1,M);
			state_next <= tx_hsetup;
				if sw(0)='0' then	-- modo edicion
					rs_next <= '1';
					n_next <= X"FE";
					
					case evento is
						when "1000000" => --Teclado
							ascii_next <= kb_data;
						when "0100000" => --Boton rotatorio
							n_next <= X"FD";
							if rotary_izq='1' then	-- mueve el cursor a la izq
								ascii_next <= X"10";
							else							-- mueve el cursor a la derecha
								ascii_next <= X"14";
							end if;
						when "0010000" => --Boton rotatorio press
							ascii_next <= SP;
						when "0001000" => --Boton norte
							ascii_next <= std_logic_vector(btnn_reg);
							btnn_en <= '1';
						when "0000100" => --Boton este
							ascii_next <= std_logic_vector(btne_reg);
							btne_en <= '1';
						when "0000010" => --Boton sur
							ascii_next <= std_logic_vector(btns_reg);
							btns_en <= '1';
						when "0000001" => --Boton oeste
							ascii_next <= std_logic_vector(btnw_reg);
							btnw_en <= '1';
						when others =>
							state_next <= modo;
					end case;
				else				-- modo visualización
					updown_next <='0';
					display_next <= X"0";
					n_next<= X"FC";
				end if;
	
	--======================================================================
	--Transmision
	--======================================================================
			when tx_hsetup =>
				led_next <= "11";
				lcd_data <= data_conf(7 downto 4);
				lcd_rs <= rs_conf;
				lcd_e <= '0';
				if c_reg=0 then
					state_next <= tx_hhold;
					c_next <= to_unsigned(11,M);
				else
					c_next <= c_dec;
				end if;
			when tx_hhold =>
				lcd_data <= data_conf(7 downto 4);
				lcd_rs <= rs_conf;
				lcd_e <= '1';
				if c_reg=0 then
					state_next <= tx_unus;
					c_next <= to_unsigned(49,M); --1us
				else
					c_next <= c_dec;
				end if;
			when tx_unus =>
				if c_reg=0 then
					state_next <= tx_lsetup;
					c_next <= to_unsigned(1,M);
				else
					c_next <= c_dec;
				end if;
			when tx_lsetup =>
				lcd_data <= data_conf(3 downto 0);
				lcd_rs <= rs_conf;
				lcd_e <= '0';
				if c_reg=0 then
					state_next <= tx_lhold;
					c_next <= to_unsigned(11,M);
				else
					c_next <= c_dec;
				end if;
			when tx_lhold =>
				lcd_data <= data_conf(3 downto 0);
				lcd_rs <= rs_conf;
				lcd_e <= '1';
				if c_reg=0 then
					state_next <= tx_40us;
					if sw(0)='0' then
						c_next <= to_unsigned(2000,M); --40us
					else
						c_next <= (M-1=> '0', M-2=>'0', others =>'1');
					end if;
				else
					c_next <= c_dec;
				end if;
			when tx_40us =>
				if (c_reg=0) then
					if sw(0)='1' then				--modo visualizacion
						state_next <= tx_hsetup;
						if display_reg = X"F" then
							display_next <= X"0";
							if updown_reg='0' then 	--cuenta ascendente pasa a descendente
								updown_next<='1';
								n_next <= X"FB";
							else							--cuenta descendente pasa a ascendente
								updown_next<='0';
								n_next <= X"FC";
							end if;
						else
							display_next <= display_sum;
						end if;
						
--						if updown_reg='0' then 	--cuenta ascendente
--							if display_reg = X"F" then --ha llegado al final
--								display_next<= X"F";
--								updown_next <= '1';
--								n_next <= X"FB";
--							else
--								display_next<= display_sum;
--							end if;
--						else							--cuenta descendente
--							
--							if display_reg = 0 then --ha llegado al comienzo
--								display_next<= X"0";
--								updown_next <= '0';
--								n_next <= X"FC";
--							else
--								display_next<= display_rest;
--							end if;
--						end if;
					else													-- modo edicion
						if display_reg /= 0 then				--Si display se ha quedado desplazado ->go home
							n_next <= X"43";
							display_next <= X"0";
							updown_next <= '0';
							state_next <= tx_hsetup;
						elsif ((sw(1)='0' and n_reg=X"FF")or (sw(1)='1' and n_reg=X"FE") or n_reg=X"FD" or (sw(0)='0' and n_reg=X"43")) then 
							state_next <= modo;
						else
							n_next <= X"FF";
							c_next <= to_unsigned(1,M);
							state_next <= tx_hsetup;
						end if;
					end if;
				else
					c_next <= c_dec;
				end if;
		end case;
	end process;

end Behavioral;

