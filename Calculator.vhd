----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:06:24 06/07/2017 
-- Design Name: 
-- Module Name:    Calculator - Behavioral 
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
use ieee.numeric_std.all;

entity Calculator is
	port (
		dipSwitches : in std_logic_vector(7 downto 0);
		plus, equals, clock : in std_logic;
		dipLEDs, sevenSegmentDisplay : out std_logic_vector(7 downto 0);
		digitSelector : out std_logic_vector(2 downto 0)
	);
	
end Calculator;

architecture Behavioral of Calculator is
	signal memory, value, result, prevSwitches : std_logic_vector(7 downto 0);

	signal operator : integer := 0; -- 0 -> "plus", 1 -> "subtract"

begin
	-- Switch the displayed value
	process (clock, equals, dipSwitches)	
	begin
		if rising_edge(clock) then
			prevSwitches <= dipSwitches;
				
			if prevSwitches /= dipSwitches then
				value <= dipSwitches;
				
			elsif equals = '0' then
				value <= result;
				
			end if;
		end if;
	end process;

	-- Operator Selection Process
	process (plus)
	begin
		if falling_edge(plus) then
			memory <= value;

			operator <= 0;
			
		end if;
	end process;
	
	-- Calculation Process
	process (equals, dipSwitches)
	begin
		if falling_edge(equals) then
			case operator is
				when 0 =>
					-- Plus operation.
					
					result <= std_logic_vector(unsigned(memory) + unsigned(value) + "00000001");
					
				when others =>
					result <= (others => '0');

			end case;
		end if;
	end process;
	
	-- Connect the value.
	displayProcess : entity DisplayValue
		port map (
			clock => clock,
			value => value,
			binaryValue => dipLEDs,
			decimalValue => sevenSegmentDisplay,
			digitSelector => digitSelector
		);
		
end Behavioral;

