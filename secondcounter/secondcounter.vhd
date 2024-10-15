library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity secondcounter is
    port (
        clock     : in std_logic;  -- 50 MHz kellosignaali 
        reset     : in std_logic;  -- nollausnappi joka alustaa laskurin
        leds      : out std_logic_vector(6 downto 0)  -- 7 LEDiä
    );
end entity secondcounter;

architecture rtl of secondcounter is

    signal count       		  : integer range 0 to 127 := 0;   -- 7-bittinen laskuri (0-127 (sekuntia))
    signal clockdivider 	  : integer := 0;                  -- kellosignaalin 1 sekunnin jakaja
    constant clockfrequency  : integer := 50000000;           -- sekunnin jakamisvakio
    constant secondcount 	  : integer := clockfrequency - 1; -- Lasketaan 1 sekunnin jakaja

begin
    process (clock, reset)
    begin
        if reset = '0' then
            clockdivider <= 0;
            count <= 0;  -- Nollataan laskuri
        elsif rising_edge(clock) then
            if clockdivider = secondcount then  -- 1 sekunti kulunut
                clockdivider <= 0;
                if count = 127 then  -- jos laskuri saavuttaa 127 laskuri nollaantuu
                    count <= 0;
                else
                    count <= count + 1;
                end if;
            else
                clockdivider <= clockdivider + 1; 
            end if;
        end if;
    end process;

    -- laskurin binäärimuotoon muuttaminen ja ledeillä näyttäminen
    leds <= std_logic_vector(to_unsigned(count, 7));

end architecture rtl;