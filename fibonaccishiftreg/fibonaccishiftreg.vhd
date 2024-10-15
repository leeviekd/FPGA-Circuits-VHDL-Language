library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fibonaccishiftreg is
	 generic( CLK_DIV : integer := 500000 );
    Port (
        clk       : in  STD_LOGIC;
        rst       : in  STD_LOGIC;
        enable    : in  STD_LOGIC;       
        lfsr_out  : out STD_LOGIC_VECTOR(7 downto 0)
    );
end fibonaccishiftreg;

architecture rtl of fibonaccishiftreg is
    signal lfsr      : STD_LOGIC_VECTOR(15 downto 0) := (15=>'1', others=>'0'); -- Nollasta poikkeava alkuarvo
    signal bit_count : integer range 0 to 7 := 0;
    signal temp_out  : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal slow_clk  : STD_LOGIC := '0';  -- Hidastettu kello
    signal counter   : integer := 0;
begin

    -- Kellon hidastaminen
    process(clk, rst)
    begin
        if rst = '1' then
            counter <= 0;
            slow_clk <= '0';
        elsif rising_edge(clk) then
            if counter = CLK_DIV then
                slow_clk <= not slow_clk; -- Vaihdetaan hidas kello
                counter <= 0;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;
	 

    -- LFSR ja tulosten päivittäminen enable-signaalin ja resetin kanssa
    process(slow_clk, rst)
    begin
        if rst = '1' then
            -- Resetoidaan LFSR alkuarvoon ja muut signaalit
            lfsr <= (15=>'1', others=>'0'); -- Nollasta poikkeava alkuarvo
            bit_count <= 0;
            temp_out <= (others => '0');
            lfsr_out <= (others => '0'); -- Resetoi myös ulostulo
        elsif rising_edge(slow_clk) then
            if enable = '1' then
                -- Siirretään LFSR:ää eteenpäin ja lisätään uusi bitti tulosvektoriin
                temp_out(bit_count) <= lfsr(15); -- Ota ulos MSB-bitti
                
                -- Fibonacci LFSR:n rekisteripäivitys, käyttämällä XORia tietyillä paikoilla
                lfsr <= lfsr(14 downto 0) & (lfsr(15) xor lfsr(13) xor lfsr(12) xor lfsr(10));
                
                -- Päivitetään bit_count ja lfsr_out
                if bit_count = 7 then
                    bit_count <= 0;
                    lfsr_out <= temp_out; -- Päivitä 8-bittinen ulostulo
                else
                    bit_count <= bit_count + 1;
                end if;
            end if;
        end if;
    end process;

end rtl;
