--=============================================================================
--Library Declarations:
--=============================================================================
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;
library UNISIM;
use UNISIM.VComponents.all;

--=============================================================================
--Entity Declaration:
--=============================================================================
entity mc_port_gen is
  generic ( T : integer);                -- Universal T period constant
  Port (    clk_port 		   : in std_logic;
            output_port_button : out std_logic); -- Manual AB MC Gen
end mc_port_gen;


--=============================================================================
--Architecture Type:
--=============================================================================
architecture behavioral_architecture of mc_port_gen is
--=============================================================================
--Signal Declarations: 
--=============================================================================

signal mc_gen_counter : integer := 0; -- Only one counter needed

begin

mc_gen: process(clk_port) -- AB GEN
begin
    if rising_edge(clk_port) then
        mc_gen_counter <= mc_gen_counter + 1;
        if mc_gen_counter = T then
            output_port_button <= '1';
        elsif mc_gen_counter = 2*T then
            output_port_button <= '0';
        elsif mc_gen_counter = 3*T then
            output_port_button <= '1';
        elsif mc_gen_counter = 6*T then
            output_port_button <= '0';
        elsif mc_gen_counter = 9*T then
            output_port_button <= '1';
        elsif mc_gen_counter = 12*T then
            output_port_button <= '0';
        elsif mc_gen_counter = 13*T then
            output_port_button <= '1';
        elsif mc_gen_counter = 14*T then
            output_port_button <= '0';
        elsif mc_gen_counter = 15*T then
            output_port_button <= '1';
        elsif mc_gen_counter = 16*T then
            output_port_button <= '0';
        elsif mc_gen_counter = 17*T then
            output_port_button <= '1';
        elsif mc_gen_counter = 18*T then
            output_port_button <= '0';
        elsif mc_gen_counter = 25*T then
            mc_gen_counter <= 0;
        end if;
    end if;
end process mc_gen; 

end behavioral_architecture;
