----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:32:55 06/07/2017 
-- Design Name: 
-- Module Name:    DisplayDriver - Behavioral 
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

entity DisplayDriver is
	port(
		clock : in std_logic;
		onesDigit, tensDigit, hundredsDigit : in std_logic_vector(7 downto 0);
		display : out std_logic_vector(7 downto 0);
		selector : out std_logic_vector(2 downto 0)
	);
end DisplayDriver;

architecture Behavioral of DisplayDriver is
	signal counter : integer := 0;
begin 
	process (clock) is 
		procedure displayMapping (
			signal digit : in std_logic_vector(7 downto 0); 
			signal display : out std_logic_vector(7 downto 0)) is
			
			variable tempDigit : integer;
		begin
			tempDigit := to_integer(unsigned(digit));
		
			--        a    
			--      ____
			--   f |    | b
			--     |_g__| 
			--   e |    | c
			--     |____| .h
			--       d
			
			--    hgfedcba
		
			case tempDigit is
				when 0 => display <= "11000000"; -- "00000010";
				when 1 => display <= "11111001"; -- "10011110"; 
				when 2 => display <= "10100100"; -- "00100100";
				when 3 => display <= "10110000"; -- "00001100";
				when 4 => display <= "10011001"; -- "10011000";
				when 5 => display <= "10010010"; -- "01001000";
				when 6 => display <= "10000010"; -- "01000000";
				when 7 => display <= "11111000"; -- "00011110";
				when 8 => display <= "10000000"; -- "00000000";
				when 9 => display <= "10011000"; -- "00011000";
				when others => display <= "11111111";
			end case;
		end displayMapping;
	begin
		if rising_edge(clock) then
			case counter is
				when 100 =>
					selector <= not "100";
					
					counter <= counter + 1;

				when 105 =>
					displayMapping(onesDigit, display);
					
					counter <= counter + 1;

				when 200 => 
					selector <= not "010";
					
					counter <= counter + 1;

				when 205 =>
					displayMapping(tensDigit, display);
					
					counter <= counter + 1;

				when 300 =>
					selector <= not "001";
					
					counter <= counter + 1;

				when 305 =>
					displayMapping(hundredsDigit, display);
				
					counter <= 0;

				when others =>
					counter <= counter + 1;
			
			end case;
		end if;
	end process;
end Behavioral;

