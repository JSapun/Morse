// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Jun  1 14:16:03 2023
// Host        : mecha-2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top bitmaps -prefix
//               bitmaps_ bitmaps_sim_netlist.v
// Design      : bitmaps
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bitmaps,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module bitmaps
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [63:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [63:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [63:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     6.370399 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "bitmaps.mem" *) 
  (* C_INIT_FILE_NAME = "bitmaps.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "64" *) 
  (* C_READ_WIDTH_B = "64" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "64" *) 
  (* C_WRITE_WIDTH_B = "64" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  bitmaps_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[63:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29264)
`pragma protect data_block
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
A6KY7GKQxqRd9O4ah0hxp+LWrZ0yeVc=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
