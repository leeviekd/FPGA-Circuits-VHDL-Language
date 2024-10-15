library ieee;
use ieee.std_logic_1164.all;

entity multiplexer is
    port (
        SW      : in  std_logic_vector(1 downto 0); 
        BTN     : in  std_logic;                      
        LED     : out std_logic                              
    );
end entity;

architecture rtl of multiplexer is
	
begin
    with SW select
        LED <= '0'        when "00",    -- Näytetään '0'
               BTN        when "01",    -- Näytetään BTN:n tila
               not BTN    when "10",    -- Näytetään käänteinen BTN:n tila
               '1'        when "11",    -- Näytetään '1'
               '0'        when others;  -- Oletustila (näytetään '0')
end architecture rtl;
