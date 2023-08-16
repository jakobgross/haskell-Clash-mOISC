// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2.1 (win64) Build 3414424 Sun Dec 19 10:57:22 MST 2021
// Date        : Thu Aug 25 12:49:08 2022
// Host        : JKatana running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/git/clash-moisc/Vivado/MoiscBlocksMonad/MoiscBlocksMonad.gen/sources_1/bd/MonadmOISC/ip/MonadmOISC_clashIoCtr_0_0/MonadmOISC_clashIoCtr_0_0_sim_netlist.v
// Design      : MonadmOISC_clashIoCtr_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MonadmOISC_clashIoCtr_0_0,IoCtr,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "IoCtr,Vivado 2021.2.1" *) 
(* NotValidForBitStream *)
module MonadmOISC_clashIoCtr_0_0
   (CLK,
    RST,
    EN,
    INTERRUPT_BLOCK,
    IOR_in,
    IWR_in,
    ICR_in,
    out_ISR,
    out_INTERRUPT,
    out_CPU_STOP);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RST;
  input EN;
  input INTERRUPT_BLOCK;
  input [7:0]IOR_in;
  input [7:0]IWR_in;
  input [7:0]ICR_in;
  output [7:0]out_ISR;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 out_INTERRUPT INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME out_INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output out_INTERRUPT;
  output out_CPU_STOP;

  wire CLK;
  wire EN;
  wire [7:0]ICR_in;
  wire INTERRUPT_BLOCK;
  wire [7:0]IOR_in;
  wire [7:0]IWR_in;
  wire RST;
  wire out_CPU_STOP;
  wire out_INTERRUPT;
  wire [7:0]out_ISR;

  MonadmOISC_clashIoCtr_0_0_IoCtr U0
       (.CLK(CLK),
        .EN(EN),
        .ICR_in(ICR_in),
        .INTERRUPT_BLOCK(INTERRUPT_BLOCK),
        .IOR_in(IOR_in),
        .IWR_in(IWR_in),
        .RST(RST),
        .out_CPU_STOP(out_CPU_STOP),
        .out_INTERRUPT(out_INTERRUPT),
        .out_ISR(out_ISR));
endmodule

