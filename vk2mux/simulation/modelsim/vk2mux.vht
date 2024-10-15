LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY vk2mux_vhd_tst IS
END vk2mux_vhd_tst;
ARCHITECTURE vk2mux_arch OF vk2mux_vhd_tst IS
-- constants                                                 
-- signals
SIGNAL SW : STD_LOGIC_VECTOR(0 TO 1);                                                   
SIGNAL BTN : STD_LOGIC;
SIGNAL LED : STD_LOGIC;
COMPONENT vk2mux
	PORT (
	SW : IN STD_LOGIC_VECTOR(0 TO 1);
	BTN : IN STD_LOGIC;
	LED : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : vk2mux
	PORT MAP (
-- list connections between master ports and signals
	SW => SW,
	BTN => BTN,
	LED => LED
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
BEGIN                                                         
        -- Test case 00: LED should be '0'
        SW <= "00";
        BTN <= '0';  -- BTN voi olla mikä tahansa, koska LED:n arvo on kiinteä '0'
        wait for 10 ns;
        assert LED = '0' report "Test failed for SW = 00" severity error;

        -- Test case 01: LED should follow BTN
        SW <= "01";
        BTN <= '1';  -- LED = BTN, joten LED:n pitäisi olla '1'
        wait for 10 ns;
        assert LED = '1' report "Test failed for SW = 01 with BTN = 1" severity error;

        BTN <= '0';  -- LED = BTN, joten LED:n pitäisi olla '0'
        wait for 10 ns;
        assert LED = '0' report "Test failed for SW = 01 with BTN = 0" severity error;

        -- Test case 10: LED should be inverted BTN
        SW <= "10";
        BTN <= '1';  -- LED = NOT(BTN), joten LED:n pitäisi olla '0'
        wait for 10 ns;
        assert LED = '0' report "Test failed for SW = 10 with BTN = 1" severity error;

        BTN <= '0';  -- LED = NOT(BTN), joten LED:n pitäisi olla '1'
        wait for 10 ns;
        assert LED = '1' report "Test failed for SW = 10 with BTN = 0" severity error;

        -- Test case 11: LED should be '1'
        SW <= "11";
        BTN <= '0';  
        wait for 10 ns;
        assert LED = '1' report "Test failed for SW = 11" severity error;

WAIT;                                                        
END PROCESS;                                          
END vk2mux_arch;
