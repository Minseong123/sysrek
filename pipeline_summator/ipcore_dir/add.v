////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: add.v
// /___/   /\     Timestamp: Thu Mar 26 23:18:19 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/vka/Programming/VHDL/workspace/sysrek/pipeline_summator/ipcore_dir/tmp/_cg/add.ngc /home/vka/Programming/VHDL/workspace/sysrek/pipeline_summator/ipcore_dir/tmp/_cg/add.v 
// Device	: 3s500efg320-4
// Input file	: /home/vka/Programming/VHDL/workspace/sysrek/pipeline_summator/ipcore_dir/tmp/_cg/add.ngc
// Output file	: /home/vka/Programming/VHDL/workspace/sysrek/pipeline_summator/ipcore_dir/tmp/_cg/add.v
// # of Modules	: 1
// Design Name	: add
// Xilinx        : /mnt/data/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module add (
s, a, b
)/* synthesis syn_black_box syn_noprune=1 */;
  output [20 : 0] s;
  input [20 : 0] a;
  input [20 : 0] b;
  
  // synthesis translate_off
  
  wire \blk00000001/sig00000069 ;
  wire \blk00000001/sig00000068 ;
  wire \blk00000001/sig00000067 ;
  wire \blk00000001/sig00000066 ;
  wire \blk00000001/sig00000065 ;
  wire \blk00000001/sig00000064 ;
  wire \blk00000001/sig00000063 ;
  wire \blk00000001/sig00000062 ;
  wire \blk00000001/sig00000061 ;
  wire \blk00000001/sig00000060 ;
  wire \blk00000001/sig0000005f ;
  wire \blk00000001/sig0000005e ;
  wire \blk00000001/sig0000005d ;
  wire \blk00000001/sig0000005c ;
  wire \blk00000001/sig0000005b ;
  wire \blk00000001/sig0000005a ;
  wire \blk00000001/sig00000059 ;
  wire \blk00000001/sig00000058 ;
  wire \blk00000001/sig00000057 ;
  wire \blk00000001/sig00000056 ;
  wire \blk00000001/sig00000055 ;
  wire \blk00000001/sig00000054 ;
  wire \blk00000001/sig00000053 ;
  wire \blk00000001/sig00000052 ;
  wire \blk00000001/sig00000051 ;
  wire \blk00000001/sig00000050 ;
  wire \blk00000001/sig0000004f ;
  wire \blk00000001/sig0000004e ;
  wire \blk00000001/sig0000004d ;
  wire \blk00000001/sig0000004c ;
  wire \blk00000001/sig0000004b ;
  wire \blk00000001/sig0000004a ;
  wire \blk00000001/sig00000049 ;
  wire \blk00000001/sig00000048 ;
  wire \blk00000001/sig00000047 ;
  wire \blk00000001/sig00000046 ;
  wire \blk00000001/sig00000045 ;
  wire \blk00000001/sig00000044 ;
  wire \blk00000001/sig00000043 ;
  wire \blk00000001/sig00000042 ;
  wire \blk00000001/sig00000041 ;
  wire \blk00000001/sig0000002b ;
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000040  (
    .I0(b[0]),
    .I1(a[0]),
    .O(\blk00000001/sig00000055 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003f  (
    .I0(b[1]),
    .I1(a[1]),
    .O(\blk00000001/sig00000060 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003e  (
    .I0(b[2]),
    .I1(a[2]),
    .O(\blk00000001/sig00000062 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003d  (
    .I0(b[3]),
    .I1(a[3]),
    .O(\blk00000001/sig00000063 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003c  (
    .I0(b[4]),
    .I1(a[4]),
    .O(\blk00000001/sig00000064 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003b  (
    .I0(b[5]),
    .I1(a[5]),
    .O(\blk00000001/sig00000065 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003a  (
    .I0(b[6]),
    .I1(a[6]),
    .O(\blk00000001/sig00000066 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000039  (
    .I0(b[7]),
    .I1(a[7]),
    .O(\blk00000001/sig00000067 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000038  (
    .I0(b[8]),
    .I1(a[8]),
    .O(\blk00000001/sig00000068 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000037  (
    .I0(b[9]),
    .I1(a[9]),
    .O(\blk00000001/sig00000069 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000036  (
    .I0(b[10]),
    .I1(a[10]),
    .O(\blk00000001/sig00000056 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000035  (
    .I0(b[11]),
    .I1(a[11]),
    .O(\blk00000001/sig00000057 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000034  (
    .I0(b[12]),
    .I1(a[12]),
    .O(\blk00000001/sig00000058 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000033  (
    .I0(b[13]),
    .I1(a[13]),
    .O(\blk00000001/sig00000059 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000032  (
    .I0(b[14]),
    .I1(a[14]),
    .O(\blk00000001/sig0000005a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000031  (
    .I0(b[15]),
    .I1(a[15]),
    .O(\blk00000001/sig0000005b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000030  (
    .I0(b[16]),
    .I1(a[16]),
    .O(\blk00000001/sig0000005c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002f  (
    .I0(b[17]),
    .I1(a[17]),
    .O(\blk00000001/sig0000005d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002e  (
    .I0(b[18]),
    .I1(a[18]),
    .O(\blk00000001/sig0000005e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002d  (
    .I0(b[19]),
    .I1(a[19]),
    .O(\blk00000001/sig0000005f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002c  (
    .I0(b[20]),
    .I1(a[20]),
    .O(\blk00000001/sig00000061 )
  );
  MUXCY   \blk00000001/blk0000002b  (
    .CI(\blk00000001/sig0000002b ),
    .DI(a[0]),
    .S(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig00000041 )
  );
  XORCY   \blk00000001/blk0000002a  (
    .CI(\blk00000001/sig0000002b ),
    .LI(\blk00000001/sig00000055 ),
    .O(s[0])
  );
  XORCY   \blk00000001/blk00000029  (
    .CI(\blk00000001/sig0000004b ),
    .LI(\blk00000001/sig00000061 ),
    .O(s[20])
  );
  MUXCY   \blk00000001/blk00000028  (
    .CI(\blk00000001/sig00000041 ),
    .DI(a[1]),
    .S(\blk00000001/sig00000060 ),
    .O(\blk00000001/sig0000004c )
  );
  XORCY   \blk00000001/blk00000027  (
    .CI(\blk00000001/sig00000041 ),
    .LI(\blk00000001/sig00000060 ),
    .O(s[1])
  );
  MUXCY   \blk00000001/blk00000026  (
    .CI(\blk00000001/sig0000004c ),
    .DI(a[2]),
    .S(\blk00000001/sig00000062 ),
    .O(\blk00000001/sig0000004d )
  );
  XORCY   \blk00000001/blk00000025  (
    .CI(\blk00000001/sig0000004c ),
    .LI(\blk00000001/sig00000062 ),
    .O(s[2])
  );
  MUXCY   \blk00000001/blk00000024  (
    .CI(\blk00000001/sig0000004d ),
    .DI(a[3]),
    .S(\blk00000001/sig00000063 ),
    .O(\blk00000001/sig0000004e )
  );
  XORCY   \blk00000001/blk00000023  (
    .CI(\blk00000001/sig0000004d ),
    .LI(\blk00000001/sig00000063 ),
    .O(s[3])
  );
  MUXCY   \blk00000001/blk00000022  (
    .CI(\blk00000001/sig0000004e ),
    .DI(a[4]),
    .S(\blk00000001/sig00000064 ),
    .O(\blk00000001/sig0000004f )
  );
  XORCY   \blk00000001/blk00000021  (
    .CI(\blk00000001/sig0000004e ),
    .LI(\blk00000001/sig00000064 ),
    .O(s[4])
  );
  MUXCY   \blk00000001/blk00000020  (
    .CI(\blk00000001/sig0000004f ),
    .DI(a[5]),
    .S(\blk00000001/sig00000065 ),
    .O(\blk00000001/sig00000050 )
  );
  XORCY   \blk00000001/blk0000001f  (
    .CI(\blk00000001/sig0000004f ),
    .LI(\blk00000001/sig00000065 ),
    .O(s[5])
  );
  MUXCY   \blk00000001/blk0000001e  (
    .CI(\blk00000001/sig00000050 ),
    .DI(a[6]),
    .S(\blk00000001/sig00000066 ),
    .O(\blk00000001/sig00000051 )
  );
  XORCY   \blk00000001/blk0000001d  (
    .CI(\blk00000001/sig00000050 ),
    .LI(\blk00000001/sig00000066 ),
    .O(s[6])
  );
  MUXCY   \blk00000001/blk0000001c  (
    .CI(\blk00000001/sig00000051 ),
    .DI(a[7]),
    .S(\blk00000001/sig00000067 ),
    .O(\blk00000001/sig00000052 )
  );
  XORCY   \blk00000001/blk0000001b  (
    .CI(\blk00000001/sig00000051 ),
    .LI(\blk00000001/sig00000067 ),
    .O(s[7])
  );
  MUXCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig00000052 ),
    .DI(a[8]),
    .S(\blk00000001/sig00000068 ),
    .O(\blk00000001/sig00000053 )
  );
  XORCY   \blk00000001/blk00000019  (
    .CI(\blk00000001/sig00000052 ),
    .LI(\blk00000001/sig00000068 ),
    .O(s[8])
  );
  MUXCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig00000053 ),
    .DI(a[9]),
    .S(\blk00000001/sig00000069 ),
    .O(\blk00000001/sig00000054 )
  );
  XORCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig00000053 ),
    .LI(\blk00000001/sig00000069 ),
    .O(s[9])
  );
  MUXCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig00000054 ),
    .DI(a[10]),
    .S(\blk00000001/sig00000056 ),
    .O(\blk00000001/sig00000042 )
  );
  XORCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig00000054 ),
    .LI(\blk00000001/sig00000056 ),
    .O(s[10])
  );
  MUXCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig00000042 ),
    .DI(a[11]),
    .S(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000043 )
  );
  XORCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig00000042 ),
    .LI(\blk00000001/sig00000057 ),
    .O(s[11])
  );
  MUXCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig00000043 ),
    .DI(a[12]),
    .S(\blk00000001/sig00000058 ),
    .O(\blk00000001/sig00000044 )
  );
  XORCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig00000043 ),
    .LI(\blk00000001/sig00000058 ),
    .O(s[12])
  );
  MUXCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig00000044 ),
    .DI(a[13]),
    .S(\blk00000001/sig00000059 ),
    .O(\blk00000001/sig00000045 )
  );
  XORCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig00000044 ),
    .LI(\blk00000001/sig00000059 ),
    .O(s[13])
  );
  MUXCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig00000045 ),
    .DI(a[14]),
    .S(\blk00000001/sig0000005a ),
    .O(\blk00000001/sig00000046 )
  );
  XORCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig00000045 ),
    .LI(\blk00000001/sig0000005a ),
    .O(s[14])
  );
  MUXCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig00000046 ),
    .DI(a[15]),
    .S(\blk00000001/sig0000005b ),
    .O(\blk00000001/sig00000047 )
  );
  XORCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig00000046 ),
    .LI(\blk00000001/sig0000005b ),
    .O(s[15])
  );
  MUXCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig00000047 ),
    .DI(a[16]),
    .S(\blk00000001/sig0000005c ),
    .O(\blk00000001/sig00000048 )
  );
  XORCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig00000047 ),
    .LI(\blk00000001/sig0000005c ),
    .O(s[16])
  );
  MUXCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig00000048 ),
    .DI(a[17]),
    .S(\blk00000001/sig0000005d ),
    .O(\blk00000001/sig00000049 )
  );
  XORCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig00000048 ),
    .LI(\blk00000001/sig0000005d ),
    .O(s[17])
  );
  MUXCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig00000049 ),
    .DI(a[18]),
    .S(\blk00000001/sig0000005e ),
    .O(\blk00000001/sig0000004a )
  );
  XORCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig00000049 ),
    .LI(\blk00000001/sig0000005e ),
    .O(s[18])
  );
  MUXCY   \blk00000001/blk00000004  (
    .CI(\blk00000001/sig0000004a ),
    .DI(a[19]),
    .S(\blk00000001/sig0000005f ),
    .O(\blk00000001/sig0000004b )
  );
  XORCY   \blk00000001/blk00000003  (
    .CI(\blk00000001/sig0000004a ),
    .LI(\blk00000001/sig0000005f ),
    .O(s[19])
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig0000002b )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule

`endif

// synthesis translate_on
