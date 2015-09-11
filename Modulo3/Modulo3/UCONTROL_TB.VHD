--  C:\XILINX\10.1\ISE\BIN\NT\UNWRAPPED\UCONTROL_TB.VHD
--  VHDL testbench created by 
--  Xilinx's StateBench 1.01
--  Tue Feb 10 20:17:44 2009

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY ieee;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE testbench_arch OF testbench IS
FILE RESULTS: TEXT IS OUT "results.txt";
	COMPONENT UCONTROL
		PORT (LCD_DB : OUT std_logic_vector (3 DOWNTO 0);
			status : OUT std_logic_vector (7 DOWNTO 0);
			CLK,RESET: IN std_logic;
			LCD_E,LCD_RS : OUT std_logic);
	END COMPONENT;

	SIGNAL LCD_DB : std_logic_vector (3 DOWNTO 0) := std_logic_vector'("0000");
	SIGNAL status : std_logic_vector (7 DOWNTO 0) := std_logic_vector'("00000000");
	SIGNAL CLK,RESET: std_logic := '0';
	SIGNAL LCD_E,LCD_RS : std_logic := '0';

	BEGIN

	UUT : UCONTROL PORT MAP (
		LCD_DB=>LCD_DB,
		status=>status,
		CLK=>CLK,
		RESET=>RESET,
		LCD_E=>LCD_E,
		LCD_RS=>LCD_RS);

	PROCESS
		VARIABLE TX_OUT : LINE;
		VARIABLE TX_ERROR : INTEGER := 0;

		PROCEDURE CHECK_LCD_DB(
			next_LCD_DB : std_logic_vector (3 DOWNTO 0)
		) IS BEGIN
			IF (LCD_DB /= next_LCD_DB) THEN 
				write(TX_OUT,string'(
					"* Error, LCD_DB="));
				write(TX_OUT, LCD_DB);
				write(TX_OUT, string'(" Expected = "));
				write(TX_OUT, next_LCD_DB);
				write(TX_OUT, string'(" *"));
				writeline(results, TX_OUT);
				TX_ERROR := TX_ERROR + 1;
			END IF;
			ASSERT (LCD_DB=next_LCD_DB) REPORT
				 "Error, LCD_DB has incorrect value"
				 SEVERITY ERROR;
		END;

		PROCEDURE CHECK_LCD_E(
			next_LCD_E : std_logic
		) IS BEGIN
			IF (LCD_E /= next_LCD_E) THEN 
				write(TX_OUT,string'(
					"* Error, LCD_E="));
				write(TX_OUT, LCD_E);
				write(TX_OUT, string'(" Expected = "));
				write(TX_OUT, next_LCD_E);
				write(TX_OUT, string'(" *"));
				writeline(results, TX_OUT);
				TX_ERROR := TX_ERROR + 1;
			END IF;
			ASSERT (LCD_E=next_LCD_E) REPORT
				 "Error, LCD_E has incorrect value"
				 SEVERITY ERROR;
		END;

		PROCEDURE CHECK_LCD_RS(
			next_LCD_RS : std_logic
		) IS BEGIN
			IF (LCD_RS /= next_LCD_RS) THEN 
				write(TX_OUT,string'(
					"* Error, LCD_RS="));
				write(TX_OUT, LCD_RS);
				write(TX_OUT, string'(" Expected = "));
				write(TX_OUT, next_LCD_RS);
				write(TX_OUT, string'(" *"));
				writeline(results, TX_OUT);
				TX_ERROR := TX_ERROR + 1;
			END IF;
			ASSERT (LCD_RS=next_LCD_RS) REPORT
				 "Error, LCD_RS has incorrect value"
				 SEVERITY ERROR;
		END;

		PROCEDURE CHECK_status(
			next_status : std_logic_vector (7 DOWNTO 0)
		) IS BEGIN
			IF (status /= next_status) THEN 
				write(TX_OUT,string'(
					"* Error, status="));
				write(TX_OUT, status);
				write(TX_OUT, string'(" Expected = "));
				write(TX_OUT, next_status);
				write(TX_OUT, string'(" *"));
				writeline(results, TX_OUT);
				TX_ERROR := TX_ERROR + 1;
			END IF;
			ASSERT (status=next_status) REPORT
				 "Error, status has incorrect value"
				 SEVERITY ERROR;
		END;

		BEGIN
		-- --------------------
		CLK <= '0'; -- Initialize clock inactive
		RESET <= '1';
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 0 Time 5 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		RESET <= '0';
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 1 Time 25 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 2 Time 45 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 3 Time 65 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 4 Time 85 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 5 Time 105 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 6 Time 125 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 7 Time 145 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 8 Time 165 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 9 Time 185 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 10 Time 205 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 11 Time 225 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 12 Time 245 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 13 Time 265 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 14 Time 285 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 15 Time 305 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 16 Time 325 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 17 Time 345 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 18 Time 365 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 19 Time 385 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 20 Time 405 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;

		IF (TX_ERROR = 0) THEN 
			write(TX_OUT,string'("No errors or warnings"));
			writeline(results, TX_OUT);
			ASSERT (FALSE) REPORT
				"Simulation successful.  No problems detected."
				SEVERITY FAILURE;
		ELSE
			write(TX_OUT, TX_ERROR);
			write(TX_OUT, string'(
				" errors found in simulation"));
			writeline(results, TX_OUT);
			ASSERT (FALSE) REPORT
				"Errors found during simulation"
				SEVERITY FAILURE;
		END IF;
	END PROCESS;
END testbench_arch;

CONFIGURATION UCONTROL_cfg OF testbench IS
	FOR testbench_arch
	END FOR;
END UCONTROL_cfg;
