----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:39:35 06/07/2017 
-- Design Name: 
-- Module Name:    TestDivide - Behavioral 
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

entity TestDivide is
end TestDivide;

architecture Behavioral of TestDivide is
	component divide
		port (
		clk: in std_logic;
		rfd: out std_logic;
		dividend: in std_logic_vector(7 downto 0);
		divisor: in std_logic_vector(7 downto 0);
		quotient: out std_logic_vector(7 downto 0);
		fractional: out std_logic_vector(7 downto 0));
	end component;
	
	signal clk, rfd : std_logic := '1';
	signal dividend, quotient, remainder : std_logic_vector(7 downto 0) := "10000001";
	signal divisor : std_logic_vector(7 downto 0) := "00000010";
begin
	clock : process
	begin
		wait for 10 ns;
		clk <= not clk;
	end process;
	
	divider : divide 
		port map (
		clk => clk,
		rfd => rfd,
		dividend => dividend,
		divisor => divisor,
		quotient => quotient,
		fractional => remainder);
end Behavioral;

