----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2023 10:51:28 AM
-- Design Name: 
-- Module Name: SoundGen - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.math_real;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity SoundGen is
    Port ( --timing:
           clk 		: in std_logic;
           -- button signal
           button : in STD_LOGIC;
           -- sound output 
           audioOut : out STD_LOGIC);
end SoundGen;

architecture Behavioral of SoundGen is

signal count : unsigned(15 downto 0) := (others => '0');
signal DC : unsigned(4 downto 0) := (others => '0');


begin
-- datapath for sound generator
process(clk, button, count) is
begin
    -- counter to 250 (set the PWM frequency to 100kHz)
    if rising_edge(clk) then
        count <= count + 1;
        if count = 25000-1 then
            count <= (others => '0');
        end if;
    end if;
    

    if ((count < 13) and button = '1') then
        audioOut <= '1';
    else
        audioOut <= '0';
    end if;
end process;
       

end Behavioral;
