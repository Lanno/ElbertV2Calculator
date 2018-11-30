----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:46:41 06/06/2017 
-- Design Name: 
-- Module Name:    DisplayValue - Behavioral 
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

entity DisplayValue is
	port (
		clock : in std_logic;
		value : in unsigned(7 downto 0);
		binaryValue, decimalValue : out unsigned(7 downto 0);
		digitSelector : out unsigned(2 downto 0)
	);
		
end DisplayValue;

architecture Behavioral of DisplayValue is
	signal valueTemp : unsigned(7 downto 0);
	
begin
	valueTemp <= not value;
	
	binaryValue <= valueTemp;
	
	updater : entity work.UpdateDisplay(Behavioral)
		port map (
			clock => clock,
			number => valueTemp,
			display => decimalValue,
			displaySelector => digitSelector
		);
			
end Behavioral;

