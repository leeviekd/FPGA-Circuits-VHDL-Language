library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bintohex is 
    port (
        hex  : out std_logic_vector(0 to 7);
		  tavu : in std_logic_vector(3 downto 0)
    );
end bintohex;

architecture rtl of bintohex is 
begin
    process(tavu) -- Add a process block and include tavu in the sensitivity list
    begin
        case tavu is 
            when "0000" =>
                hex <= "00000011";
            when "0001" =>
                hex <= "10011111";
            when "0010" =>
					 hex <= "00100101";
            when "0011" =>
					 hex <= "00001101";
            when "0100" =>
					 hex <= "10011001";
            when "0101" =>
					 hex <= "01001001";
            when "0110" =>
					 hex <= "01000001";
            when "0111" =>
					 hex <= "00011111";
            when "1000" =>
					 hex <= "00000001";
            when "1001" =>
					 hex <= "00011001";
            when "1010" =>
					 hex <= "00010000";
            when "1011" =>
					 hex <= "00000000";
            when "1100" =>
					 hex <= "01100010";
            when "1101" =>
					 hex <= "00000010";
            when "1110" =>
					 hex <= "01100000";
            when "1111" =>
					 hex <= "01110000";
            when others =>
                hex <= (others => '0'); -- Handle invalid cases
        end case;
    end process;
end rtl;
