// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2.1 (win64) Build 3414424 Sun Dec 19 10:57:22 MST 2021
// Date        : Thu Aug 25 15:11:43 2022
// Host        : JKatana running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/git/clash-moisc/Vivado/MoiscBlocks/MoiscBlocks.gen/sources_1/bd/mOISC/ip/mOISC_clashAlu_0_0/mOISC_clashAlu_0_0_sim_netlist.v
// Design      : mOISC_clashAlu_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mOISC_clashAlu_0_0,ALU,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "ALU,Vivado 2021.2.1" *) 
(* NotValidForBitStream *)
module mOISC_clashAlu_0_0
   (in_mcr,
    in_pc,
    in_mem_a,
    in_mem_b,
    in_mem_mem_b,
    out_overflow,
    out_cmp,
    out_data);
  input [3:0]in_mcr;
  input [15:0]in_pc;
  input [15:0]in_mem_a;
  input [15:0]in_mem_b;
  input [15:0]in_mem_mem_b;
  output [15:0]out_overflow;
  output [1:0]out_cmp;
  output out_data;

  wire [3:0]in_mcr;
  wire [15:0]in_mem_a;
  wire [15:0]in_mem_b;
  wire [15:0]in_mem_mem_b;
  wire [15:0]in_pc;
  wire [1:0]out_cmp;
  wire out_data;
  wire [15:0]out_overflow;

  mOISC_clashAlu_0_0_ALU U0
       (.in_mcr(in_mcr),
        .in_mem_a(in_mem_a),
        .in_mem_b(in_mem_b),
        .in_mem_mem_b(in_mem_mem_b),
        .in_pc(in_pc),
        .out_cmp(out_cmp),
        .out_data(out_data),
        .out_overflow(out_overflow));
endmodule

