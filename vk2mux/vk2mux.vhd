library ieee;
use ieee.std_logic_1164.all;


entity vk2mux is
    port (
        SW      : in  std_logic_vector(0 to 1);
        BTN     : in  std_logic;
        LED     : out std_logic                     
    );
end entity;

architecture behavior of vk2mux is
begin
    process(SW, BTN)
    begin
        case SW is
            when "00" => LED <= '0';
            when "01" => LED <= BTN;
            when "10" => LED <= not BTN;
            when "11" => LED <= '1';
            when others => LED <= '0';            
        end case;
     end process;
end architecture;