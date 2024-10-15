LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bintohex_vhd_tst IS
END bintohex_vhd_tst;
ARCHITECTURE bintohex_arch OF bintohex_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL hex : STD_LOGIC_VECTOR(0 TO 7);
SIGNAL tavu : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT bintohex
	PORT (
	hex : OUT STD_LOGIC_VECTOR(0 TO 7);
	tavu : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : bintohex
	PORT MAP (
-- list connections between master ports and signals
	hex => hex,
	tavu => tavu
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
        -- code executes for every event on sensitivity list  
		  tavu <= "0000";
		  wait for 10 ns;
		  tavu <= "0001";
		  wait for 10 ns;
		  tavu <= "0010";
		  wait for 10 ns;
		  tavu <= "0011";
		  wait for 10 ns;
		  tavu <= "0100";
		  wait for 10 ns;
		  tavu <= "0101";
		  wait for 10 ns;
		  tavu <= "0110";
		  wait for 10 ns;
		  tavu <= "0111";
		  wait for 10 ns;
		  tavu <= "1000";
		  wait for 10 ns;
		  tavu <= "1001";
		  wait for 10 ns;
		  tavu <= "1010";
		  wait for 10 ns;
		  tavu <= "1011";
		  wait for 10 ns;
		  tavu <= "1100";
		  wait for 10 ns;
		  tavu <= "1100";
		  wait for 10 ns;
		  tavu <= "1101";
		  wait for 10 ns;
		  tavu <= "1110";
		  wait for 10 ns;
		  tavu <= "1111";
		  wait for 10 ns;
WAIT;                                                        
END PROCESS always;                                          
END bintohex_arch;
