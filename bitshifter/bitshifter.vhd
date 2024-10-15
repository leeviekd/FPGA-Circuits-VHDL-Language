library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity pisoconverter is
    Port (
        clk         : in  STD_LOGIC;                    -- Kellosignaali (esim. 50 MHz)
        rst         : in  STD_LOGIC;                    -- Reset-nappi (active low)
        start       : in  STD_LOGIC;                    -- Start-nappi (active low)
        parallel_in : in  STD_LOGIC_VECTOR(7 downto 0); -- 8-bittinen rinnakkaisdata (vipukytkimiltä)
        serial_out  : out STD_LOGIC;                    -- Sarjamuotoinen ulostulo (LED:ille)
        done        : out STD_LOGIC                	  -- Valmis-signaali (LED:ille)
    );
end pisoconverter;

architecture rtl of pisoconverter is
    signal shift_reg   : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');  -- siirtorekisterisignaali
    signal bit_count   : INTEGER range 0 to 8 := 0;                        
    signal clk_div     : STD_LOGIC := '0';                                
    signal clk_count   : INTEGER := 0;                                    
    constant CLK_DIV_MAX : INTEGER := 5;                           -- 10Mhz kellojakaja simulaatioon
	 -- constant CLK_DIV_MAX : INTEGER := 50000000;								 -- 1Hz kellojakaja laudalle
    signal active      : STD_LOGIC := '0';                                -- aktiivisen tilan lippusignaali
begin

    -- kellojakajan prosessi 1Hz signaalille
    process(clk)
    begin
        if rising_edge(clk) then
            if clk_count < CLK_DIV_MAX / 2 then
                clk_count <= clk_count + 1;
            else
                clk_count <= 0;
                clk_div <= not clk_div;  -- 1 Hz jakokello
            end if;
        end if;
    end process;

	-- sarjaliikenteen prosessi
	process(clk_div)
	begin
		 if rst = '0' then
			  shift_reg <= (others => '0');   
			  bit_count <= 0;                 
			  done <= '0';                    
			  active <= '0';                  
			  serial_out <= '0';   -- Nollataan sarjaliikenne ulostulo
		 elsif rising_edge(clk_div) then
			  if start = '0' and active = '0' then  
					shift_reg <= parallel_in;   -- Ladataan rinnakkaisdata
					active <= '1';              -- Aktivoi siirto
					done <= '0';                -- Nollaa done
					bit_count <= 0;             -- Nollaa bittilaskuri
					serial_out <= shift_reg(7); -- Otetaan MSB ulos heti kun siirto alkaa
			  elsif active = '1' then
					if bit_count < 8 then
						 serial_out <= shift_reg(7);  -- Päivitetään sarjaliikenteen ulostulo
						 shift_reg <= std_logic_vector(shift_left(unsigned(shift_reg), 1)); -- Siirretään bittejä
						 bit_count <= bit_count + 1;
					else
						 done <= '1';  -- Siirto valmis
						 active <= '0';  -- Lopetetaan siirto
					end if;
			  end if;
		 end if;
	end process;

end rtl;