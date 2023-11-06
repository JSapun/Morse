--=============================================================
--Ben Dobbins
--ES31/CS56
--This script is the shell code for Lab 6, the voltmeter.
--Your name goes here: 
--=============================================================

--=============================================================
--Library Declarations
--=============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;			-- needed for arithmetic
use ieee.math_real.all;				-- needed for automatic register sizing
library UNISIM;						-- needed for the BUFG component
use UNISIM.Vcomponents.ALL;

--=============================================================
--Shell Entitity Declarations
--=============================================================
entity game_logic_shell is
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
end game_logic_shell; 

--=============================================================
--Architecture + Component Declarations
--=============================================================
architecture Behavioral of game_logic_shell is
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--System Clock Generation:
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
component system_clock_generator is
	generic (
	   CLOCK_DIVIDER_RATIO : integer);
    port (
        input_clk_port		: in  std_logic;
        system_clk_port	    : out std_logic;
		fwd_clk_port		: out std_logic);
end component;

--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Center Button Debouncing
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
COMPONENT button_interface
    Port( clk_port            : in  std_logic;
		  button_port         : in  std_logic;
		  button_db_port      : out std_logic;
		  button_mp_port      : out std_logic);	
END COMPONENT;

--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Sound Gen
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
COMPONENT SoundGen is
    Port ( --timing:
           clk 		: in std_logic;
           -- button signal
           button : in STD_LOGIC;
           -- sound output 
           audioOut : out STD_LOGIC);
end COMPONENT;

--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Morse Code (AB) Machine Generator
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
COMPONENT mc_port_gen is
  generic (T : integer);                -- Universal T period constant
  Port (    clk_port 		   : in std_logic;
            output_port_button : out std_logic); -- Manual AB MC Gen
end COMPONENT;

--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Block Memory
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
COMPONENT ascii_memory IS
PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END COMPONENT;

--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Morse Code Decoder
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
component MorseCodeDecoder is
  generic (T : integer);
  Port ( 
    --timing:
    clk_port 		: in std_logic;

    --Morse Code Button Input:
    mc_button       : in std_logic;     -- (User)
    
    -- Switches
    game_en	      	: in std_logic;     -- (VGA)
    mux7seg_switch  : in std_logic;     -- (User)
    
    -- Input from memory block
    memory_ascii    : in std_logic_vector(7 downto 0);
    ascii_letter    : out std_logic_vector(7 downto 0); -- (VGA)
    
    --control outputs:
    char_reg_ext       : out std_logic_vector(9 downto 0) := "0000000000";
    new_data	    : out std_logic;     -- (VGA)
    done_sig	    : out std_logic;     -- (VGA)
    mux7seg_out_one     : out std_logic_vector(3 downto 0);    -- (7seg)
    mux7seg_out_tenth     : out std_logic_vector(3 downto 0)    -- (7seg)
    );

end component;

--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--7 Segment Display
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
component mux7seg is
    Port ( clk_port 	: in  std_logic;						-- runs on a fast (1 MHz or so) clock
	       y3_port 	    : in  std_logic_vector (3 downto 0);	-- digits
		   y2_port 	    : in  std_logic_vector (3 downto 0);	-- digits
		   y1_port		: in  std_logic_vector (3 downto 0);	-- digits
           y0_port 	    : in  std_logic_vector (3 downto 0);	-- digits
           dp_set_port  : in  std_logic_vector(3 downto 0);     -- decimal points
		   
           seg_port 	: out std_logic_vector(0 to 6);			-- segments (a...g)
           dp_port 	    : out std_logic;						-- decimal point
           an_port 	    : out std_logic_vector (3 downto 0) );	-- anodes
end component;


-------------------------------------------------------------------------------------------------------------
component vga_top_shell is
  Port ( fast_clock              : in std_logic;
         slow_clock              : in std_logic;
         reset                   : in std_logic;
         new_data                : in std_logic; 
         data_in                 : in std_logic_vector(7 downto 0);
         vsync_sig,hsync_sig     : out std_logic;
         vgaRed,vgaGreen,vgaBlue : out std_logic_vector(3 downto 0));
end component;

