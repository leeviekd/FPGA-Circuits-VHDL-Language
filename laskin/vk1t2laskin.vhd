library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vk1t2laskin is
    port (
		  -- FPGA-piirin liukukytkimet 2-5 ja 6-9 muodostavat 2 tavua
        tavu1, tavu2 : in std_logic_vector(3 downto 0); 
		  
		  sum_out     : out std_logic_vector(4 downto 0); -- yhteenlaskun tulos
		  xor_out 	  : out std_logic_vector(3 downto 0) -- xor-tulos
    );
end vk1t2laskin;

architecture rtl of vk1t2laskin is 
    
begin

    -- lasketaan summa 
	 sum_out <= std_logic_vector(unsigned('0' & tavu1) + unsigned('0' & tavu2));
	 
	 -- tehdään xor-operaatio
	 xor_out <= tavu1 xor tavu2;
	 
end rtl;