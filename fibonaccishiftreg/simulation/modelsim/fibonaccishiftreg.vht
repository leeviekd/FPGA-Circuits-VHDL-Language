library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

entity tb_fibonaccishiftreg is
end tb_fibonaccishiftreg;

architecture behavior of tb_fibonaccishiftreg is

    -- Komponentti
    component fibonaccishiftreg
        generic (
            CLK_DIV : integer := 500000 -- Generinen arvo kellon hidastamiseen
        );
        Port (
            clk       : in  STD_LOGIC;
            rst       : in  STD_LOGIC;
            enable    : in  STD_LOGIC;       
            lfsr_out  : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

    -- Testipenkin signaalit
    signal clk      : STD_LOGIC := '0';
    signal rst      : STD_LOGIC := '0';
    signal enable   : STD_LOGIC := '0';
    signal lfsr_out : STD_LOGIC_VECTOR(7 downto 0);

    -- Testipenkin apumuuttujat
    constant file_name  : string  := "lfsr_output.txt";
    constant clk_period : time := 10 ns; -- Kellon jakso
    signal count        : integer := 0;

    -- Tiedostoon kirjoittaminen
    file output_file : text;

begin

    -- Instansioidaan LFSR-komponentti
    uut: fibonaccishiftreg
        generic map (
            CLK_DIV => 50 -- Simulaatiota varten käytämme pientä CLK_DIV arvoa
        )
        Port map (
            clk      => clk,
            rst      => rst,
            enable   => enable,
            lfsr_out => lfsr_out
        );

    -- Kellosignaalin generointi
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Simulaation prosessi
    stim_proc: process
        variable line_buf : line;
        variable fstatus  : file_open_status;
    begin
        -- Resetoidaan LFSR
        rst <= '1';
        wait for 20 ns;
        rst <= '0'; 	-- Vapautetaan reset
        wait for 20 ns;
		  
        enable <= '1';	-- Enable LFSR
    
        -- Avataan tiedosto kirjoittamista varten
        file_open(fstatus, output_file, file_name, write_mode);
        assert fstatus = open_ok report "tiedostoa ei voitu avata" severity failure;

        -- Kerätään 100 tulosta tiedostoon
        for i in 0 to 99 loop
            wait until lfsr_out'EVENT; -- Odotetaan nousureunaa
				 -- Muutetaan 8-bittinen vektori kymmenjärjestelmän luvuksi
				 write(line_buf, integer'image(to_integer(unsigned(lfsr_out))));
				 writeline(output_file, line_buf); -- Kirjoitetaan tiedostoon
        end loop;

        -- Suljetaan tiedosto
        file_close(output_file);
        
        -- Lopetetaan simulaatio
        wait for 20 ns;
        enable <= '0';
        wait;
    end process;

end behavior;

