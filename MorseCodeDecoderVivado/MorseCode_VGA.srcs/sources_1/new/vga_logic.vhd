-- Code your design here
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;
library UNISIM;
use UNISIM.VComponents.all;

ENTITY vga_logic IS
PORT ( 	pclk    :	in	STD_LOGIC; --25 MHz clock
		V_sync	: 	out	STD_LOGIC:='1';
		H_sync	: 	out	STD_LOGIC:='1';
        video_on:	out	STD_LOGIC:='0';
		pixel_x	:	out	std_logic_vector(9 downto 0);
        pixel_y	:	out	std_logic_vector(9 downto 0));
end vga_logic;


architecture behavior of vga_logic is

signal H_video_on : STD_LOGIC := '1';
signal V_video_on : STD_LOGIC := '1';

--Add your signals here

--signal pclk : std_logic := '0';
signal h_count,v_count : integer := 0;
signal prev_hsync,hsync_sig : std_logic := '0';

--VGA Constants (taken directly from VGA Class Notes)

constant left_border : integer := 48;
constant h_display : integer := 640;
constant right_border : integer := 16;
constant h_retrace : integer := 96;
constant HSCAN : integer := left_border + h_display + right_border + h_retrace - 1; --number of PCLKs in an H_sync period


constant top_border : integer := 29;
constant v_display : integer := 480;
constant bottom_border : integer := 10;
constant v_retrace : integer := 2;
constant VSCAN : integer := top_border + v_display + bottom_border + v_retrace - 1; --number of H_syncs in an V_sync period

--=============================================================================
--Sub-Component Declarations:
--=============================================================================

BEGIN


--H_sync generating process
Hsync_proc : process(pclk)
begin
       --H_sync and H_video_on generation code goes here
       if rising_edge(pclk) then
            h_count <= h_count + 1;
            
            if(h_count = HSCAN) then
                h_count <= 0;
                H_video_on <= '1';
            end if;
            if(h_count = h_display-1) then
                H_video_on <= '0';
            end if;
            if(h_count = (h_display+right_border-1)) then
                H_sync <= '0';
                hsync_sig <= '0';
            end if;
            if(h_count = (h_display+right_border+h_retrace-1)) then
                H_sync <= '1';
                hsync_sig <= '1';
            end if;
      end if;
end process Hsync_proc;

--V_sync generating process
Vsync_proc : process(pclk)
begin
	if rising_edge(pclk) then
	prev_hsync <= hsync_sig;
	--end if;
	
	if((hsync_sig and not(prev_hsync)) = '1') then
       --V_sync and V_video_on generation code goes here
       v_count <= v_count + 1;
            
            if(v_count = VSCAN) then
                v_count <= 0;
                v_video_on <= '1';
            end if;
            if(v_count = v_display) then
                V_video_on <= '0';
            end if;
            if(v_count = (v_display+bottom_border)) then
                V_sync <= '0';
            end if;
            if(v_count = (v_display+bottom_border+v_retrace)) then
                V_sync <= '1';
            end if;
    end if;
    end if;
end process Vsync_proc;

video_on <= H_video_on AND V_video_on; --Only enable video out when H_video_out and V_video_out are high. It's important to set the output to zero when you aren't actively displaying video. That's how the monitor determines the black level.
pixel_x <= std_logic_vector( to_unsigned( h_count, pixel_x'length));
pixel_y <= std_logic_vector( to_unsigned( v_count, pixel_y'length));

end behavior;
        
        