----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:45:35 06/07/2017 
-- Design Name: 
-- Module Name:    UpdateDisplay - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

entity UpdateDisplay is
	port (clock : in std_logic;
			number : in unsigned(7 downto 0);
			display : out unsigned(7 downto 0);
			displaySelector : out unsigned(2 downto 0));
end UpdateDisplay;

architecture Behavioral of UpdateDisplay is
	component divide
		port (
		clk: in std_logic;
		rfd: out std_logic;
		dividend: in unsigned(7 downto 0);
		divisor: in unsigned(7 downto 0);
		quotient: out unsigned(7 downto 0);
		fractional: out unsigned(7 downto 0));
	end component;
	
	signal onesDigit, tensDigit, tensDigitTemp, hundredsDigit : unsigned(7 downto 0);
	
begin	
	divider1 : divide 
		port map ( 
			clk => clock,
			rfd => open,
			dividend => number,
			divisor => "00001010",
			quotient => open,
			fractional => onesDigit
		);
		
	divider2 : divide 
		port map ( 
			clk => clock,
			rfd => open,
			dividend => number,
			divisor => "00001010",
			quotient => tensDigitTemp,
			fractional => open
		);
	
	divider3 : divide 
		port map ( 
			clk => clock,
			rfd => open,
			dividend => tensDigitTemp,
			divisor => "00001010",
			quotient => open,
			fractional => tensDigit
		);
	
	divider4 : divide 
		port map ( 
			clk => clock,
			rfd => open,
			dividend => number,
			divisor => "01100100",
			quotient => hundredsDigit,
			fractional => open
		);
		
	dispDriver : entity work.DisplayDriver(Behavioral)
		port map (
			clock => clock,
			onesDigit => onesDigit,
			tensDigit => tensDigit,
			hundredsDigit => hundredsDigit,
			display => display,
			selector => displaySelector
		);	
	
end Behavioral;

