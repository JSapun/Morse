----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 01:07:28 PM
-- Design Name: 
-- Module Name: letter_disp - Behavioral
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
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity display_logic is
Port ( row,column : in std_logic_vector(9 downto 0);
        letter : in std_logic_vector(63 downto 0);
        is_q : in std_logic;
        status : in std_logic;
        color	: out std_logic_vector(11 downto 0));
end display_logic;

architecture Behavioral of display_logic is
    -- Predefined 8-bit colors that nearly match real test pattern colors
	constant RED		: std_logic_vector(11 downto 0) := "111000000000";
	constant GREEN		: std_logic_vector(11 downto 0) := "000011100000";
	constant WHITE		: std_logic_vector(11 downto 0) := "110011001100";
	constant BLACK		: std_logic_vector(11 downto 0) := "000000000000";
	
	signal sx,sy : integer := 0;
	signal upcount : unsigned(3 downto 0) :="0000";
	
	signal is_q_sig,status_sig : std_logic; 
	
begin

is_q_sig <= is_q;
status_sig <= status;

grid_gen : process(column,row) begin
    sx <= TO_INTEGER(unsigned(column(9 downto 4)));
    sy <= TO_INTEGER(unsigned(row(9 downto 4)));
end process;
    

--test_disp : process(sy,sx) begin
--    color <= BLACK;
--    if sx>=16 then
--        if sx<=23 then
--            if sy>=11 then
--                if sy<=18 then
--                    color <= WHITE;
--               end if;
--            end if;
--        end if;
--    end if;
--end process;

letter_proc : process(letter) begin
    color <= BLACK;
    case sx is 
        when  16 =>
            case sy is 
                when 11 => 
                    if(letter(63)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 12 =>
                    if(letter(55)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 13 =>
                    if(letter(47)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 14 =>
                    if(letter(39)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 15 =>
                    if(letter(31)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 16 =>
                    if(letter(23)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 17 =>
                    if(letter(15)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 18 =>
                    if(letter(7)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when others =>
                    color <= BLACK;
            end case;
        when  17 =>
            case sy is 
                when 11 => 
                    if(letter(62)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 12 =>
                    if(letter(54)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 13 =>
                    if(letter(46)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 14 =>
                    if(letter(38)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 15 =>
                    if(letter(30)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 16 =>
                    if(letter(22)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 17 =>
                    if(letter(14)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 18 =>
                    if(letter(6)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when others =>
                    color <= BLACK;
            end case;
        when  18 =>
            case sy is 
                when 11 => 
                    if(letter(61)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 12 =>
                    if(letter(53)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 13 =>
                    if(letter(45)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 14 =>
                    if(letter(37)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 15 =>
                    if(letter(29)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 16 =>
                    if(letter(21)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 17 =>
                    if(letter(13)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 18 =>
                    if(letter(5)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when others =>
                    color <= BLACK;
            end case;
        when  19 =>
            case sy is 
                when 11 => 
                    if(letter(60)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 12 =>
                    if(letter(52)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 13 =>
                    if(letter(44)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 14 =>
                    if(letter(36)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 15 =>
                    if(letter(28)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 16 =>
                    if(letter(20)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 17 =>
                    if(letter(12)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 18 =>
                    if(letter(4)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when others =>
                    color <= BLACK;
            end case;
        when  20 =>
            case sy is 
                when 11 => 
                    if(letter(59)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 12 =>
                    if(letter(51)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 13 =>
                    if(letter(43)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 14 =>
                    if(letter(35)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 15 =>
                    if(letter(27)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 16 =>
                    if(letter(19)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 17 =>
                    if(letter(11)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 18 =>
                    if(letter(3)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when others =>
                    color <= BLACK;
            end case;
        when  21 =>
            case sy is 
                when 11 => 
                    if(letter(58)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 12 =>
                    if(letter(50)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 13 =>
                    if(letter(42)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 14 =>
                    if(letter(34)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 15 =>
                    if(letter(26)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 16 =>
                    if(letter(18)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 17 =>
                    if(letter(10)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 18 =>
                    if(letter(2)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when others =>
                    color <= BLACK;
            end case;
        when  22 =>
            case sy is 
                when 11 => 
                    if(letter(57)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 12 =>
                    if(letter(49)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 13 =>
                    if(letter(41)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 14 =>
                    if(letter(33)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 15 =>
                    if(letter(25)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 16 =>
                    if(letter(17)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 17 =>
                    if(letter(9)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 18 =>
                    if(letter(1)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when others =>
                    color <= BLACK;
            end case;
        when  23 =>
            case sy is 
                when 11 => 
                    if(letter(56)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 12 =>
                    if(letter(48)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 13 =>
                    if(letter(40)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 14 =>
                    if(letter(32)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 15 =>
                    if(letter(24)='1') then
                       if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 16 =>
                    if(letter(16)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 17 =>
                    if(letter(8)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when 18 =>
                    if(letter(0)='1') then
                        if is_q = '1' then
                            color <= WHITE;
                        elsif status = '1' then
                            color <= GREEN;
                        else color <= RED;
                        end if;
                    end if;
                when others =>
                    color <= BLACK;
            end case;
        when others =>
    end case;
    
end process;
    
end Behavioral;
