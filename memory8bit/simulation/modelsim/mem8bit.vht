LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mem8bit_vhd_tst IS
END mem8bit_vhd_tst;
ARCHITECTURE mem8bit_arch OF mem8bit_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr : STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
SIGNAL clk : STD_LOGIC;
SIGNAL LEDS : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
SIGNAL readbutton : STD_LOGIC := '0';
SIGNAL SW : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
SIGNAL Writebutton : STD_LOGIC:= '0';

constant CLK_PERIOD : time := 20 ns;

COMPONENT mem8bit
	PORT (
	addr : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	clk : IN STD_LOGIC;
	LEDS : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	readbutton : IN STD_LOGIC;
	SW : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Writebutton : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mem8bit
	PORT MAP (
-- list connections between master ports and signals
	addr => addr,
	clk => clk,
	LEDS => LEDS,
	readbutton => readbutton,
	SW => SW,
	Writebutton => Writebutton
	);
	
	 -- Kellosignaalin luonti
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process;
	
always : PROCESS                                                                                  
BEGIN                                                         
		  -- Testitapaus 1: Kirjoita arvo 10101010 osoitteeseen 00 ja lue se
        SW <= "10101010";        
        addr <= "00";           
        writebutton <= '0';      
        wait for clk_period;    
        writebutton <= '1';      

        wait for clk_period * 2; 

        -- Lue osoitteesta 00
        readbutton <= '0';      
        wait for clk_period;    
        readbutton <= '1';      

        wait for clk_period * 2; 
		  
        -- Testitapaus 2: Kirjoita arvo 01010101 osoitteeseen 01 ja lue se
        SW <= "01010101";        
        addr <= "01";            
        writebutton <= '0';    
        wait for clk_period;
        writebutton <= '1';     

        wait for clk_period * 2;

        -- Lue osoitteesta 01
        readbutton <= '0';       
        wait for clk_period;
        readbutton <= '1';      

		  -- Testitapaus 3: Kirjoita arvo 11001100 osoitteeseen 10 ja lue se
        SW <= "11001100";        
        addr <= "10";            
        writebutton <= '0';      
        wait for clk_period;
        writebutton <= '1';      

        wait for clk_period * 2;

        -- Lue osoitteesta 10
        readbutton <= '0';       
        wait for clk_period;
        readbutton <= '1';
		  
        -- Lopeta simulointi
        wait for 100 ns;

WAIT;                                                        
END PROCESS always;                                          
END mem8bit_arch;
