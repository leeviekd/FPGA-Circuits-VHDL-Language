library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_sinewavegenerator is
end tb_sinewavegenerator;

architecture Behavioral of tb_sinewavegenerator is

    -- Signaalit testattavalle piirille
    signal clk      : std_logic := '0';
    signal reset    : std_logic := '0';
    signal tuningword: std_logic_vector(7 downto 0) := (others => '0');
    signal sin_out  : std_logic_vector(7 downto 0);

    -- Kellon taajuus (100 MHz simuloituna)
    constant CLK_PERIOD : time := 10 ns;

begin

    -- Instanssi testattavasta DDS-piiristä
    uut: entity work.sinewavegenerator
        port map (
            clk => clk,
            reset => reset,
            tuningword => tuningword,
            sin_out => sin_out
        );

    -- Kellosignaalin generointi
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD / 2;
            clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Simulaatioskenaario: Testataan eri taajuusohjauksilla
    stim_proc: process
    begin
        -- Reset alkuun
        reset <= '1';
        wait for 50 ns;
        reset <= '0';
        
        -- Testaa taajuusohjausta pienellä arvolla (matalataajuinen siniaalto)
        tuningword <= "00000001"; -- Hidas siniaalto
        wait for 500 ns;

        -- Testaa suuremmalla arvolla (keskitason taajuus)
        tuningword <= "00000100"; -- Keskitaajuinen siniaalto
        wait for 500 ns;

        -- Testaa vielä suuremmalla arvolla (korkeataajuinen siniaalto)
        tuningword <= "00001000"; -- Korkeampi taajuus
        wait for 500 ns;

        -- Testaa maksimiarvolla (erittäin nopea siniaalto)
        tuningword <= "01111111"; -- Maksimi taajuus
        wait for 500 ns;

        -- Pysäytä simulaatio
        wait;
    end process;

end Behavioral;
