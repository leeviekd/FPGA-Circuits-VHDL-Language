LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY multiplexer_vhd_tst IS
END multiplexer_vhd_tst;
ARCHITECTURE multiplexer_arch OF multiplexer_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BTN : STD_LOGIC := '0';
SIGNAL LED : STD_LOGIC;
SIGNAL SW : STD_LOGIC_VECTOR(1 downto 0) := "00";
COMPONENT multiplexer
	PORT (
	BTN : IN STD_LOGIC;
	LED : OUT STD_LOGIC;
	SW : IN STD_LOGIC_VECTOR(1 downto 0)
	);
END COMPONENT;
BEGIN
	i1 : multiplexer
	PORT MAP (
-- list connections between master ports and signals
	BTN => BTN,
	LED => LED,
	SW => SW
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
 begin
        -- Test case 00: Output should be 0
        SW <= "00";
        BTN <= '0';
        wait for 10 ns;

        -- Test case 01: Output should follow the BTN state
        SW <= "01";
        BTN <= '1';
        wait for 10 ns;

        BTN <= '0';
        wait for 10 ns;

        -- Test case 10: Output should be inverted BTN state
        SW <= "10";
        BTN <= '1';
        wait for 10 ns;

        BTN <= '0';
        wait for 10 ns;

        -- Test case 11: Output should be 1
        SW <= "11";
        wait for 10 ns;

        -- End simulation
    wait;
    end process;                                                                                                 
END multiplexer_arch;