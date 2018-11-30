--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:53:24 06/07/2017
-- Design Name:   
-- Module Name:   C:/Users/noluc/Documents/Xilinx ISE Projects/BinaryCalculator/TestReadDipSwitches.vhd
-- Project Name:  BinaryCalculator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ReadDipSwitches
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
 
ENTITY TestReadDipSwitches IS
END TestReadDipSwitches;
 
ARCHITECTURE behavior OF TestReadDipSwitches IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ReadDipSwitches
    PORT(
         clock : IN  std_logic;
         dipSwitches : IN  std_logic_vector(7 downto 0);
         dipLEDs : OUT  std_logic_vector(7 downto 0);
         sevenSegmentDisplay : OUT  std_logic_vector(7 downto 0);
         digitSelector : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal dipSwitches : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal dipLEDs : std_logic_vector(7 downto 0);
   signal sevenSegmentDisplay : std_logic_vector(7 downto 0);
   signal digitSelector : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ReadDipSwitches PORT MAP (
          clock => clock,
          dipSwitches => dipSwitches,
          dipLEDs => dipLEDs,
          sevenSegmentDisplay => sevenSegmentDisplay,
          digitSelector => digitSelector
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

      dipSwitches <= "00000000";

      wait;
   end process;

END;
