// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Jun  1 17:34:56 2023
// Host        : mecha-1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               o:/ENGS31/MorseCode_VGA/MorseCode_VGA.gen/sources_1/ip/ascii_memory/ascii_memory_stub.v
// Design      : ascii_memory
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *)
module ascii_memory(clka, ena, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,addra[9:0],douta[7:0]" */;
  input clka;
  input ena;
  input [9:0]addra;
  output [7:0]douta;
endmodule
