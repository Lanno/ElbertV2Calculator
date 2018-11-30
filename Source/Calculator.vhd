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
		dipSwitches : in unsigned(7 downto 0);
		plus, subtract, multiply, divide, equals, clock : in std_logic;
		dipLEDs, sevenSegmentDisplay : out unsigned(7 downto 0);
		digitSelector : out unsigned(2 downto 0)
	);
	
end Calculator;

architecture Behavioral of Calculator is
	signal memory, value, prevSwitches : unsigned(7 downto 0) := (others => '0');

	signal operator : integer := 0;

begin
	process (clock, plus, subtract, multiply, divide, equals, dipSwitches)
	 variable button_held : std_logic := '0';	
	
	begin
		if rising_edge(clock) then
			prevSwitches <= dipSwitches;
				
			if prevSwitches /= dipSwitches then
				value <= dipSwitches;
				
			end if;
			
			if plus = '0' and button_held = '0' then
				memory <= value;
				
				operator <= 0;
				
			elsif subtract = '0' and button_held = '0' then
				memory <= value;
				
				operator <= 1;
				
				button_held := '1';
				
			elsif multiply = '0' and button_held = '0' then
				memory <= value;
				
				operator <= 2;
				
				button_held := '1';
				
			elsif divide = '0' and button_held = '0' then
				memory <= value;
				
				operator <= 3;
				
				button_held := '1';
				
			elsif equals = '0' and button_held = '0' then
				case operator is
					when 0 =>
						-- Plus operation.
						
						value <= memory + value + "00000001";
						
					when 1 =>
						-- Subtract operation.
						
						value <= memory - value - "00000001";
						
					when others =>
						value <= (others => '0');

				end case;	
				
				button_held := '1';
				
			elsif plus = '1' and subtract = '1' and multiply = '1' and divide = '1' and equals = '1' then
				button_held := '0';
				
			end if;
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

