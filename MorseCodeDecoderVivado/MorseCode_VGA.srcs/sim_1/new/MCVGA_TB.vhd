----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/05/2023 09:29:54 PM
-- Design Name: 
-- Module Name: MCVGA_TB - Behavioral
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
use IEEE.numeric_std.ALL;			-- needed for arithmetic
use ieee.math_real.all;				-- needed for automatic register sizing
library UNISIM;						-- needed for the BUFG component
use UNISIM.Vcomponents.ALL;

entity MCVGA_TB is
--  Port ( );
end entity;


architecture Behavioral of MCVGA_TB is

component game_logic_shell is 
    port (
    clk_ext_port     	  : in  std_logic;						--ext 100 MHz clock
	
	--Switches inputs:
    game_en_ext	        : in std_logic;     -- (Switch Game enable)
    input_switch_ext    : in std_logic;     -- (Switch MS code input)
    mux7seg_switch_ext  : in std_logic;     -- (Switch 7Seg)
    
    --Buttons
    center_button_ext   : in std_logic;     -- (User)
    reset_button_ext    : in std_logic;     -- (User)
    port_button_ext     : in std_logic;     -- (For MC gen)
    
    -- LEDS output 
    game_en_led             : out std_logic;                       -- LED 15
    mux7seg_switch_led      : out std_logic;                       -- LED 14 
    input_switch_led        : out std_logic;                       -- LED 13
    
    -- Sound Output
    sound_output_ext        : out std_logic;
    
    -- Sound Gen Output
    output_port_button_ext : out std_logic; -- Manual AB MC Gen
    
    -- 7Seg output
	seg_ext_port	      : out std_logic_vector(0 to 6);		--segment control
	dp_ext_port			  : out std_logic;						--decimal point control
	an_ext_port			  : out std_logic_vector(3 downto 0);  --digit control
	
	-- VGA outputs
	vsync_sig_ext       : out std_logic;
	hsync_sig_ext       : out std_logic;
    vgaRed_ext          : out std_logic_vector(3 downto 0);
    vgaGreen_ext        : out std_logic_vector(3 downto 0);
    vgaBlue_ext         : out std_logic_vector(3 downto 0));
end component;

--=============================================================================
--Signals
--=============================================================================

signal 	clk_ext_port     	  : std_logic :='0';						--ext 100 MHz clock
	
	--Switches inputs:
signal    game_en_ext	       : std_logic :='0';     -- (Switch Game enable)
signal    input_switch_ext    : std_logic :='0';     -- (Switch MS code input)
signal   mux7seg_switch_ext  : std_logic :='0';     -- (Switch 7Seg)
    
    --Buttons
signal    center_button_ext   : std_logic :='0';     -- (User)
signal    reset_button_ext    : std_logic :='0';     -- (User)
signal    port_button_ext     : std_logic :='0';     -- (For MC gen)
    
    -- LEDS output 
signal    game_en_led             : std_logic :='0';                       -- LED 15
signal   mux7seg_switch_led      : std_logic :='0';                       -- LED 14 
signal    input_switch_led        : std_logic :='0';                       -- LED 13
    
    -- Sound Output
signal    sound_output_ext        : std_logic :='0';
    
    -- Sound Gen Output
signal    output_port_button_ext : std_logic :='0'; -- Manual AB MC Gen
    
    -- 7Seg output
signal	seg_ext_port	      : std_logic_vector(0 to 6)  := "0000000";		--segment control
signal	dp_ext_port			  : std_logic :='0';						--decimal point control
signal	an_ext_port			  : std_logic_vector(3 downto 0)  := "0000";  --digit control
	
	-- VGA outputs
signal	vsync_sig_ext       : std_logic :='0';
signal	hsync_sig_ext       : std_logic :='0';
signal   vgaRed_ext          : std_logic_vector(3 downto 0) := "0000";
signal    vgaGreen_ext        : std_logic_vector(3 downto 0):= "0000";
signal    vgaBlue_ext         : std_logic_vector(3 downto 0):= "0000";