(* ORIG_REF_NAME = "IoCtr" *) 
module MonadmOISC_clashIoCtr_0_0_IoCtr
   (out_INTERRUPT,
    out_ISR,
    out_CPU_STOP,
    RST,
    EN,
    CLK,
    INTERRUPT_BLOCK,
    ICR_in,
    IOR_in,
    IWR_in);
  output out_INTERRUPT;
  output [7:0]out_ISR;
  output out_CPU_STOP;
  input RST;
  input EN;
  input CLK;
  input INTERRUPT_BLOCK;
  input [7:0]ICR_in;
  input [7:0]IOR_in;
  input [7:0]IWR_in;

  wire CLK;
  wire EN;
  wire \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_2_n_0 ;
  wire \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_3_n_0 ;
  wire \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_4_n_0 ;
  wire \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_5_n_0 ;
  wire \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_6_n_0 ;
  wire [7:0]ICR_in;
  wire INTERRUPT_BLOCK;
  wire [7:0]IOR_in;
  wire [7:0]IWR_in;
  wire RST;
  wire [2:0]\ccase_alt[tup2_sel0_tup3][tup3_sel0_ioctrstate] ;
  wire [7:0]\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] ;
  wire [7:0]\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] ;
  wire [7:0]\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] ;
  wire \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] ;
  wire \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] ;
  wire \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] ;
  wire \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_1_n_0 ;
  wire \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_2_n_0 ;
  wire \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_3_n_0 ;
  wire \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_4_n_0 ;
  wire \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_5_n_0 ;
  wire \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_6_n_0 ;
  wire \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_7_n_0 ;
  wire [7:0]\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] ;
  wire [7:0]\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] ;
  wire [7:0]\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] ;
  wire \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge_n_0_] ;
  wire [7:0]\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr] ;
  wire \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel1_interrupt_n_0_] ;
  wire out_CPU_STOP;
  wire out_INTERRUPT;
  wire [7:0]out_ISR;
  wire [2:0]state;

  LUT6 #(
    .INIT(64'hFFFFFFFF01010F05)) 
    \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_1 
       (.I0(state[2]),
        .I1(INTERRUPT_BLOCK),
        .I2(state[1]),
        .I3(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge_n_0_] ),
        .I4(state[0]),
        .I5(\FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_2_n_0 ),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel0_ioctrstate] [0]));
  LUT6 #(
    .INIT(64'h1111111111111110)) 
    \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_2 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(\FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_3_n_0 ),
        .I3(\FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_4_n_0 ),
        .I4(\FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_5_n_0 ),
        .I5(\FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_6_n_0 ),
        .O(\FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6AFFFF6AFF6AFF6A)) 
    \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_3 
       (.I0(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [2]),
        .I1(IOR_in[2]),
        .I2(IWR_in[2]),
        .I3(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [5]),
        .I4(IOR_in[5]),
        .I5(IWR_in[5]),
        .O(\FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6AFFFF6AFF6AFF6A)) 
    \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_4 
       (.I0(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [0]),
        .I1(IOR_in[0]),
        .I2(IWR_in[0]),
        .I3(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [1]),
        .I4(IOR_in[1]),
        .I5(IWR_in[1]),
        .O(\FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6AFFFF6AFF6AFF6A)) 
    \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_5 
       (.I0(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [3]),
        .I1(IOR_in[3]),
        .I2(IWR_in[3]),
        .I3(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [4]),
        .I4(IOR_in[4]),
        .I5(IWR_in[4]),
        .O(\FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6AFFFF6AFF6AFF6A)) 
    \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_6 
       (.I0(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [6]),
        .I1(IOR_in[6]),
        .I2(IWR_in[6]),
        .I3(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [7]),
        .I4(IOR_in[7]),
        .I5(IWR_in[7]),
        .O(\FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0F050CF0)) 
    \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][1]_i_1 
       (.I0(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge_n_0_] ),
        .I1(INTERRUPT_BLOCK),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel0_ioctrstate] [1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h3C08)) 
    \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][2]_i_1 
       (.I0(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge_n_0_] ),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel0_ioctrstate] [2]));
  (* FSM_ENCODED_STATES = "iSTATE:110,iSTATE0:000,iSTATE1:100,iSTATE2:001,iSTATE3:011,iSTATE4:010,iSTATE5:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cds_app_arg_reg[tup3_sel0_ioctrstate][0] 
       (.C(CLK),
        .CE(EN),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel0_ioctrstate] [0]),
        .Q(state[0]),
        .R(RST));
  (* FSM_ENCODED_STATES = "iSTATE:110,iSTATE0:000,iSTATE1:100,iSTATE2:001,iSTATE3:011,iSTATE4:010,iSTATE5:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cds_app_arg_reg[tup3_sel0_ioctrstate][1] 
       (.C(CLK),
        .CE(EN),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel0_ioctrstate] [1]),
        .Q(state[1]),
        .R(RST));
  (* FSM_ENCODED_STATES = "iSTATE:110,iSTATE0:000,iSTATE1:100,iSTATE2:001,iSTATE3:011,iSTATE4:010,iSTATE5:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cds_app_arg_reg[tup3_sel0_ioctrstate][2] 
       (.C(CLK),
        .CE(EN),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel0_ioctrstate] [2]),
        .Q(state[2]),
        .R(RST));
  LUT4 #(
    .INIT(16'h0280)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][0]_i_1 
       (.I0(state[1]),
        .I1(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [0]),
        .I2(ICR_in[0]),
        .I3(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [0]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [0]));
  LUT4 #(
    .INIT(16'h1800)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][1]_i_1 
       (.I0(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [1]),
        .I1(ICR_in[1]),
        .I2(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [1]),
        .I3(state[1]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [1]));
  LUT4 #(
    .INIT(16'h1800)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][2]_i_1 
       (.I0(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [2]),
        .I1(ICR_in[2]),
        .I2(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [2]),
        .I3(state[1]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [2]));
  LUT4 #(
    .INIT(16'h1800)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][3]_i_1 
       (.I0(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [3]),
        .I1(ICR_in[3]),
        .I2(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [3]),
        .I3(state[1]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [3]));
  LUT4 #(
    .INIT(16'h1800)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][4]_i_1 
       (.I0(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [4]),
        .I1(ICR_in[4]),
        .I2(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [4]),
        .I3(state[1]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [4]));
  LUT4 #(
    .INIT(16'h0280)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][5]_i_1 
       (.I0(state[1]),
        .I1(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [5]),
        .I2(ICR_in[5]),
        .I3(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [5]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [5]));
  LUT4 #(
    .INIT(16'h1800)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][6]_i_1 
       (.I0(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [6]),
        .I1(ICR_in[6]),
        .I2(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [6]),
        .I3(state[1]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [6]));
  LUT4 #(
    .INIT(16'h0090)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][7]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(EN),
        .I3(state[2]),
        .O(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] ));
  LUT4 #(
    .INIT(16'h0280)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][7]_i_2 
       (.I0(state[1]),
        .I1(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [7]),
        .I2(ICR_in[7]),
        .I3(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [7]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][0]_i_1 
       (.I0(state[0]),
        .I1(IWR_in[0]),
        .I2(IOR_in[0]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][1]_i_1 
       (.I0(state[0]),
        .I1(IWR_in[1]),
        .I2(IOR_in[1]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][2]_i_1 
       (.I0(state[0]),
        .I1(IWR_in[2]),
        .I2(IOR_in[2]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][3]_i_1 
       (.I0(state[0]),
        .I1(IWR_in[3]),
        .I2(IOR_in[3]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][4]_i_1 
       (.I0(state[0]),
        .I1(IWR_in[4]),
        .I2(IOR_in[4]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][5]_i_1 
       (.I0(state[0]),
        .I1(IWR_in[5]),
        .I2(IOR_in[5]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][6]_i_1 
       (.I0(state[0]),
        .I1(IWR_in[6]),
        .I2(IOR_in[6]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [6]));
  LUT3 #(
    .INIT(8'h04)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][7]_i_1 
       (.I0(state[2]),
        .I1(EN),
        .I2(state[1]),
        .O(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][7]_i_2 
       (.I0(state[0]),
        .I1(IWR_in[7]),
        .I2(IOR_in[7]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [7]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][0]_i_1 
       (.I0(IOR_in[0]),
        .I1(IWR_in[0]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [0]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [0]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][1]_i_1 
       (.I0(IOR_in[1]),
        .I1(IWR_in[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [1]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [1]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][2]_i_1 
       (.I0(IOR_in[2]),
        .I1(IWR_in[2]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [2]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [2]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][3]_i_1 
       (.I0(IOR_in[3]),
        .I1(IWR_in[3]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [3]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [3]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][4]_i_1 
       (.I0(IOR_in[4]),
        .I1(IWR_in[4]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [4]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [4]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][5]_i_1 
       (.I0(IOR_in[5]),
        .I1(IWR_in[5]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [5]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [5]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][6]_i_1 
       (.I0(IOR_in[6]),
        .I1(IWR_in[6]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [6]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [6]));
  LUT4 #(
    .INIT(16'h1030)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][7]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(EN),
        .I3(state[2]),
        .O(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][7]_i_2 
       (.I0(IOR_in[7]),
        .I1(IWR_in[7]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [7]),
        .O(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [7]));
  LUT6 #(
    .INIT(64'h00000000AAEAAA2A)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_1 
       (.I0(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge_n_0_] ),
        .I1(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_2_n_0 ),
        .I2(EN),
        .I3(state[2]),
        .I4(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_3_n_0 ),
        .I5(RST),
        .O(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_3 
       (.I0(state[0]),
        .I1(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_4_n_0 ),
        .I2(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_5_n_0 ),
        .I3(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_6_n_0 ),
        .I4(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_7_n_0 ),
        .O(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h181818FFFF181818)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_4 
       (.I0(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [6]),
        .I1(ICR_in[6]),
        .I2(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [6]),
        .I3(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [7]),
        .I4(ICR_in[7]),
        .I5(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [7]),
        .O(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h181818FFFF181818)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_5 
       (.I0(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [0]),
        .I1(ICR_in[0]),
        .I2(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [0]),
        .I3(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [5]),
        .I4(ICR_in[5]),
        .I5(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [5]),
        .O(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h181818FFFF181818)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_6 
       (.I0(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [2]),
        .I1(ICR_in[2]),
        .I2(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [2]),
        .I3(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [1]),
        .I4(ICR_in[1]),
        .I5(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [1]),
        .O(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h181818FFFF181818)) 
    \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_7 
       (.I0(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [4]),
        .I1(ICR_in[4]),
        .I2(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [4]),
        .I3(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [3]),
        .I4(ICR_in[3]),
        .I5(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [3]),
        .O(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][0] 
       (.C(CLK),
        .CE(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] ),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [0]),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [0]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][1] 
       (.C(CLK),
        .CE(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] ),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [1]),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [1]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][2] 
       (.C(CLK),
        .CE(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] ),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [2]),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [2]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][3] 
       (.C(CLK),
        .CE(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] ),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [3]),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [3]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][4] 
       (.C(CLK),
        .CE(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] ),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [4]),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [4]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][5] 
       (.C(CLK),
        .CE(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] ),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [5]),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [5]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][6] 
       (.C(CLK),
        .CE(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] ),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [6]),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [6]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][7] 
       (.C(CLK),
        .CE(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] ),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [7]),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [7]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][0] 
       (.C(CLK),
        .CE(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] ),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [0]),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [0]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][1] 
       (.C(CLK),
        .CE(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] ),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [1]),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [1]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][2] 
       (.C(CLK),
        .CE(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] ),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [2]),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [2]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][3] 
       (.C(CLK),
        .CE(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] ),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [3]),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [3]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][4] 
       (.C(CLK),
        .CE(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] ),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [4]),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [4]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][5] 
       (.C(CLK),
        .CE(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] ),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [5]),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [5]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][6] 
       (.C(CLK),
        .CE(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] ),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [6]),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [6]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][7] 
       (.C(CLK),
        .CE(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] ),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [7]),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect] [7]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][0] 
       (.C(CLK),
        .CE(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] ),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [0]),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [0]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][1] 
       (.C(CLK),
        .CE(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] ),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [1]),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [1]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][2] 
       (.C(CLK),
        .CE(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] ),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [2]),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [2]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][3] 
       (.C(CLK),
        .CE(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] ),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [3]),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [3]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][4] 
       (.C(CLK),
        .CE(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] ),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [4]),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [4]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][5] 
       (.C(CLK),
        .CE(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] ),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [5]),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [5]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][6] 
       (.C(CLK),
        .CE(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] ),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [6]),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [6]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][7] 
       (.C(CLK),
        .CE(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] ),
        .D(\ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [7]),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev] [7]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_1_n_0 ),
        .Q(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge_n_0_] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr][0] 
       (.C(CLK),
        .CE(EN),
        .D(out_ISR[0]),
        .Q(\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr] [0]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr][1] 
       (.C(CLK),
        .CE(EN),
        .D(out_ISR[1]),
        .Q(\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr] [1]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr][2] 
       (.C(CLK),
        .CE(EN),
        .D(out_ISR[2]),
        .Q(\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr] [2]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr][3] 
       (.C(CLK),
        .CE(EN),
        .D(out_ISR[3]),
        .Q(\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr] [3]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr][4] 
       (.C(CLK),
        .CE(EN),
        .D(out_ISR[4]),
        .Q(\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr] [4]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr][5] 
       (.C(CLK),
        .CE(EN),
        .D(out_ISR[5]),
        .Q(\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr] [5]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr][6] 
       (.C(CLK),
        .CE(EN),
        .D(out_ISR[6]),
        .Q(\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr] [6]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr][7] 
       (.C(CLK),
        .CE(EN),
        .D(out_ISR[7]),
        .Q(\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr] [7]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel1_interrupt] 
       (.C(CLK),
        .CE(EN),
        .D(out_INTERRUPT),
        .Q(\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel1_interrupt_n_0_] ),
        .R(RST));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAD)) 
    out_CPU_STOP_INST_0
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(out_CPU_STOP));
  LUT4 #(
    .INIT(16'hCCC8)) 
    out_INTERRUPT_INST_0
       (.I0(\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel1_interrupt_n_0_] ),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .O(out_INTERRUPT));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAACCCC0)) 
    \out_ISR[0]_INST_0 
       (.I0(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [0]),
        .I1(\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr] [0]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(out_ISR[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAACCCC0)) 
    \out_ISR[1]_INST_0 
       (.I0(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [1]),
        .I1(\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr] [1]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(out_ISR[1]));
  LUT5 #(
    .INIT(32'hAAACCCC0)) 
    \out_ISR[2]_INST_0 
       (.I0(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [2]),
        .I1(\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr] [2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(out_ISR[2]));
  LUT5 #(
    .INIT(32'hAAACCCC0)) 
    \out_ISR[3]_INST_0 
       (.I0(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [3]),
        .I1(\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr] [3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(out_ISR[3]));
  LUT5 #(
    .INIT(32'hAAACCCC0)) 
    \out_ISR[4]_INST_0 
       (.I0(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [4]),
        .I1(\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr] [4]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(out_ISR[4]));
  LUT5 #(
    .INIT(32'hAAACCCC0)) 
    \out_ISR[5]_INST_0 
       (.I0(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [5]),
        .I1(\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr] [5]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(out_ISR[5]));
  LUT5 #(
    .INIT(32'hAAACCCC0)) 
    \out_ISR[6]_INST_0 
       (.I0(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [6]),
        .I1(\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr] [6]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(out_ISR[6]));
  LUT5 #(
    .INIT(32'hAAACCCC0)) 
    \out_ISR[7]_INST_0 
       (.I0(\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t] [7]),
        .I1(\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr] [7]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(out_ISR[7]));
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
