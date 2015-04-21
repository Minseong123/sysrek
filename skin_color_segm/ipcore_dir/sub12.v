////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: sub12.v
// /___/   /\     Timestamp: Tue Apr 21 22:13:35 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/vka/Programming/VHDL/workspace/sysrek/skin_color_segm/ipcore_dir/tmp/_cg/sub12.ngc /home/vka/Programming/VHDL/workspace/sysrek/skin_color_segm/ipcore_dir/tmp/_cg/sub12.v 
// Device	: 6slx45csg324-2
// Input file	: /home/vka/Programming/VHDL/workspace/sysrek/skin_color_segm/ipcore_dir/tmp/_cg/sub12.ngc
// Output file	: /home/vka/Programming/VHDL/workspace/sysrek/skin_color_segm/ipcore_dir/tmp/_cg/sub12.v
// # of Modules	: 1
// Design Name	: sub12
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

module sub12 (
  clk, ce, a, b, s
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  input [11 : 0] a;
  input [11 : 0] b;
  output [11 : 0] s;
  
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
  wire \NLW_blk00000001/blk00000050_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000004e_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000004c_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000004a_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000048_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000046_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000002b_O_UNCONNECTED ;
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000051  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000069 ),
    .Q(s[1])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000050  (
    .A0(\blk00000001/sig00000063 ),
    .A1(\blk00000001/sig00000063 ),
    .A2(\blk00000001/sig00000063 ),
    .A3(\blk00000001/sig00000063 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000034 ),
    .Q(\blk00000001/sig00000069 ),
    .Q15(\NLW_blk00000001/blk00000050_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000068 ),
    .Q(s[2])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000004e  (
    .A0(\blk00000001/sig00000063 ),
    .A1(\blk00000001/sig00000063 ),
    .A2(\blk00000001/sig00000063 ),
    .A3(\blk00000001/sig00000063 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000033 ),
    .Q(\blk00000001/sig00000068 ),
    .Q15(\NLW_blk00000001/blk0000004e_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000067 ),
    .Q(s[0])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000004c  (
    .A0(\blk00000001/sig00000063 ),
    .A1(\blk00000001/sig00000063 ),
    .A2(\blk00000001/sig00000063 ),
    .A3(\blk00000001/sig00000063 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000002f ),
    .Q(\blk00000001/sig00000067 ),
    .Q15(\NLW_blk00000001/blk0000004c_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000066 ),
    .Q(s[4])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000004a  (
    .A0(\blk00000001/sig00000063 ),
    .A1(\blk00000001/sig00000063 ),
    .A2(\blk00000001/sig00000063 ),
    .A3(\blk00000001/sig00000063 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000031 ),
    .Q(\blk00000001/sig00000066 ),
    .Q15(\NLW_blk00000001/blk0000004a_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000049  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000065 ),
    .Q(s[5])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000048  (
    .A0(\blk00000001/sig00000063 ),
    .A1(\blk00000001/sig00000063 ),
    .A2(\blk00000001/sig00000063 ),
    .A3(\blk00000001/sig00000063 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000030 ),
    .Q(\blk00000001/sig00000065 ),
    .Q15(\NLW_blk00000001/blk00000048_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000047  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000064 ),
    .Q(s[3])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000046  (
    .A0(\blk00000001/sig00000063 ),
    .A1(\blk00000001/sig00000063 ),
    .A2(\blk00000001/sig00000063 ),
    .A3(\blk00000001/sig00000063 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000032 ),
    .Q(\blk00000001/sig00000064 ),
    .Q15(\NLW_blk00000001/blk00000046_Q15_UNCONNECTED )
  );
  GND   \blk00000001/blk00000045  (
    .G(\blk00000001/sig00000063 )
  );
  INV   \blk00000001/blk00000044  (
    .I(\blk00000001/sig0000002d ),
    .O(\blk00000001/sig0000005f )
  );
  INV   \blk00000001/blk00000043  (
    .I(\blk00000001/sig0000002c ),
    .O(\blk00000001/sig0000005b )
  );
  INV   \blk00000001/blk00000042  (
    .I(\blk00000001/sig0000002b ),
    .O(\blk00000001/sig0000005c )
  );
  INV   \blk00000001/blk00000041  (
    .I(\blk00000001/sig0000002a ),
    .O(\blk00000001/sig0000005d )
  );
  INV   \blk00000001/blk00000040  (
    .I(\blk00000001/sig00000029 ),
    .O(\blk00000001/sig0000005e )
  );
  INV   \blk00000001/blk0000003f  (
    .I(\blk00000001/sig00000028 ),
    .O(\blk00000001/sig00000060 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000001/blk0000003e  (
    .I0(a[11]),
    .I1(b[11]),
    .O(\blk00000001/sig0000004b )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000001/blk0000003d  (
    .I0(a[10]),
    .I1(b[10]),
    .O(\blk00000001/sig00000047 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000001/blk0000003c  (
    .I0(a[9]),
    .I1(b[9]),
    .O(\blk00000001/sig00000048 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000001/blk0000003b  (
    .I0(a[8]),
    .I1(b[8]),
    .O(\blk00000001/sig00000049 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000001/blk0000003a  (
    .I0(a[7]),
    .I1(b[7]),
    .O(\blk00000001/sig0000004a )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000001/blk00000039  (
    .I0(a[6]),
    .I1(b[6]),
    .O(\blk00000001/sig0000004c )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000001/blk00000038  (
    .I0(a[5]),
    .I1(b[5]),
    .O(\blk00000001/sig00000039 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000001/blk00000037  (
    .I0(a[4]),
    .I1(b[4]),
    .O(\blk00000001/sig00000035 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000001/blk00000036  (
    .I0(a[3]),
    .I1(b[3]),
    .O(\blk00000001/sig00000036 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000001/blk00000035  (
    .I0(a[2]),
    .I1(b[2]),
    .O(\blk00000001/sig00000037 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000001/blk00000034  (
    .I0(a[1]),
    .I1(b[1]),
    .O(\blk00000001/sig00000038 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000001/blk00000033  (
    .I0(a[0]),
    .I1(b[0]),
    .O(\blk00000001/sig0000003a )
  );
  MUXCY   \blk00000001/blk00000032  (
    .CI(\blk00000001/sig0000002e ),
    .DI(\blk00000001/sig00000027 ),
    .S(\blk00000001/sig00000060 ),
    .O(\blk00000001/sig00000062 )
  );
  XORCY   \blk00000001/blk00000031  (
    .CI(\blk00000001/sig0000002e ),
    .LI(\blk00000001/sig00000060 ),
    .O(\blk00000001/sig00000061 )
  );
  MUXCY   \blk00000001/blk00000030  (
    .CI(\blk00000001/sig00000062 ),
    .DI(\blk00000001/sig00000027 ),
    .S(\blk00000001/sig0000005e ),
    .O(\blk00000001/sig0000005a )
  );
  XORCY   \blk00000001/blk0000002f  (
    .CI(\blk00000001/sig00000062 ),
    .LI(\blk00000001/sig0000005e ),
    .O(\blk00000001/sig00000059 )
  );
  MUXCY   \blk00000001/blk0000002e  (
    .CI(\blk00000001/sig0000005a ),
    .DI(\blk00000001/sig00000027 ),
    .S(\blk00000001/sig0000005d ),
    .O(\blk00000001/sig00000058 )
  );
  XORCY   \blk00000001/blk0000002d  (
    .CI(\blk00000001/sig0000005a ),
    .LI(\blk00000001/sig0000005d ),
    .O(\blk00000001/sig00000057 )
  );
  XORCY   \blk00000001/blk0000002c  (
    .CI(\blk00000001/sig00000053 ),
    .LI(\blk00000001/sig0000005f ),
    .O(\blk00000001/sig00000056 )
  );
  MUXCY   \blk00000001/blk0000002b  (
    .CI(\blk00000001/sig00000053 ),
    .DI(\blk00000001/sig00000027 ),
    .S(\blk00000001/sig0000005f ),
    .O(\NLW_blk00000001/blk0000002b_O_UNCONNECTED )
  );
  MUXCY   \blk00000001/blk0000002a  (
    .CI(\blk00000001/sig00000058 ),
    .DI(\blk00000001/sig00000027 ),
    .S(\blk00000001/sig0000005c ),
    .O(\blk00000001/sig00000055 )
  );
  XORCY   \blk00000001/blk00000029  (
    .CI(\blk00000001/sig00000058 ),
    .LI(\blk00000001/sig0000005c ),
    .O(\blk00000001/sig00000054 )
  );
  MUXCY   \blk00000001/blk00000028  (
    .CI(\blk00000001/sig00000055 ),
    .DI(\blk00000001/sig00000027 ),
    .S(\blk00000001/sig0000005b ),
    .O(\blk00000001/sig00000053 )
  );
  XORCY   \blk00000001/blk00000027  (
    .CI(\blk00000001/sig00000055 ),
    .LI(\blk00000001/sig0000005b ),
    .O(\blk00000001/sig00000052 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000026  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000056 ),
    .Q(s[11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000025  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000052 ),
    .Q(s[10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000024  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000054 ),
    .Q(s[9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000023  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000057 ),
    .Q(s[8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000022  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000059 ),
    .Q(s[7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000021  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000061 ),
    .Q(s[6])
  );
  MUXCY   \blk00000001/blk00000020  (
    .CI(\blk00000001/sig00000027 ),
    .DI(a[6]),
    .S(\blk00000001/sig0000004c ),
    .O(\blk00000001/sig00000051 )
  );
  MUXCY   \blk00000001/blk0000001f  (
    .CI(\blk00000001/sig00000051 ),
    .DI(a[7]),
    .S(\blk00000001/sig0000004a ),
    .O(\blk00000001/sig00000050 )
  );
  MUXCY   \blk00000001/blk0000001e  (
    .CI(\blk00000001/sig00000050 ),
    .DI(a[8]),
    .S(\blk00000001/sig00000049 ),
    .O(\blk00000001/sig0000004f )
  );
  MUXCY   \blk00000001/blk0000001d  (
    .CI(\blk00000001/sig0000004f ),
    .DI(a[9]),
    .S(\blk00000001/sig00000048 ),
    .O(\blk00000001/sig0000004e )
  );
  MUXCY   \blk00000001/blk0000001c  (
    .CI(\blk00000001/sig0000004e ),
    .DI(a[10]),
    .S(\blk00000001/sig00000047 ),
    .O(\blk00000001/sig0000004d )
  );
  XORCY   \blk00000001/blk0000001b  (
    .CI(\blk00000001/sig00000051 ),
    .LI(\blk00000001/sig0000004a ),
    .O(\blk00000001/sig00000046 )
  );
  XORCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig00000050 ),
    .LI(\blk00000001/sig00000049 ),
    .O(\blk00000001/sig00000045 )
  );
  XORCY   \blk00000001/blk00000019  (
    .CI(\blk00000001/sig0000004f ),
    .LI(\blk00000001/sig00000048 ),
    .O(\blk00000001/sig00000044 )
  );
  XORCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig0000004e ),
    .LI(\blk00000001/sig00000047 ),
    .O(\blk00000001/sig00000043 )
  );
  XORCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig0000004d ),
    .LI(\blk00000001/sig0000004b ),
    .O(\blk00000001/sig00000042 )
  );
  XORCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig00000027 ),
    .LI(\blk00000001/sig0000004c ),
    .O(\blk00000001/sig00000041 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000015  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000042 ),
    .Q(\blk00000001/sig0000002d )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000014  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000043 ),
    .Q(\blk00000001/sig0000002c )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000013  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000044 ),
    .Q(\blk00000001/sig0000002b )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000012  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000045 ),
    .Q(\blk00000001/sig0000002a )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000011  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000046 ),
    .Q(\blk00000001/sig00000029 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000010  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000041 ),
    .Q(\blk00000001/sig00000028 )
  );
  FDE #(
    .INIT ( 1'b1 ))
  \blk00000001/blk0000000f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000003f ),
    .Q(\blk00000001/sig0000002e )
  );
  MUXCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig00000027 ),
    .DI(a[0]),
    .S(\blk00000001/sig0000003a ),
    .O(\blk00000001/sig00000040 )
  );
  MUXCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig0000003b ),
    .DI(a[5]),
    .S(\blk00000001/sig00000039 ),
    .O(\blk00000001/sig0000003f )
  );
  MUXCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig00000040 ),
    .DI(a[1]),
    .S(\blk00000001/sig00000038 ),
    .O(\blk00000001/sig0000003e )
  );
  MUXCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig0000003e ),
    .DI(a[2]),
    .S(\blk00000001/sig00000037 ),
    .O(\blk00000001/sig0000003d )
  );
  MUXCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig0000003d ),
    .DI(a[3]),
    .S(\blk00000001/sig00000036 ),
    .O(\blk00000001/sig0000003c )
  );
  MUXCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig0000003c ),
    .DI(a[4]),
    .S(\blk00000001/sig00000035 ),
    .O(\blk00000001/sig0000003b )
  );
  XORCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig00000040 ),
    .LI(\blk00000001/sig00000038 ),
    .O(\blk00000001/sig00000034 )
  );
  XORCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig0000003e ),
    .LI(\blk00000001/sig00000037 ),
    .O(\blk00000001/sig00000033 )
  );
  XORCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig0000003d ),
    .LI(\blk00000001/sig00000036 ),
    .O(\blk00000001/sig00000032 )
  );
  XORCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig0000003c ),
    .LI(\blk00000001/sig00000035 ),
    .O(\blk00000001/sig00000031 )
  );
  XORCY   \blk00000001/blk00000004  (
    .CI(\blk00000001/sig0000003b ),
    .LI(\blk00000001/sig00000039 ),
    .O(\blk00000001/sig00000030 )
  );
  XORCY   \blk00000001/blk00000003  (
    .CI(\blk00000001/sig00000027 ),
    .LI(\blk00000001/sig0000003a ),
    .O(\blk00000001/sig0000002f )
  );
  VCC   \blk00000001/blk00000002  (
    .P(\blk00000001/sig00000027 )
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
