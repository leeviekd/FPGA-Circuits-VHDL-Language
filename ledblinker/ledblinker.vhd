library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ledblinker is
    Port ( 
        CLK : in STD_LOGIC; -- 50 MHz kellosignaali
        LEDR0 : out STD_LOGIC -- LED

    );
end ledblinker;

architecture Behavioral of ledblinker is
    signal counter : integer := 0; -- counter laskee milloin kulunut 50 miljoonaa sykliä
    signal led_state : STD_LOGIC := '0';
    constant MAX_COUNT : integer := 50000000; -- jakamalla kellosignaali tällä saadaan yksi sekunti

begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            if counter = MAX_COUNT then
                counter <= 0; -- Nollaa laskuri
                led_state <= not led_state; -- vaihda LEDin tila
            else
                counter <= counter + 1; -- kasvattaa laskuria
            end if;
        end if;
    end process;

    LEDR0 <= led_state; -- Aseta LEDin tila
	 
end Behavioral;
