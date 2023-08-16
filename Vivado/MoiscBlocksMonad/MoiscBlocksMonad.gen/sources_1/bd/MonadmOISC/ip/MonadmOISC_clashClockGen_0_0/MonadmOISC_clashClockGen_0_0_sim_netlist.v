// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2.1 (win64) Build 3414424 Sun Dec 19 10:57:22 MST 2021
// Date        : Thu Aug 25 12:49:08 2022
// Host        : JKatana running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/git/clash-moisc/Vivado/MoiscBlocksMonad/MoiscBlocksMonad.gen/sources_1/bd/MonadmOISC/ip/MonadmOISC_clashClockGen_0_0/MonadmOISC_clashClockGen_0_0_sim_netlist.v
// Design      : MonadmOISC_clashClockGen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MonadmOISC_clashClockGen_0_0,ClockGen,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "ClockGen,Vivado 2021.2.1" *) 
(* NotValidForBitStream *)
module MonadmOISC_clashClockGen_0_0
   (csr_in,
    cpu_stop_in,
    clock10khz,
    clock1mhz,
    clock50mhz,
    clock100mhz,
    clkOut);
  input [7:0]csr_in;
  input cpu_stop_in;
  input clock10khz;
  input clock1mhz;
  input clock50mhz;
  input clock100mhz;
  output clkOut;

  wire clkOut;
  wire clkOut_INST_0_i_1_n_0;
  wire clkOut_INST_0_i_2_n_0;
  wire clock100mhz;
  wire clock10khz;
  wire clock1mhz;
  wire clock50mhz;
  wire cpu_stop_in;
  wire [7:0]csr_in;

  LUT3 #(
    .INIT(8'h40)) 
    clkOut_INST_0
       (.I0(csr_in[0]),
        .I1(clkOut_INST_0_i_1_n_0),
        .I2(clkOut_INST_0_i_2_n_0),
        .O(clkOut));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    clkOut_INST_0_i_1
       (.I0(clock100mhz),
        .I1(clock1mhz),
        .I2(csr_in[6]),
        .I3(clock50mhz),
        .I4(csr_in[7]),
        .I5(clock10khz),
        .O(clkOut_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    clkOut_INST_0_i_2
       (.I0(csr_in[3]),
        .I1(csr_in[4]),
        .I2(csr_in[1]),
        .I3(csr_in[2]),
        .I4(cpu_stop_in),
        .I5(csr_in[5]),
        .O(clkOut_INST_0_i_2_n_0));
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
