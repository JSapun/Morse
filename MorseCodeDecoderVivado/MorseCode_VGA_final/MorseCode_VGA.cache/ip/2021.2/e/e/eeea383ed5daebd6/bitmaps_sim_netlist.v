// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Jun  1 14:16:03 2023
// Host        : mecha-2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bitmaps_sim_netlist.v
// Design      : bitmaps
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bitmaps,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29648)
`pragma protect data_block
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
sMPe6cEdJ4k=
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
