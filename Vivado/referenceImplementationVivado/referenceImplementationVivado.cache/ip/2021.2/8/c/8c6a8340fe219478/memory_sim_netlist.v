// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Apr 26 14:05:32 2022
// Host        : JKatana running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ memory_sim_netlist.v
// Design      : memory
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "memory,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [10:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire [0:0]wea;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.6745 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
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
  (* C_INIT_FILE = "memory.mem" *) 
  (* C_INIT_FILE_NAME = "memory.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26800)
`pragma protect data_block
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
ckkrxE/qX5dRxw==
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
