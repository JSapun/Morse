## This file is a general .xdc for the Basys3 rev B board for ENGS31/CoSc56
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project
## - these names should match the external ports (_ext_port) in the entity declaration of your shell/top level

##====================================================================
## External_Clock_Port
##====================================================================
## This is a 100 MHz external clock
set_property PACKAGE_PIN W5 [get_ports clk_ext_port]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk_ext_port]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk_ext_port]

##====================================================================
## Switch_ports
##====================================================================
## SWITCH 13
set_property PACKAGE_PIN U1 [get_ports {input_switch_ext}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {input_switch_ext}]
## SWITCH 14
set_property PACKAGE_PIN T1 [get_ports {mux7seg_switch_ext}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {mux7seg_switch_ext}]
## SWITCH 15 (LEFT MOST SWITCH)
set_property PACKAGE_PIN R2 [get_ports {game_en_ext}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {game_en_ext}]
 
##====================================================================
## LED_ports
##====================================================================

## LED 13
set_property PACKAGE_PIN N3 [get_ports {input_switch_led}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {input_switch_led}]
## LED 14
set_property PACKAGE_PIN P1 [get_ports {mux7seg_switch_led}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {mux7seg_switch_led}]
## LED 15 (LEFT MOST LED)
set_property PACKAGE_PIN L1 [get_ports {game_en_led}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {game_en_led}]
	
##====================================================================
## Buttons
##====================================================================
## CENTER BUTTON
set_property PACKAGE_PIN U18 [get_ports center_button_ext]						
	set_property IOSTANDARD LVCMOS33 [get_ports center_button_ext]
## DOWN BUTTON
set_property PACKAGE_PIN U17 [get_ports reset_button_ext]						
	set_property IOSTANDARD LVCMOS33 [get_ports reset_button_ext]

##====================================================================
## Pmod Header JA
##====================================================================

#Sch name = XA1_P
set_property PACKAGE_PIN J3 [get_ports {port_button_ext}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {port_button_ext}]
#Sch name = XA2_P
set_property PACKAGE_PIN L3 [get_ports {output_port_button_ext}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {output_port_button_ext}]
##Sch name = JA7
set_property PACKAGE_PIN H1 [get_ports {sound_output_ext}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sound_output_ext}]

##====================================================================	
## 7 segment display
##====================================================================
set_property PACKAGE_PIN W7 [get_ports {seg_ext_port[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg_ext_port[0]}]
set_property PACKAGE_PIN W6 [get_ports {seg_ext_port[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg_ext_port[1]}]
set_property PACKAGE_PIN U8 [get_ports {seg_ext_port[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg_ext_port[2]}]
set_property PACKAGE_PIN V8 [get_ports {seg_ext_port[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg_ext_port[3]}]
set_property PACKAGE_PIN U5 [get_ports {seg_ext_port[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg_ext_port[4]}]
set_property PACKAGE_PIN V5 [get_ports {seg_ext_port[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg_ext_port[5]}]
set_property PACKAGE_PIN U7 [get_ports {seg_ext_port[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg_ext_port[6]}]

set_property PACKAGE_PIN V7 [get_ports dp_ext_port]							
	set_property IOSTANDARD LVCMOS33 [get_ports dp_ext_port]

set_property PACKAGE_PIN U2 [get_ports {an_ext_port[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an_ext_port[0]}]
set_property PACKAGE_PIN U4 [get_ports {an_ext_port[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an_ext_port[1]}]
set_property PACKAGE_PIN V4 [get_ports {an_ext_port[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an_ext_port[2]}]
set_property PACKAGE_PIN W4 [get_ports {an_ext_port[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an_ext_port[3]}]

##VGA Connector
set_property PACKAGE_PIN G19 [get_ports {vgaRed_ext[0]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed_ext[0]}]
set_property PACKAGE_PIN H19 [get_ports {vgaRed_ext[1]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed_ext[1]}]
set_property PACKAGE_PIN J19 [get_ports {vgaRed_ext[2]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed_ext[2]}]
set_property PACKAGE_PIN N19 [get_ports {vgaRed_ext[3]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed_ext[3]}]
set_property PACKAGE_PIN N18 [get_ports {vgaBlue_ext[0]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue_ext[0]}]
set_property PACKAGE_PIN L18 [get_ports {vgaBlue_ext[1]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue_ext[1]}]
set_property PACKAGE_PIN K18 [get_ports {vgaBlue_ext[2]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue_ext[2]}]
set_property PACKAGE_PIN J18 [get_ports {vgaBlue_ext[3]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue_ext[3]}]
set_property PACKAGE_PIN J17 [get_ports {vgaGreen_ext[0]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen_ext[0]}]
set_property PACKAGE_PIN H17 [get_ports {vgaGreen_ext[1]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen_ext[1]}]
set_property PACKAGE_PIN G17 [get_ports {vgaGreen_ext[2]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen_ext[2]}]
set_property PACKAGE_PIN D17 [get_ports {vgaGreen_ext[3]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen_ext[3]}]
set_property PACKAGE_PIN P19 [get_ports hsync_sig_ext]						
	set_property IOSTANDARD LVCMOS33 [get_ports hsync_sig_ext]
set_property PACKAGE_PIN R19 [get_ports vsync_sig_ext]						
	set_property IOSTANDARD LVCMOS33 [get_ports vsync_sig_ext]


##====================================================================
## Implementation Assist
##====================================================================	
## These additional constraints are recommended by Digilent, do not remove!
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]

set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]

set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]