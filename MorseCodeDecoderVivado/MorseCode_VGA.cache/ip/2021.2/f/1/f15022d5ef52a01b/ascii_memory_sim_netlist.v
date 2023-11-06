// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Jun  1 14:28:24 2023
// Host        : mecha-2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ascii_memory_sim_netlist.v
// Design      : ascii_memory
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ascii_memory,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18688)
`pragma protect data_block
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
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