--=============================================================
--Local Signal Declaration
--=============================================================
signal system_clk       : std_logic := '0';
signal sevenSeg_one         : std_logic_vector(3 downto 0) := "0000";
signal sevenSeg_tenth         : std_logic_vector(3 downto 0) := "0000";
signal addr_sig  : std_logic_vector(9 downto 0) := "0000000000";
signal center_button_db       : std_logic := '0';
signal bottom_button_db       : std_logic := '0';
signal real_mc_button: std_logic := '0';
signal ascii_rom    :  std_logic_vector(7 downto 0) := "00000000";

signal ascii_signal     : std_logic_vector(7 downto 0) := "00000000";
signal new_data_signal  : std_logic := '0';

--constant mc_period : integer := 25000000/4;   -- T period, can be altered for faster or slower mc presses (T=0.25s)
constant mc_period : integer := 25000;   -- T period for simulation only
--=============================================================
--Port Mapping + Processes:
--=============================================================
begin
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--Timing:
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++		
clocking: system_clock_generator 
generic map(
	CLOCK_DIVIDER_RATIO => 4)               --25 MHz
port map(
	input_clk_port 		=> clk_ext_port,
	system_clk_port 	=> system_clk,
	fwd_clk_port		=> open);

--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Debounced and MonoPulse input buttons
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
center_button : button_interface     -- center
  Port map(
    clk_port            => system_clk,
    button_port         => center_button_ext,
    button_db_port      => center_button_db,
	button_mp_port      => open);	

reset_button : button_interface     -- bottom 
  Port map(
    clk_port            => system_clk,
    button_port         => reset_button_ext,
    button_db_port      => bottom_button_db,
	button_mp_port      => open);
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--Decoder
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ms_gen: mc_port_gen 
  generic map (T => mc_period)
  Port map (clk_port           => system_clk,
            output_port_button => output_port_button_ext);
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--Decoder
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
memory: ascii_memory port map (
    clka => system_clk,
    ena => '1',
    addra => addr_sig,
    douta => ascii_rom);
    
sound: SoundGen port map ( --timing:
           clk 	=> system_clk,
           -- button signal
           button =>  real_mc_button,
           -- sound output 
           audioOut => sound_output_ext);
           
decoder: MorseCodeDecoder
  generic map (T => mc_period)
  Port map ( 
    --timing:
    clk_port 		=> system_clk,

    mc_button   => real_mc_button,
    
    game_en         => game_en_ext,
    mux7seg_switch  => mux7seg_switch_ext, 

    memory_ascii    => ascii_rom,
    ascii_letter    => ascii_signal,
        
    --control outputs:
    char_reg_ext    => addr_sig,
    new_data	    => new_data_signal,
    done_sig	    => open,
    mux7seg_out_one     =>	sevenSeg_one,
    mux7seg_out_tenth     =>	sevenSeg_tenth);
    
display: mux7seg port map( 
    clk_port 		=> system_clk,	       -- runs on the 1 MHz clock
    y3_port 		=> "0000", 		        
    y2_port 		=> "0000", 	
    y1_port 		=> sevenSeg_tenth, 		
    y0_port 		=> sevenSeg_one,		
    dp_set_port	    => "0000",   
    seg_port 		=> seg_ext_port,
    dp_port 		=> dp_ext_port,
    an_port 		=> an_ext_port );	
    
------------------------------------------------------------------------------------
vga: vga_top_shell port map(
    fast_clock      => clk_ext_port,    -- 100MHz
    slow_clock      => system_clk,      -- 25MHz
    reset           => bottom_button_db,
    new_data        => new_data_signal,
    data_in         => ascii_signal,
    vsync_sig       => vsync_sig_ext,
    hsync_sig       => hsync_sig_ext,
    vgaRed          => vgaRed_ext,
    vgaGreen        => vgaGreen_ext,
    vgaBlue         => vgaBlue_ext );


real_mc_button <= center_button_db when (input_switch_ext = '0') else port_button_ext; -- Switch between center button and port JA?
game_en_led <= game_en_ext;
mux7seg_switch_led <= mux7seg_switch_ext;
input_switch_led <= input_switch_ext;
    
end Behavioral; 