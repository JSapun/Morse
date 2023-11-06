// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Jun  1 17:34:55 2023
// Host        : mecha-1 running 64-bit major release  (build 9200)
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
