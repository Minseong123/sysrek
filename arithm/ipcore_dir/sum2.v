////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: sum2.v
// /___/   /\     Timestamp: Thu Apr  2 14:45:25 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/vka/Programming/VHDL/workspace/sysrek/arithm/ipcore_dir/tmp/_cg/sum2.ngc /home/vka/Programming/VHDL/workspace/sysrek/arithm/ipcore_dir/tmp/_cg/sum2.v 
// Device	: 3s500efg320-4
// Input file	: /home/vka/Programming/VHDL/workspace/sysrek/arithm/ipcore_dir/tmp/_cg/sum2.ngc
// Output file	: /home/vka/Programming/VHDL/workspace/sysrek/arithm/ipcore_dir/tmp/_cg/sum2.v
// # of Modules	: 1
// Design Name	: sum2
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

module sum2 (
  clk, ce, s, a, b
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  output [14 : 0] s;
  input [10 : 0] a;
  input [13 : 0] b;
  
  // synthesis translate_off
  
  wire \blk00000001/sig0000007e ;
  wire \blk00000001/sig0000007d ;
  wire \blk00000001/sig0000007c ;
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
  wire \blk00000001/sig00000066 ;
  wire \blk00000001/sig00000065 ;
  wire \blk00000001/sig00000064 ;
  wire \blk00000001/sig00000063 ;
  wire \blk00000001/sig00000062 ;
  wire \blk00000001/sig00000061 ;
  wire \blk00000001/sig00000060 ;
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
  wire \blk00000001/sig00000023 ;
  wire \blk00000001/sig00000022 ;
  wire \blk00000001/sig00000021 ;
  wire \blk00000001/sig00000020 ;
  wire \blk00000001/sig0000001f ;
  wire \blk00000001/sig0000001e ;
  wire \blk00000001/sig0000001d ;
  wire \blk00000001/sig0000001c ;
  wire \NLW_blk00000001/blk00000017_O_UNCONNECTED ;
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000065  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000053 ),
    .Q(s[1])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000064  (
    .A0(\blk00000001/sig0000001c ),
    .A1(\blk00000001/sig0000001c ),
    .A2(\blk00000001/sig0000001c ),
    .A3(\blk00000001/sig0000001c ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig00000053 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000063  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000054 ),
    .Q(s[2])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000062  (
    .A0(\blk00000001/sig0000001c ),
    .A1(\blk00000001/sig0000001c ),
    .A2(\blk00000001/sig0000001c ),
    .A3(\blk00000001/sig0000001c ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000002e ),
    .Q(\blk00000001/sig00000054 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000061  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000052 ),
    .Q(s[0])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000060  (
    .A0(\blk00000001/sig0000001c ),
    .A1(\blk00000001/sig0000001c ),
    .A2(\blk00000001/sig0000001c ),
    .A3(\blk00000001/sig0000001c ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000002c ),
    .Q(\blk00000001/sig00000052 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000055 ),
    .Q(s[3])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000005e  (
    .A0(\blk00000001/sig0000001c ),
    .A1(\blk00000001/sig0000001c ),
    .A2(\blk00000001/sig0000001c ),
    .A3(\blk00000001/sig0000001c ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000002f ),
    .Q(\blk00000001/sig00000055 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000056 ),
    .Q(s[4])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000005c  (
    .A0(\blk00000001/sig0000001c ),
    .A1(\blk00000001/sig0000001c ),
    .A2(\blk00000001/sig0000001c ),
    .A3(\blk00000001/sig0000001c ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000030 ),
    .Q(\blk00000001/sig00000056 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000057 ),
    .Q(s[5])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000005a  (
    .A0(\blk00000001/sig0000001c ),
    .A1(\blk00000001/sig0000001c ),
    .A2(\blk00000001/sig0000001c ),
    .A3(\blk00000001/sig0000001c ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000031 ),
    .Q(\blk00000001/sig00000057 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000059  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000058 ),
    .Q(s[6])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000058  (
    .A0(\blk00000001/sig0000001c ),
    .A1(\blk00000001/sig0000001c ),
    .A2(\blk00000001/sig0000001c ),
    .A3(\blk00000001/sig0000001c ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000032 ),
    .Q(\blk00000001/sig00000058 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000057  (
    .I0(\blk00000001/sig00000042 ),
    .O(\blk00000001/sig00000076 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000056  (
    .I0(\blk00000001/sig00000049 ),
    .O(\blk00000001/sig00000075 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000055  (
    .I0(\blk00000001/sig00000043 ),
    .O(\blk00000001/sig0000006f )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000054  (
    .I0(\blk00000001/sig00000044 ),
    .O(\blk00000001/sig00000070 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000053  (
    .I0(\blk00000001/sig00000045 ),
    .O(\blk00000001/sig00000071 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000052  (
    .I0(\blk00000001/sig00000046 ),
    .O(\blk00000001/sig00000072 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000051  (
    .I0(\blk00000001/sig00000047 ),
    .O(\blk00000001/sig00000073 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000050  (
    .I0(\blk00000001/sig00000048 ),
    .O(\blk00000001/sig00000074 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004f  (
    .I0(b[7]),
    .I1(a[7]),
    .O(\blk00000001/sig0000003a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004e  (
    .I0(b[0]),
    .I1(a[0]),
    .O(\blk00000001/sig00000024 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004d  (
    .I0(b[8]),
    .I1(a[8]),
    .O(\blk00000001/sig0000003b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004c  (
    .I0(b[1]),
    .I1(a[1]),
    .O(\blk00000001/sig00000025 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004b  (
    .I0(b[9]),
    .I1(a[9]),
    .O(\blk00000001/sig0000003c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004a  (
    .I0(b[2]),
    .I1(a[2]),
    .O(\blk00000001/sig00000026 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000049  (
    .I0(b[10]),
    .I1(a[10]),
    .O(\blk00000001/sig0000003d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000048  (
    .I0(b[3]),
    .I1(a[3]),
    .O(\blk00000001/sig00000027 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000047  (
    .I0(b[11]),
    .I1(a[10]),
    .O(\blk00000001/sig0000003e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000046  (
    .I0(b[4]),
    .I1(a[4]),
    .O(\blk00000001/sig00000028 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000045  (
    .I0(b[12]),
    .I1(a[10]),
    .O(\blk00000001/sig0000003f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000044  (
    .I0(b[5]),
    .I1(a[5]),
    .O(\blk00000001/sig00000029 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000043  (
    .I0(b[13]),
    .I1(a[10]),
    .O(\blk00000001/sig00000040 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000042  (
    .I0(b[6]),
    .I1(a[6]),
    .O(\blk00000001/sig0000002a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000041  (
    .I0(b[13]),
    .I1(a[10]),
    .O(\blk00000001/sig00000041 )
  );
  MUXCY   \blk00000001/blk00000040  (
    .CI(\blk00000001/sig0000001c ),
    .DI(a[0]),
    .S(\blk00000001/sig00000024 ),
    .O(\blk00000001/sig0000001d )
  );
  XORCY   \blk00000001/blk0000003f  (
    .CI(\blk00000001/sig0000001c ),
    .LI(\blk00000001/sig00000024 ),
    .O(\blk00000001/sig0000002c )
  );
  XORCY   \blk00000001/blk0000003e  (
    .CI(\blk00000001/sig00000022 ),
    .LI(\blk00000001/sig0000002a ),
    .O(\blk00000001/sig00000032 )
  );
  MUXCY   \blk00000001/blk0000003d  (
    .CI(\blk00000001/sig00000022 ),
    .DI(a[6]),
    .S(\blk00000001/sig0000002a ),
    .O(\blk00000001/sig00000023 )
  );
  MUXCY   \blk00000001/blk0000003c  (
    .CI(\blk00000001/sig0000001d ),
    .DI(a[1]),
    .S(\blk00000001/sig00000025 ),
    .O(\blk00000001/sig0000001e )
  );
  XORCY   \blk00000001/blk0000003b  (
    .CI(\blk00000001/sig0000001d ),
    .LI(\blk00000001/sig00000025 ),
    .O(\blk00000001/sig0000002d )
  );
  MUXCY   \blk00000001/blk0000003a  (
    .CI(\blk00000001/sig0000001e ),
    .DI(a[2]),
    .S(\blk00000001/sig00000026 ),
    .O(\blk00000001/sig0000001f )
  );
  XORCY   \blk00000001/blk00000039  (
    .CI(\blk00000001/sig0000001e ),
    .LI(\blk00000001/sig00000026 ),
    .O(\blk00000001/sig0000002e )
  );
  MUXCY   \blk00000001/blk00000038  (
    .CI(\blk00000001/sig0000001f ),
    .DI(a[3]),
    .S(\blk00000001/sig00000027 ),
    .O(\blk00000001/sig00000020 )
  );
  XORCY   \blk00000001/blk00000037  (
    .CI(\blk00000001/sig0000001f ),
    .LI(\blk00000001/sig00000027 ),
    .O(\blk00000001/sig0000002f )
  );
  MUXCY   \blk00000001/blk00000036  (
    .CI(\blk00000001/sig00000020 ),
    .DI(a[4]),
    .S(\blk00000001/sig00000028 ),
    .O(\blk00000001/sig00000021 )
  );
  XORCY   \blk00000001/blk00000035  (
    .CI(\blk00000001/sig00000020 ),
    .LI(\blk00000001/sig00000028 ),
    .O(\blk00000001/sig00000030 )
  );
  MUXCY   \blk00000001/blk00000034  (
    .CI(\blk00000001/sig00000021 ),
    .DI(a[5]),
    .S(\blk00000001/sig00000029 ),
    .O(\blk00000001/sig00000022 )
  );
  XORCY   \blk00000001/blk00000033  (
    .CI(\blk00000001/sig00000021 ),
    .LI(\blk00000001/sig00000029 ),
    .O(\blk00000001/sig00000031 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000032  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000023 ),
    .Q(\blk00000001/sig0000002b )
  );
  MUXCY   \blk00000001/blk00000031  (
    .CI(\blk00000001/sig0000001c ),
    .DI(a[7]),
    .S(\blk00000001/sig0000003a ),
    .O(\blk00000001/sig00000033 )
  );
  XORCY   \blk00000001/blk00000030  (
    .CI(\blk00000001/sig0000001c ),
    .LI(\blk00000001/sig0000003a ),
    .O(\blk00000001/sig0000004a )
  );
  XORCY   \blk00000001/blk0000002f  (
    .CI(\blk00000001/sig00000039 ),
    .LI(\blk00000001/sig00000041 ),
    .O(\blk00000001/sig00000051 )
  );
  MUXCY   \blk00000001/blk0000002e  (
    .CI(\blk00000001/sig00000033 ),
    .DI(a[8]),
    .S(\blk00000001/sig0000003b ),
    .O(\blk00000001/sig00000034 )
  );
  XORCY   \blk00000001/blk0000002d  (
    .CI(\blk00000001/sig00000033 ),
    .LI(\blk00000001/sig0000003b ),
    .O(\blk00000001/sig0000004b )
  );
  MUXCY   \blk00000001/blk0000002c  (
    .CI(\blk00000001/sig00000034 ),
    .DI(a[9]),
    .S(\blk00000001/sig0000003c ),
    .O(\blk00000001/sig00000035 )
  );
  XORCY   \blk00000001/blk0000002b  (
    .CI(\blk00000001/sig00000034 ),
    .LI(\blk00000001/sig0000003c ),
    .O(\blk00000001/sig0000004c )
  );
  MUXCY   \blk00000001/blk0000002a  (
    .CI(\blk00000001/sig00000035 ),
    .DI(a[10]),
    .S(\blk00000001/sig0000003d ),
    .O(\blk00000001/sig00000036 )
  );
  XORCY   \blk00000001/blk00000029  (
    .CI(\blk00000001/sig00000035 ),
    .LI(\blk00000001/sig0000003d ),
    .O(\blk00000001/sig0000004d )
  );
  MUXCY   \blk00000001/blk00000028  (
    .CI(\blk00000001/sig00000036 ),
    .DI(a[10]),
    .S(\blk00000001/sig0000003e ),
    .O(\blk00000001/sig00000037 )
  );
  XORCY   \blk00000001/blk00000027  (
    .CI(\blk00000001/sig00000036 ),
    .LI(\blk00000001/sig0000003e ),
    .O(\blk00000001/sig0000004e )
  );
  MUXCY   \blk00000001/blk00000026  (
    .CI(\blk00000001/sig00000037 ),
    .DI(a[10]),
    .S(\blk00000001/sig0000003f ),
    .O(\blk00000001/sig00000038 )
  );
  XORCY   \blk00000001/blk00000025  (
    .CI(\blk00000001/sig00000037 ),
    .LI(\blk00000001/sig0000003f ),
    .O(\blk00000001/sig0000004f )
  );
  MUXCY   \blk00000001/blk00000024  (
    .CI(\blk00000001/sig00000038 ),
    .DI(a[10]),
    .S(\blk00000001/sig00000040 ),
    .O(\blk00000001/sig00000039 )
  );
  XORCY   \blk00000001/blk00000023  (
    .CI(\blk00000001/sig00000038 ),
    .LI(\blk00000001/sig00000040 ),
    .O(\blk00000001/sig00000050 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000022  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000004a ),
    .Q(\blk00000001/sig00000042 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000021  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000004b ),
    .Q(\blk00000001/sig00000043 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000020  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000004c ),
    .Q(\blk00000001/sig00000044 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000004d ),
    .Q(\blk00000001/sig00000045 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000004e ),
    .Q(\blk00000001/sig00000046 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000004f ),
    .Q(\blk00000001/sig00000047 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000050 ),
    .Q(\blk00000001/sig00000048 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000051 ),
    .Q(\blk00000001/sig00000049 )
  );
  MUXCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig0000002b ),
    .DI(\blk00000001/sig0000001c ),
    .S(\blk00000001/sig00000076 ),
    .O(\blk00000001/sig00000060 )
  );
  XORCY   \blk00000001/blk00000019  (
    .CI(\blk00000001/sig0000002b ),
    .LI(\blk00000001/sig00000076 ),
    .O(\blk00000001/sig00000077 )
  );
  XORCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig00000066 ),
    .LI(\blk00000001/sig00000075 ),
    .O(\blk00000001/sig0000007e )
  );
  MUXCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig00000066 ),
    .DI(\blk00000001/sig0000001c ),
    .S(\blk00000001/sig00000075 ),
    .O(\NLW_blk00000001/blk00000017_O_UNCONNECTED )
  );
  MUXCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig00000060 ),
    .DI(\blk00000001/sig0000001c ),
    .S(\blk00000001/sig0000006f ),
    .O(\blk00000001/sig00000061 )
  );
  XORCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig00000060 ),
    .LI(\blk00000001/sig0000006f ),
    .O(\blk00000001/sig00000078 )
  );
  MUXCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig00000061 ),
    .DI(\blk00000001/sig0000001c ),
    .S(\blk00000001/sig00000070 ),
    .O(\blk00000001/sig00000062 )
  );
  XORCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig00000061 ),
    .LI(\blk00000001/sig00000070 ),
    .O(\blk00000001/sig00000079 )
  );
  MUXCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig00000062 ),
    .DI(\blk00000001/sig0000001c ),
    .S(\blk00000001/sig00000071 ),
    .O(\blk00000001/sig00000063 )
  );
  XORCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig00000062 ),
    .LI(\blk00000001/sig00000071 ),
    .O(\blk00000001/sig0000007a )
  );
  MUXCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig00000063 ),
    .DI(\blk00000001/sig0000001c ),
    .S(\blk00000001/sig00000072 ),
    .O(\blk00000001/sig00000064 )
  );
  XORCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig00000063 ),
    .LI(\blk00000001/sig00000072 ),
    .O(\blk00000001/sig0000007b )
  );
  MUXCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig00000064 ),
    .DI(\blk00000001/sig0000001c ),
    .S(\blk00000001/sig00000073 ),
    .O(\blk00000001/sig00000065 )
  );
  XORCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig00000064 ),
    .LI(\blk00000001/sig00000073 ),
    .O(\blk00000001/sig0000007c )
  );
  MUXCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig00000065 ),
    .DI(\blk00000001/sig0000001c ),
    .S(\blk00000001/sig00000074 ),
    .O(\blk00000001/sig00000066 )
  );
  XORCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig00000065 ),
    .LI(\blk00000001/sig00000074 ),
    .O(\blk00000001/sig0000007d )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000077 ),
    .Q(s[7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000009  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000078 ),
    .Q(s[8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000008  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000079 ),
    .Q(s[9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000007  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000007a ),
    .Q(s[10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000006  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000007b ),
    .Q(s[11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000005  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000007c ),
    .Q(s[12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000004  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000007d ),
    .Q(s[13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000003  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000007e ),
    .Q(s[14])
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig0000001c )
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
