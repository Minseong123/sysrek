////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: summator_add.v
// /___/   /\     Timestamp: Thu May 14 18:24:22 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog "/home/lsriw/SR/Wojciech Gumula/repo/skin_color_segm/ipcore_dir/tmp/_cg/summator_add.ngc" "/home/lsriw/SR/Wojciech Gumula/repo/skin_color_segm/ipcore_dir/tmp/_cg/summator_add.v" 
// Device	: 6slx45csg324-2
// Input file	: /home/lsriw/SR/Wojciech Gumula/repo/skin_color_segm/ipcore_dir/tmp/_cg/summator_add.ngc
// Output file	: /home/lsriw/SR/Wojciech Gumula/repo/skin_color_segm/ipcore_dir/tmp/_cg/summator_add.v
// # of Modules	: 1
// Design Name	: summator_add
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
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

module summator_add (
  sclr, a, b, s
)/* synthesis syn_black_box syn_noprune=1 */;
  input sclr;
  input [27 : 0] a;
  input [9 : 0] b;
  output [27 : 0] s;
  
  // synthesis translate_off
  
  wire \blk00000001/sig00000079 ;
  wire \blk00000001/sig00000078 ;
  wire \blk00000001/sig00000077 ;
  wire \blk00000001/sig00000076 ;
  wire \blk00000001/sig00000075 ;
  wire \blk00000001/sig00000074 ;
  wire \blk00000001/sig00000073 ;
  wire \blk00000001/sig00000072 ;
  wire \blk00000001/sig00000071 ;
  wire \blk00000001/sig00000070 ;
  wire \blk00000001/sig0000006f ;
  wire \blk00000001/sig0000006e ;
  wire \blk00000001/sig0000006d ;
  wire \blk00000001/sig0000006c ;
  wire \blk00000001/sig0000006b ;
  wire \blk00000001/sig0000006a ;
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
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000054  (
    .I0(a[10]),
    .O(\blk00000001/sig00000079 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000053  (
    .I0(a[11]),
    .O(\blk00000001/sig00000078 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000052  (
    .I0(a[12]),
    .O(\blk00000001/sig00000077 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000051  (
    .I0(a[13]),
    .O(\blk00000001/sig00000076 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000050  (
    .I0(a[14]),
    .O(\blk00000001/sig00000075 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000004f  (
    .I0(a[15]),
    .O(\blk00000001/sig00000074 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000004e  (
    .I0(a[16]),
    .O(\blk00000001/sig00000073 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000004d  (
    .I0(a[17]),
    .O(\blk00000001/sig00000072 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000004c  (
    .I0(a[18]),
    .O(\blk00000001/sig00000071 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000004b  (
    .I0(a[19]),
    .O(\blk00000001/sig00000070 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000004a  (
    .I0(a[20]),
    .O(\blk00000001/sig0000006f )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000049  (
    .I0(a[21]),
    .O(\blk00000001/sig0000006e )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000048  (
    .I0(a[22]),
    .O(\blk00000001/sig0000006d )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000047  (
    .I0(a[23]),
    .O(\blk00000001/sig0000006c )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000046  (
    .I0(a[24]),
    .O(\blk00000001/sig0000006b )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000045  (
    .I0(a[25]),
    .O(\blk00000001/sig0000006a )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000044  (
    .I0(a[26]),
    .O(\blk00000001/sig00000069 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000043  (
    .I0(a[9]),
    .I1(b[9]),
    .O(\blk00000001/sig00000044 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000042  (
    .I0(a[8]),
    .I1(b[8]),
    .O(\blk00000001/sig00000045 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000041  (
    .I0(a[7]),
    .I1(b[7]),
    .O(\blk00000001/sig00000046 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000040  (
    .I0(a[6]),
    .I1(b[6]),
    .O(\blk00000001/sig00000047 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003f  (
    .I0(a[5]),
    .I1(b[5]),
    .O(\blk00000001/sig00000048 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003e  (
    .I0(a[4]),
    .I1(b[4]),
    .O(\blk00000001/sig00000049 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003d  (
    .I0(a[3]),
    .I1(b[3]),
    .O(\blk00000001/sig0000004a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003c  (
    .I0(a[2]),
    .I1(b[2]),
    .O(\blk00000001/sig0000004b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003b  (
    .I0(a[1]),
    .I1(b[1]),
    .O(\blk00000001/sig0000004c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003a  (
    .I0(a[0]),
    .I1(b[0]),
    .O(\blk00000001/sig0000004d )
  );
  MUXCY   \blk00000001/blk00000039  (
    .CI(\blk00000001/sig00000043 ),
    .DI(a[0]),
    .S(\blk00000001/sig0000004d ),
    .O(\blk00000001/sig00000068 )
  );
  MUXCY   \blk00000001/blk00000038  (
    .CI(\blk00000001/sig00000068 ),
    .DI(a[1]),
    .S(\blk00000001/sig0000004c ),
    .O(\blk00000001/sig00000067 )
  );
  MUXCY   \blk00000001/blk00000037  (
    .CI(\blk00000001/sig00000067 ),
    .DI(a[2]),
    .S(\blk00000001/sig0000004b ),
    .O(\blk00000001/sig00000066 )
  );
  MUXCY   \blk00000001/blk00000036  (
    .CI(\blk00000001/sig00000066 ),
    .DI(a[3]),
    .S(\blk00000001/sig0000004a ),
    .O(\blk00000001/sig00000065 )
  );
  MUXCY   \blk00000001/blk00000035  (
    .CI(\blk00000001/sig00000065 ),
    .DI(a[4]),
    .S(\blk00000001/sig00000049 ),
    .O(\blk00000001/sig00000064 )
  );
  MUXCY   \blk00000001/blk00000034  (
    .CI(\blk00000001/sig00000064 ),
    .DI(a[5]),
    .S(\blk00000001/sig00000048 ),
    .O(\blk00000001/sig00000063 )
  );
  MUXCY   \blk00000001/blk00000033  (
    .CI(\blk00000001/sig00000063 ),
    .DI(a[6]),
    .S(\blk00000001/sig00000047 ),
    .O(\blk00000001/sig00000062 )
  );
  MUXCY   \blk00000001/blk00000032  (
    .CI(\blk00000001/sig00000062 ),
    .DI(a[7]),
    .S(\blk00000001/sig00000046 ),
    .O(\blk00000001/sig00000061 )
  );
  MUXCY   \blk00000001/blk00000031  (
    .CI(\blk00000001/sig00000061 ),
    .DI(a[8]),
    .S(\blk00000001/sig00000045 ),
    .O(\blk00000001/sig00000060 )
  );
  MUXCY   \blk00000001/blk00000030  (
    .CI(\blk00000001/sig00000060 ),
    .DI(a[9]),
    .S(\blk00000001/sig00000044 ),
    .O(\blk00000001/sig0000005f )
  );
  MUXCY   \blk00000001/blk0000002f  (
    .CI(\blk00000001/sig0000005f ),
    .DI(a[10]),
    .S(\blk00000001/sig00000079 ),
    .O(\blk00000001/sig0000005e )
  );
  MUXCY   \blk00000001/blk0000002e  (
    .CI(\blk00000001/sig0000005e ),
    .DI(a[11]),
    .S(\blk00000001/sig00000078 ),
    .O(\blk00000001/sig0000005d )
  );
  MUXCY   \blk00000001/blk0000002d  (
    .CI(\blk00000001/sig0000005d ),
    .DI(a[12]),
    .S(\blk00000001/sig00000077 ),
    .O(\blk00000001/sig0000005c )
  );
  MUXCY   \blk00000001/blk0000002c  (
    .CI(\blk00000001/sig0000005c ),
    .DI(a[13]),
    .S(\blk00000001/sig00000076 ),
    .O(\blk00000001/sig0000005b )
  );
  MUXCY   \blk00000001/blk0000002b  (
    .CI(\blk00000001/sig0000005b ),
    .DI(a[14]),
    .S(\blk00000001/sig00000075 ),
    .O(\blk00000001/sig0000005a )
  );
  MUXCY   \blk00000001/blk0000002a  (
    .CI(\blk00000001/sig0000005a ),
    .DI(a[15]),
    .S(\blk00000001/sig00000074 ),
    .O(\blk00000001/sig00000059 )
  );
  MUXCY   \blk00000001/blk00000029  (
    .CI(\blk00000001/sig00000059 ),
    .DI(a[16]),
    .S(\blk00000001/sig00000073 ),
    .O(\blk00000001/sig00000058 )
  );
  MUXCY   \blk00000001/blk00000028  (
    .CI(\blk00000001/sig00000058 ),
    .DI(a[17]),
    .S(\blk00000001/sig00000072 ),
    .O(\blk00000001/sig00000057 )
  );
  MUXCY   \blk00000001/blk00000027  (
    .CI(\blk00000001/sig00000057 ),
    .DI(a[18]),
    .S(\blk00000001/sig00000071 ),
    .O(\blk00000001/sig00000056 )
  );
  MUXCY   \blk00000001/blk00000026  (
    .CI(\blk00000001/sig00000056 ),
    .DI(a[19]),
    .S(\blk00000001/sig00000070 ),
    .O(\blk00000001/sig00000055 )
  );
  MUXCY   \blk00000001/blk00000025  (
    .CI(\blk00000001/sig00000055 ),
    .DI(a[20]),
    .S(\blk00000001/sig0000006f ),
    .O(\blk00000001/sig00000054 )
  );
  MUXCY   \blk00000001/blk00000024  (
    .CI(\blk00000001/sig00000054 ),
    .DI(a[21]),
    .S(\blk00000001/sig0000006e ),
    .O(\blk00000001/sig00000053 )
  );
  MUXCY   \blk00000001/blk00000023  (
    .CI(\blk00000001/sig00000053 ),
    .DI(a[22]),
    .S(\blk00000001/sig0000006d ),
    .O(\blk00000001/sig00000052 )
  );
  MUXCY   \blk00000001/blk00000022  (
    .CI(\blk00000001/sig00000052 ),
    .DI(a[23]),
    .S(\blk00000001/sig0000006c ),
    .O(\blk00000001/sig00000051 )
  );
  MUXCY   \blk00000001/blk00000021  (
    .CI(\blk00000001/sig00000051 ),
    .DI(a[24]),
    .S(\blk00000001/sig0000006b ),
    .O(\blk00000001/sig00000050 )
  );
  MUXCY   \blk00000001/blk00000020  (
    .CI(\blk00000001/sig00000050 ),
    .DI(a[25]),
    .S(\blk00000001/sig0000006a ),
    .O(\blk00000001/sig0000004f )
  );
  MUXCY   \blk00000001/blk0000001f  (
    .CI(\blk00000001/sig0000004f ),
    .DI(a[26]),
    .S(\blk00000001/sig00000069 ),
    .O(\blk00000001/sig0000004e )
  );
  XORCY   \blk00000001/blk0000001e  (
    .CI(\blk00000001/sig00000068 ),
    .LI(\blk00000001/sig0000004c ),
    .O(s[1])
  );
  XORCY   \blk00000001/blk0000001d  (
    .CI(\blk00000001/sig00000067 ),
    .LI(\blk00000001/sig0000004b ),
    .O(s[2])
  );
  XORCY   \blk00000001/blk0000001c  (
    .CI(\blk00000001/sig00000066 ),
    .LI(\blk00000001/sig0000004a ),
    .O(s[3])
  );
  XORCY   \blk00000001/blk0000001b  (
    .CI(\blk00000001/sig00000065 ),
    .LI(\blk00000001/sig00000049 ),
    .O(s[4])
  );
  XORCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig00000064 ),
    .LI(\blk00000001/sig00000048 ),
    .O(s[5])
  );
  XORCY   \blk00000001/blk00000019  (
    .CI(\blk00000001/sig00000063 ),
    .LI(\blk00000001/sig00000047 ),
    .O(s[6])
  );
  XORCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig00000062 ),
    .LI(\blk00000001/sig00000046 ),
    .O(s[7])
  );
  XORCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig00000061 ),
    .LI(\blk00000001/sig00000045 ),
    .O(s[8])
  );
  XORCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig00000060 ),
    .LI(\blk00000001/sig00000044 ),
    .O(s[9])
  );
  XORCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig0000005f ),
    .LI(\blk00000001/sig00000079 ),
    .O(s[10])
  );
  XORCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig0000005e ),
    .LI(\blk00000001/sig00000078 ),
    .O(s[11])
  );
  XORCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig0000005d ),
    .LI(\blk00000001/sig00000077 ),
    .O(s[12])
  );
  XORCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig0000005c ),
    .LI(\blk00000001/sig00000076 ),
    .O(s[13])
  );
  XORCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig0000005b ),
    .LI(\blk00000001/sig00000075 ),
    .O(s[14])
  );
  XORCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig0000005a ),
    .LI(\blk00000001/sig00000074 ),
    .O(s[15])
  );
  XORCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig00000059 ),
    .LI(\blk00000001/sig00000073 ),
    .O(s[16])
  );
  XORCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig00000058 ),
    .LI(\blk00000001/sig00000072 ),
    .O(s[17])
  );
  XORCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig00000057 ),
    .LI(\blk00000001/sig00000071 ),
    .O(s[18])
  );
  XORCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig00000056 ),
    .LI(\blk00000001/sig00000070 ),
    .O(s[19])
  );
  XORCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig00000055 ),
    .LI(\blk00000001/sig0000006f ),
    .O(s[20])
  );
  XORCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig00000054 ),
    .LI(\blk00000001/sig0000006e ),
    .O(s[21])
  );
  XORCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig00000053 ),
    .LI(\blk00000001/sig0000006d ),
    .O(s[22])
  );
  XORCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig00000052 ),
    .LI(\blk00000001/sig0000006c ),
    .O(s[23])
  );
  XORCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig00000051 ),
    .LI(\blk00000001/sig0000006b ),
    .O(s[24])
  );
  XORCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig00000050 ),
    .LI(\blk00000001/sig0000006a ),
    .O(s[25])
  );
  XORCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig0000004f ),
    .LI(\blk00000001/sig00000069 ),
    .O(s[26])
  );
  XORCY   \blk00000001/blk00000004  (
    .CI(\blk00000001/sig0000004e ),
    .LI(a[27]),
    .O(s[27])
  );
  XORCY   \blk00000001/blk00000003  (
    .CI(\blk00000001/sig00000043 ),
    .LI(\blk00000001/sig0000004d ),
    .O(s[0])
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig00000043 )
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
