-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "09/25/2024 10:01:54"
                                                            
-- Vhdl Test Bench template for design  :  vk1t2laskin
-- 
-- Simulation tool : Questa Intel FPGA (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY vk1t2laskin_vhd_tst IS
END vk1t2laskin_vhd_tst;
ARCHITECTURE vk1t2laskin_arch OF vk1t2laskin_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL sum_out : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL tavu1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL tavu2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL xor_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT vk1t2laskin
	PORT (
	sum_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	tavu1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	tavu2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	xor_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : vk1t2laskin
	PORT MAP (
-- list connections between master ports and signals
	sum_out => sum_out,
	tavu1 => tavu1,
	tavu2 => tavu2,
	xor_out => xor_out
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
		  tavu1 <= "0001";
		  tavu2 <= "0001";
		  wait for 10 ns;
		  
		  tavu1 <= "0010";
		  tavu2 <= "0001";
		  wait for 10 ns;
		  
		  tavu1 <= "0101";
		  tavu2 <= "0010";
		  wait for 10 ns;
		  
		  tavu1 <= "1111";
		  tavu2 <= "1111";
		  wait for 10 ns;
		  
		  
WAIT;                                                        
END PROCESS always;                                          
END vk1t2laskin_arch;
