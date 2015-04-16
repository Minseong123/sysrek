////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: sum.v
// /___/   /\     Timestamp: Thu Apr 16 19:09:33 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog "/home/lsriw/SR/Wojciech Gumula/repo/skin_color_segm/ipcore_dir/tmp/_cg/sum.ngc" "/home/lsriw/SR/Wojciech Gumula/repo/skin_color_segm/ipcore_dir/tmp/_cg/sum.v" 
// Device	: 6slx45csg324-2
// Input file	: /home/lsriw/SR/Wojciech Gumula/repo/skin_color_segm/ipcore_dir/tmp/_cg/sum.ngc
// Output file	: /home/lsriw/SR/Wojciech Gumula/repo/skin_color_segm/ipcore_dir/tmp/_cg/sum.v
// # of Modules	: 1
// Design Name	: sum
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

module sum (
  clk, ce, a, b, s
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  input [10 : 0] a;
  input [10 : 0] b;
  output [10 : 0] s;
  
  // synthesis translate_off
  
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
  wire \blk00000001/sig00000040 ;
  wire \blk00000001/sig0000003f ;
  wire \blk00000001/sig0000003e ;
  wire \blk00000001/sig0000003d ;
  wire \blk00000001/sig0000003c ;
  wire \blk00000001/sig0000003b ;
  wire \blk00000001/sig0000003a ;
  wire \blk00000001/sig00000039 ;
  wire \blk00000001/sig00000038 ;
  wire \blk00000001/sig00000037 ;
  wire \blk00000001/sig00000036 ;
  wire \blk00000001/sig00000035 ;
  wire \blk00000001/sig00000034 ;
  wire \blk00000001/sig00000033 ;
  wire \blk00000001/sig00000032 ;
  wire \blk00000001/sig00000031 ;
  wire \blk00000001/sig00000030 ;
  wire \blk00000001/sig0000002f ;
  wire \blk00000001/sig0000002e ;
  wire \blk00000001/sig0000002d ;
  wire \blk00000001/sig0000002c ;
  wire \blk00000001/sig0000002b ;
  wire \blk00000001/sig0000002a ;
  wire \blk00000001/sig00000029 ;
  wire \blk00000001/sig00000028 ;
  wire \blk00000001/sig00000027 ;
  wire \blk00000001/sig00000026 ;
  wire \blk00000001/sig00000025 ;
  wire \blk00000001/sig00000024 ;
  wire \NLW_blk00000001/blk0000004a_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000048_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000046_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000044_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000042_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000029_O_UNCONNECTED ;
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000061 ),
    .Q(s[0])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000004a  (
    .A0(\blk00000001/sig00000024 ),
    .A1(\blk00000001/sig00000024 ),
    .A2(\blk00000001/sig00000024 ),
    .A3(\blk00000001/sig00000024 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000002c ),
    .Q(\blk00000001/sig00000061 ),
    .Q15(\NLW_blk00000001/blk0000004a_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000049  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000060 ),
    .Q(s[1])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000048  (
    .A0(\blk00000001/sig00000024 ),
    .A1(\blk00000001/sig00000024 ),
    .A2(\blk00000001/sig00000024 ),
    .A3(\blk00000001/sig00000024 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000030 ),
    .Q(\blk00000001/sig00000060 ),
    .Q15(\NLW_blk00000001/blk00000048_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000047  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000005f ),
    .Q(s[3])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000046  (
    .A0(\blk00000001/sig00000024 ),
    .A1(\blk00000001/sig00000024 ),
    .A2(\blk00000001/sig00000024 ),
    .A3(\blk00000001/sig00000024 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000002e ),
    .Q(\blk00000001/sig0000005f ),
    .Q15(\NLW_blk00000001/blk00000046_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000045  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000005e ),
    .Q(s[4])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000044  (
    .A0(\blk00000001/sig00000024 ),
    .A1(\blk00000001/sig00000024 ),
    .A2(\blk00000001/sig00000024 ),
    .A3(\blk00000001/sig00000024 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig0000005e ),
    .Q15(\NLW_blk00000001/blk00000044_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000043  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000005d ),
    .Q(s[2])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000042  (
    .A0(\blk00000001/sig00000024 ),
    .A1(\blk00000001/sig00000024 ),
    .A2(\blk00000001/sig00000024 ),
    .A3(\blk00000001/sig00000024 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000002f ),
    .Q(\blk00000001/sig0000005d ),
    .Q15(\NLW_blk00000001/blk00000042_Q15_UNCONNECTED )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000041  (
    .I0(\blk00000001/sig00000025 ),
    .O(\blk00000001/sig0000005c )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000040  (
    .I0(\blk00000001/sig00000026 ),
    .O(\blk00000001/sig0000005b )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000003f  (
    .I0(\blk00000001/sig00000027 ),
    .O(\blk00000001/sig0000005a )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000003e  (
    .I0(\blk00000001/sig0000002a ),
    .O(\blk00000001/sig00000059 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000003d  (
    .I0(\blk00000001/sig00000028 ),
    .O(\blk00000001/sig00000058 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000003c  (
    .I0(\blk00000001/sig00000029 ),
    .O(\blk00000001/sig00000057 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003b  (
    .I0(a[10]),
    .I1(b[10]),
    .O(\blk00000001/sig00000045 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003a  (
    .I0(a[9]),
    .I1(b[9]),
    .O(\blk00000001/sig00000041 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000039  (
    .I0(a[8]),
    .I1(b[8]),
    .O(\blk00000001/sig00000042 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000038  (
    .I0(a[7]),
    .I1(b[7]),
    .O(\blk00000001/sig00000043 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000037  (
    .I0(a[6]),
    .I1(b[6]),
    .O(\blk00000001/sig00000044 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000036  (
    .I0(a[5]),
    .I1(b[5]),
    .O(\blk00000001/sig00000046 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000035  (
    .I0(a[4]),
    .I1(b[4]),
    .O(\blk00000001/sig00000034 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000034  (
    .I0(a[3]),
    .I1(b[3]),
    .O(\blk00000001/sig00000031 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000033  (
    .I0(a[2]),
    .I1(b[2]),
    .O(\blk00000001/sig00000032 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000032  (
    .I0(a[1]),
    .I1(b[1]),
    .O(\blk00000001/sig00000033 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000031  (
    .I0(a[0]),
    .I1(b[0]),
    .O(\blk00000001/sig00000035 )
  );
  MUXCY   \blk00000001/blk00000030  (
    .CI(\blk00000001/sig0000002b ),
    .DI(\blk00000001/sig00000024 ),
    .S(\blk00000001/sig0000005c ),
    .O(\blk00000001/sig00000056 )
  );
  XORCY   \blk00000001/blk0000002f  (
    .CI(\blk00000001/sig0000002b ),
    .LI(\blk00000001/sig0000005c ),
    .O(\blk00000001/sig00000055 )
  );
  MUXCY   \blk00000001/blk0000002e  (
    .CI(\blk00000001/sig00000056 ),
    .DI(\blk00000001/sig00000024 ),
    .S(\blk00000001/sig0000005b ),
    .O(\blk00000001/sig00000054 )
  );
  XORCY   \blk00000001/blk0000002d  (
    .CI(\blk00000001/sig00000056 ),
    .LI(\blk00000001/sig0000005b ),
    .O(\blk00000001/sig00000053 )
  );
  MUXCY   \blk00000001/blk0000002c  (
    .CI(\blk00000001/sig00000054 ),
    .DI(\blk00000001/sig00000024 ),
    .S(\blk00000001/sig0000005a ),
    .O(\blk00000001/sig00000052 )
  );
  XORCY   \blk00000001/blk0000002b  (
    .CI(\blk00000001/sig00000054 ),
    .LI(\blk00000001/sig0000005a ),
    .O(\blk00000001/sig00000051 )
  );
  XORCY   \blk00000001/blk0000002a  (
    .CI(\blk00000001/sig0000004d ),
    .LI(\blk00000001/sig00000059 ),
    .O(\blk00000001/sig00000050 )
  );
  MUXCY   \blk00000001/blk00000029  (
    .CI(\blk00000001/sig0000004d ),
    .DI(\blk00000001/sig00000024 ),
    .S(\blk00000001/sig00000059 ),
    .O(\NLW_blk00000001/blk00000029_O_UNCONNECTED )
  );
  MUXCY   \blk00000001/blk00000028  (
    .CI(\blk00000001/sig00000052 ),
    .DI(\blk00000001/sig00000024 ),
    .S(\blk00000001/sig00000058 ),
    .O(\blk00000001/sig0000004f )
  );
  XORCY   \blk00000001/blk00000027  (
    .CI(\blk00000001/sig00000052 ),
    .LI(\blk00000001/sig00000058 ),
    .O(\blk00000001/sig0000004e )
  );
  MUXCY   \blk00000001/blk00000026  (
    .CI(\blk00000001/sig0000004f ),
    .DI(\blk00000001/sig00000024 ),
    .S(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig0000004d )
  );
  XORCY   \blk00000001/blk00000025  (
    .CI(\blk00000001/sig0000004f ),
    .LI(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig0000004c )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000024  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000050 ),
    .Q(s[10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000023  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000004c ),
    .Q(s[9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000022  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000004e ),
    .Q(s[8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000021  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000051 ),
    .Q(s[7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000020  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000053 ),
    .Q(s[6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000055 ),
    .Q(s[5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000003b ),
    .Q(\blk00000001/sig00000025 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000040 ),
    .Q(\blk00000001/sig00000026 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000003f ),
    .Q(\blk00000001/sig00000027 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000003e ),
    .Q(\blk00000001/sig00000028 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000003d ),
    .Q(\blk00000001/sig00000029 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000019  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000003c ),
    .Q(\blk00000001/sig0000002a )
  );
  MUXCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig00000024 ),
    .DI(a[5]),
    .S(\blk00000001/sig00000046 ),
    .O(\blk00000001/sig0000004b )
  );
  MUXCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig0000004b ),
    .DI(a[6]),
    .S(\blk00000001/sig00000044 ),
    .O(\blk00000001/sig0000004a )
  );
  MUXCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig0000004a ),
    .DI(a[7]),
    .S(\blk00000001/sig00000043 ),
    .O(\blk00000001/sig00000049 )
  );
  MUXCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig00000049 ),
    .DI(a[8]),
    .S(\blk00000001/sig00000042 ),
    .O(\blk00000001/sig00000048 )
  );
  MUXCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig00000048 ),
    .DI(a[9]),
    .S(\blk00000001/sig00000041 ),
    .O(\blk00000001/sig00000047 )
  );
  XORCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig0000004b ),
    .LI(\blk00000001/sig00000044 ),
    .O(\blk00000001/sig00000040 )
  );
  XORCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig0000004a ),
    .LI(\blk00000001/sig00000043 ),
    .O(\blk00000001/sig0000003f )
  );
  XORCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig00000049 ),
    .LI(\blk00000001/sig00000042 ),
    .O(\blk00000001/sig0000003e )
  );
  XORCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig00000048 ),
    .LI(\blk00000001/sig00000041 ),
    .O(\blk00000001/sig0000003d )
  );
  XORCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig00000047 ),
    .LI(\blk00000001/sig00000045 ),
    .O(\blk00000001/sig0000003c )
  );
  XORCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig00000024 ),
    .LI(\blk00000001/sig00000046 ),
    .O(\blk00000001/sig0000003b )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000039 ),
    .Q(\blk00000001/sig0000002b )
  );
  MUXCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig00000024 ),
    .DI(a[0]),
    .S(\blk00000001/sig00000035 ),
    .O(\blk00000001/sig0000003a )
  );
  MUXCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig00000036 ),
    .DI(a[4]),
    .S(\blk00000001/sig00000034 ),
    .O(\blk00000001/sig00000039 )
  );
  MUXCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig0000003a ),
    .DI(a[1]),
    .S(\blk00000001/sig00000033 ),
    .O(\blk00000001/sig00000038 )
  );
  MUXCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig00000038 ),
    .DI(a[2]),
    .S(\blk00000001/sig00000032 ),
    .O(\blk00000001/sig00000037 )
  );
  MUXCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig00000037 ),
    .DI(a[3]),
    .S(\blk00000001/sig00000031 ),
    .O(\blk00000001/sig00000036 )
  );
  XORCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig0000003a ),
    .LI(\blk00000001/sig00000033 ),
    .O(\blk00000001/sig00000030 )
  );
  XORCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig00000038 ),
    .LI(\blk00000001/sig00000032 ),
    .O(\blk00000001/sig0000002f )
  );
  XORCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig00000037 ),
    .LI(\blk00000001/sig00000031 ),
    .O(\blk00000001/sig0000002e )
  );
  XORCY   \blk00000001/blk00000004  (
    .CI(\blk00000001/sig00000036 ),
    .LI(\blk00000001/sig00000034 ),
    .O(\blk00000001/sig0000002d )
  );
  XORCY   \blk00000001/blk00000003  (
    .CI(\blk00000001/sig00000024 ),
    .LI(\blk00000001/sig00000035 ),
    .O(\blk00000001/sig0000002c )
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig00000024 )
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
