library verilog;
use verilog.vl_types.all;
entity ModuloLCD is
    port(
        clk50           : in     vl_logic;
        lcd_e_out       : out    vl_logic;
        lcd_rw_out      : out    vl_logic;
        lcd_rs_out      : out    vl_logic;
        rot_press_in    : in     vl_logic;
        modo_in         : in     vl_logic;
        lcd_data_out    : out    vl_logic_vector(7 downto 0);
        leds_out        : out    vl_logic_vector(7 downto 0);
        pb_in           : in     vl_logic_vector(3 downto 0);
        rot_in          : in     vl_logic_vector(1 downto 0)
    );
end ModuloLCD;
