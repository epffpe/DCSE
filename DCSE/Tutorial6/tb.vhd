entity tb is
end tb;

architecture behavioral of tb is
	component lcd
		port(
		clk, reset : in bit;
		SF_D: out bit_vector(0 to 3);
		LCD_E, LCD_RS, LCD_RW : out bit );
	end component;

	signal clk, reset : bit;
	signal SF_D : bit_vector(0 to 3);
	signal LCD_E, LCD_RS, LCD_RW : bit;
	signal out0 : bit;

	constant PERIOD : time := 200 ps;
	constant DUTY_CYCLE : real := 0.5;
	constant OFFSET : time := 0 ns;

	signal i : integer range 0 to 300000 := 1;


begin
	lcd_map : lcd
	port map(clk => clk,
		reset => reset,
		SF_D => SF_D,
		LCD_E => LCD_E,
		LCD_RS => LCD_RS,
		LCD_RW => LCD_RW );

        PROCESS    -- clock process for clk
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                clk <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                clk <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;


	--PROCESS    -- clock process for clk
        --BEGIN
		--if(i = 300000) then
			--wait;
		--else
			--clk <= '0';
			--WAIT FOR 100 ps;
			--clk <= '1';
			--WAIT FOR 100 ps;
			--wait;
		--end if;
        --END PROCESS;

	--process
	--begin
		--in0(0) <= '0';
		--in0(1) <= '1';
		--wait for 200 ps;
		--in0(0) <= '1';
		--in0(1) <= '1';
		--wait for 200 ps;
		--wait;
	--end process;

end behavioral;

