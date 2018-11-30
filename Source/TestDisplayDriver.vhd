--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:39:56 06/07/2017
-- Design Name:   
-- Module Name:   C:/Users/noluc/Documents/Xilinx ISE Projects/BinaryCalculator/TestDisplayDriver.vhd
-- Project Name:  BinaryCalculator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DisplayDriver
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TestDisplayDriver IS
END TestDisplayDriver;
 
ARCHITECTURE behavior OF TestDisplayDriver IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DisplayDriver
    PORT(
         clock : IN  std_logic;
         onesDigit : IN  std_logic_vector(7 downto 0);
         tensDigit : IN  std_logic_vector(7 downto 0);
         hundredsDigit : IN  std_logic_vector(7 downto 0);
         display : OUT  std_logic_vector(7 downto 0);
         selector : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal onesDigit : std_logic_vector(7 downto 0) := (others => '0');
   signal tensDigit : std_logic_vector(7 downto 0) := (others => '0');
   signal hundredsDigit : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal display : std_logic_vector(7 downto 0);
   signal selector : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DisplayDriver PORT MAP (
          clock => clock,
          onesDigit => onesDigit,
          tensDigit => tensDigit,
          hundredsDigit => hundredsDigit,
          display => display,
          selector => selector
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      onesDigit <= "00000001";
		
		tensDigit <= "00000010";
		
		hundredsDigit <= "00000011";

      wait;
   end process;

END;
