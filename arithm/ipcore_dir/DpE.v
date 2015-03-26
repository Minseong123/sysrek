////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: DpE.v
// /___/   /\     Timestamp: Thu Mar 26 19:06:04 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog "/home/lsriw/SR/Wojciech Gumula/repo/arithm/ipcore_dir/tmp/_cg/DpE.ngc" "/home/lsriw/SR/Wojciech Gumula/repo/arithm/ipcore_dir/tmp/_cg/DpE.v" 
// Device	: 3s500efg320-4
// Input file	: /home/lsriw/SR/Wojciech Gumula/repo/arithm/ipcore_dir/tmp/_cg/DpE.ngc
// Output file	: /home/lsriw/SR/Wojciech Gumula/repo/arithm/ipcore_dir/tmp/_cg/DpE.v
// # of Modules	: 1
// Design Name	: DpE
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

module DpE (
  clk, ce, s, a, b
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  output [14 : 0] s;
  input [7 : 0] a;
  input [13 : 0] b;
  
  // synthesis translate_off
  
  wire \blk00000001/sig0000007b ;
  wire \blk00000001/sig0000007a ;
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
  wire \blk00000001/sig00000063 ;
  wire \blk00000001/sig00000062 ;
  wire \blk00000001/sig00000061 ;
  wire \blk00000001/sig00000060 ;
  wire \blk00000001/sig0000005f ;
  wire \blk00000001/sig0000005e ;
  wire \blk00000001/sig0000005d ;
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
  wire \blk00000001/sig00000023 ;
  wire \blk00000001/sig00000022 ;
  wire \blk00000001/sig00000021 ;
  wire \blk00000001/sig00000020 ;
  wire \blk00000001/sig0000001f ;
  wire \blk00000001/sig0000001e ;
  wire \blk00000001/sig0000001d ;
  wire \blk00000001/sig0000001c ;
  wire \blk00000001/sig0000001b ;
  wire \blk00000001/sig0000001a ;
  wire \blk00000001/sig00000019 ;
  wire \NLW_blk00000001/blk00000017_O_UNCONNECTED ;
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000065  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000050 ),
    .Q(s[1])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000064  (
    .A0(\blk00000001/sig00000019 ),
    .A1(\blk00000001/sig00000019 ),
    .A2(\blk00000001/sig00000019 ),
    .A3(\blk00000001/sig00000019 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000002a ),
    .Q(\blk00000001/sig00000050 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000063  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000051 ),
    .Q(s[2])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000062  (
    .A0(\blk00000001/sig00000019 ),
    .A1(\blk00000001/sig00000019 ),
    .A2(\blk00000001/sig00000019 ),
    .A3(\blk00000001/sig00000019 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000002b ),
    .Q(\blk00000001/sig00000051 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000061  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000004f ),
    .Q(s[0])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000060  (
    .A0(\blk00000001/sig00000019 ),
    .A1(\blk00000001/sig00000019 ),
    .A2(\blk00000001/sig00000019 ),
    .A3(\blk00000001/sig00000019 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000029 ),
    .Q(\blk00000001/sig0000004f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000052 ),
    .Q(s[3])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000005e  (
    .A0(\blk00000001/sig00000019 ),
    .A1(\blk00000001/sig00000019 ),
    .A2(\blk00000001/sig00000019 ),
    .A3(\blk00000001/sig00000019 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000002c ),
    .Q(\blk00000001/sig00000052 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000053 ),
    .Q(s[4])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000005c  (
    .A0(\blk00000001/sig00000019 ),
    .A1(\blk00000001/sig00000019 ),
    .A2(\blk00000001/sig00000019 ),
    .A3(\blk00000001/sig00000019 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig00000053 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000054 ),
    .Q(s[5])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000005a  (
    .A0(\blk00000001/sig00000019 ),
    .A1(\blk00000001/sig00000019 ),
    .A2(\blk00000001/sig00000019 ),
    .A3(\blk00000001/sig00000019 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000002e ),
    .Q(\blk00000001/sig00000054 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000059  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000055 ),
    .Q(s[6])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000058  (
    .A0(\blk00000001/sig00000019 ),
    .A1(\blk00000001/sig00000019 ),
    .A2(\blk00000001/sig00000019 ),
    .A3(\blk00000001/sig00000019 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000002f ),
    .Q(\blk00000001/sig00000055 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000057  (
    .I0(\blk00000001/sig0000003f ),
    .O(\blk00000001/sig00000073 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000056  (
    .I0(\blk00000001/sig00000046 ),
    .O(\blk00000001/sig00000072 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000055  (
    .I0(\blk00000001/sig00000040 ),
    .O(\blk00000001/sig0000006c )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000054  (
    .I0(\blk00000001/sig00000041 ),
    .O(\blk00000001/sig0000006d )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000053  (
    .I0(\blk00000001/sig00000042 ),
    .O(\blk00000001/sig0000006e )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000052  (
    .I0(\blk00000001/sig00000043 ),
    .O(\blk00000001/sig0000006f )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000051  (
    .I0(\blk00000001/sig00000044 ),
    .O(\blk00000001/sig00000070 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000050  (
    .I0(\blk00000001/sig00000045 ),
    .O(\blk00000001/sig00000071 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004f  (
    .I0(b[7]),
    .I1(a[7]),
    .O(\blk00000001/sig00000037 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004e  (
    .I0(b[0]),
    .I1(a[0]),
    .O(\blk00000001/sig00000021 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004d  (
    .I0(b[8]),
    .I1(a[7]),
    .O(\blk00000001/sig00000038 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004c  (
    .I0(b[1]),
    .I1(a[1]),
    .O(\blk00000001/sig00000022 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004b  (
    .I0(b[9]),
    .I1(a[7]),
    .O(\blk00000001/sig00000039 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004a  (
    .I0(b[2]),
    .I1(a[2]),
    .O(\blk00000001/sig00000023 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000049  (
    .I0(b[10]),
    .I1(a[7]),
    .O(\blk00000001/sig0000003a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000048  (
    .I0(b[3]),
    .I1(a[3]),
    .O(\blk00000001/sig00000024 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000047  (
    .I0(b[11]),
    .I1(a[7]),
    .O(\blk00000001/sig0000003b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000046  (
    .I0(b[4]),
    .I1(a[4]),
    .O(\blk00000001/sig00000025 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000045  (
    .I0(b[12]),
    .I1(a[7]),
    .O(\blk00000001/sig0000003c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000044  (
    .I0(b[5]),
    .I1(a[5]),
    .O(\blk00000001/sig00000026 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000043  (
    .I0(b[13]),
    .I1(a[7]),
    .O(\blk00000001/sig0000003d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000042  (
    .I0(b[6]),
    .I1(a[6]),
    .O(\blk00000001/sig00000027 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000041  (
    .I0(b[13]),
    .I1(a[7]),
    .O(\blk00000001/sig0000003e )
  );
  MUXCY   \blk00000001/blk00000040  (
    .CI(\blk00000001/sig00000019 ),
    .DI(a[0]),
    .S(\blk00000001/sig00000021 ),
    .O(\blk00000001/sig0000001a )
  );
  XORCY   \blk00000001/blk0000003f  (
    .CI(\blk00000001/sig00000019 ),
    .LI(\blk00000001/sig00000021 ),
    .O(\blk00000001/sig00000029 )
  );
  XORCY   \blk00000001/blk0000003e  (
    .CI(\blk00000001/sig0000001f ),
    .LI(\blk00000001/sig00000027 ),
    .O(\blk00000001/sig0000002f )
  );
  MUXCY   \blk00000001/blk0000003d  (
    .CI(\blk00000001/sig0000001f ),
    .DI(a[6]),
    .S(\blk00000001/sig00000027 ),
    .O(\blk00000001/sig00000020 )
  );
  MUXCY   \blk00000001/blk0000003c  (
    .CI(\blk00000001/sig0000001a ),
    .DI(a[1]),
    .S(\blk00000001/sig00000022 ),
    .O(\blk00000001/sig0000001b )
  );
  XORCY   \blk00000001/blk0000003b  (
    .CI(\blk00000001/sig0000001a ),
    .LI(\blk00000001/sig00000022 ),
    .O(\blk00000001/sig0000002a )
  );
  MUXCY   \blk00000001/blk0000003a  (
    .CI(\blk00000001/sig0000001b ),
    .DI(a[2]),
    .S(\blk00000001/sig00000023 ),
    .O(\blk00000001/sig0000001c )
  );
  XORCY   \blk00000001/blk00000039  (
    .CI(\blk00000001/sig0000001b ),
    .LI(\blk00000001/sig00000023 ),
    .O(\blk00000001/sig0000002b )
  );
  MUXCY   \blk00000001/blk00000038  (
    .CI(\blk00000001/sig0000001c ),
    .DI(a[3]),
    .S(\blk00000001/sig00000024 ),
    .O(\blk00000001/sig0000001d )
  );
  XORCY   \blk00000001/blk00000037  (
    .CI(\blk00000001/sig0000001c ),
    .LI(\blk00000001/sig00000024 ),
    .O(\blk00000001/sig0000002c )
  );
  MUXCY   \blk00000001/blk00000036  (
    .CI(\blk00000001/sig0000001d ),
    .DI(a[4]),
    .S(\blk00000001/sig00000025 ),
    .O(\blk00000001/sig0000001e )
  );
  XORCY   \blk00000001/blk00000035  (
    .CI(\blk00000001/sig0000001d ),
    .LI(\blk00000001/sig00000025 ),
    .O(\blk00000001/sig0000002d )
  );
  MUXCY   \blk00000001/blk00000034  (
    .CI(\blk00000001/sig0000001e ),
    .DI(a[5]),
    .S(\blk00000001/sig00000026 ),
    .O(\blk00000001/sig0000001f )
  );
  XORCY   \blk00000001/blk00000033  (
    .CI(\blk00000001/sig0000001e ),
    .LI(\blk00000001/sig00000026 ),
    .O(\blk00000001/sig0000002e )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000032  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000020 ),
    .Q(\blk00000001/sig00000028 )
  );
  MUXCY   \blk00000001/blk00000031  (
    .CI(\blk00000001/sig00000019 ),
    .DI(a[7]),
    .S(\blk00000001/sig00000037 ),
    .O(\blk00000001/sig00000030 )
  );
  XORCY   \blk00000001/blk00000030  (
    .CI(\blk00000001/sig00000019 ),
    .LI(\blk00000001/sig00000037 ),
    .O(\blk00000001/sig00000047 )
  );
  XORCY   \blk00000001/blk0000002f  (
    .CI(\blk00000001/sig00000036 ),
    .LI(\blk00000001/sig0000003e ),
    .O(\blk00000001/sig0000004e )
  );
  MUXCY   \blk00000001/blk0000002e  (
    .CI(\blk00000001/sig00000030 ),
    .DI(a[7]),
    .S(\blk00000001/sig00000038 ),
    .O(\blk00000001/sig00000031 )
  );
  XORCY   \blk00000001/blk0000002d  (
    .CI(\blk00000001/sig00000030 ),
    .LI(\blk00000001/sig00000038 ),
    .O(\blk00000001/sig00000048 )
  );
  MUXCY   \blk00000001/blk0000002c  (
    .CI(\blk00000001/sig00000031 ),
    .DI(a[7]),
    .S(\blk00000001/sig00000039 ),
    .O(\blk00000001/sig00000032 )
  );
  XORCY   \blk00000001/blk0000002b  (
    .CI(\blk00000001/sig00000031 ),
    .LI(\blk00000001/sig00000039 ),
    .O(\blk00000001/sig00000049 )
  );
  MUXCY   \blk00000001/blk0000002a  (
    .CI(\blk00000001/sig00000032 ),
    .DI(a[7]),
    .S(\blk00000001/sig0000003a ),
    .O(\blk00000001/sig00000033 )
  );
  XORCY   \blk00000001/blk00000029  (
    .CI(\blk00000001/sig00000032 ),
    .LI(\blk00000001/sig0000003a ),
    .O(\blk00000001/sig0000004a )
  );
  MUXCY   \blk00000001/blk00000028  (
    .CI(\blk00000001/sig00000033 ),
    .DI(a[7]),
    .S(\blk00000001/sig0000003b ),
    .O(\blk00000001/sig00000034 )
  );
  XORCY   \blk00000001/blk00000027  (
    .CI(\blk00000001/sig00000033 ),
    .LI(\blk00000001/sig0000003b ),
    .O(\blk00000001/sig0000004b )
  );
  MUXCY   \blk00000001/blk00000026  (
    .CI(\blk00000001/sig00000034 ),
    .DI(a[7]),
    .S(\blk00000001/sig0000003c ),
    .O(\blk00000001/sig00000035 )
  );
  XORCY   \blk00000001/blk00000025  (
    .CI(\blk00000001/sig00000034 ),
    .LI(\blk00000001/sig0000003c ),
    .O(\blk00000001/sig0000004c )
  );
  MUXCY   \blk00000001/blk00000024  (
    .CI(\blk00000001/sig00000035 ),
    .DI(a[7]),
    .S(\blk00000001/sig0000003d ),
    .O(\blk00000001/sig00000036 )
  );
  XORCY   \blk00000001/blk00000023  (
    .CI(\blk00000001/sig00000035 ),
    .LI(\blk00000001/sig0000003d ),
    .O(\blk00000001/sig0000004d )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000022  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000047 ),
    .Q(\blk00000001/sig0000003f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000021  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000048 ),
    .Q(\blk00000001/sig00000040 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000020  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000049 ),
    .Q(\blk00000001/sig00000041 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000004a ),
    .Q(\blk00000001/sig00000042 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000004b ),
    .Q(\blk00000001/sig00000043 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000004c ),
    .Q(\blk00000001/sig00000044 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000004d ),
    .Q(\blk00000001/sig00000045 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000004e ),
    .Q(\blk00000001/sig00000046 )
  );
  MUXCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig00000028 ),
    .DI(\blk00000001/sig00000019 ),
    .S(\blk00000001/sig00000073 ),
    .O(\blk00000001/sig0000005d )
  );
  XORCY   \blk00000001/blk00000019  (
    .CI(\blk00000001/sig00000028 ),
    .LI(\blk00000001/sig00000073 ),
    .O(\blk00000001/sig00000074 )
  );
  XORCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig00000063 ),
    .LI(\blk00000001/sig00000072 ),
    .O(\blk00000001/sig0000007b )
  );
  MUXCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig00000063 ),
    .DI(\blk00000001/sig00000019 ),
    .S(\blk00000001/sig00000072 ),
    .O(\NLW_blk00000001/blk00000017_O_UNCONNECTED )
  );
  MUXCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig0000005d ),
    .DI(\blk00000001/sig00000019 ),
    .S(\blk00000001/sig0000006c ),
    .O(\blk00000001/sig0000005e )
  );
  XORCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig0000005d ),
    .LI(\blk00000001/sig0000006c ),
    .O(\blk00000001/sig00000075 )
  );
  MUXCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig0000005e ),
    .DI(\blk00000001/sig00000019 ),
    .S(\blk00000001/sig0000006d ),
    .O(\blk00000001/sig0000005f )
  );
  XORCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig0000005e ),
    .LI(\blk00000001/sig0000006d ),
    .O(\blk00000001/sig00000076 )
  );
  MUXCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig0000005f ),
    .DI(\blk00000001/sig00000019 ),
    .S(\blk00000001/sig0000006e ),
    .O(\blk00000001/sig00000060 )
  );
  XORCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig0000005f ),
    .LI(\blk00000001/sig0000006e ),
    .O(\blk00000001/sig00000077 )
  );
  MUXCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig00000060 ),
    .DI(\blk00000001/sig00000019 ),
    .S(\blk00000001/sig0000006f ),
    .O(\blk00000001/sig00000061 )
  );
  XORCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig00000060 ),
    .LI(\blk00000001/sig0000006f ),
    .O(\blk00000001/sig00000078 )
  );
  MUXCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig00000061 ),
    .DI(\blk00000001/sig00000019 ),
    .S(\blk00000001/sig00000070 ),
    .O(\blk00000001/sig00000062 )
  );
  XORCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig00000061 ),
    .LI(\blk00000001/sig00000070 ),
    .O(\blk00000001/sig00000079 )
  );
  MUXCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig00000062 ),
    .DI(\blk00000001/sig00000019 ),
    .S(\blk00000001/sig00000071 ),
    .O(\blk00000001/sig00000063 )
  );
  XORCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig00000062 ),
    .LI(\blk00000001/sig00000071 ),
    .O(\blk00000001/sig0000007a )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000074 ),
    .Q(s[7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000009  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000075 ),
    .Q(s[8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000008  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000076 ),
    .Q(s[9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000007  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000077 ),
    .Q(s[10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000006  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000078 ),
    .Q(s[11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000005  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000079 ),
    .Q(s[12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000004  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000007a ),
    .Q(s[13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000003  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000007b ),
    .Q(s[14])
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig00000019 )
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