constant sys_clk_period: time := 10 ns;	-- 25 MHz
constant real_time: time := 1 ms;	
begin
--=============================================================================
--Port Map
--=============================================================================
uut: game_logic_shell
    port map(
    clk_ext_port => clk_ext_port,
	
	--Switches inputs:
    game_en_ext	        => game_en_ext,
    input_switch_ext    => input_switch_ext,
    mux7seg_switch_ext  => mux7seg_switch_ext,
  
    --Buttons
    center_button_ext   => center_button_ext,
    reset_button_ext    => reset_button_ext,
    port_button_ext     => port_button_ext,
    
    -- LEDS output 
    game_en_led         => game_en_led,
    mux7seg_switch_led  => mux7seg_switch_led,
    input_switch_led    => input_switch_led,          -- LED 13
    
    -- Sound Output
    sound_output_ext    => sound_output_ext,
    
    -- Sound Gen Output
    output_port_button_ext => output_port_button_ext,
    
    -- 7Seg output
	seg_ext_port	   => seg_ext_port,		--segment control
	dp_ext_port		   => dp_ext_port,						--decimal point control
	an_ext_port		   => an_ext_port, --digit control
	
	-- VGA outputs
	vsync_sig_ext       => vsync_sig_ext,
	hsync_sig_ext       => hsync_sig_ext,
    vgaRed_ext          => vgaRed_ext,
    vgaGreen_ext        => vgaGreen_ext,
    vgaBlue_ext         => vgaBlue_ext  
 
    );
    
--=============================================================================
--clk_100MHz generation 
--=============================================================================
clkgen_proc: process
begin
	clk_ext_port <= not(clk_ext_port);		-- toggle clk signal
    wait for sys_clk_period/2;	-- OK to use "wait" in testbench
end process clkgen_proc;

--=============================================================================
--Stimulus Process
--=============================================================================
stim_proc: process
begin				

	wait for sys_clk_period;

	game_en_ext <= '1'; wait for 10*sys_clk_period;       -- Sent from VGA, enabling entire system
	
	-- T = 1us (only for simulation)
	
	-- MC A
	center_button_ext <= '1'; wait for real_time;  
	center_button_ext <= '0'; wait for real_time;                          -- Dot
	
	center_button_ext <= '1'; wait for 3*real_time;                        -- Dash
	center_button_ext <= '0'; wait for 3*real_time;
	
	-- MC B
	center_button_ext <= '1'; wait for 3*real_time;                       -- Dash
	center_button_ext <= '0'; wait for real_time;  
	
	center_button_ext <= '1'; wait for real_time;                          -- Dot
	center_button_ext <= '0'; wait for real_time;
	
	center_button_ext <= '1'; wait for real_time;                          -- Dot
	center_button_ext <= '0'; wait for real_time;
	
	center_button_ext <= '1'; wait for real_time;                          -- Dot
	center_button_ext <= '0'; wait for 7*real_time;
	
	-- Space
	
	-- MC C
	center_button_ext <= '1'; wait for 3*real_time;                        -- Dash
	center_button_ext <= '0'; wait for real_time;
	
	center_button_ext <= '1'; wait for real_time;                          -- Dot
	center_button_ext <= '0'; wait for real_time;
	
	center_button_ext <= '1'; wait for 3*real_time;                        -- Dash
	center_button_ext <= '0'; wait for real_time;
	
	center_button_ext <= '1'; wait for real_time;                          -- Dot
	center_button_ext <= '0'; wait for 3*real_time;
	
	-- MC A
	center_button_ext <= '1'; wait for real_time;                         -- Dot
	center_button_ext <= '0'; wait for real_time;
	
	center_button_ext <= '1'; wait for 3*real_time;                       -- Dash
	center_button_ext <= '0'; wait for 3*real_time;
	
	-- MC T
	center_button_ext <= '1'; wait for 3*real_time;                       -- Dash
	center_button_ext <= '0'; wait for 3*real_time;
	
	input_switch_ext <= '1'; 
	mux7seg_switch_ext <= '1'; wait for real_time;
	
	-- MC A
	port_button_ext  <= '1'; wait for real_time;  
	port_button_ext <= '0'; wait for real_time;                          -- Dot
	
	port_button_ext <= '1'; wait for 3*real_time;                        -- Dash
	port_button_ext <= '0';
	
	-- Reset button
	reset_button_ext <= '1'; wait for real_time;  
	reset_button_ext <= '0'; wait for real_time;  
	
    wait;
end process stim_proc;
end Behavioral;
