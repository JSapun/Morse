----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2023 04:42:22 PM
-- Design Name: 
-- Module Name: VGA_shell - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vga_sub_shell is
  Port ( slow_clk   : in STD_Logic; -- Slow clock (25 MHz)
         letter_sig : in std_logic_vector(63 downto 0);
         is_q : in std_logic;
         status : in std_logic;
         vsync_sig : out std_logic;
         hsync_sig : out std_logic;
         vgaRed,vgaGreen,vgaBlue : out std_logic_vector(3 downto 0));
end vga_sub_shell;

architecture Behavioral of vga_sub_shell is

component vga_logic IS
PORT ( 	pclk    :	in	STD_LOGIC; --100 MHz clock
		V_sync	: 	out	STD_LOGIC;
		H_sync	: 	out	STD_LOGIC;
        video_on:	out	STD_LOGIC;
		pixel_x	:	out	std_logic_vector(9 downto 0);
        pixel_y	:	out	std_logic_vector(9 downto 0));
end component;

component display_logic is
	port(row,column			: in std_logic_vector(9 downto 0);
	       letter : in std_logic_vector(63 downto 0);
	       is_q : in std_logic;
	       status : in std_logic;
		  color	  : out std_logic_vector(11 downto 0));
end component;

--component vga_test_pattern is
--	port(row,column			: in std_logic_vector(9 downto 0);
--		  color					: out std_logic_vector(11 downto 0));
--end component;

signal pixelx_sig, pixely_sig : std_logic_vector(9 downto 0);
signal colr : std_logic_vector(11 downto 0);

signal videoon_sig :  std_logic;
signal pixelx :  std_logic_vector(9 downto 0);
signal pixely :  std_logic_vector(9 downto 0);

signal test : std_logic_vector(7 downto 0):="01010101";
signal letter_sigtest : std_logic_vector(63 downto 0);

signal is_q_sig,status_sig : std_logic;

begin

VGA : vga_logic port map(
        pclk => slow_clk,
        V_sync => vsync_sig,
        H_sync => hsync_sig,
        video_on => videoon_sig,
        pixel_x => pixelx_sig,
        pixel_y => pixely_sig);
        
Letter_Display : display_logic port map(
        row => pixely_sig,
        column => pixelx_sig,
        letter => letter_sig,
        is_q => is_q_sig,
        status => status_sig,
        color => colr);
        
--pattern_logic : vga_test_pattern port map(
--          row => pixely_sig,
--          column => pixelx_sig,
--		  color	=> colr);
        
pixelx <= pixelx_sig;
pixely <= pixely_sig;

letter_sigtest <= test & test & test & test & test & test & test & test;

vgaRed <= colr(11 downto 8);
vgaGreen <= colr(7 downto 4);
vgaBlue <= colr(3 downto 0);

is_q_sig <= is_q;
status_sig <= status;

end Behavioral;