(* ORIG_REF_NAME = "ALU" *) 
module mOISC_clashAlu_0_0_ALU
   (in_mcr,
    in_pc,
    in_mem_a,
    in_mem_b,
    in_mem_mem_b,
    out_overflow,
    out_cmp,
    out_data);
  input [3:0]in_mcr;
  input [15:0]in_pc;
  input [15:0]in_mem_a;
  input [15:0]in_mem_b;
  input [15:0]in_mem_mem_b;
  output [15:0]out_overflow;
  output [1:0]out_cmp;
  output out_data;

  wire ccmpleq_case_alt_selection_res;
  wire cmpleq_selection_res;
  wire [15:0]data0;
  wire [15:0]data2;
  wire [3:0]in_mcr;
  wire [15:0]in_mem_a;
  wire [15:0]in_mem_b;
  wire [15:0]in_mem_mem_b;
  wire [15:0]in_pc;
  wire [1:0]out_cmp;
  wire \out_cmp[1]_INST_0_i_10_n_0 ;
  wire \out_cmp[1]_INST_0_i_11_n_0 ;
  wire \out_cmp[1]_INST_0_i_12_n_0 ;
  wire \out_cmp[1]_INST_0_i_13_n_0 ;
  wire \out_cmp[1]_INST_0_i_14_n_0 ;
  wire \out_cmp[1]_INST_0_i_15_n_0 ;
  wire \out_cmp[1]_INST_0_i_16_n_0 ;
  wire \out_cmp[1]_INST_0_i_17_n_0 ;
  wire \out_cmp[1]_INST_0_i_18_n_0 ;
  wire \out_cmp[1]_INST_0_i_19_n_0 ;
  wire \out_cmp[1]_INST_0_i_1_n_3 ;
  wire \out_cmp[1]_INST_0_i_20_n_0 ;
  wire \out_cmp[1]_INST_0_i_21_n_0 ;
  wire \out_cmp[1]_INST_0_i_22_n_0 ;
  wire \out_cmp[1]_INST_0_i_23_n_0 ;
  wire \out_cmp[1]_INST_0_i_24_n_0 ;
  wire \out_cmp[1]_INST_0_i_25_n_0 ;
  wire \out_cmp[1]_INST_0_i_26_n_0 ;
  wire \out_cmp[1]_INST_0_i_2_n_1 ;
  wire \out_cmp[1]_INST_0_i_2_n_2 ;
  wire \out_cmp[1]_INST_0_i_2_n_3 ;
  wire \out_cmp[1]_INST_0_i_3_n_0 ;
  wire \out_cmp[1]_INST_0_i_3_n_1 ;
  wire \out_cmp[1]_INST_0_i_3_n_2 ;
  wire \out_cmp[1]_INST_0_i_3_n_3 ;
  wire \out_cmp[1]_INST_0_i_4_n_0 ;
  wire \out_cmp[1]_INST_0_i_5_n_0 ;
  wire \out_cmp[1]_INST_0_i_6_n_0 ;
  wire \out_cmp[1]_INST_0_i_6_n_1 ;
  wire \out_cmp[1]_INST_0_i_6_n_2 ;
  wire \out_cmp[1]_INST_0_i_6_n_3 ;
  wire \out_cmp[1]_INST_0_i_7_n_0 ;
  wire \out_cmp[1]_INST_0_i_8_n_0 ;
  wire \out_cmp[1]_INST_0_i_9_n_0 ;
  wire out_data;
  wire out_data_INST_0_i_10_n_0;
  wire out_data_INST_0_i_11_n_0;
  wire out_data_INST_0_i_12_n_0;
  wire out_data_INST_0_i_12_n_1;
  wire out_data_INST_0_i_12_n_2;
  wire out_data_INST_0_i_12_n_3;
  wire out_data_INST_0_i_13_n_0;
  wire out_data_INST_0_i_14_n_0;
  wire out_data_INST_0_i_15_n_0;
  wire out_data_INST_0_i_16_n_0;
  wire out_data_INST_0_i_17_n_0;
  wire out_data_INST_0_i_18_n_0;
  wire out_data_INST_0_i_19_n_0;
  wire out_data_INST_0_i_1_n_0;
  wire out_data_INST_0_i_1_n_1;
  wire out_data_INST_0_i_1_n_2;
  wire out_data_INST_0_i_1_n_3;
  wire out_data_INST_0_i_20_n_0;
  wire out_data_INST_0_i_21_n_0;
  wire out_data_INST_0_i_22_n_0;
  wire out_data_INST_0_i_23_n_0;
  wire out_data_INST_0_i_24_n_0;
  wire out_data_INST_0_i_25_n_0;
  wire out_data_INST_0_i_26_n_0;
  wire out_data_INST_0_i_27_n_0;
  wire out_data_INST_0_i_28_n_0;
  wire out_data_INST_0_i_29_n_0;
  wire out_data_INST_0_i_2_n_0;
  wire out_data_INST_0_i_2_n_1;
  wire out_data_INST_0_i_2_n_2;
  wire out_data_INST_0_i_2_n_3;
  wire out_data_INST_0_i_30_n_0;
  wire out_data_INST_0_i_31_n_0;
  wire out_data_INST_0_i_32_n_0;
  wire out_data_INST_0_i_33_n_0;
  wire out_data_INST_0_i_34_n_0;
  wire out_data_INST_0_i_35_n_0;
  wire out_data_INST_0_i_36_n_0;
  wire out_data_INST_0_i_3_n_0;
  wire out_data_INST_0_i_3_n_1;
  wire out_data_INST_0_i_3_n_2;
  wire out_data_INST_0_i_3_n_3;
  wire out_data_INST_0_i_4_n_0;
  wire out_data_INST_0_i_5_n_0;
  wire out_data_INST_0_i_6_n_0;
  wire out_data_INST_0_i_7_n_0;
  wire out_data_INST_0_i_8_n_0;
  wire out_data_INST_0_i_9_n_0;
  wire [15:0]out_overflow;
  wire \out_overflow[0]_INST_0_i_10_n_0 ;
  wire \out_overflow[0]_INST_0_i_1_n_0 ;
  wire \out_overflow[0]_INST_0_i_2_n_0 ;
  wire \out_overflow[0]_INST_0_i_3_n_0 ;
  wire \out_overflow[0]_INST_0_i_4_n_0 ;
  wire \out_overflow[0]_INST_0_i_5_n_0 ;
  wire \out_overflow[0]_INST_0_i_6_n_0 ;
  wire \out_overflow[0]_INST_0_i_7_n_0 ;
  wire \out_overflow[0]_INST_0_i_8_n_0 ;
  wire \out_overflow[0]_INST_0_i_9_n_0 ;
  wire \out_overflow[10]_INST_0_i_10_n_0 ;
  wire \out_overflow[10]_INST_0_i_11_n_0 ;
  wire \out_overflow[10]_INST_0_i_1_n_0 ;
  wire \out_overflow[10]_INST_0_i_2_n_0 ;
  wire \out_overflow[10]_INST_0_i_3_n_0 ;
  wire \out_overflow[10]_INST_0_i_4_n_0 ;
  wire \out_overflow[10]_INST_0_i_5_n_0 ;
  wire \out_overflow[10]_INST_0_i_6_n_0 ;
  wire \out_overflow[10]_INST_0_i_7_n_0 ;
  wire \out_overflow[10]_INST_0_i_8_n_0 ;
  wire \out_overflow[10]_INST_0_i_9_n_0 ;
  wire \out_overflow[11]_INST_0_i_10_n_0 ;
  wire \out_overflow[11]_INST_0_i_11_n_0 ;
  wire \out_overflow[11]_INST_0_i_11_n_1 ;
  wire \out_overflow[11]_INST_0_i_11_n_2 ;
  wire \out_overflow[11]_INST_0_i_11_n_3 ;
  wire \out_overflow[11]_INST_0_i_12_n_0 ;
  wire \out_overflow[11]_INST_0_i_13_n_0 ;
  wire \out_overflow[11]_INST_0_i_14_n_0 ;
  wire \out_overflow[11]_INST_0_i_15_n_0 ;
  wire \out_overflow[11]_INST_0_i_16_n_0 ;
  wire \out_overflow[11]_INST_0_i_17_n_0 ;
  wire \out_overflow[11]_INST_0_i_18_n_0 ;
  wire \out_overflow[11]_INST_0_i_19_n_0 ;
  wire \out_overflow[11]_INST_0_i_1_n_0 ;
  wire \out_overflow[11]_INST_0_i_20_n_0 ;
  wire \out_overflow[11]_INST_0_i_21_n_0 ;
  wire \out_overflow[11]_INST_0_i_2_n_0 ;
  wire \out_overflow[11]_INST_0_i_3_n_0 ;
  wire \out_overflow[11]_INST_0_i_4_n_0 ;
  wire \out_overflow[11]_INST_0_i_5_n_0 ;
  wire \out_overflow[11]_INST_0_i_6_n_0 ;
  wire \out_overflow[11]_INST_0_i_7_n_0 ;
  wire \out_overflow[11]_INST_0_i_8_n_0 ;
  wire \out_overflow[11]_INST_0_i_9_n_0 ;
  wire \out_overflow[11]_INST_0_i_9_n_1 ;
  wire \out_overflow[11]_INST_0_i_9_n_2 ;
  wire \out_overflow[11]_INST_0_i_9_n_3 ;
  wire \out_overflow[12]_INST_0_i_10_n_0 ;
  wire \out_overflow[12]_INST_0_i_11_n_0 ;
  wire \out_overflow[12]_INST_0_i_1_n_0 ;
  wire \out_overflow[12]_INST_0_i_2_n_0 ;
  wire \out_overflow[12]_INST_0_i_3_n_0 ;
  wire \out_overflow[12]_INST_0_i_4_n_0 ;
  wire \out_overflow[12]_INST_0_i_5_n_0 ;
  wire \out_overflow[12]_INST_0_i_6_n_0 ;
  wire \out_overflow[12]_INST_0_i_7_n_0 ;
  wire \out_overflow[12]_INST_0_i_8_n_0 ;
  wire \out_overflow[12]_INST_0_i_9_n_0 ;
  wire \out_overflow[13]_INST_0_i_10_n_0 ;
  wire \out_overflow[13]_INST_0_i_11_n_0 ;
  wire \out_overflow[13]_INST_0_i_12_n_0 ;
  wire \out_overflow[13]_INST_0_i_1_n_0 ;
  wire \out_overflow[13]_INST_0_i_2_n_0 ;
  wire \out_overflow[13]_INST_0_i_3_n_0 ;
  wire \out_overflow[13]_INST_0_i_4_n_0 ;
  wire \out_overflow[13]_INST_0_i_5_n_0 ;
  wire \out_overflow[13]_INST_0_i_6_n_0 ;
  wire \out_overflow[13]_INST_0_i_7_n_0 ;
  wire \out_overflow[13]_INST_0_i_8_n_0 ;
  wire \out_overflow[13]_INST_0_i_9_n_0 ;
  wire \out_overflow[14]_INST_0_i_10_n_0 ;
  wire \out_overflow[14]_INST_0_i_1_n_0 ;
  wire \out_overflow[14]_INST_0_i_2_n_0 ;
  wire \out_overflow[14]_INST_0_i_3_n_0 ;
  wire \out_overflow[14]_INST_0_i_4_n_0 ;
  wire \out_overflow[14]_INST_0_i_5_n_0 ;
  wire \out_overflow[14]_INST_0_i_6_n_0 ;
  wire \out_overflow[14]_INST_0_i_7_n_0 ;
  wire \out_overflow[14]_INST_0_i_8_n_0 ;
  wire \out_overflow[14]_INST_0_i_9_n_0 ;
  wire \out_overflow[15]_INST_0_i_10_n_1 ;
  wire \out_overflow[15]_INST_0_i_10_n_2 ;
  wire \out_overflow[15]_INST_0_i_10_n_3 ;
  wire \out_overflow[15]_INST_0_i_11_n_0 ;
  wire \out_overflow[15]_INST_0_i_12_n_0 ;
  wire \out_overflow[15]_INST_0_i_13_n_0 ;
  wire \out_overflow[15]_INST_0_i_14_n_0 ;
  wire \out_overflow[15]_INST_0_i_15_n_0 ;
  wire \out_overflow[15]_INST_0_i_16_n_0 ;
  wire \out_overflow[15]_INST_0_i_17_n_0 ;
  wire \out_overflow[15]_INST_0_i_18_n_0 ;
  wire \out_overflow[15]_INST_0_i_19_n_0 ;
  wire \out_overflow[15]_INST_0_i_1_n_0 ;
  wire \out_overflow[15]_INST_0_i_20_n_0 ;
  wire \out_overflow[15]_INST_0_i_21_n_0 ;
  wire \out_overflow[15]_INST_0_i_22_n_0 ;
  wire \out_overflow[15]_INST_0_i_23_n_0 ;
  wire \out_overflow[15]_INST_0_i_24_n_0 ;
  wire \out_overflow[15]_INST_0_i_2_n_0 ;
  wire \out_overflow[15]_INST_0_i_3_n_0 ;
  wire \out_overflow[15]_INST_0_i_4_n_0 ;
  wire \out_overflow[15]_INST_0_i_5_n_0 ;
  wire \out_overflow[15]_INST_0_i_6_n_1 ;
  wire \out_overflow[15]_INST_0_i_6_n_2 ;
  wire \out_overflow[15]_INST_0_i_6_n_3 ;
  wire \out_overflow[15]_INST_0_i_7_n_0 ;
  wire \out_overflow[15]_INST_0_i_8_n_0 ;
  wire \out_overflow[15]_INST_0_i_9_n_0 ;
  wire \out_overflow[1]_INST_0_i_10_n_0 ;
  wire \out_overflow[1]_INST_0_i_1_n_0 ;
  wire \out_overflow[1]_INST_0_i_2_n_0 ;
  wire \out_overflow[1]_INST_0_i_3_n_0 ;
  wire \out_overflow[1]_INST_0_i_4_n_0 ;
  wire \out_overflow[1]_INST_0_i_5_n_0 ;
  wire \out_overflow[1]_INST_0_i_6_n_0 ;
  wire \out_overflow[1]_INST_0_i_7_n_0 ;
  wire \out_overflow[1]_INST_0_i_8_n_0 ;
  wire \out_overflow[1]_INST_0_i_9_n_0 ;
  wire \out_overflow[2]_INST_0_i_10_n_0 ;
  wire \out_overflow[2]_INST_0_i_1_n_0 ;
  wire \out_overflow[2]_INST_0_i_2_n_0 ;
  wire \out_overflow[2]_INST_0_i_3_n_0 ;
  wire \out_overflow[2]_INST_0_i_4_n_0 ;
  wire \out_overflow[2]_INST_0_i_5_n_0 ;
  wire \out_overflow[2]_INST_0_i_6_n_0 ;
  wire \out_overflow[2]_INST_0_i_7_n_0 ;
  wire \out_overflow[2]_INST_0_i_8_n_0 ;
  wire \out_overflow[2]_INST_0_i_9_n_0 ;
  wire \out_overflow[3]_INST_0_i_10_n_0 ;
  wire \out_overflow[3]_INST_0_i_10_n_1 ;
  wire \out_overflow[3]_INST_0_i_10_n_2 ;
  wire \out_overflow[3]_INST_0_i_10_n_3 ;
  wire \out_overflow[3]_INST_0_i_11_n_0 ;
  wire \out_overflow[3]_INST_0_i_11_n_1 ;
  wire \out_overflow[3]_INST_0_i_11_n_2 ;
  wire \out_overflow[3]_INST_0_i_11_n_3 ;
  wire \out_overflow[3]_INST_0_i_12_n_0 ;
  wire \out_overflow[3]_INST_0_i_13_n_0 ;
  wire \out_overflow[3]_INST_0_i_14_n_0 ;
  wire \out_overflow[3]_INST_0_i_15_n_0 ;
  wire \out_overflow[3]_INST_0_i_16_n_0 ;
  wire \out_overflow[3]_INST_0_i_17_n_0 ;
  wire \out_overflow[3]_INST_0_i_18_n_0 ;
  wire \out_overflow[3]_INST_0_i_19_n_0 ;
  wire \out_overflow[3]_INST_0_i_1_n_0 ;
  wire \out_overflow[3]_INST_0_i_20_n_0 ;
  wire \out_overflow[3]_INST_0_i_2_n_0 ;
  wire \out_overflow[3]_INST_0_i_3_n_0 ;
  wire \out_overflow[3]_INST_0_i_4_n_0 ;
  wire \out_overflow[3]_INST_0_i_5_n_0 ;
  wire \out_overflow[3]_INST_0_i_6_n_0 ;
  wire \out_overflow[3]_INST_0_i_7_n_0 ;
  wire \out_overflow[3]_INST_0_i_8_n_0 ;
  wire \out_overflow[3]_INST_0_i_9_n_0 ;
  wire \out_overflow[4]_INST_0_i_10_n_0 ;
  wire \out_overflow[4]_INST_0_i_1_n_0 ;
  wire \out_overflow[4]_INST_0_i_2_n_0 ;
  wire \out_overflow[4]_INST_0_i_3_n_0 ;
  wire \out_overflow[4]_INST_0_i_4_n_0 ;
  wire \out_overflow[4]_INST_0_i_5_n_0 ;
  wire \out_overflow[4]_INST_0_i_6_n_0 ;
  wire \out_overflow[4]_INST_0_i_7_n_0 ;
  wire \out_overflow[4]_INST_0_i_8_n_0 ;
  wire \out_overflow[4]_INST_0_i_9_n_0 ;
  wire \out_overflow[5]_INST_0_i_10_n_0 ;
  wire \out_overflow[5]_INST_0_i_1_n_0 ;
  wire \out_overflow[5]_INST_0_i_2_n_0 ;
  wire \out_overflow[5]_INST_0_i_3_n_0 ;
  wire \out_overflow[5]_INST_0_i_4_n_0 ;
  wire \out_overflow[5]_INST_0_i_5_n_0 ;
  wire \out_overflow[5]_INST_0_i_6_n_0 ;
  wire \out_overflow[5]_INST_0_i_7_n_0 ;
  wire \out_overflow[5]_INST_0_i_8_n_0 ;
  wire \out_overflow[5]_INST_0_i_9_n_0 ;
  wire \out_overflow[6]_INST_0_i_10_n_0 ;
  wire \out_overflow[6]_INST_0_i_1_n_0 ;
  wire \out_overflow[6]_INST_0_i_2_n_0 ;
  wire \out_overflow[6]_INST_0_i_3_n_0 ;
  wire \out_overflow[6]_INST_0_i_4_n_0 ;
  wire \out_overflow[6]_INST_0_i_5_n_0 ;
  wire \out_overflow[6]_INST_0_i_6_n_0 ;
  wire \out_overflow[6]_INST_0_i_7_n_0 ;
  wire \out_overflow[6]_INST_0_i_8_n_0 ;
  wire \out_overflow[6]_INST_0_i_9_n_0 ;
  wire \out_overflow[7]_INST_0_i_10_n_0 ;
  wire \out_overflow[7]_INST_0_i_11_n_0 ;
  wire \out_overflow[7]_INST_0_i_11_n_1 ;
  wire \out_overflow[7]_INST_0_i_11_n_2 ;
  wire \out_overflow[7]_INST_0_i_11_n_3 ;
  wire \out_overflow[7]_INST_0_i_12_n_0 ;
  wire \out_overflow[7]_INST_0_i_13_n_0 ;
  wire \out_overflow[7]_INST_0_i_14_n_0 ;
  wire \out_overflow[7]_INST_0_i_15_n_0 ;
  wire \out_overflow[7]_INST_0_i_16_n_0 ;
  wire \out_overflow[7]_INST_0_i_17_n_0 ;
  wire \out_overflow[7]_INST_0_i_18_n_0 ;
  wire \out_overflow[7]_INST_0_i_19_n_0 ;
  wire \out_overflow[7]_INST_0_i_1_n_0 ;
  wire \out_overflow[7]_INST_0_i_20_n_0 ;
  wire \out_overflow[7]_INST_0_i_21_n_0 ;
  wire \out_overflow[7]_INST_0_i_2_n_0 ;
  wire \out_overflow[7]_INST_0_i_3_n_0 ;
  wire \out_overflow[7]_INST_0_i_4_n_0 ;
  wire \out_overflow[7]_INST_0_i_5_n_0 ;
  wire \out_overflow[7]_INST_0_i_6_n_0 ;
  wire \out_overflow[7]_INST_0_i_7_n_0 ;
  wire \out_overflow[7]_INST_0_i_8_n_0 ;
  wire \out_overflow[7]_INST_0_i_9_n_0 ;
  wire \out_overflow[7]_INST_0_i_9_n_1 ;
  wire \out_overflow[7]_INST_0_i_9_n_2 ;
  wire \out_overflow[7]_INST_0_i_9_n_3 ;
  wire \out_overflow[8]_INST_0_i_10_n_0 ;
  wire \out_overflow[8]_INST_0_i_11_n_0 ;
  wire \out_overflow[8]_INST_0_i_1_n_0 ;
  wire \out_overflow[8]_INST_0_i_2_n_0 ;
  wire \out_overflow[8]_INST_0_i_3_n_0 ;
  wire \out_overflow[8]_INST_0_i_4_n_0 ;
  wire \out_overflow[8]_INST_0_i_5_n_0 ;
  wire \out_overflow[8]_INST_0_i_6_n_0 ;
  wire \out_overflow[8]_INST_0_i_7_n_0 ;
  wire \out_overflow[8]_INST_0_i_8_n_0 ;
  wire \out_overflow[8]_INST_0_i_9_n_0 ;
  wire \out_overflow[9]_INST_0_i_10_n_0 ;
  wire \out_overflow[9]_INST_0_i_11_n_0 ;
  wire \out_overflow[9]_INST_0_i_1_n_0 ;
  wire \out_overflow[9]_INST_0_i_2_n_0 ;
  wire \out_overflow[9]_INST_0_i_3_n_0 ;
  wire \out_overflow[9]_INST_0_i_4_n_0 ;
  wire \out_overflow[9]_INST_0_i_5_n_0 ;
  wire \out_overflow[9]_INST_0_i_6_n_0 ;
  wire \out_overflow[9]_INST_0_i_7_n_0 ;
  wire \out_overflow[9]_INST_0_i_8_n_0 ;
  wire \out_overflow[9]_INST_0_i_9_n_0 ;
  wire [3:2]\NLW_out_cmp[1]_INST_0_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_out_cmp[1]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_out_cmp[1]_INST_0_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_out_cmp[1]_INST_0_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_out_cmp[1]_INST_0_i_6_O_UNCONNECTED ;
  wire [3:0]NLW_out_data_INST_0_i_1_O_UNCONNECTED;
  wire [3:0]NLW_out_data_INST_0_i_12_O_UNCONNECTED;
  wire [3:0]NLW_out_data_INST_0_i_2_O_UNCONNECTED;
  wire [3:0]NLW_out_data_INST_0_i_3_O_UNCONNECTED;
  wire [3:3]\NLW_out_overflow[15]_INST_0_i_10_CO_UNCONNECTED ;
  wire [3:3]\NLW_out_overflow[15]_INST_0_i_6_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_cmp[0]_INST_0 
       (.I0(cmpleq_selection_res),
        .I1(in_mcr[3]),
        .I2(in_mcr[0]),
        .I3(in_mcr[2]),
        .O(out_cmp[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF2)) 
    \out_cmp[1]_INST_0 
       (.I0(ccmpleq_case_alt_selection_res),
        .I1(cmpleq_selection_res),
        .I2(in_mcr[3]),
        .I3(in_mcr[0]),
        .I4(in_mcr[2]),
        .O(out_cmp[1]));
  CARRY4 \out_cmp[1]_INST_0_i_1 
       (.CI(\out_cmp[1]_INST_0_i_3_n_0 ),
        .CO({\NLW_out_cmp[1]_INST_0_i_1_CO_UNCONNECTED [3:2],ccmpleq_case_alt_selection_res,\out_cmp[1]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_out_cmp[1]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\out_cmp[1]_INST_0_i_4_n_0 ,\out_cmp[1]_INST_0_i_5_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_cmp[1]_INST_0_i_10 
       (.I0(in_mem_a[8]),
        .I1(in_mem_b[8]),
        .I2(in_mem_b[9]),
        .I3(in_mem_a[9]),
        .O(\out_cmp[1]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_cmp[1]_INST_0_i_11 
       (.I0(in_mem_b[14]),
        .I1(in_mem_a[14]),
        .I2(in_mem_b[15]),
        .I3(in_mem_a[15]),
        .O(\out_cmp[1]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_cmp[1]_INST_0_i_12 
       (.I0(in_mem_b[12]),
        .I1(in_mem_a[12]),
        .I2(in_mem_b[13]),
        .I3(in_mem_a[13]),
        .O(\out_cmp[1]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_cmp[1]_INST_0_i_13 
       (.I0(in_mem_b[10]),
        .I1(in_mem_a[10]),
        .I2(in_mem_b[11]),
        .I3(in_mem_a[11]),
        .O(\out_cmp[1]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_cmp[1]_INST_0_i_14 
       (.I0(in_mem_b[8]),
        .I1(in_mem_a[8]),
        .I2(in_mem_b[9]),
        .I3(in_mem_a[9]),
        .O(\out_cmp[1]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \out_cmp[1]_INST_0_i_15 
       (.I0(in_mem_b[9]),
        .I1(in_mem_a[9]),
        .I2(in_mem_a[11]),
        .I3(in_mem_b[11]),
        .I4(in_mem_a[10]),
        .I5(in_mem_b[10]),
        .O(\out_cmp[1]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \out_cmp[1]_INST_0_i_16 
       (.I0(in_mem_b[6]),
        .I1(in_mem_a[6]),
        .I2(in_mem_a[8]),
        .I3(in_mem_b[8]),
        .I4(in_mem_a[7]),
        .I5(in_mem_b[7]),
        .O(\out_cmp[1]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \out_cmp[1]_INST_0_i_17 
       (.I0(in_mem_b[3]),
        .I1(in_mem_a[3]),
        .I2(in_mem_a[5]),
        .I3(in_mem_b[5]),
        .I4(in_mem_a[4]),
        .I5(in_mem_b[4]),
        .O(\out_cmp[1]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \out_cmp[1]_INST_0_i_18 
       (.I0(in_mem_b[0]),
        .I1(in_mem_a[0]),
        .I2(in_mem_a[2]),
        .I3(in_mem_b[2]),
        .I4(in_mem_a[1]),
        .I5(in_mem_b[1]),
        .O(\out_cmp[1]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_cmp[1]_INST_0_i_19 
       (.I0(in_mem_a[6]),
        .I1(in_mem_b[6]),
        .I2(in_mem_b[7]),
        .I3(in_mem_a[7]),
        .O(\out_cmp[1]_INST_0_i_19_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \out_cmp[1]_INST_0_i_2 
       (.CI(\out_cmp[1]_INST_0_i_6_n_0 ),
        .CO({cmpleq_selection_res,\out_cmp[1]_INST_0_i_2_n_1 ,\out_cmp[1]_INST_0_i_2_n_2 ,\out_cmp[1]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_cmp[1]_INST_0_i_7_n_0 ,\out_cmp[1]_INST_0_i_8_n_0 ,\out_cmp[1]_INST_0_i_9_n_0 ,\out_cmp[1]_INST_0_i_10_n_0 }),
        .O(\NLW_out_cmp[1]_INST_0_i_2_O_UNCONNECTED [3:0]),
        .S({\out_cmp[1]_INST_0_i_11_n_0 ,\out_cmp[1]_INST_0_i_12_n_0 ,\out_cmp[1]_INST_0_i_13_n_0 ,\out_cmp[1]_INST_0_i_14_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_cmp[1]_INST_0_i_20 
       (.I0(in_mem_a[4]),
        .I1(in_mem_b[4]),
        .I2(in_mem_b[5]),
        .I3(in_mem_a[5]),
        .O(\out_cmp[1]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_cmp[1]_INST_0_i_21 
       (.I0(in_mem_a[2]),
        .I1(in_mem_b[2]),
        .I2(in_mem_b[3]),
        .I3(in_mem_a[3]),
        .O(\out_cmp[1]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_cmp[1]_INST_0_i_22 
       (.I0(in_mem_a[0]),
        .I1(in_mem_b[0]),
        .I2(in_mem_b[1]),
        .I3(in_mem_a[1]),
        .O(\out_cmp[1]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_cmp[1]_INST_0_i_23 
       (.I0(in_mem_b[6]),
        .I1(in_mem_a[6]),
        .I2(in_mem_b[7]),
        .I3(in_mem_a[7]),
        .O(\out_cmp[1]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_cmp[1]_INST_0_i_24 
       (.I0(in_mem_b[4]),
        .I1(in_mem_a[4]),
        .I2(in_mem_b[5]),
        .I3(in_mem_a[5]),
        .O(\out_cmp[1]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_cmp[1]_INST_0_i_25 
       (.I0(in_mem_b[2]),
        .I1(in_mem_a[2]),
        .I2(in_mem_b[3]),
        .I3(in_mem_a[3]),
        .O(\out_cmp[1]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_cmp[1]_INST_0_i_26 
       (.I0(in_mem_b[0]),
        .I1(in_mem_a[0]),
        .I2(in_mem_b[1]),
        .I3(in_mem_a[1]),
        .O(\out_cmp[1]_INST_0_i_26_n_0 ));
  CARRY4 \out_cmp[1]_INST_0_i_3 
       (.CI(1'b0),
        .CO({\out_cmp[1]_INST_0_i_3_n_0 ,\out_cmp[1]_INST_0_i_3_n_1 ,\out_cmp[1]_INST_0_i_3_n_2 ,\out_cmp[1]_INST_0_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_out_cmp[1]_INST_0_i_3_O_UNCONNECTED [3:0]),
        .S({\out_cmp[1]_INST_0_i_15_n_0 ,\out_cmp[1]_INST_0_i_16_n_0 ,\out_cmp[1]_INST_0_i_17_n_0 ,\out_cmp[1]_INST_0_i_18_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \out_cmp[1]_INST_0_i_4 
       (.I0(in_mem_a[15]),
        .I1(in_mem_b[15]),
        .O(\out_cmp[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \out_cmp[1]_INST_0_i_5 
       (.I0(in_mem_b[12]),
        .I1(in_mem_a[12]),
        .I2(in_mem_a[14]),
        .I3(in_mem_b[14]),
        .I4(in_mem_a[13]),
        .I5(in_mem_b[13]),
        .O(\out_cmp[1]_INST_0_i_5_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \out_cmp[1]_INST_0_i_6 
       (.CI(1'b0),
        .CO({\out_cmp[1]_INST_0_i_6_n_0 ,\out_cmp[1]_INST_0_i_6_n_1 ,\out_cmp[1]_INST_0_i_6_n_2 ,\out_cmp[1]_INST_0_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_cmp[1]_INST_0_i_19_n_0 ,\out_cmp[1]_INST_0_i_20_n_0 ,\out_cmp[1]_INST_0_i_21_n_0 ,\out_cmp[1]_INST_0_i_22_n_0 }),
        .O(\NLW_out_cmp[1]_INST_0_i_6_O_UNCONNECTED [3:0]),
        .S({\out_cmp[1]_INST_0_i_23_n_0 ,\out_cmp[1]_INST_0_i_24_n_0 ,\out_cmp[1]_INST_0_i_25_n_0 ,\out_cmp[1]_INST_0_i_26_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_cmp[1]_INST_0_i_7 
       (.I0(in_mem_a[14]),
        .I1(in_mem_b[14]),
        .I2(in_mem_a[15]),
        .I3(in_mem_b[15]),
        .O(\out_cmp[1]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_cmp[1]_INST_0_i_8 
       (.I0(in_mem_a[12]),
        .I1(in_mem_b[12]),
        .I2(in_mem_b[13]),
        .I3(in_mem_a[13]),
        .O(\out_cmp[1]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_cmp[1]_INST_0_i_9 
       (.I0(in_mem_a[10]),
        .I1(in_mem_b[10]),
        .I2(in_mem_b[11]),
        .I3(in_mem_a[11]),
        .O(\out_cmp[1]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0101010000000100)) 
    out_data_INST_0
       (.I0(in_mcr[3]),
        .I1(in_mcr[0]),
        .I2(in_mcr[2]),
        .I3(out_data_INST_0_i_1_n_0),
        .I4(in_mcr[1]),
        .I5(out_data_INST_0_i_2_n_0),
        .O(out_data));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 out_data_INST_0_i_1
       (.CI(out_data_INST_0_i_3_n_0),
        .CO({out_data_INST_0_i_1_n_0,out_data_INST_0_i_1_n_1,out_data_INST_0_i_1_n_2,out_data_INST_0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({out_data_INST_0_i_4_n_0,out_data_INST_0_i_5_n_0,out_data_INST_0_i_6_n_0,out_data_INST_0_i_7_n_0}),
        .O(NLW_out_data_INST_0_i_1_O_UNCONNECTED[3:0]),
        .S({out_data_INST_0_i_8_n_0,out_data_INST_0_i_9_n_0,out_data_INST_0_i_10_n_0,out_data_INST_0_i_11_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    out_data_INST_0_i_10
       (.I0(data0[10]),
        .I1(in_mem_b[10]),
        .I2(data0[11]),
        .I3(in_mem_b[11]),
        .O(out_data_INST_0_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_data_INST_0_i_11
       (.I0(data0[8]),
        .I1(in_mem_b[8]),
        .I2(data0[9]),
        .I3(in_mem_b[9]),
        .O(out_data_INST_0_i_11_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 out_data_INST_0_i_12
       (.CI(1'b0),
        .CO({out_data_INST_0_i_12_n_0,out_data_INST_0_i_12_n_1,out_data_INST_0_i_12_n_2,out_data_INST_0_i_12_n_3}),
        .CYINIT(1'b0),
        .DI({out_data_INST_0_i_29_n_0,out_data_INST_0_i_30_n_0,out_data_INST_0_i_31_n_0,out_data_INST_0_i_32_n_0}),
        .O(NLW_out_data_INST_0_i_12_O_UNCONNECTED[3:0]),
        .S({out_data_INST_0_i_33_n_0,out_data_INST_0_i_34_n_0,out_data_INST_0_i_35_n_0,out_data_INST_0_i_36_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    out_data_INST_0_i_13
       (.I0(in_mem_b[14]),
        .I1(data2[14]),
        .I2(in_mem_b[15]),
        .I3(data2[15]),
        .O(out_data_INST_0_i_13_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out_data_INST_0_i_14
       (.I0(in_mem_b[12]),
        .I1(data2[12]),
        .I2(data2[13]),
        .I3(in_mem_b[13]),
        .O(out_data_INST_0_i_14_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out_data_INST_0_i_15
       (.I0(in_mem_b[10]),
        .I1(data2[10]),
        .I2(data2[11]),
        .I3(in_mem_b[11]),
        .O(out_data_INST_0_i_15_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out_data_INST_0_i_16
       (.I0(in_mem_b[8]),
        .I1(data2[8]),
        .I2(data2[9]),
        .I3(in_mem_b[9]),
        .O(out_data_INST_0_i_16_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_data_INST_0_i_17
       (.I0(in_mem_b[14]),
        .I1(data2[14]),
        .I2(data2[15]),
        .I3(in_mem_b[15]),
        .O(out_data_INST_0_i_17_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_data_INST_0_i_18
       (.I0(in_mem_b[12]),
        .I1(data2[12]),
        .I2(in_mem_b[13]),
        .I3(data2[13]),
        .O(out_data_INST_0_i_18_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_data_INST_0_i_19
       (.I0(in_mem_b[10]),
        .I1(data2[10]),
        .I2(in_mem_b[11]),
        .I3(data2[11]),
        .O(out_data_INST_0_i_19_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 out_data_INST_0_i_2
       (.CI(out_data_INST_0_i_12_n_0),
        .CO({out_data_INST_0_i_2_n_0,out_data_INST_0_i_2_n_1,out_data_INST_0_i_2_n_2,out_data_INST_0_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({out_data_INST_0_i_13_n_0,out_data_INST_0_i_14_n_0,out_data_INST_0_i_15_n_0,out_data_INST_0_i_16_n_0}),
        .O(NLW_out_data_INST_0_i_2_O_UNCONNECTED[3:0]),
        .S({out_data_INST_0_i_17_n_0,out_data_INST_0_i_18_n_0,out_data_INST_0_i_19_n_0,out_data_INST_0_i_20_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    out_data_INST_0_i_20
       (.I0(in_mem_b[8]),
        .I1(data2[8]),
        .I2(in_mem_b[9]),
        .I3(data2[9]),
        .O(out_data_INST_0_i_20_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out_data_INST_0_i_21
       (.I0(data0[6]),
        .I1(in_mem_b[6]),
        .I2(in_mem_b[7]),
        .I3(data0[7]),
        .O(out_data_INST_0_i_21_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out_data_INST_0_i_22
       (.I0(data0[4]),
        .I1(in_mem_b[4]),
        .I2(in_mem_b[5]),
        .I3(data0[5]),
        .O(out_data_INST_0_i_22_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out_data_INST_0_i_23
       (.I0(data0[2]),
        .I1(in_mem_b[2]),
        .I2(in_mem_b[3]),
        .I3(data0[3]),
        .O(out_data_INST_0_i_23_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out_data_INST_0_i_24
       (.I0(data0[0]),
        .I1(in_mem_b[0]),
        .I2(in_mem_b[1]),
        .I3(data0[1]),
        .O(out_data_INST_0_i_24_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_data_INST_0_i_25
       (.I0(data0[6]),
        .I1(in_mem_b[6]),
        .I2(data0[7]),
        .I3(in_mem_b[7]),
        .O(out_data_INST_0_i_25_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_data_INST_0_i_26
       (.I0(data0[4]),
        .I1(in_mem_b[4]),
        .I2(data0[5]),
        .I3(in_mem_b[5]),
        .O(out_data_INST_0_i_26_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_data_INST_0_i_27
       (.I0(data0[2]),
        .I1(in_mem_b[2]),
        .I2(data0[3]),
        .I3(in_mem_b[3]),
        .O(out_data_INST_0_i_27_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_data_INST_0_i_28
       (.I0(data0[0]),
        .I1(in_mem_b[0]),
        .I2(data0[1]),
        .I3(in_mem_b[1]),
        .O(out_data_INST_0_i_28_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out_data_INST_0_i_29
       (.I0(in_mem_b[6]),
        .I1(data2[6]),
        .I2(data2[7]),
        .I3(in_mem_b[7]),
        .O(out_data_INST_0_i_29_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 out_data_INST_0_i_3
       (.CI(1'b0),
        .CO({out_data_INST_0_i_3_n_0,out_data_INST_0_i_3_n_1,out_data_INST_0_i_3_n_2,out_data_INST_0_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({out_data_INST_0_i_21_n_0,out_data_INST_0_i_22_n_0,out_data_INST_0_i_23_n_0,out_data_INST_0_i_24_n_0}),
        .O(NLW_out_data_INST_0_i_3_O_UNCONNECTED[3:0]),
        .S({out_data_INST_0_i_25_n_0,out_data_INST_0_i_26_n_0,out_data_INST_0_i_27_n_0,out_data_INST_0_i_28_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    out_data_INST_0_i_30
       (.I0(in_mem_b[4]),
        .I1(data2[4]),
        .I2(data2[5]),
        .I3(in_mem_b[5]),
        .O(out_data_INST_0_i_30_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out_data_INST_0_i_31
       (.I0(in_mem_b[2]),
        .I1(data2[2]),
        .I2(data2[3]),
        .I3(in_mem_b[3]),
        .O(out_data_INST_0_i_31_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out_data_INST_0_i_32
       (.I0(in_mem_b[0]),
        .I1(data2[0]),
        .I2(data2[1]),
        .I3(in_mem_b[1]),
        .O(out_data_INST_0_i_32_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_data_INST_0_i_33
       (.I0(in_mem_b[6]),
        .I1(data2[6]),
        .I2(in_mem_b[7]),
        .I3(data2[7]),
        .O(out_data_INST_0_i_33_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_data_INST_0_i_34
       (.I0(in_mem_b[4]),
        .I1(data2[4]),
        .I2(in_mem_b[5]),
        .I3(data2[5]),
        .O(out_data_INST_0_i_34_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_data_INST_0_i_35
       (.I0(in_mem_b[2]),
        .I1(data2[2]),
        .I2(in_mem_b[3]),
        .I3(data2[3]),
        .O(out_data_INST_0_i_35_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_data_INST_0_i_36
       (.I0(in_mem_b[0]),
        .I1(data2[0]),
        .I2(in_mem_b[1]),
        .I3(data2[1]),
        .O(out_data_INST_0_i_36_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out_data_INST_0_i_4
       (.I0(data0[14]),
        .I1(in_mem_b[14]),
        .I2(data0[15]),
        .I3(in_mem_b[15]),
        .O(out_data_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out_data_INST_0_i_5
       (.I0(data0[12]),
        .I1(in_mem_b[12]),
        .I2(in_mem_b[13]),
        .I3(data0[13]),
        .O(out_data_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out_data_INST_0_i_6
       (.I0(data0[10]),
        .I1(in_mem_b[10]),
        .I2(in_mem_b[11]),
        .I3(data0[11]),
        .O(out_data_INST_0_i_6_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out_data_INST_0_i_7
       (.I0(data0[8]),
        .I1(in_mem_b[8]),
        .I2(in_mem_b[9]),
        .I3(data0[9]),
        .O(out_data_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_data_INST_0_i_8
       (.I0(data0[14]),
        .I1(in_mem_b[14]),
        .I2(in_mem_b[15]),
        .I3(data0[15]),
        .O(out_data_INST_0_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_data_INST_0_i_9
       (.I0(data0[12]),
        .I1(in_mem_b[12]),
        .I2(data0[13]),
        .I3(in_mem_b[13]),
        .O(out_data_INST_0_i_9_n_0));
  MUXF7 \out_overflow[0]_INST_0 
       (.I0(\out_overflow[0]_INST_0_i_1_n_0 ),
        .I1(\out_overflow[0]_INST_0_i_2_n_0 ),
        .O(out_overflow[0]),
        .S(in_mcr[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[0]_INST_0_i_1 
       (.I0(\out_overflow[0]_INST_0_i_3_n_0 ),
        .I1(\out_overflow[0]_INST_0_i_4_n_0 ),
        .I2(in_mcr[2]),
        .I3(\out_overflow[0]_INST_0_i_5_n_0 ),
        .I4(in_mcr[1]),
        .I5(\out_overflow[0]_INST_0_i_6_n_0 ),
        .O(\out_overflow[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[0]_INST_0_i_10 
       (.I0(in_mem_b[12]),
        .I1(in_mem_b[4]),
        .I2(in_mem_a[2]),
        .I3(in_mem_b[8]),
        .I4(in_mem_a[3]),
        .I5(in_mem_b[0]),
        .O(\out_overflow[0]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[0]_INST_0_i_2 
       (.I0(in_mem_b[0]),
        .I1(in_mcr[2]),
        .I2(\out_overflow[0]_INST_0_i_7_n_0 ),
        .O(\out_overflow[0]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h68)) 
    \out_overflow[0]_INST_0_i_3 
       (.I0(in_mcr[0]),
        .I1(in_mem_a[0]),
        .I2(in_mem_b[0]),
        .O(\out_overflow[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \out_overflow[0]_INST_0_i_4 
       (.I0(in_mem_a[0]),
        .I1(in_mem_b[0]),
        .I2(in_mcr[0]),
        .I3(\out_overflow[0]_INST_0_i_8_n_0 ),
        .I4(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I5(in_mem_b[15]),
        .O(\out_overflow[0]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h20FF2000)) 
    \out_overflow[0]_INST_0_i_5 
       (.I0(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I1(in_mem_a[0]),
        .I2(\out_overflow[0]_INST_0_i_9_n_0 ),
        .I3(in_mcr[0]),
        .I4(data2[0]),
        .O(\out_overflow[0]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[0]_INST_0_i_6 
       (.I0(in_mem_a[0]),
        .I1(in_mcr[0]),
        .I2(data0[0]),
        .O(\out_overflow[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8CCB800B833)) 
    \out_overflow[0]_INST_0_i_7 
       (.I0(in_mem_mem_b[0]),
        .I1(in_mcr[1]),
        .I2(in_pc[0]),
        .I3(in_mcr[0]),
        .I4(in_mem_b[0]),
        .I5(in_mem_a[0]),
        .O(\out_overflow[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[0]_INST_0_i_8 
       (.I0(\out_overflow[3]_INST_0_i_12_n_0 ),
        .I1(\out_overflow[1]_INST_0_i_10_n_0 ),
        .I2(in_mem_a[0]),
        .I3(\out_overflow[2]_INST_0_i_10_n_0 ),
        .I4(in_mem_a[1]),
        .I5(\out_overflow[0]_INST_0_i_10_n_0 ),
        .O(\out_overflow[0]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \out_overflow[0]_INST_0_i_9 
       (.I0(in_mem_a[2]),
        .I1(in_mem_b[0]),
        .I2(in_mem_a[3]),
        .I3(in_mem_a[1]),
        .O(\out_overflow[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[10]_INST_0 
       (.I0(in_mem_b[10]),
        .I1(\out_overflow[10]_INST_0_i_1_n_0 ),
        .I2(in_mcr[3]),
        .I3(\out_overflow[10]_INST_0_i_2_n_0 ),
        .I4(in_mcr[2]),
        .I5(\out_overflow[10]_INST_0_i_3_n_0 ),
        .O(out_overflow[10]));
  LUT6 #(
    .INIT(64'hB8FFB8CCB800B833)) 
    \out_overflow[10]_INST_0_i_1 
       (.I0(in_mem_mem_b[10]),
        .I1(in_mcr[1]),
        .I2(in_pc[10]),
        .I3(in_mcr[0]),
        .I4(in_mem_b[10]),
        .I5(in_mem_a[10]),
        .O(\out_overflow[10]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \out_overflow[10]_INST_0_i_10 
       (.I0(in_mem_a[2]),
        .I1(in_mem_b[15]),
        .I2(in_mem_a[3]),
        .I3(in_mem_b[12]),
        .O(\out_overflow[10]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \out_overflow[10]_INST_0_i_11 
       (.I0(in_mem_b[14]),
        .I1(in_mem_a[2]),
        .I2(in_mem_b[15]),
        .I3(in_mem_a[3]),
        .I4(in_mem_b[10]),
        .O(\out_overflow[10]_INST_0_i_11_n_0 ));
  MUXF7 \out_overflow[10]_INST_0_i_2 
       (.I0(\out_overflow[10]_INST_0_i_4_n_0 ),
        .I1(\out_overflow[10]_INST_0_i_5_n_0 ),
        .O(\out_overflow[10]_INST_0_i_2_n_0 ),
        .S(in_mcr[1]));
  MUXF7 \out_overflow[10]_INST_0_i_3 
       (.I0(\out_overflow[10]_INST_0_i_6_n_0 ),
        .I1(\out_overflow[10]_INST_0_i_7_n_0 ),
        .O(\out_overflow[10]_INST_0_i_3_n_0 ),
        .S(in_mcr[1]));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \out_overflow[10]_INST_0_i_4 
       (.I0(in_mem_a[10]),
        .I1(in_mem_b[10]),
        .I2(in_mcr[0]),
        .I3(\out_overflow[10]_INST_0_i_8_n_0 ),
        .I4(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I5(in_mem_b[15]),
        .O(\out_overflow[10]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h68)) 
    \out_overflow[10]_INST_0_i_5 
       (.I0(in_mcr[0]),
        .I1(in_mem_a[10]),
        .I2(in_mem_b[10]),
        .O(\out_overflow[10]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[10]_INST_0_i_6 
       (.I0(in_mem_a[10]),
        .I1(in_mcr[0]),
        .I2(data0[10]),
        .O(\out_overflow[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    \out_overflow[10]_INST_0_i_7 
       (.I0(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I1(\out_overflow[11]_INST_0_i_10_n_0 ),
        .I2(in_mem_a[0]),
        .I3(\out_overflow[10]_INST_0_i_9_n_0 ),
        .I4(in_mcr[0]),
        .I5(data2[10]),
        .O(\out_overflow[10]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \out_overflow[10]_INST_0_i_8 
       (.I0(\out_overflow[11]_INST_0_i_12_n_0 ),
        .I1(in_mem_a[0]),
        .I2(\out_overflow[10]_INST_0_i_10_n_0 ),
        .I3(in_mem_a[1]),
        .I4(\out_overflow[10]_INST_0_i_11_n_0 ),
        .O(\out_overflow[10]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \out_overflow[10]_INST_0_i_9 
       (.I0(in_mem_b[3]),
        .I1(in_mem_a[2]),
        .I2(in_mem_b[7]),
        .I3(in_mem_a[3]),
        .I4(in_mem_a[1]),
        .I5(\out_overflow[12]_INST_0_i_11_n_0 ),
        .O(\out_overflow[10]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[11]_INST_0 
       (.I0(in_mem_b[11]),
        .I1(\out_overflow[11]_INST_0_i_1_n_0 ),
        .I2(in_mcr[3]),
        .I3(\out_overflow[11]_INST_0_i_2_n_0 ),
        .I4(in_mcr[2]),
        .I5(\out_overflow[11]_INST_0_i_3_n_0 ),
        .O(out_overflow[11]));
  LUT6 #(
    .INIT(64'hB8FFB8CCB800B833)) 
    \out_overflow[11]_INST_0_i_1 
       (.I0(in_mem_mem_b[11]),
        .I1(in_mcr[1]),
        .I2(in_pc[11]),
        .I3(in_mcr[0]),
        .I4(in_mem_b[11]),
        .I5(in_mem_a[11]),
        .O(\out_overflow[11]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[11]_INST_0_i_10 
       (.I0(\out_overflow[11]_INST_0_i_17_n_0 ),
        .I1(in_mem_a[1]),
        .I2(\out_overflow[13]_INST_0_i_12_n_0 ),
        .O(\out_overflow[11]_INST_0_i_10_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \out_overflow[11]_INST_0_i_11 
       (.CI(\out_overflow[7]_INST_0_i_11_n_0 ),
        .CO({\out_overflow[11]_INST_0_i_11_n_0 ,\out_overflow[11]_INST_0_i_11_n_1 ,\out_overflow[11]_INST_0_i_11_n_2 ,\out_overflow[11]_INST_0_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI(in_mem_a[11:8]),
        .O(data2[11:8]),
        .S({\out_overflow[11]_INST_0_i_18_n_0 ,\out_overflow[11]_INST_0_i_19_n_0 ,\out_overflow[11]_INST_0_i_20_n_0 ,\out_overflow[11]_INST_0_i_21_n_0 }));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \out_overflow[11]_INST_0_i_12 
       (.I0(in_mem_b[13]),
        .I1(in_mem_a[1]),
        .I2(in_mem_a[2]),
        .I3(in_mem_b[15]),
        .I4(in_mem_a[3]),
        .I5(in_mem_b[11]),
        .O(\out_overflow[11]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \out_overflow[11]_INST_0_i_13 
       (.I0(in_mem_a[11]),
        .I1(in_mem_b[11]),
        .O(\out_overflow[11]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \out_overflow[11]_INST_0_i_14 
       (.I0(in_mem_a[10]),
        .I1(in_mem_b[10]),
        .O(\out_overflow[11]_INST_0_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \out_overflow[11]_INST_0_i_15 
       (.I0(in_mem_a[9]),
        .I1(in_mem_b[9]),
        .O(\out_overflow[11]_INST_0_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \out_overflow[11]_INST_0_i_16 
       (.I0(in_mem_a[8]),
        .I1(in_mem_b[8]),
        .O(\out_overflow[11]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out_overflow[11]_INST_0_i_17 
       (.I0(in_mem_b[4]),
        .I1(in_mem_a[2]),
        .I2(in_mem_b[0]),
        .I3(in_mem_a[3]),
        .I4(in_mem_b[8]),
        .O(\out_overflow[11]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out_overflow[11]_INST_0_i_18 
       (.I0(in_mem_a[11]),
        .I1(in_mem_b[11]),
        .O(\out_overflow[11]_INST_0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out_overflow[11]_INST_0_i_19 
       (.I0(in_mem_a[10]),
        .I1(in_mem_b[10]),
        .O(\out_overflow[11]_INST_0_i_19_n_0 ));
  MUXF7 \out_overflow[11]_INST_0_i_2 
       (.I0(\out_overflow[11]_INST_0_i_4_n_0 ),
        .I1(\out_overflow[11]_INST_0_i_5_n_0 ),
        .O(\out_overflow[11]_INST_0_i_2_n_0 ),
        .S(in_mcr[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \out_overflow[11]_INST_0_i_20 
       (.I0(in_mem_a[9]),
        .I1(in_mem_b[9]),
        .O(\out_overflow[11]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out_overflow[11]_INST_0_i_21 
       (.I0(in_mem_a[8]),
        .I1(in_mem_b[8]),
        .O(\out_overflow[11]_INST_0_i_21_n_0 ));
  MUXF7 \out_overflow[11]_INST_0_i_3 
       (.I0(\out_overflow[11]_INST_0_i_6_n_0 ),
        .I1(\out_overflow[11]_INST_0_i_7_n_0 ),
        .O(\out_overflow[11]_INST_0_i_3_n_0 ),
        .S(in_mcr[1]));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \out_overflow[11]_INST_0_i_4 
       (.I0(in_mem_a[11]),
        .I1(in_mem_b[11]),
        .I2(in_mcr[0]),
        .I3(\out_overflow[11]_INST_0_i_8_n_0 ),
        .I4(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I5(in_mem_b[15]),
        .O(\out_overflow[11]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h68)) 
    \out_overflow[11]_INST_0_i_5 
       (.I0(in_mcr[0]),
        .I1(in_mem_a[11]),
        .I2(in_mem_b[11]),
        .O(\out_overflow[11]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[11]_INST_0_i_6 
       (.I0(in_mem_a[11]),
        .I1(in_mcr[0]),
        .I2(data0[11]),
        .O(\out_overflow[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    \out_overflow[11]_INST_0_i_7 
       (.I0(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I1(\out_overflow[12]_INST_0_i_9_n_0 ),
        .I2(in_mem_a[0]),
        .I3(\out_overflow[11]_INST_0_i_10_n_0 ),
        .I4(in_mcr[0]),
        .I5(data2[11]),
        .O(\out_overflow[11]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[11]_INST_0_i_8 
       (.I0(\out_overflow[12]_INST_0_i_10_n_0 ),
        .I1(in_mem_a[0]),
        .I2(\out_overflow[11]_INST_0_i_12_n_0 ),
        .O(\out_overflow[11]_INST_0_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \out_overflow[11]_INST_0_i_9 
       (.CI(\out_overflow[7]_INST_0_i_9_n_0 ),
        .CO({\out_overflow[11]_INST_0_i_9_n_0 ,\out_overflow[11]_INST_0_i_9_n_1 ,\out_overflow[11]_INST_0_i_9_n_2 ,\out_overflow[11]_INST_0_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI(in_mem_b[11:8]),
        .O(data0[11:8]),
        .S({\out_overflow[11]_INST_0_i_13_n_0 ,\out_overflow[11]_INST_0_i_14_n_0 ,\out_overflow[11]_INST_0_i_15_n_0 ,\out_overflow[11]_INST_0_i_16_n_0 }));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[12]_INST_0 
       (.I0(in_mem_b[12]),
        .I1(\out_overflow[12]_INST_0_i_1_n_0 ),
        .I2(in_mcr[3]),
        .I3(\out_overflow[12]_INST_0_i_2_n_0 ),
        .I4(in_mcr[2]),
        .I5(\out_overflow[12]_INST_0_i_3_n_0 ),
        .O(out_overflow[12]));
  LUT6 #(
    .INIT(64'hB8FFB8CCB800B833)) 
    \out_overflow[12]_INST_0_i_1 
       (.I0(in_mem_mem_b[12]),
        .I1(in_mcr[1]),
        .I2(in_pc[12]),
        .I3(in_mcr[0]),
        .I4(in_mem_b[12]),
        .I5(in_mem_a[12]),
        .O(\out_overflow[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \out_overflow[12]_INST_0_i_10 
       (.I0(in_mem_b[14]),
        .I1(in_mem_a[1]),
        .I2(in_mem_a[2]),
        .I3(in_mem_b[15]),
        .I4(in_mem_a[3]),
        .I5(in_mem_b[12]),
        .O(\out_overflow[12]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out_overflow[12]_INST_0_i_11 
       (.I0(in_mem_b[5]),
        .I1(in_mem_a[2]),
        .I2(in_mem_b[1]),
        .I3(in_mem_a[3]),
        .I4(in_mem_b[9]),
        .O(\out_overflow[12]_INST_0_i_11_n_0 ));
  MUXF7 \out_overflow[12]_INST_0_i_2 
       (.I0(\out_overflow[12]_INST_0_i_4_n_0 ),
        .I1(\out_overflow[12]_INST_0_i_5_n_0 ),
        .O(\out_overflow[12]_INST_0_i_2_n_0 ),
        .S(in_mcr[1]));
  MUXF7 \out_overflow[12]_INST_0_i_3 
       (.I0(\out_overflow[12]_INST_0_i_6_n_0 ),
        .I1(\out_overflow[12]_INST_0_i_7_n_0 ),
        .O(\out_overflow[12]_INST_0_i_3_n_0 ),
        .S(in_mcr[1]));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \out_overflow[12]_INST_0_i_4 
       (.I0(in_mem_a[12]),
        .I1(in_mem_b[12]),
        .I2(in_mcr[0]),
        .I3(\out_overflow[12]_INST_0_i_8_n_0 ),
        .I4(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I5(in_mem_b[15]),
        .O(\out_overflow[12]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h68)) 
    \out_overflow[12]_INST_0_i_5 
       (.I0(in_mcr[0]),
        .I1(in_mem_a[12]),
        .I2(in_mem_b[12]),
        .O(\out_overflow[12]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[12]_INST_0_i_6 
       (.I0(in_mem_a[12]),
        .I1(in_mcr[0]),
        .I2(data0[12]),
        .O(\out_overflow[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    \out_overflow[12]_INST_0_i_7 
       (.I0(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I1(\out_overflow[13]_INST_0_i_9_n_0 ),
        .I2(in_mem_a[0]),
        .I3(\out_overflow[12]_INST_0_i_9_n_0 ),
        .I4(in_mcr[0]),
        .I5(data2[12]),
        .O(\out_overflow[12]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[12]_INST_0_i_8 
       (.I0(\out_overflow[13]_INST_0_i_11_n_0 ),
        .I1(in_mem_a[0]),
        .I2(\out_overflow[12]_INST_0_i_10_n_0 ),
        .O(\out_overflow[12]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[12]_INST_0_i_9 
       (.I0(\out_overflow[12]_INST_0_i_11_n_0 ),
        .I1(in_mem_a[1]),
        .I2(\out_overflow[14]_INST_0_i_10_n_0 ),
        .O(\out_overflow[12]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[13]_INST_0 
       (.I0(in_mem_b[13]),
        .I1(\out_overflow[13]_INST_0_i_1_n_0 ),
        .I2(in_mcr[3]),
        .I3(\out_overflow[13]_INST_0_i_2_n_0 ),
        .I4(in_mcr[2]),
        .I5(\out_overflow[13]_INST_0_i_3_n_0 ),
        .O(out_overflow[13]));
  LUT6 #(
    .INIT(64'hB8FFB8CCB800B833)) 
    \out_overflow[13]_INST_0_i_1 
       (.I0(in_mem_mem_b[13]),
        .I1(in_mcr[1]),
        .I2(in_pc[13]),
        .I3(in_mcr[0]),
        .I4(in_mem_b[13]),
        .I5(in_mem_a[13]),
        .O(\out_overflow[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \out_overflow[13]_INST_0_i_10 
       (.I0(in_mem_a[1]),
        .I1(in_mem_a[2]),
        .I2(in_mem_b[15]),
        .I3(in_mem_a[3]),
        .I4(in_mem_b[14]),
        .O(\out_overflow[13]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \out_overflow[13]_INST_0_i_11 
       (.I0(in_mem_a[1]),
        .I1(in_mem_a[2]),
        .I2(in_mem_b[15]),
        .I3(in_mem_a[3]),
        .I4(in_mem_b[13]),
        .O(\out_overflow[13]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out_overflow[13]_INST_0_i_12 
       (.I0(in_mem_b[6]),
        .I1(in_mem_a[2]),
        .I2(in_mem_b[2]),
        .I3(in_mem_a[3]),
        .I4(in_mem_b[10]),
        .O(\out_overflow[13]_INST_0_i_12_n_0 ));
  MUXF7 \out_overflow[13]_INST_0_i_2 
       (.I0(\out_overflow[13]_INST_0_i_4_n_0 ),
        .I1(\out_overflow[13]_INST_0_i_5_n_0 ),
        .O(\out_overflow[13]_INST_0_i_2_n_0 ),
        .S(in_mcr[1]));
  MUXF7 \out_overflow[13]_INST_0_i_3 
       (.I0(\out_overflow[13]_INST_0_i_6_n_0 ),
        .I1(\out_overflow[13]_INST_0_i_7_n_0 ),
        .O(\out_overflow[13]_INST_0_i_3_n_0 ),
        .S(in_mcr[1]));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \out_overflow[13]_INST_0_i_4 
       (.I0(in_mem_a[13]),
        .I1(in_mem_b[13]),
        .I2(in_mcr[0]),
        .I3(\out_overflow[13]_INST_0_i_8_n_0 ),
        .I4(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I5(in_mem_b[15]),
        .O(\out_overflow[13]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h68)) 
    \out_overflow[13]_INST_0_i_5 
       (.I0(in_mcr[0]),
        .I1(in_mem_a[13]),
        .I2(in_mem_b[13]),
        .O(\out_overflow[13]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[13]_INST_0_i_6 
       (.I0(in_mem_a[13]),
        .I1(in_mcr[0]),
        .I2(data0[13]),
        .O(\out_overflow[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    \out_overflow[13]_INST_0_i_7 
       (.I0(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I1(\out_overflow[14]_INST_0_i_9_n_0 ),
        .I2(in_mem_a[0]),
        .I3(\out_overflow[13]_INST_0_i_9_n_0 ),
        .I4(in_mcr[0]),
        .I5(data2[13]),
        .O(\out_overflow[13]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[13]_INST_0_i_8 
       (.I0(\out_overflow[13]_INST_0_i_10_n_0 ),
        .I1(in_mem_a[0]),
        .I2(\out_overflow[13]_INST_0_i_11_n_0 ),
        .O(\out_overflow[13]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[13]_INST_0_i_9 
       (.I0(\out_overflow[13]_INST_0_i_12_n_0 ),
        .I1(in_mem_a[1]),
        .I2(\out_overflow[15]_INST_0_i_19_n_0 ),
        .O(\out_overflow[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[14]_INST_0 
       (.I0(in_mem_b[14]),
        .I1(\out_overflow[14]_INST_0_i_1_n_0 ),
        .I2(in_mcr[3]),
        .I3(\out_overflow[14]_INST_0_i_2_n_0 ),
        .I4(in_mcr[2]),
        .I5(\out_overflow[14]_INST_0_i_3_n_0 ),
        .O(out_overflow[14]));
  LUT6 #(
    .INIT(64'hB8FFB8CCB800B833)) 
    \out_overflow[14]_INST_0_i_1 
       (.I0(in_mem_mem_b[14]),
        .I1(in_mcr[1]),
        .I2(in_pc[14]),
        .I3(in_mcr[0]),
        .I4(in_mem_b[14]),
        .I5(in_mem_a[14]),
        .O(\out_overflow[14]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out_overflow[14]_INST_0_i_10 
       (.I0(in_mem_b[7]),
        .I1(in_mem_a[2]),
        .I2(in_mem_b[3]),
        .I3(in_mem_a[3]),
        .I4(in_mem_b[11]),
        .O(\out_overflow[14]_INST_0_i_10_n_0 ));
  MUXF7 \out_overflow[14]_INST_0_i_2 
       (.I0(\out_overflow[14]_INST_0_i_4_n_0 ),
        .I1(\out_overflow[14]_INST_0_i_5_n_0 ),
        .O(\out_overflow[14]_INST_0_i_2_n_0 ),
        .S(in_mcr[1]));
  MUXF7 \out_overflow[14]_INST_0_i_3 
       (.I0(\out_overflow[14]_INST_0_i_6_n_0 ),
        .I1(\out_overflow[14]_INST_0_i_7_n_0 ),
        .O(\out_overflow[14]_INST_0_i_3_n_0 ),
        .S(in_mcr[1]));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \out_overflow[14]_INST_0_i_4 
       (.I0(in_mem_a[14]),
        .I1(in_mem_b[14]),
        .I2(in_mcr[0]),
        .I3(\out_overflow[14]_INST_0_i_8_n_0 ),
        .I4(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I5(in_mem_b[15]),
        .O(\out_overflow[14]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h68)) 
    \out_overflow[14]_INST_0_i_5 
       (.I0(in_mcr[0]),
        .I1(in_mem_a[14]),
        .I2(in_mem_b[14]),
        .O(\out_overflow[14]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[14]_INST_0_i_6 
       (.I0(in_mem_a[14]),
        .I1(in_mcr[0]),
        .I2(data0[14]),
        .O(\out_overflow[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    \out_overflow[14]_INST_0_i_7 
       (.I0(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I1(\out_overflow[15]_INST_0_i_9_n_0 ),
        .I2(in_mem_a[0]),
        .I3(\out_overflow[14]_INST_0_i_9_n_0 ),
        .I4(in_mcr[0]),
        .I5(data2[14]),
        .O(\out_overflow[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \out_overflow[14]_INST_0_i_8 
       (.I0(in_mem_a[0]),
        .I1(in_mem_a[1]),
        .I2(in_mem_a[2]),
        .I3(in_mem_b[15]),
        .I4(in_mem_a[3]),
        .I5(in_mem_b[14]),
        .O(\out_overflow[14]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[14]_INST_0_i_9 
       (.I0(\out_overflow[14]_INST_0_i_10_n_0 ),
        .I1(in_mem_a[1]),
        .I2(\out_overflow[15]_INST_0_i_17_n_0 ),
        .O(\out_overflow[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[15]_INST_0 
       (.I0(in_mem_b[15]),
        .I1(\out_overflow[15]_INST_0_i_1_n_0 ),
        .I2(in_mcr[3]),
        .I3(\out_overflow[15]_INST_0_i_2_n_0 ),
        .I4(in_mcr[2]),
        .I5(\out_overflow[15]_INST_0_i_3_n_0 ),
        .O(out_overflow[15]));
  LUT6 #(
    .INIT(64'hB8FFB8CCB800B833)) 
    \out_overflow[15]_INST_0_i_1 
       (.I0(in_mem_mem_b[15]),
        .I1(in_mcr[1]),
        .I2(in_pc[15]),
        .I3(in_mcr[0]),
        .I4(in_mem_b[15]),
        .I5(in_mem_a[15]),
        .O(\out_overflow[15]_INST_0_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \out_overflow[15]_INST_0_i_10 
       (.CI(\out_overflow[11]_INST_0_i_11_n_0 ),
        .CO({\NLW_out_overflow[15]_INST_0_i_10_CO_UNCONNECTED [3],\out_overflow[15]_INST_0_i_10_n_1 ,\out_overflow[15]_INST_0_i_10_n_2 ,\out_overflow[15]_INST_0_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,in_mem_a[14:12]}),
        .O(data2[15:12]),
        .S({\out_overflow[15]_INST_0_i_21_n_0 ,\out_overflow[15]_INST_0_i_22_n_0 ,\out_overflow[15]_INST_0_i_23_n_0 ,\out_overflow[15]_INST_0_i_24_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \out_overflow[15]_INST_0_i_11 
       (.I0(in_mem_a[15]),
        .I1(in_mem_b[15]),
        .O(\out_overflow[15]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \out_overflow[15]_INST_0_i_12 
       (.I0(in_mem_a[14]),
        .I1(in_mem_b[14]),
        .O(\out_overflow[15]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \out_overflow[15]_INST_0_i_13 
       (.I0(in_mem_a[13]),
        .I1(in_mem_b[13]),
        .O(\out_overflow[15]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \out_overflow[15]_INST_0_i_14 
       (.I0(in_mem_a[12]),
        .I1(in_mem_b[12]),
        .O(\out_overflow[15]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_overflow[15]_INST_0_i_15 
       (.I0(in_mem_a[6]),
        .I1(in_mem_a[7]),
        .I2(in_mem_a[4]),
        .I3(in_mem_a[5]),
        .O(\out_overflow[15]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_overflow[15]_INST_0_i_16 
       (.I0(in_mem_a[10]),
        .I1(in_mem_a[11]),
        .I2(in_mem_a[8]),
        .I3(in_mem_a[9]),
        .O(\out_overflow[15]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[15]_INST_0_i_17 
       (.I0(in_mem_b[1]),
        .I1(in_mem_b[9]),
        .I2(in_mem_a[2]),
        .I3(in_mem_b[5]),
        .I4(in_mem_a[3]),
        .I5(in_mem_b[13]),
        .O(\out_overflow[15]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[15]_INST_0_i_18 
       (.I0(in_mem_b[3]),
        .I1(in_mem_b[11]),
        .I2(in_mem_a[2]),
        .I3(in_mem_b[7]),
        .I4(in_mem_a[3]),
        .I5(in_mem_b[15]),
        .O(\out_overflow[15]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[15]_INST_0_i_19 
       (.I0(in_mem_b[0]),
        .I1(in_mem_b[8]),
        .I2(in_mem_a[2]),
        .I3(in_mem_b[4]),
        .I4(in_mem_a[3]),
        .I5(in_mem_b[12]),
        .O(\out_overflow[15]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h7DC0)) 
    \out_overflow[15]_INST_0_i_2 
       (.I0(in_mcr[1]),
        .I1(in_mem_a[15]),
        .I2(in_mcr[0]),
        .I3(in_mem_b[15]),
        .O(\out_overflow[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[15]_INST_0_i_20 
       (.I0(in_mem_b[2]),
        .I1(in_mem_b[10]),
        .I2(in_mem_a[2]),
        .I3(in_mem_b[6]),
        .I4(in_mem_a[3]),
        .I5(in_mem_b[14]),
        .O(\out_overflow[15]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out_overflow[15]_INST_0_i_21 
       (.I0(in_mem_a[15]),
        .I1(in_mem_b[15]),
        .O(\out_overflow[15]_INST_0_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out_overflow[15]_INST_0_i_22 
       (.I0(in_mem_a[14]),
        .I1(in_mem_b[14]),
        .O(\out_overflow[15]_INST_0_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out_overflow[15]_INST_0_i_23 
       (.I0(in_mem_a[13]),
        .I1(in_mem_b[13]),
        .O(\out_overflow[15]_INST_0_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out_overflow[15]_INST_0_i_24 
       (.I0(in_mem_a[12]),
        .I1(in_mem_b[12]),
        .O(\out_overflow[15]_INST_0_i_24_n_0 ));
  MUXF7 \out_overflow[15]_INST_0_i_3 
       (.I0(\out_overflow[15]_INST_0_i_4_n_0 ),
        .I1(\out_overflow[15]_INST_0_i_5_n_0 ),
        .O(\out_overflow[15]_INST_0_i_3_n_0 ),
        .S(in_mcr[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[15]_INST_0_i_4 
       (.I0(in_mem_a[15]),
        .I1(in_mcr[0]),
        .I2(data0[15]),
        .O(\out_overflow[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    \out_overflow[15]_INST_0_i_5 
       (.I0(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I1(\out_overflow[15]_INST_0_i_8_n_0 ),
        .I2(in_mem_a[0]),
        .I3(\out_overflow[15]_INST_0_i_9_n_0 ),
        .I4(in_mcr[0]),
        .I5(data2[15]),
        .O(\out_overflow[15]_INST_0_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \out_overflow[15]_INST_0_i_6 
       (.CI(\out_overflow[11]_INST_0_i_9_n_0 ),
        .CO({\NLW_out_overflow[15]_INST_0_i_6_CO_UNCONNECTED [3],\out_overflow[15]_INST_0_i_6_n_1 ,\out_overflow[15]_INST_0_i_6_n_2 ,\out_overflow[15]_INST_0_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,in_mem_b[14:12]}),
        .O(data0[15:12]),
        .S({\out_overflow[15]_INST_0_i_11_n_0 ,\out_overflow[15]_INST_0_i_12_n_0 ,\out_overflow[15]_INST_0_i_13_n_0 ,\out_overflow[15]_INST_0_i_14_n_0 }));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \out_overflow[15]_INST_0_i_7 
       (.I0(in_mem_a[13]),
        .I1(in_mem_a[12]),
        .I2(in_mem_a[15]),
        .I3(in_mem_a[14]),
        .I4(\out_overflow[15]_INST_0_i_15_n_0 ),
        .I5(\out_overflow[15]_INST_0_i_16_n_0 ),
        .O(\out_overflow[15]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[15]_INST_0_i_8 
       (.I0(\out_overflow[15]_INST_0_i_17_n_0 ),
        .I1(in_mem_a[1]),
        .I2(\out_overflow[15]_INST_0_i_18_n_0 ),
        .O(\out_overflow[15]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[15]_INST_0_i_9 
       (.I0(\out_overflow[15]_INST_0_i_19_n_0 ),
        .I1(in_mem_a[1]),
        .I2(\out_overflow[15]_INST_0_i_20_n_0 ),
        .O(\out_overflow[15]_INST_0_i_9_n_0 ));
  MUXF7 \out_overflow[1]_INST_0 
       (.I0(\out_overflow[1]_INST_0_i_1_n_0 ),
        .I1(\out_overflow[1]_INST_0_i_2_n_0 ),
        .O(out_overflow[1]),
        .S(in_mcr[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[1]_INST_0_i_1 
       (.I0(\out_overflow[1]_INST_0_i_3_n_0 ),
        .I1(\out_overflow[1]_INST_0_i_4_n_0 ),
        .I2(in_mcr[2]),
        .I3(\out_overflow[1]_INST_0_i_5_n_0 ),
        .I4(in_mcr[1]),
        .I5(\out_overflow[1]_INST_0_i_6_n_0 ),
        .O(\out_overflow[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[1]_INST_0_i_10 
       (.I0(in_mem_b[13]),
        .I1(in_mem_b[5]),
        .I2(in_mem_a[2]),
        .I3(in_mem_b[9]),
        .I4(in_mem_a[3]),
        .I5(in_mem_b[1]),
        .O(\out_overflow[1]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[1]_INST_0_i_2 
       (.I0(in_mem_b[1]),
        .I1(in_mcr[2]),
        .I2(\out_overflow[1]_INST_0_i_7_n_0 ),
        .O(\out_overflow[1]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h68)) 
    \out_overflow[1]_INST_0_i_3 
       (.I0(in_mcr[0]),
        .I1(in_mem_a[1]),
        .I2(in_mem_b[1]),
        .O(\out_overflow[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \out_overflow[1]_INST_0_i_4 
       (.I0(in_mem_a[1]),
        .I1(in_mem_b[1]),
        .I2(in_mcr[0]),
        .I3(\out_overflow[1]_INST_0_i_8_n_0 ),
        .I4(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I5(in_mem_b[15]),
        .O(\out_overflow[1]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_overflow[1]_INST_0_i_5 
       (.I0(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I1(\out_overflow[1]_INST_0_i_9_n_0 ),
        .I2(in_mcr[0]),
        .I3(data2[1]),
        .O(\out_overflow[1]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[1]_INST_0_i_6 
       (.I0(in_mem_a[1]),
        .I1(in_mcr[0]),
        .I2(data0[1]),
        .O(\out_overflow[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8CCB800B833)) 
    \out_overflow[1]_INST_0_i_7 
       (.I0(in_mem_mem_b[1]),
        .I1(in_mcr[1]),
        .I2(in_pc[1]),
        .I3(in_mcr[0]),
        .I4(in_mem_b[1]),
        .I5(in_mem_a[1]),
        .O(\out_overflow[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[1]_INST_0_i_8 
       (.I0(\out_overflow[4]_INST_0_i_10_n_0 ),
        .I1(\out_overflow[2]_INST_0_i_10_n_0 ),
        .I2(in_mem_a[0]),
        .I3(\out_overflow[3]_INST_0_i_12_n_0 ),
        .I4(in_mem_a[1]),
        .I5(\out_overflow[1]_INST_0_i_10_n_0 ),
        .O(\out_overflow[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \out_overflow[1]_INST_0_i_9 
       (.I0(in_mem_b[0]),
        .I1(in_mem_a[0]),
        .I2(in_mem_a[2]),
        .I3(in_mem_b[1]),
        .I4(in_mem_a[3]),
        .I5(in_mem_a[1]),
        .O(\out_overflow[1]_INST_0_i_9_n_0 ));
  MUXF7 \out_overflow[2]_INST_0 
       (.I0(\out_overflow[2]_INST_0_i_1_n_0 ),
        .I1(\out_overflow[2]_INST_0_i_2_n_0 ),
        .O(out_overflow[2]),
        .S(in_mcr[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[2]_INST_0_i_1 
       (.I0(\out_overflow[2]_INST_0_i_3_n_0 ),
        .I1(\out_overflow[2]_INST_0_i_4_n_0 ),
        .I2(in_mcr[2]),
        .I3(\out_overflow[2]_INST_0_i_5_n_0 ),
        .I4(in_mcr[1]),
        .I5(\out_overflow[2]_INST_0_i_6_n_0 ),
        .O(\out_overflow[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[2]_INST_0_i_10 
       (.I0(in_mem_b[14]),
        .I1(in_mem_b[6]),
        .I2(in_mem_a[2]),
        .I3(in_mem_b[10]),
        .I4(in_mem_a[3]),
        .I5(in_mem_b[2]),
        .O(\out_overflow[2]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[2]_INST_0_i_2 
       (.I0(in_mem_b[2]),
        .I1(in_mcr[2]),
        .I2(\out_overflow[2]_INST_0_i_7_n_0 ),
        .O(\out_overflow[2]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h68)) 
    \out_overflow[2]_INST_0_i_3 
       (.I0(in_mcr[0]),
        .I1(in_mem_a[2]),
        .I2(in_mem_b[2]),
        .O(\out_overflow[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \out_overflow[2]_INST_0_i_4 
       (.I0(in_mem_a[2]),
        .I1(in_mem_b[2]),
        .I2(in_mcr[0]),
        .I3(\out_overflow[2]_INST_0_i_8_n_0 ),
        .I4(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I5(in_mem_b[15]),
        .O(\out_overflow[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    \out_overflow[2]_INST_0_i_5 
       (.I0(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I1(\out_overflow[3]_INST_0_i_9_n_0 ),
        .I2(in_mem_a[0]),
        .I3(\out_overflow[2]_INST_0_i_9_n_0 ),
        .I4(in_mcr[0]),
        .I5(data2[2]),
        .O(\out_overflow[2]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[2]_INST_0_i_6 
       (.I0(in_mem_a[2]),
        .I1(in_mcr[0]),
        .I2(data0[2]),
        .O(\out_overflow[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8CCB800B833)) 
    \out_overflow[2]_INST_0_i_7 
       (.I0(in_mem_mem_b[2]),
        .I1(in_mcr[1]),
        .I2(in_pc[2]),
        .I3(in_mcr[0]),
        .I4(in_mem_b[2]),
        .I5(in_mem_a[2]),
        .O(\out_overflow[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[2]_INST_0_i_8 
       (.I0(\out_overflow[5]_INST_0_i_10_n_0 ),
        .I1(\out_overflow[3]_INST_0_i_12_n_0 ),
        .I2(in_mem_a[0]),
        .I3(\out_overflow[4]_INST_0_i_10_n_0 ),
        .I4(in_mem_a[1]),
        .I5(\out_overflow[2]_INST_0_i_10_n_0 ),
        .O(\out_overflow[2]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \out_overflow[2]_INST_0_i_9 
       (.I0(in_mem_a[2]),
        .I1(in_mem_b[1]),
        .I2(in_mem_a[3]),
        .I3(in_mem_a[1]),
        .O(\out_overflow[2]_INST_0_i_9_n_0 ));
  MUXF7 \out_overflow[3]_INST_0 
       (.I0(\out_overflow[3]_INST_0_i_1_n_0 ),
        .I1(\out_overflow[3]_INST_0_i_2_n_0 ),
        .O(out_overflow[3]),
        .S(in_mcr[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[3]_INST_0_i_1 
       (.I0(\out_overflow[3]_INST_0_i_3_n_0 ),
        .I1(\out_overflow[3]_INST_0_i_4_n_0 ),
        .I2(in_mcr[2]),
        .I3(\out_overflow[3]_INST_0_i_5_n_0 ),
        .I4(in_mcr[1]),
        .I5(\out_overflow[3]_INST_0_i_6_n_0 ),
        .O(\out_overflow[3]_INST_0_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \out_overflow[3]_INST_0_i_10 
       (.CI(1'b0),
        .CO({\out_overflow[3]_INST_0_i_10_n_0 ,\out_overflow[3]_INST_0_i_10_n_1 ,\out_overflow[3]_INST_0_i_10_n_2 ,\out_overflow[3]_INST_0_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI(in_mem_a[3:0]),
        .O(data2[3:0]),
        .S({\out_overflow[3]_INST_0_i_13_n_0 ,\out_overflow[3]_INST_0_i_14_n_0 ,\out_overflow[3]_INST_0_i_15_n_0 ,\out_overflow[3]_INST_0_i_16_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \out_overflow[3]_INST_0_i_11 
       (.CI(1'b0),
        .CO({\out_overflow[3]_INST_0_i_11_n_0 ,\out_overflow[3]_INST_0_i_11_n_1 ,\out_overflow[3]_INST_0_i_11_n_2 ,\out_overflow[3]_INST_0_i_11_n_3 }),
        .CYINIT(1'b1),
        .DI(in_mem_b[3:0]),
        .O(data0[3:0]),
        .S({\out_overflow[3]_INST_0_i_17_n_0 ,\out_overflow[3]_INST_0_i_18_n_0 ,\out_overflow[3]_INST_0_i_19_n_0 ,\out_overflow[3]_INST_0_i_20_n_0 }));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[3]_INST_0_i_12 
       (.I0(in_mem_b[15]),
        .I1(in_mem_b[7]),
        .I2(in_mem_a[2]),
        .I3(in_mem_b[11]),
        .I4(in_mem_a[3]),
        .I5(in_mem_b[3]),
        .O(\out_overflow[3]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out_overflow[3]_INST_0_i_13 
       (.I0(in_mem_a[3]),
        .I1(in_mem_b[3]),
        .O(\out_overflow[3]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out_overflow[3]_INST_0_i_14 
       (.I0(in_mem_a[2]),
        .I1(in_mem_b[2]),
        .O(\out_overflow[3]_INST_0_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out_overflow[3]_INST_0_i_15 
       (.I0(in_mem_a[1]),
        .I1(in_mem_b[1]),
        .O(\out_overflow[3]_INST_0_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out_overflow[3]_INST_0_i_16 
       (.I0(in_mem_a[0]),
        .I1(in_mem_b[0]),
        .O(\out_overflow[3]_INST_0_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \out_overflow[3]_INST_0_i_17 
       (.I0(in_mem_a[3]),
        .I1(in_mem_b[3]),
        .O(\out_overflow[3]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \out_overflow[3]_INST_0_i_18 
       (.I0(in_mem_a[2]),
        .I1(in_mem_b[2]),
        .O(\out_overflow[3]_INST_0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \out_overflow[3]_INST_0_i_19 
       (.I0(in_mem_a[1]),
        .I1(in_mem_b[1]),
        .O(\out_overflow[3]_INST_0_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[3]_INST_0_i_2 
       (.I0(in_mem_b[3]),
        .I1(in_mcr[2]),
        .I2(\out_overflow[3]_INST_0_i_7_n_0 ),
        .O(\out_overflow[3]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \out_overflow[3]_INST_0_i_20 
       (.I0(in_mem_a[0]),
        .I1(in_mem_b[0]),
        .O(\out_overflow[3]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h68)) 
    \out_overflow[3]_INST_0_i_3 
       (.I0(in_mcr[0]),
        .I1(in_mem_a[3]),
        .I2(in_mem_b[3]),
        .O(\out_overflow[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \out_overflow[3]_INST_0_i_4 
       (.I0(in_mem_a[3]),
        .I1(in_mem_b[3]),
        .I2(in_mcr[0]),
        .I3(\out_overflow[3]_INST_0_i_8_n_0 ),
        .I4(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I5(in_mem_b[15]),
        .O(\out_overflow[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    \out_overflow[3]_INST_0_i_5 
       (.I0(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I1(\out_overflow[4]_INST_0_i_9_n_0 ),
        .I2(in_mem_a[0]),
        .I3(\out_overflow[3]_INST_0_i_9_n_0 ),
        .I4(in_mcr[0]),
        .I5(data2[3]),
        .O(\out_overflow[3]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[3]_INST_0_i_6 
       (.I0(in_mem_a[3]),
        .I1(in_mcr[0]),
        .I2(data0[3]),
        .O(\out_overflow[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8CCB800B833)) 
    \out_overflow[3]_INST_0_i_7 
       (.I0(in_mem_mem_b[3]),
        .I1(in_mcr[1]),
        .I2(in_pc[3]),
        .I3(in_mcr[0]),
        .I4(in_mem_b[3]),
        .I5(in_mem_a[3]),
        .O(\out_overflow[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[3]_INST_0_i_8 
       (.I0(\out_overflow[6]_INST_0_i_10_n_0 ),
        .I1(\out_overflow[4]_INST_0_i_10_n_0 ),
        .I2(in_mem_a[0]),
        .I3(\out_overflow[5]_INST_0_i_10_n_0 ),
        .I4(in_mem_a[1]),
        .I5(\out_overflow[3]_INST_0_i_12_n_0 ),
        .O(\out_overflow[3]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \out_overflow[3]_INST_0_i_9 
       (.I0(in_mem_b[0]),
        .I1(in_mem_a[1]),
        .I2(in_mem_a[3]),
        .I3(in_mem_b[2]),
        .I4(in_mem_a[2]),
        .O(\out_overflow[3]_INST_0_i_9_n_0 ));
  MUXF7 \out_overflow[4]_INST_0 
       (.I0(\out_overflow[4]_INST_0_i_1_n_0 ),
        .I1(\out_overflow[4]_INST_0_i_2_n_0 ),
        .O(out_overflow[4]),
        .S(in_mcr[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[4]_INST_0_i_1 
       (.I0(\out_overflow[4]_INST_0_i_3_n_0 ),
        .I1(\out_overflow[4]_INST_0_i_4_n_0 ),
        .I2(in_mcr[2]),
        .I3(\out_overflow[4]_INST_0_i_5_n_0 ),
        .I4(in_mcr[1]),
        .I5(\out_overflow[4]_INST_0_i_6_n_0 ),
        .O(\out_overflow[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[4]_INST_0_i_10 
       (.I0(in_mem_b[15]),
        .I1(in_mem_b[8]),
        .I2(in_mem_a[2]),
        .I3(in_mem_b[12]),
        .I4(in_mem_a[3]),
        .I5(in_mem_b[4]),
        .O(\out_overflow[4]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[4]_INST_0_i_2 
       (.I0(in_mem_b[4]),
        .I1(in_mcr[2]),
        .I2(\out_overflow[4]_INST_0_i_7_n_0 ),
        .O(\out_overflow[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h68)) 
    \out_overflow[4]_INST_0_i_3 
       (.I0(in_mcr[0]),
        .I1(in_mem_a[4]),
        .I2(in_mem_b[4]),
        .O(\out_overflow[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \out_overflow[4]_INST_0_i_4 
       (.I0(in_mem_a[4]),
        .I1(in_mem_b[4]),
        .I2(in_mcr[0]),
        .I3(\out_overflow[4]_INST_0_i_8_n_0 ),
        .I4(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I5(in_mem_b[15]),
        .O(\out_overflow[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    \out_overflow[4]_INST_0_i_5 
       (.I0(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I1(\out_overflow[5]_INST_0_i_9_n_0 ),
        .I2(in_mem_a[0]),
        .I3(\out_overflow[4]_INST_0_i_9_n_0 ),
        .I4(in_mcr[0]),
        .I5(data2[4]),
        .O(\out_overflow[4]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[4]_INST_0_i_6 
       (.I0(in_mem_a[4]),
        .I1(in_mcr[0]),
        .I2(data0[4]),
        .O(\out_overflow[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8CCB800B833)) 
    \out_overflow[4]_INST_0_i_7 
       (.I0(in_mem_mem_b[4]),
        .I1(in_mcr[1]),
        .I2(in_pc[4]),
        .I3(in_mcr[0]),
        .I4(in_mem_b[4]),
        .I5(in_mem_a[4]),
        .O(\out_overflow[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[4]_INST_0_i_8 
       (.I0(\out_overflow[7]_INST_0_i_12_n_0 ),
        .I1(\out_overflow[5]_INST_0_i_10_n_0 ),
        .I2(in_mem_a[0]),
        .I3(\out_overflow[6]_INST_0_i_10_n_0 ),
        .I4(in_mem_a[1]),
        .I5(\out_overflow[4]_INST_0_i_10_n_0 ),
        .O(\out_overflow[4]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \out_overflow[4]_INST_0_i_9 
       (.I0(in_mem_b[1]),
        .I1(in_mem_a[1]),
        .I2(in_mem_a[3]),
        .I3(in_mem_b[3]),
        .I4(in_mem_a[2]),
        .O(\out_overflow[4]_INST_0_i_9_n_0 ));
  MUXF7 \out_overflow[5]_INST_0 
       (.I0(\out_overflow[5]_INST_0_i_1_n_0 ),
        .I1(\out_overflow[5]_INST_0_i_2_n_0 ),
        .O(out_overflow[5]),
        .S(in_mcr[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[5]_INST_0_i_1 
       (.I0(\out_overflow[5]_INST_0_i_3_n_0 ),
        .I1(\out_overflow[5]_INST_0_i_4_n_0 ),
        .I2(in_mcr[2]),
        .I3(\out_overflow[5]_INST_0_i_5_n_0 ),
        .I4(in_mcr[1]),
        .I5(\out_overflow[5]_INST_0_i_6_n_0 ),
        .O(\out_overflow[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[5]_INST_0_i_10 
       (.I0(in_mem_b[15]),
        .I1(in_mem_b[9]),
        .I2(in_mem_a[2]),
        .I3(in_mem_b[13]),
        .I4(in_mem_a[3]),
        .I5(in_mem_b[5]),
        .O(\out_overflow[5]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[5]_INST_0_i_2 
       (.I0(in_mem_b[5]),
        .I1(in_mcr[2]),
        .I2(\out_overflow[5]_INST_0_i_7_n_0 ),
        .O(\out_overflow[5]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h68)) 
    \out_overflow[5]_INST_0_i_3 
       (.I0(in_mcr[0]),
        .I1(in_mem_a[5]),
        .I2(in_mem_b[5]),
        .O(\out_overflow[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \out_overflow[5]_INST_0_i_4 
       (.I0(in_mem_a[5]),
        .I1(in_mem_b[5]),
        .I2(in_mcr[0]),
        .I3(\out_overflow[5]_INST_0_i_8_n_0 ),
        .I4(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I5(in_mem_b[15]),
        .O(\out_overflow[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    \out_overflow[5]_INST_0_i_5 
       (.I0(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I1(\out_overflow[6]_INST_0_i_9_n_0 ),
        .I2(in_mem_a[0]),
        .I3(\out_overflow[5]_INST_0_i_9_n_0 ),
        .I4(in_mcr[0]),
        .I5(data2[5]),
        .O(\out_overflow[5]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[5]_INST_0_i_6 
       (.I0(in_mem_a[5]),
        .I1(in_mcr[0]),
        .I2(data0[5]),
        .O(\out_overflow[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8CCB800B833)) 
    \out_overflow[5]_INST_0_i_7 
       (.I0(in_mem_mem_b[5]),
        .I1(in_mcr[1]),
        .I2(in_pc[5]),
        .I3(in_mcr[0]),
        .I4(in_mem_b[5]),
        .I5(in_mem_a[5]),
        .O(\out_overflow[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[5]_INST_0_i_8 
       (.I0(\out_overflow[8]_INST_0_i_10_n_0 ),
        .I1(\out_overflow[6]_INST_0_i_10_n_0 ),
        .I2(in_mem_a[0]),
        .I3(\out_overflow[7]_INST_0_i_12_n_0 ),
        .I4(in_mem_a[1]),
        .I5(\out_overflow[5]_INST_0_i_10_n_0 ),
        .O(\out_overflow[5]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \out_overflow[5]_INST_0_i_9 
       (.I0(in_mem_b[2]),
        .I1(in_mem_a[1]),
        .I2(in_mem_b[0]),
        .I3(in_mem_a[2]),
        .I4(in_mem_b[4]),
        .I5(in_mem_a[3]),
        .O(\out_overflow[5]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[6]_INST_0 
       (.I0(in_mem_b[6]),
        .I1(\out_overflow[6]_INST_0_i_1_n_0 ),
        .I2(in_mcr[3]),
        .I3(\out_overflow[6]_INST_0_i_2_n_0 ),
        .I4(in_mcr[2]),
        .I5(\out_overflow[6]_INST_0_i_3_n_0 ),
        .O(out_overflow[6]));
  LUT6 #(
    .INIT(64'hB8FFB8CCB800B833)) 
    \out_overflow[6]_INST_0_i_1 
       (.I0(in_mem_mem_b[6]),
        .I1(in_mcr[1]),
        .I2(in_pc[6]),
        .I3(in_mcr[0]),
        .I4(in_mem_b[6]),
        .I5(in_mem_a[6]),
        .O(\out_overflow[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[6]_INST_0_i_10 
       (.I0(in_mem_b[15]),
        .I1(in_mem_b[10]),
        .I2(in_mem_a[2]),
        .I3(in_mem_b[14]),
        .I4(in_mem_a[3]),
        .I5(in_mem_b[6]),
        .O(\out_overflow[6]_INST_0_i_10_n_0 ));
  MUXF7 \out_overflow[6]_INST_0_i_2 
       (.I0(\out_overflow[6]_INST_0_i_4_n_0 ),
        .I1(\out_overflow[6]_INST_0_i_5_n_0 ),
        .O(\out_overflow[6]_INST_0_i_2_n_0 ),
        .S(in_mcr[1]));
  MUXF7 \out_overflow[6]_INST_0_i_3 
       (.I0(\out_overflow[6]_INST_0_i_6_n_0 ),
        .I1(\out_overflow[6]_INST_0_i_7_n_0 ),
        .O(\out_overflow[6]_INST_0_i_3_n_0 ),
        .S(in_mcr[1]));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \out_overflow[6]_INST_0_i_4 
       (.I0(in_mem_a[6]),
        .I1(in_mem_b[6]),
        .I2(in_mcr[0]),
        .I3(\out_overflow[6]_INST_0_i_8_n_0 ),
        .I4(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I5(in_mem_b[15]),
        .O(\out_overflow[6]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h68)) 
    \out_overflow[6]_INST_0_i_5 
       (.I0(in_mcr[0]),
        .I1(in_mem_a[6]),
        .I2(in_mem_b[6]),
        .O(\out_overflow[6]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[6]_INST_0_i_6 
       (.I0(in_mem_a[6]),
        .I1(in_mcr[0]),
        .I2(data0[6]),
        .O(\out_overflow[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    \out_overflow[6]_INST_0_i_7 
       (.I0(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I1(\out_overflow[7]_INST_0_i_10_n_0 ),
        .I2(in_mem_a[0]),
        .I3(\out_overflow[6]_INST_0_i_9_n_0 ),
        .I4(in_mcr[0]),
        .I5(data2[6]),
        .O(\out_overflow[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[6]_INST_0_i_8 
       (.I0(\out_overflow[9]_INST_0_i_11_n_0 ),
        .I1(\out_overflow[7]_INST_0_i_12_n_0 ),
        .I2(in_mem_a[0]),
        .I3(\out_overflow[8]_INST_0_i_10_n_0 ),
        .I4(in_mem_a[1]),
        .I5(\out_overflow[6]_INST_0_i_10_n_0 ),
        .O(\out_overflow[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \out_overflow[6]_INST_0_i_9 
       (.I0(in_mem_b[3]),
        .I1(in_mem_a[1]),
        .I2(in_mem_b[1]),
        .I3(in_mem_a[2]),
        .I4(in_mem_b[5]),
        .I5(in_mem_a[3]),
        .O(\out_overflow[6]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[7]_INST_0 
       (.I0(in_mem_b[7]),
        .I1(\out_overflow[7]_INST_0_i_1_n_0 ),
        .I2(in_mcr[3]),
        .I3(\out_overflow[7]_INST_0_i_2_n_0 ),
        .I4(in_mcr[2]),
        .I5(\out_overflow[7]_INST_0_i_3_n_0 ),
        .O(out_overflow[7]));
  LUT6 #(
    .INIT(64'hB8FFB8CCB800B833)) 
    \out_overflow[7]_INST_0_i_1 
       (.I0(in_mem_mem_b[7]),
        .I1(in_mcr[1]),
        .I2(in_pc[7]),
        .I3(in_mcr[0]),
        .I4(in_mem_b[7]),
        .I5(in_mem_a[7]),
        .O(\out_overflow[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \out_overflow[7]_INST_0_i_10 
       (.I0(in_mem_b[0]),
        .I1(in_mem_a[2]),
        .I2(in_mem_b[4]),
        .I3(in_mem_a[3]),
        .I4(in_mem_a[1]),
        .I5(\out_overflow[7]_INST_0_i_17_n_0 ),
        .O(\out_overflow[7]_INST_0_i_10_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \out_overflow[7]_INST_0_i_11 
       (.CI(\out_overflow[3]_INST_0_i_10_n_0 ),
        .CO({\out_overflow[7]_INST_0_i_11_n_0 ,\out_overflow[7]_INST_0_i_11_n_1 ,\out_overflow[7]_INST_0_i_11_n_2 ,\out_overflow[7]_INST_0_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI(in_mem_a[7:4]),
        .O(data2[7:4]),
        .S({\out_overflow[7]_INST_0_i_18_n_0 ,\out_overflow[7]_INST_0_i_19_n_0 ,\out_overflow[7]_INST_0_i_20_n_0 ,\out_overflow[7]_INST_0_i_21_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \out_overflow[7]_INST_0_i_12 
       (.I0(in_mem_b[11]),
        .I1(in_mem_a[2]),
        .I2(in_mem_b[15]),
        .I3(in_mem_a[3]),
        .I4(in_mem_b[7]),
        .O(\out_overflow[7]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \out_overflow[7]_INST_0_i_13 
       (.I0(in_mem_a[7]),
        .I1(in_mem_b[7]),
        .O(\out_overflow[7]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \out_overflow[7]_INST_0_i_14 
       (.I0(in_mem_a[6]),
        .I1(in_mem_b[6]),
        .O(\out_overflow[7]_INST_0_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \out_overflow[7]_INST_0_i_15 
       (.I0(in_mem_a[5]),
        .I1(in_mem_b[5]),
        .O(\out_overflow[7]_INST_0_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \out_overflow[7]_INST_0_i_16 
       (.I0(in_mem_a[4]),
        .I1(in_mem_b[4]),
        .O(\out_overflow[7]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \out_overflow[7]_INST_0_i_17 
       (.I0(in_mem_b[2]),
        .I1(in_mem_a[2]),
        .I2(in_mem_b[6]),
        .I3(in_mem_a[3]),
        .O(\out_overflow[7]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out_overflow[7]_INST_0_i_18 
       (.I0(in_mem_a[7]),
        .I1(in_mem_b[7]),
        .O(\out_overflow[7]_INST_0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out_overflow[7]_INST_0_i_19 
       (.I0(in_mem_a[6]),
        .I1(in_mem_b[6]),
        .O(\out_overflow[7]_INST_0_i_19_n_0 ));
  MUXF7 \out_overflow[7]_INST_0_i_2 
       (.I0(\out_overflow[7]_INST_0_i_4_n_0 ),
        .I1(\out_overflow[7]_INST_0_i_5_n_0 ),
        .O(\out_overflow[7]_INST_0_i_2_n_0 ),
        .S(in_mcr[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \out_overflow[7]_INST_0_i_20 
       (.I0(in_mem_a[5]),
        .I1(in_mem_b[5]),
        .O(\out_overflow[7]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out_overflow[7]_INST_0_i_21 
       (.I0(in_mem_a[4]),
        .I1(in_mem_b[4]),
        .O(\out_overflow[7]_INST_0_i_21_n_0 ));
  MUXF7 \out_overflow[7]_INST_0_i_3 
       (.I0(\out_overflow[7]_INST_0_i_6_n_0 ),
        .I1(\out_overflow[7]_INST_0_i_7_n_0 ),
        .O(\out_overflow[7]_INST_0_i_3_n_0 ),
        .S(in_mcr[1]));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \out_overflow[7]_INST_0_i_4 
       (.I0(in_mem_a[7]),
        .I1(in_mem_b[7]),
        .I2(in_mcr[0]),
        .I3(\out_overflow[7]_INST_0_i_8_n_0 ),
        .I4(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I5(in_mem_b[15]),
        .O(\out_overflow[7]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h68)) 
    \out_overflow[7]_INST_0_i_5 
       (.I0(in_mcr[0]),
        .I1(in_mem_a[7]),
        .I2(in_mem_b[7]),
        .O(\out_overflow[7]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[7]_INST_0_i_6 
       (.I0(in_mem_a[7]),
        .I1(in_mcr[0]),
        .I2(data0[7]),
        .O(\out_overflow[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    \out_overflow[7]_INST_0_i_7 
       (.I0(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I1(\out_overflow[8]_INST_0_i_9_n_0 ),
        .I2(in_mem_a[0]),
        .I3(\out_overflow[7]_INST_0_i_10_n_0 ),
        .I4(in_mcr[0]),
        .I5(data2[7]),
        .O(\out_overflow[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[7]_INST_0_i_8 
       (.I0(\out_overflow[10]_INST_0_i_11_n_0 ),
        .I1(\out_overflow[8]_INST_0_i_10_n_0 ),
        .I2(in_mem_a[0]),
        .I3(\out_overflow[9]_INST_0_i_11_n_0 ),
        .I4(in_mem_a[1]),
        .I5(\out_overflow[7]_INST_0_i_12_n_0 ),
        .O(\out_overflow[7]_INST_0_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \out_overflow[7]_INST_0_i_9 
       (.CI(\out_overflow[3]_INST_0_i_11_n_0 ),
        .CO({\out_overflow[7]_INST_0_i_9_n_0 ,\out_overflow[7]_INST_0_i_9_n_1 ,\out_overflow[7]_INST_0_i_9_n_2 ,\out_overflow[7]_INST_0_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI(in_mem_b[7:4]),
        .O(data0[7:4]),
        .S({\out_overflow[7]_INST_0_i_13_n_0 ,\out_overflow[7]_INST_0_i_14_n_0 ,\out_overflow[7]_INST_0_i_15_n_0 ,\out_overflow[7]_INST_0_i_16_n_0 }));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[8]_INST_0 
       (.I0(in_mem_b[8]),
        .I1(\out_overflow[8]_INST_0_i_1_n_0 ),
        .I2(in_mcr[3]),
        .I3(\out_overflow[8]_INST_0_i_2_n_0 ),
        .I4(in_mcr[2]),
        .I5(\out_overflow[8]_INST_0_i_3_n_0 ),
        .O(out_overflow[8]));
  LUT6 #(
    .INIT(64'hB8FFB8CCB800B833)) 
    \out_overflow[8]_INST_0_i_1 
       (.I0(in_mem_mem_b[8]),
        .I1(in_mcr[1]),
        .I2(in_pc[8]),
        .I3(in_mcr[0]),
        .I4(in_mem_b[8]),
        .I5(in_mem_a[8]),
        .O(\out_overflow[8]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \out_overflow[8]_INST_0_i_10 
       (.I0(in_mem_b[12]),
        .I1(in_mem_a[2]),
        .I2(in_mem_b[15]),
        .I3(in_mem_a[3]),
        .I4(in_mem_b[8]),
        .O(\out_overflow[8]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \out_overflow[8]_INST_0_i_11 
       (.I0(in_mem_b[3]),
        .I1(in_mem_a[2]),
        .I2(in_mem_b[7]),
        .I3(in_mem_a[3]),
        .O(\out_overflow[8]_INST_0_i_11_n_0 ));
  MUXF7 \out_overflow[8]_INST_0_i_2 
       (.I0(\out_overflow[8]_INST_0_i_4_n_0 ),
        .I1(\out_overflow[8]_INST_0_i_5_n_0 ),
        .O(\out_overflow[8]_INST_0_i_2_n_0 ),
        .S(in_mcr[1]));
  MUXF7 \out_overflow[8]_INST_0_i_3 
       (.I0(\out_overflow[8]_INST_0_i_6_n_0 ),
        .I1(\out_overflow[8]_INST_0_i_7_n_0 ),
        .O(\out_overflow[8]_INST_0_i_3_n_0 ),
        .S(in_mcr[1]));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \out_overflow[8]_INST_0_i_4 
       (.I0(in_mem_a[8]),
        .I1(in_mem_b[8]),
        .I2(in_mcr[0]),
        .I3(\out_overflow[8]_INST_0_i_8_n_0 ),
        .I4(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I5(in_mem_b[15]),
        .O(\out_overflow[8]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h68)) 
    \out_overflow[8]_INST_0_i_5 
       (.I0(in_mcr[0]),
        .I1(in_mem_a[8]),
        .I2(in_mem_b[8]),
        .O(\out_overflow[8]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[8]_INST_0_i_6 
       (.I0(in_mem_a[8]),
        .I1(in_mcr[0]),
        .I2(data0[8]),
        .O(\out_overflow[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    \out_overflow[8]_INST_0_i_7 
       (.I0(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I1(\out_overflow[9]_INST_0_i_9_n_0 ),
        .I2(in_mem_a[0]),
        .I3(\out_overflow[8]_INST_0_i_9_n_0 ),
        .I4(in_mcr[0]),
        .I5(data2[8]),
        .O(\out_overflow[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[8]_INST_0_i_8 
       (.I0(\out_overflow[9]_INST_0_i_10_n_0 ),
        .I1(\out_overflow[9]_INST_0_i_11_n_0 ),
        .I2(in_mem_a[0]),
        .I3(\out_overflow[10]_INST_0_i_11_n_0 ),
        .I4(in_mem_a[1]),
        .I5(\out_overflow[8]_INST_0_i_10_n_0 ),
        .O(\out_overflow[8]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \out_overflow[8]_INST_0_i_9 
       (.I0(in_mem_b[1]),
        .I1(in_mem_a[2]),
        .I2(in_mem_b[5]),
        .I3(in_mem_a[3]),
        .I4(in_mem_a[1]),
        .I5(\out_overflow[8]_INST_0_i_11_n_0 ),
        .O(\out_overflow[8]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[9]_INST_0 
       (.I0(in_mem_b[9]),
        .I1(\out_overflow[9]_INST_0_i_1_n_0 ),
        .I2(in_mcr[3]),
        .I3(\out_overflow[9]_INST_0_i_2_n_0 ),
        .I4(in_mcr[2]),
        .I5(\out_overflow[9]_INST_0_i_3_n_0 ),
        .O(out_overflow[9]));
  LUT6 #(
    .INIT(64'hB8FFB8CCB800B833)) 
    \out_overflow[9]_INST_0_i_1 
       (.I0(in_mem_mem_b[9]),
        .I1(in_mcr[1]),
        .I2(in_pc[9]),
        .I3(in_mcr[0]),
        .I4(in_mem_b[9]),
        .I5(in_mem_a[9]),
        .O(\out_overflow[9]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \out_overflow[9]_INST_0_i_10 
       (.I0(in_mem_a[2]),
        .I1(in_mem_b[15]),
        .I2(in_mem_a[3]),
        .I3(in_mem_b[11]),
        .O(\out_overflow[9]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \out_overflow[9]_INST_0_i_11 
       (.I0(in_mem_b[13]),
        .I1(in_mem_a[2]),
        .I2(in_mem_b[15]),
        .I3(in_mem_a[3]),
        .I4(in_mem_b[9]),
        .O(\out_overflow[9]_INST_0_i_11_n_0 ));
  MUXF7 \out_overflow[9]_INST_0_i_2 
       (.I0(\out_overflow[9]_INST_0_i_4_n_0 ),
        .I1(\out_overflow[9]_INST_0_i_5_n_0 ),
        .O(\out_overflow[9]_INST_0_i_2_n_0 ),
        .S(in_mcr[1]));
  MUXF7 \out_overflow[9]_INST_0_i_3 
       (.I0(\out_overflow[9]_INST_0_i_6_n_0 ),
        .I1(\out_overflow[9]_INST_0_i_7_n_0 ),
        .O(\out_overflow[9]_INST_0_i_3_n_0 ),
        .S(in_mcr[1]));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \out_overflow[9]_INST_0_i_4 
       (.I0(in_mem_a[9]),
        .I1(in_mem_b[9]),
        .I2(in_mcr[0]),
        .I3(\out_overflow[9]_INST_0_i_8_n_0 ),
        .I4(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I5(in_mem_b[15]),
        .O(\out_overflow[9]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h68)) 
    \out_overflow[9]_INST_0_i_5 
       (.I0(in_mcr[0]),
        .I1(in_mem_a[9]),
        .I2(in_mem_b[9]),
        .O(\out_overflow[9]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out_overflow[9]_INST_0_i_6 
       (.I0(in_mem_a[9]),
        .I1(in_mcr[0]),
        .I2(data0[9]),
        .O(\out_overflow[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    \out_overflow[9]_INST_0_i_7 
       (.I0(\out_overflow[15]_INST_0_i_7_n_0 ),
        .I1(\out_overflow[10]_INST_0_i_9_n_0 ),
        .I2(in_mem_a[0]),
        .I3(\out_overflow[9]_INST_0_i_9_n_0 ),
        .I4(in_mcr[0]),
        .I5(data2[9]),
        .O(\out_overflow[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_overflow[9]_INST_0_i_8 
       (.I0(\out_overflow[10]_INST_0_i_10_n_0 ),
        .I1(\out_overflow[10]_INST_0_i_11_n_0 ),
        .I2(in_mem_a[0]),
        .I3(\out_overflow[9]_INST_0_i_10_n_0 ),
        .I4(in_mem_a[1]),
        .I5(\out_overflow[9]_INST_0_i_11_n_0 ),
        .O(\out_overflow[9]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \out_overflow[9]_INST_0_i_9 
       (.I0(in_mem_b[2]),
        .I1(in_mem_a[2]),
        .I2(in_mem_b[6]),
        .I3(in_mem_a[3]),
        .I4(in_mem_a[1]),
        .I5(\out_overflow[11]_INST_0_i_17_n_0 ),
        .O(\out_overflow[9]_INST_0_i_9_n_0 ));
endmodule
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
