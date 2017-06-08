----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:46:41 06/06/2017 
-- Design Name: 
-- Module Name:    ReadDipSwitches - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

entity ReadDipSwitches is
	port (
		clock : in std_logic;
		dipSwitches : in std_logic_vector(7 downto 0);
		dipLEDs, sevenSegmentDisplay : out std_logic_vector(7 downto 0);
		digitSelector : out std_logic_vector(2 downto 0)
	);
		
end ReadDipSwitches;

architecture Behavioral of ReadDipSwitches is
	signal dipSwitchesTemp : std_logic_vector(7 downto 0);
	
begin
	dipSwitchesTemp <= not dipSwitches;
	
	dipLEDs <= dipSwitchesTemp;
	
	updater : entity work.UpdateDisplay(Behavioral)
		port map (
			clock => clock,
			number => dipSwitchesTemp,
			display => sevenSegmentDisplay,
			displaySelector => digitSelector
		);
			
end Behavioral;

