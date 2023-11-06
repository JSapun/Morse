// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Jun  1 17:34:56 2023
// Host        : mecha-1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               o:/ENGS31/MorseCode_VGA/MorseCode_VGA.gen/sources_1/ip/ascii_memory/ascii_memory_sim_netlist.v
// Design      : ascii_memory
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ascii_memory,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module ascii_memory
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [7:0]douta;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.1884 mW" *) 
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
  (* C_INIT_FILE = "ascii_memory.mem" *) 
  (* C_INIT_FILE_NAME = "ascii_memory.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ascii_memory_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18656)
`pragma protect data_block
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
hdjrwycwWyWaRP8MTibK6xo=
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
