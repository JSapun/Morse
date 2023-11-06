----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 06:10:10 PM
-- Design Name: 
-- Module Name: Game_Shell - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vga_top_shell is
  Port ( fast_clock : in std_logic;
         slow_clock : in std_logic;
        reset : in std_logic;
        new_data : in std_logic; 
        data_in : in std_logic_vector(7 downto 0);
        vsync_sig,hsync_sig : out std_logic;
        vgaRed,vgaGreen,vgaBlue : out std_logic_vector(3 downto 0));
end vga_top_shell;

architecture Behavioral of vga_top_shell is

signal vsync,hsync : std_logic;
signal vgaRed_sig,vgaGreen_sig,vgaBlue_sig : std_logic_vector(3 downto 0);
signal address : std_logic_vector(7 downto 0):="01000001"; --question
signal letter_rep : std_logic_vector(63 downto 0);
signal status : std_logic:='0';
signal data_reg : std_logic_vector(7 downto 0);
signal letter_change_counter : unsigned(26 downto 0) := (others => '0');
signal intertmed : std_logic_vector(7 downto 0) := "00000000";

signal is_question : std_logic:='1';
signal random_num : unsigned(7 downto 0):="01000001";

COMPONENT bitmaps is
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(63 DOWNTO 0));
END COMPONENT;

component vga_sub_shell is 
    port(slow_clk : in std_logic; -- 25MHz
         letter_sig : in std_logic_vector(63 downto 0);
         is_q : in std_logic;
         status : in std_logic;
         vsync_sig : out std_logic;
         hsync_sig : out std_logic;
         vgaRed,vgaGreen,vgaBlue : out std_logic_vector(3 downto 0));
end component;

begin

Bit_Map_Proc : bitmaps port map(
                clka => fast_clock,
                ena => '1',
                addra => address,
                douta => letter_rep);
                
VGA_proc : vga_sub_shell port map(
                slow_clk => slow_clock,
                letter_sig => letter_rep,
                is_q => is_question,
                status => status,
                vsync_sig => vsync,
                hsync_sig => hsync,
                vgaRed => vgaRed_sig,
                vgaGreen => vgaGreen_sig,
                vgaBlue => vgaBlue_sig);
                
vsync_sig <= vsync;
hsync_sig <= hsync;
vgaRed <= vgaRed_sig;
vgaBlue <= vgaBlue_sig;
vgaGreen <= vgaGreen_sig;

Rand : process(fast_clock) begin
    if rising_edge(fast_clock) then
        if(random_num = "00111001") then --jump from 9 to A
            random_num <= "01000001";
        elsif(random_num = "01011010") then --reset to 0
            random_num <= "00110000";
        else random_num <= random_num + 1;
        end if;
    end if;
end process;

letter_change : process(fast_clock, status) begin
    if rising_edge(fast_clock) then
        if status = '1' then
            letter_change_counter <= (others => '0');
        end if;
        
        letter_change_counter <= letter_change_counter + 1;        
    end if;
end process;
            

Resetting : process(fast_clock) begin
    if rising_edge(fast_clock) then
        if (reset = '1') then
            address <= std_logic_vector(random_num);
            is_question <= '1';
        elsif new_data = '1' then   
            is_question <= '0';
        end if;
        
        if letter_change_counter = 100000000 and status = '1' then
            address <= std_logic_vector(random_num);
            is_question <= '1';
        end if;
    end if;
end process;

update_input: process(fast_clock) begin
    if rising_edge(fast_clock) then
        if new_data = '1' then
            data_reg <= data_in;
        elsif reset = '1' then
            data_reg <= "00000000";
        end if;
    end if;
end process update_input;

check_input: process(data_reg,address) 
begin
    if address=data_reg then
        status <= '1';
    else 
        status <= '0';
    end if;
end process check_input;

end Behavioral;
