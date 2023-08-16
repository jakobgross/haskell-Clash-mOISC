// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2.1 (win64) Build 3414424 Sun Dec 19 10:57:22 MST 2021
// Date        : Thu Aug 25 15:11:41 2022
// Host        : JKatana running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/git/clash-moisc/Vivado/MoiscBlocks/MoiscBlocks.gen/sources_1/bd/mOISC/ip/mOISC_clashIoBuffer_0_0/mOISC_clashIoBuffer_0_0_sim_netlist.v
// Design      : mOISC_clashIoBuffer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mOISC_clashIoBuffer_0_0,IoBuffer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "IoBuffer,Vivado 2021.2.1" *) 
(* NotValidForBitStream *)
module mOISC_clashIoBuffer_0_0
   (fsm_in,
    dir,
    outside_io,
    to_fsm);
  input [7:0]fsm_in;
  input [7:0]dir;
  inout [7:0]outside_io;
  output [7:0]to_fsm;

  wire [7:0]dir;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire [7:0]fsm_in;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire [7:0]outside_io;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire [7:0]to_fsm;

  mOISC_clashIoBuffer_0_0_IoBuffer U0
       (.dir(dir),
        .fsm_in(fsm_in),
        .outside_io(outside_io),
        .to_fsm(to_fsm));
endmodule

(* ORIG_REF_NAME = "IoBuffer" *) 
module mOISC_clashIoBuffer_0_0_IoBuffer
   (to_fsm,
    outside_io,
    fsm_in,
    dir);
  output [7:0]to_fsm;
  inout [7:0]outside_io;
  input [7:0]fsm_in;
  input [7:0]dir;

  wire T;
  wire [7:0]dir;
  wire [7:0]fsm_in;
  wire \myblackbox[1].IOBUF_inst_i_1_n_0 ;
  wire \myblackbox[2].IOBUF_inst_i_1_n_0 ;
  wire \myblackbox[3].IOBUF_inst_i_1_n_0 ;
  wire \myblackbox[4].IOBUF_inst_i_1_n_0 ;
  wire \myblackbox[5].IOBUF_inst_i_1_n_0 ;
  wire \myblackbox[6].IOBUF_inst_i_1_n_0 ;
  wire \myblackbox[7].IOBUF_inst_i_1_n_0 ;
  wire [7:0]outside_io;
  wire [7:0]to_fsm;

  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \myblackbox[0].IOBUF_inst 
       (.I(fsm_in[0]),
        .IO(outside_io[0]),
        .O(to_fsm[0]),
        .T(T));
  LUT1 #(
    .INIT(2'h1)) 
    \myblackbox[0].IOBUF_inst_i_1 
       (.I0(dir[0]),
        .O(T));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \myblackbox[1].IOBUF_inst 
       (.I(fsm_in[1]),
        .IO(outside_io[1]),
        .O(to_fsm[1]),
        .T(\myblackbox[1].IOBUF_inst_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \myblackbox[1].IOBUF_inst_i_1 
       (.I0(dir[1]),
        .O(\myblackbox[1].IOBUF_inst_i_1_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \myblackbox[2].IOBUF_inst 
       (.I(fsm_in[2]),
        .IO(outside_io[2]),
        .O(to_fsm[2]),
        .T(\myblackbox[2].IOBUF_inst_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \myblackbox[2].IOBUF_inst_i_1 
       (.I0(dir[2]),
        .O(\myblackbox[2].IOBUF_inst_i_1_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \myblackbox[3].IOBUF_inst 
       (.I(fsm_in[3]),
        .IO(outside_io[3]),
        .O(to_fsm[3]),
        .T(\myblackbox[3].IOBUF_inst_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \myblackbox[3].IOBUF_inst_i_1 
       (.I0(dir[3]),
        .O(\myblackbox[3].IOBUF_inst_i_1_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \myblackbox[4].IOBUF_inst 
       (.I(fsm_in[4]),
        .IO(outside_io[4]),
        .O(to_fsm[4]),
        .T(\myblackbox[4].IOBUF_inst_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \myblackbox[4].IOBUF_inst_i_1 
       (.I0(dir[4]),
        .O(\myblackbox[4].IOBUF_inst_i_1_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \myblackbox[5].IOBUF_inst 
       (.I(fsm_in[5]),
        .IO(outside_io[5]),
        .O(to_fsm[5]),
        .T(\myblackbox[5].IOBUF_inst_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \myblackbox[5].IOBUF_inst_i_1 
       (.I0(dir[5]),
        .O(\myblackbox[5].IOBUF_inst_i_1_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \myblackbox[6].IOBUF_inst 
       (.I(fsm_in[6]),
        .IO(outside_io[6]),
        .O(to_fsm[6]),
        .T(\myblackbox[6].IOBUF_inst_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \myblackbox[6].IOBUF_inst_i_1 
       (.I0(dir[6]),
        .O(\myblackbox[6].IOBUF_inst_i_1_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \myblackbox[7].IOBUF_inst 
       (.I(fsm_in[7]),
        .IO(outside_io[7]),
        .O(to_fsm[7]),
        .T(\myblackbox[7].IOBUF_inst_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \myblackbox[7].IOBUF_inst_i_1 
       (.I0(dir[7]),
        .O(\myblackbox[7].IOBUF_inst_i_1_n_0 ));
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
