library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity segmentcounter_tb is
-- No ports for a test bench
end segmentcounter_tb;

architecture tb of segmentcounter_tb is
    -- Signals for connecting to the segmentcounter entity
    signal clk          : std_logic := '0'; 
    signal reset        : std_logic := '0'; 
    signal start        : std_logic := '0';
    signal stop         : std_logic := '0';
    signal sec_display  : std_logic_vector(6 downto 0); 
    signal tens_display : std_logic_vector(6 downto 0); 
    signal run_led      : std_logic;      

    -- Clock period definition
    constant clk_period : time := 20 ns; -- 50 MHz clock

begin
    -- Instantiate the stopwatch entity
    uut: entity work.segmentcounter
        port map (
            clk          => clk,
            reset        => reset,
            start        => start,
            stop         => stop,
            sec_display  => sec_display,
            tens_display => tens_display,
            run_led      => run_led
        );

    -- Clock process: Generates a 50 MHz clock
    clk_process : process
    begin
        clk <= '0';
        wait for clk_period / 2;
        clk <= '1';
        wait for clk_period / 2;
    end process;

    -- test process: simulating button presses
    stim_proc: process
    begin
        -- initial reset
        reset <= '1'; -- assert reset
        wait for 100 ns; -- hold reset for 100 ns
        reset <= '0'; -- release reset

        -- start (press KEY0)
        start <= '1';
        wait for 50 ns;
        start <= '0';

        wait for 5 us;

        -- stop (press KEY1)
        stop <= '1';
        wait for 50 ns;
        stop <= '0';

        -- wait while the counter is paused
        wait for 3 us;

        -- start again (press KEY0)
        start <= '1';
        wait for 50 ns;
        start <= '0';

        wait for 4 us;

        -- stop the counter again
        stop <= '1';
        wait for 50 ns;
        stop <= '0';

        -- reset the counter
        reset <= '1';
        wait for 100 ns;
        reset <= '0';

        -- End simulation
        wait;
    end process;
end tb;