----------------------------------------------------------------------------------
-- Engineer:		J. Graham Keggi
-- 
-- Create Date:	15:10:36 07/12/2010 
-- Module Name:	vga_test_pattern - Behavioral
-- Target Device:	Spartan3E-500 Nexys2
--
-- Description:	Reads in current pixel X and Y as 2 10-bit vectors and supplys
--						an 8-bit color code consistent with the VGA test pattern
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;    


entity vga_test_pattern is
	port(row,column			: in std_logic_vector(9 downto 0);
		  color					: out std_logic_vector(11 downto 0));
end vga_test_pattern;

architecture Behavioral of vga_test_pattern is
	
	-- Predefined 8-bit colors that nearly match real test pattern colors
	constant RED		: std_logic_vector(11 downto 0) := "111000000000";
	constant GREEN		: std_logic_vector(11 downto 0) := "000011100000";
	constant BLUE		: std_logic_vector(11 downto 0) := "000000001100";
	constant CYAN		: std_logic_vector(11 downto 0) := "000011101100";
	constant YELLOW	: std_logic_vector(11 downto 0) := "111011100000";
	constant PURPLE	: std_logic_vector(11 downto 0) := "111000001100";
	constant WHITE		: std_logic_vector(11 downto 0) := "110011001100";
	constant BLACK		: std_logic_vector(11 downto 0) := "000000000000";
	constant GRAY0		: std_logic_vector(11 downto 0) := "010001000100";
	constant GRAY1		: std_logic_vector(11 downto 0) := "100010001000";
	constant DARK_BLU	: std_logic_vector(11 downto 0) := "000001001000";
	constant DARK_PUR	: std_logic_vector(11 downto 0) := "010000001000";

begin

	-- set the colors based on the current pixel
	process(row,column)
	begin
		-- large vertical color bands, evenly spaced horizontally, 320px vertically
		-- Gray, yellow, cyan, green, purple, red, blue
		if (column >= 0) and (column < 92) and (row >= 0) and (row < 320) then
			color <= GRAY1;
		elsif (column >= 92) and (column < 184) and (row >= 0) and (row < 320) then
			color <= YELLOW;
		end if;
	end process;

end Behavioral;