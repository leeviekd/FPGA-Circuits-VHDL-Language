library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mem8bit is 
	port (
		clk : in std_logic;
		SW : in std_logic_vector(7 downto 0);
		addr : in std_logic_vector(1 downto 0);
		readbutton : in std_logic;
		Writebutton : in std_logic;
		LEDS : out std_logic_vector(7 downto 0)
	);
end entity mem8bit;

architecture rtl of mem8bit is

	 type memory_array is array(3 downto 0) of std_logic_vector(7 downto 0); -- 4 osoitetta, kukin 8-bittiä
    signal memory : memory_array := (others => (others => '0')); -- Alustetaan nolliksi

begin

    process(clk)
    begin
        if rising_edge(clk) then
            -- Kirjoitetaan data muistiin, kun writebutton on painettuna
            if writebutton = '0' then
                memory(to_integer(unsigned(addr))) <= SW; -- Kirjoitetaan osoitteeseen addr
            end if;

            -- Luetaan data muistin osoitteesta, kun readbutton on painettuna
            if readbutton = '0' then
                LEDS <= memory(to_integer(unsigned(addr))); -- Luetaan muistista data
            end if;
        end if;
    end process;

end architecture rtl;