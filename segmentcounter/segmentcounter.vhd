library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity segmentcounter is
    port(
        clk          : in std_logic;          
        reset        : in std_logic;          -- reset SW1
        start        : in std_logic;          -- Start KEY0
        stop         : in std_logic;          -- Stop KEY1
        sec_display  : out std_logic_vector(6 downto 0); -- 7-segment näyttö sekunneille
        tens_display : out std_logic_vector(6 downto 0); -- 7-segment näyttö kymmenille sekunneille
        run_led      : out std_logic          -- LED päällä jos ajanotto on käynnissä
    );
end segmentcounter;

architecture rtl of segmentcounter is

    -- tilojen määrittely
    type state_type is (idle, counting, paused);  -- tilat: odotus, laskenta, tauko
    signal state, next_state : state_type;

    signal start_reg, stop_reg : std_logic := '0';  -- start ja stop rekisterit
    signal start_prev, stop_prev : std_logic := '0';  -- nappien edelliset arvot

    -- ajastimen laskentasignaalit 
    signal seconds    : integer range 0 to 59 := 0;  
    signal clk_div    : integer := 0;  -- kellon jakaja 
    signal clk_1hz    : std_logic := '0';  -- 1Hz kello sekuntien laskentaan

    -- 7-segmenttinäytöllä esitättevien numeroiden toteutus
    function to_7seg(input : integer) return std_logic_vector is
    begin
        case input is
            when 0 => return "1000000"; 
            when 1 => return "1111001"; 
            when 2 => return "0100100"; 
            when 3 => return "0110000"; 
            when 4 => return "0011001"; 
            when 5 => return "0010010"; 
            when 6 => return "0000010"; 
            when 7 => return "1111000"; 
            when 8 => return "0000000"; 
            when 9 => return "0010000"; 
            when others => return "1111111"; 
        end case;
    end function;

begin
    -- kellojakaja
    process(clk)
    begin
        if rising_edge(clk) then
            if clk_div = 25000000 then  -- jaetaan 25M, koska 50 miljoonalla jakaminen teki kaksi kertaa hitaamman jakson
                clk_div <= 0;
                clk_1hz <= not clk_1hz;  -- 1Hz signaali sekunnin laskentaan
            else
                clk_div <= clk_div + 1;  -- jatkaa laskemista
            end if;
        end if;
    end process;

    -- nappien debounce ja reunatunnistus
    process(clk)
    begin
        if rising_edge(clk) then
            -- tallennetaan start- ja stop-nappien edelliset arvot
            start_prev <= start_reg;
            stop_prev <= stop_reg;
            
            -- rekisteröi start ja stop
            start_reg <= start;
            stop_reg <= stop;
        end if;
    end process;

    -- tilansiirtologiikka
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then   -- reset
                state <= idle;    -- resetistä odotustilaan
            else
                state <= next_state;
            end if;
        end if;
    end process;

    -- seuraava tila logiikka
    process(state, start_reg, stop_reg, start_prev, stop_prev)
    begin
        case state is
            when idle =>
                if start_reg = '1' and start_prev = '0' then  -- laskenta alkaa kun KEY0 painetaan
                    next_state <= counting;
                else
                    next_state <= idle;
                end if;
                
            when counting =>
                if stop_reg = '1' and stop_prev = '0' then    -- laskenta pysähtyy kun KEY1 painetaan
                    next_state <= paused;
                else
                    next_state <= counting;
                end if;
                
            when paused =>
                if start_reg = '1' and start_prev = '0' then  -- pause -> laskenta, kun KEY0 painetaan
                    next_state <= counting;
                else
                    next_state <= paused;
                end if;
                
            when others =>
                next_state <= idle;  -- odotustila 
        end case;
    end process;

    -- sekuntien laskentalogiikka
    process(clk_1hz)
    begin
        if reset = '1' then
            seconds <= 0;  -- resettaa sekunnit
        elsif rising_edge(clk_1hz) then
            if state = counting then
                if seconds = 59 then
                    seconds <= 0;  -- resettaa sekunnit kun minuutti tulee täyteen 
                else
                    seconds <= seconds + 1;  -- lisää sekunti
                end if;
            end if;
        end if;
    end process;

    -- 7-segment näyttö 
    sec_display <= to_7seg(seconds mod 10);  -- yksiköt näytölle
    tens_display <= to_7seg(seconds / 10);  -- kymmenet toiselle näytölle
    run_led <= '1' when state = counting else '0';  -- led0 päällä, kun ajanotto käynnissä
    
end rtl;
