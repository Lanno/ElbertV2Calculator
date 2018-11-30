--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:53:07 06/07/2017
-- Design Name:   
-- Module Name:   C:/Users/noluc/Documents/Xilinx ISE Projects/BinaryCalculator/TestUpdateDisplay.vhd
-- Project Name:  BinaryCalculator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UpdateDisplay
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
 
ENTITY TestUpdateDisplay IS
END TestUpdateDisplay;
 
ARCHITECTURE behavior OF TestUpdateDisplay IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UpdateDisplay
    PORT(
         clock : IN  std_logic;
         number : IN  std_logic_vector(7 downto 0);
         display : OUT  std_logic_vector(7 downto 0);
         displaySelector : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal number : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal display : std_logic_vector(7 downto 0);
   signal displaySelector : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UpdateDisplay PORT MAP (
          clock => clock,
          number => number,
          display => display,
          displaySelector => displaySelector
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

      number <= "01111011";

      wait;
   end process;

END;
