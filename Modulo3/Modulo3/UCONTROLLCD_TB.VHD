--  C:\XILINX\10.1\ISE\BIN\NT\UNWRAPPED\UCONTROLLCD_TB.VHD
--  VHDL testbench created by 
--  Xilinx's StateBench 1.01
--  Wed Feb 11 00:22:38 2009

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY ieee;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE testbench_arch OF testbench IS
FILE RESULTS: TEXT IS OUT "results.txt";
	COMPONENT UCONTROLLCD
		PORT (status : OUT std_logic_vector (6 DOWNTO 0);
			timer : OUT std_logic_vector (19 DOWNTO 0);
			CLK,RESET: IN std_logic;
			lcd_e,lcd_rs : OUT std_logic);
	END COMPONENT;

	SIGNAL status : std_logic_vector (6 DOWNTO 0) := std_logic_vector'("0000000");
	SIGNAL timer : std_logic_vector (19 DOWNTO 0) := std_logic_vector'("00000000000000000000");
	SIGNAL CLK,RESET: std_logic := '0';
	SIGNAL lcd_e,lcd_rs,rc : std_logic := '0';

	BEGIN

	UUT : UCONTROLLCD PORT MAP (
		status=>status,
		timer=>timer,
		CLK=>CLK,
		RESET=>RESET,
		lcd_e=>lcd_e,
		lcd_rs=>lcd_rs);

	PROCESS
		VARIABLE TX_OUT : LINE;
		VARIABLE TX_ERROR : INTEGER := 0;

		PROCEDURE CHECK_lcd_e(
			next_lcd_e : std_logic
		) IS BEGIN
			IF (lcd_e /= next_lcd_e) THEN 
				write(TX_OUT,string'(
					"* Error, lcd_e="));
				write(TX_OUT, lcd_e);
				write(TX_OUT, string'(" Expected = "));
				write(TX_OUT, next_lcd_e);
				write(TX_OUT, string'(" *"));
				writeline(results, TX_OUT);
				TX_ERROR := TX_ERROR + 1;
			END IF;
			ASSERT (lcd_e=next_lcd_e) REPORT
				 "Error, lcd_e has incorrect value"
				 SEVERITY ERROR;
		END;

		PROCEDURE CHECK_lcd_rs(
			next_lcd_rs : std_logic
		) IS BEGIN
			IF (lcd_rs /= next_lcd_rs) THEN 
				write(TX_OUT,string'(
					"* Error, lcd_rs="));
				write(TX_OUT, lcd_rs);
				write(TX_OUT, string'(" Expected = "));
				write(TX_OUT, next_lcd_rs);
				write(TX_OUT, string'(" *"));
				writeline(results, TX_OUT);
				TX_ERROR := TX_ERROR + 1;
			END IF;
			ASSERT (lcd_rs=next_lcd_rs) REPORT
				 "Error, lcd_rs has incorrect value"
				 SEVERITY ERROR;
		END;

		PROCEDURE CHECK_rc(
			next_rc : std_logic
		) IS BEGIN
			IF (rc /= next_rc) THEN 
				write(TX_OUT,string'(
					"* Error, rc="));
				write(TX_OUT, rc);
				write(TX_OUT, string'(" Expected = "));
				write(TX_OUT, next_rc);
				write(TX_OUT, string'(" *"));
				writeline(results, TX_OUT);
				TX_ERROR := TX_ERROR + 1;
			END IF;
			ASSERT (rc=next_rc) REPORT
				 "Error, rc has incorrect value"
				 SEVERITY ERROR;
		END;

		PROCEDURE CHECK_status(
			next_status : std_logic_vector (6 DOWNTO 0)
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

		PROCEDURE CHECK_timer(
			next_timer : std_logic_vector (19 DOWNTO 0)
		) IS BEGIN
			IF (timer /= next_timer) THEN 
				write(TX_OUT,string'(
					"* Error, timer="));
				write(TX_OUT, timer);
				write(TX_OUT, string'(" Expected = "));
				write(TX_OUT, next_timer);
				write(TX_OUT, string'(" *"));
				writeline(results, TX_OUT);
				TX_ERROR := TX_ERROR + 1;
			END IF;
			ASSERT (timer=next_timer) REPORT
				 "Error, timer has incorrect value"
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
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 21 Time 425 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 22 Time 445 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 23 Time 465 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 24 Time 485 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 25 Time 505 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 26 Time 525 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 27 Time 545 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 28 Time 565 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 29 Time 585 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 30 Time 605 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 31 Time 625 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 32 Time 645 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 33 Time 665 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 34 Time 685 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 35 Time 705 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 36 Time 725 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 37 Time 745 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 38 Time 765 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 39 Time 785 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 40 Time 805 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 41 Time 825 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 42 Time 845 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 43 Time 865 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 44 Time 885 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 45 Time 905 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 46 Time 925 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 47 Time 945 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 48 Time 965 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 49 Time 985 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 50 Time 1005 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 51 Time 1025 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 52 Time 1045 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 53 Time 1065 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 54 Time 1085 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 55 Time 1105 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 56 Time 1125 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 57 Time 1145 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 58 Time 1165 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 59 Time 1185 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 60 Time 1205 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 61 Time 1225 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 62 Time 1245 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 63 Time 1265 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 64 Time 1285 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 65 Time 1305 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 66 Time 1325 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 67 Time 1345 ns
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		CLK <= '0'; -- inactive clock edge
		WAIT FOR 5 ns;
		WAIT FOR 5 ns;
		-- ----------------------
		CLK <= '1'; -- Clock 68 Time 1365 ns
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

CONFIGURATION UCONTROLLCD_cfg OF testbench IS
	FOR testbench_arch
	END FOR;
END UCONTROLLCD_cfg;
