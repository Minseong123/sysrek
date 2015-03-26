////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: EpF.v
// /___/   /\     Timestamp: Thu Mar 26 20:57:03 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/vka/Programming/VHDL/workspace/sysrek/arithm/ipcore_dir/tmp/_cg/EpF.ngc /home/vka/Programming/VHDL/workspace/sysrek/arithm/ipcore_dir/tmp/_cg/EpF.v 
// Device	: 3s500efg320-4
// Input file	: /home/vka/Programming/VHDL/workspace/sysrek/arithm/ipcore_dir/tmp/_cg/EpF.ngc
// Output file	: /home/vka/Programming/VHDL/workspace/sysrek/arithm/ipcore_dir/tmp/_cg/EpF.v
// # of Modules	: 1
// Design Name	: EpF
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

module EpF (
  clk, ce, s, a, b
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  output [19 : 0] s;
  input [18 : 0] a;
  input [18 : 0] b;
  
  // synthesis translate_off
  
  wire \blk00000001/sig000000aa ;
  wire \blk00000001/sig000000a9 ;
  wire \blk00000001/sig000000a8 ;
  wire \blk00000001/sig000000a7 ;
  wire \blk00000001/sig000000a6 ;
  wire \blk00000001/sig000000a5 ;
  wire \blk00000001/sig000000a4 ;
  wire \blk00000001/sig000000a3 ;
  wire \blk00000001/sig000000a2 ;
  wire \blk00000001/sig000000a1 ;
  wire \blk00000001/sig000000a0 ;
  wire \blk00000001/sig0000009f ;
  wire \blk00000001/sig0000009e ;
  wire \blk00000001/sig0000009d ;
  wire \blk00000001/sig0000009c ;
  wire \blk00000001/sig0000009b ;
  wire \blk00000001/sig0000009a ;
  wire \blk00000001/sig00000099 ;
  wire \blk00000001/sig00000098 ;
  wire \blk00000001/sig00000097 ;
  wire \blk00000001/sig0000008c ;
  wire \blk00000001/sig0000008b ;
  wire \blk00000001/sig0000008a ;
  wire \blk00000001/sig00000089 ;
  wire \blk00000001/sig00000088 ;
  wire \blk00000001/sig00000087 ;
  wire \blk00000001/sig00000086 ;
  wire \blk00000001/sig00000085 ;
  wire \blk00000001/sig00000084 ;
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
  wire \NLW_blk00000001/blk0000001d_O_UNCONNECTED ;
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000084  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000070 ),
    .Q(s[0])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000083  (
    .A0(\blk00000001/sig00000029 ),
    .A1(\blk00000001/sig00000029 ),
    .A2(\blk00000001/sig00000029 ),
    .A3(\blk00000001/sig00000029 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000003f ),
    .Q(\blk00000001/sig00000070 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000082  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000072 ),
    .Q(s[1])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000081  (
    .A0(\blk00000001/sig00000029 ),
    .A1(\blk00000001/sig00000029 ),
    .A2(\blk00000001/sig00000029 ),
    .A3(\blk00000001/sig00000029 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000040 ),
    .Q(\blk00000001/sig00000072 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000080  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000074 ),
    .Q(s[3])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007f  (
    .A0(\blk00000001/sig00000029 ),
    .A1(\blk00000001/sig00000029 ),
    .A2(\blk00000001/sig00000029 ),
    .A3(\blk00000001/sig00000029 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000042 ),
    .Q(\blk00000001/sig00000074 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000075 ),
    .Q(s[4])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007d  (
    .A0(\blk00000001/sig00000029 ),
    .A1(\blk00000001/sig00000029 ),
    .A2(\blk00000001/sig00000029 ),
    .A3(\blk00000001/sig00000029 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000043 ),
    .Q(\blk00000001/sig00000075 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000073 ),
    .Q(s[2])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007b  (
    .A0(\blk00000001/sig00000029 ),
    .A1(\blk00000001/sig00000029 ),
    .A2(\blk00000001/sig00000029 ),
    .A3(\blk00000001/sig00000029 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000041 ),
    .Q(\blk00000001/sig00000073 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000076 ),
    .Q(s[5])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000079  (
    .A0(\blk00000001/sig00000029 ),
    .A1(\blk00000001/sig00000029 ),
    .A2(\blk00000001/sig00000029 ),
    .A3(\blk00000001/sig00000029 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000044 ),
    .Q(\blk00000001/sig00000076 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000078  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000077 ),
    .Q(s[6])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000077  (
    .A0(\blk00000001/sig00000029 ),
    .A1(\blk00000001/sig00000029 ),
    .A2(\blk00000001/sig00000029 ),
    .A3(\blk00000001/sig00000029 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000045 ),
    .Q(\blk00000001/sig00000077 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000076  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000079 ),
    .Q(s[8])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000075  (
    .A0(\blk00000001/sig00000029 ),
    .A1(\blk00000001/sig00000029 ),
    .A2(\blk00000001/sig00000029 ),
    .A3(\blk00000001/sig00000029 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000047 ),
    .Q(\blk00000001/sig00000079 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000074  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000071 ),
    .Q(s[9])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000073  (
    .A0(\blk00000001/sig00000029 ),
    .A1(\blk00000001/sig00000029 ),
    .A2(\blk00000001/sig00000029 ),
    .A3(\blk00000001/sig00000029 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000048 ),
    .Q(\blk00000001/sig00000071 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000072  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000078 ),
    .Q(s[7])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000071  (
    .A0(\blk00000001/sig00000029 ),
    .A1(\blk00000001/sig00000029 ),
    .A2(\blk00000001/sig00000029 ),
    .A3(\blk00000001/sig00000029 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000046 ),
    .Q(\blk00000001/sig00000078 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000070  (
    .I0(\blk00000001/sig0000005c ),
    .O(\blk00000001/sig000000a0 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000006f  (
    .I0(\blk00000001/sig0000005d ),
    .O(\blk00000001/sig0000009f )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000006e  (
    .I0(\blk00000001/sig0000005e ),
    .O(\blk00000001/sig00000097 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000006d  (
    .I0(\blk00000001/sig0000005f ),
    .O(\blk00000001/sig00000098 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000006c  (
    .I0(\blk00000001/sig00000060 ),
    .O(\blk00000001/sig00000099 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000006b  (
    .I0(\blk00000001/sig00000061 ),
    .O(\blk00000001/sig0000009a )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000006a  (
    .I0(\blk00000001/sig00000062 ),
    .O(\blk00000001/sig0000009b )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000069  (
    .I0(\blk00000001/sig00000063 ),
    .O(\blk00000001/sig0000009c )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000068  (
    .I0(\blk00000001/sig00000064 ),
    .O(\blk00000001/sig0000009d )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000067  (
    .I0(\blk00000001/sig00000065 ),
    .O(\blk00000001/sig0000009e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000066  (
    .I0(b[0]),
    .I1(a[0]),
    .O(\blk00000001/sig00000034 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000065  (
    .I0(b[10]),
    .I1(a[10]),
    .O(\blk00000001/sig00000052 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000064  (
    .I0(b[1]),
    .I1(a[1]),
    .O(\blk00000001/sig00000035 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000063  (
    .I0(b[11]),
    .I1(a[11]),
    .O(\blk00000001/sig00000053 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000062  (
    .I0(b[2]),
    .I1(a[2]),
    .O(\blk00000001/sig00000036 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000061  (
    .I0(b[12]),
    .I1(a[12]),
    .O(\blk00000001/sig00000054 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000060  (
    .I0(b[3]),
    .I1(a[3]),
    .O(\blk00000001/sig00000037 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005f  (
    .I0(b[13]),
    .I1(a[13]),
    .O(\blk00000001/sig00000055 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005e  (
    .I0(b[4]),
    .I1(a[4]),
    .O(\blk00000001/sig00000038 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005d  (
    .I0(b[14]),
    .I1(a[14]),
    .O(\blk00000001/sig00000056 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005c  (
    .I0(b[5]),
    .I1(a[5]),
    .O(\blk00000001/sig00000039 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005b  (
    .I0(b[15]),
    .I1(a[15]),
    .O(\blk00000001/sig00000057 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005a  (
    .I0(b[6]),
    .I1(a[6]),
    .O(\blk00000001/sig0000003a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000059  (
    .I0(b[16]),
    .I1(a[16]),
    .O(\blk00000001/sig00000058 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000058  (
    .I0(b[7]),
    .I1(a[7]),
    .O(\blk00000001/sig0000003b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000057  (
    .I0(b[17]),
    .I1(a[17]),
    .O(\blk00000001/sig00000059 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000056  (
    .I0(b[8]),
    .I1(a[8]),
    .O(\blk00000001/sig0000003c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000055  (
    .I0(b[18]),
    .I1(a[18]),
    .O(\blk00000001/sig0000005a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000054  (
    .I0(b[9]),
    .I1(a[9]),
    .O(\blk00000001/sig0000003d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000053  (
    .I0(b[18]),
    .I1(a[18]),
    .O(\blk00000001/sig0000005b )
  );
  MUXCY   \blk00000001/blk00000052  (
    .CI(\blk00000001/sig00000029 ),
    .DI(a[0]),
    .S(\blk00000001/sig00000034 ),
    .O(\blk00000001/sig0000002a )
  );
  XORCY   \blk00000001/blk00000051  (
    .CI(\blk00000001/sig00000029 ),
    .LI(\blk00000001/sig00000034 ),
    .O(\blk00000001/sig0000003f )
  );
  XORCY   \blk00000001/blk00000050  (
    .CI(\blk00000001/sig00000032 ),
    .LI(\blk00000001/sig0000003d ),
    .O(\blk00000001/sig00000048 )
  );
  MUXCY   \blk00000001/blk0000004f  (
    .CI(\blk00000001/sig00000032 ),
    .DI(a[9]),
    .S(\blk00000001/sig0000003d ),
    .O(\blk00000001/sig00000033 )
  );
  MUXCY   \blk00000001/blk0000004e  (
    .CI(\blk00000001/sig0000002a ),
    .DI(a[1]),
    .S(\blk00000001/sig00000035 ),
    .O(\blk00000001/sig0000002b )
  );
  XORCY   \blk00000001/blk0000004d  (
    .CI(\blk00000001/sig0000002a ),
    .LI(\blk00000001/sig00000035 ),
    .O(\blk00000001/sig00000040 )
  );
  MUXCY   \blk00000001/blk0000004c  (
    .CI(\blk00000001/sig0000002b ),
    .DI(a[2]),
    .S(\blk00000001/sig00000036 ),
    .O(\blk00000001/sig0000002c )
  );
  XORCY   \blk00000001/blk0000004b  (
    .CI(\blk00000001/sig0000002b ),
    .LI(\blk00000001/sig00000036 ),
    .O(\blk00000001/sig00000041 )
  );
  MUXCY   \blk00000001/blk0000004a  (
    .CI(\blk00000001/sig0000002c ),
    .DI(a[3]),
    .S(\blk00000001/sig00000037 ),
    .O(\blk00000001/sig0000002d )
  );
  XORCY   \blk00000001/blk00000049  (
    .CI(\blk00000001/sig0000002c ),
    .LI(\blk00000001/sig00000037 ),
    .O(\blk00000001/sig00000042 )
  );
  MUXCY   \blk00000001/blk00000048  (
    .CI(\blk00000001/sig0000002d ),
    .DI(a[4]),
    .S(\blk00000001/sig00000038 ),
    .O(\blk00000001/sig0000002e )
  );
  XORCY   \blk00000001/blk00000047  (
    .CI(\blk00000001/sig0000002d ),
    .LI(\blk00000001/sig00000038 ),
    .O(\blk00000001/sig00000043 )
  );
  MUXCY   \blk00000001/blk00000046  (
    .CI(\blk00000001/sig0000002e ),
    .DI(a[5]),
    .S(\blk00000001/sig00000039 ),
    .O(\blk00000001/sig0000002f )
  );
  XORCY   \blk00000001/blk00000045  (
    .CI(\blk00000001/sig0000002e ),
    .LI(\blk00000001/sig00000039 ),
    .O(\blk00000001/sig00000044 )
  );
  MUXCY   \blk00000001/blk00000044  (
    .CI(\blk00000001/sig0000002f ),
    .DI(a[6]),
    .S(\blk00000001/sig0000003a ),
    .O(\blk00000001/sig00000030 )
  );
  XORCY   \blk00000001/blk00000043  (
    .CI(\blk00000001/sig0000002f ),
    .LI(\blk00000001/sig0000003a ),
    .O(\blk00000001/sig00000045 )
  );
  MUXCY   \blk00000001/blk00000042  (
    .CI(\blk00000001/sig00000030 ),
    .DI(a[7]),
    .S(\blk00000001/sig0000003b ),
    .O(\blk00000001/sig00000031 )
  );
  XORCY   \blk00000001/blk00000041  (
    .CI(\blk00000001/sig00000030 ),
    .LI(\blk00000001/sig0000003b ),
    .O(\blk00000001/sig00000046 )
  );
  MUXCY   \blk00000001/blk00000040  (
    .CI(\blk00000001/sig00000031 ),
    .DI(a[8]),
    .S(\blk00000001/sig0000003c ),
    .O(\blk00000001/sig00000032 )
  );
  XORCY   \blk00000001/blk0000003f  (
    .CI(\blk00000001/sig00000031 ),
    .LI(\blk00000001/sig0000003c ),
    .O(\blk00000001/sig00000047 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000033 ),
    .Q(\blk00000001/sig0000003e )
  );
  MUXCY   \blk00000001/blk0000003d  (
    .CI(\blk00000001/sig00000029 ),
    .DI(a[10]),
    .S(\blk00000001/sig00000052 ),
    .O(\blk00000001/sig00000049 )
  );
  XORCY   \blk00000001/blk0000003c  (
    .CI(\blk00000001/sig00000029 ),
    .LI(\blk00000001/sig00000052 ),
    .O(\blk00000001/sig00000066 )
  );
  XORCY   \blk00000001/blk0000003b  (
    .CI(\blk00000001/sig00000051 ),
    .LI(\blk00000001/sig0000005b ),
    .O(\blk00000001/sig0000006f )
  );
  MUXCY   \blk00000001/blk0000003a  (
    .CI(\blk00000001/sig00000049 ),
    .DI(a[11]),
    .S(\blk00000001/sig00000053 ),
    .O(\blk00000001/sig0000004a )
  );
  XORCY   \blk00000001/blk00000039  (
    .CI(\blk00000001/sig00000049 ),
    .LI(\blk00000001/sig00000053 ),
    .O(\blk00000001/sig00000067 )
  );
  MUXCY   \blk00000001/blk00000038  (
    .CI(\blk00000001/sig0000004a ),
    .DI(a[12]),
    .S(\blk00000001/sig00000054 ),
    .O(\blk00000001/sig0000004b )
  );
  XORCY   \blk00000001/blk00000037  (
    .CI(\blk00000001/sig0000004a ),
    .LI(\blk00000001/sig00000054 ),
    .O(\blk00000001/sig00000068 )
  );
  MUXCY   \blk00000001/blk00000036  (
    .CI(\blk00000001/sig0000004b ),
    .DI(a[13]),
    .S(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig0000004c )
  );
  XORCY   \blk00000001/blk00000035  (
    .CI(\blk00000001/sig0000004b ),
    .LI(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig00000069 )
  );
  MUXCY   \blk00000001/blk00000034  (
    .CI(\blk00000001/sig0000004c ),
    .DI(a[14]),
    .S(\blk00000001/sig00000056 ),
    .O(\blk00000001/sig0000004d )
  );
  XORCY   \blk00000001/blk00000033  (
    .CI(\blk00000001/sig0000004c ),
    .LI(\blk00000001/sig00000056 ),
    .O(\blk00000001/sig0000006a )
  );
  MUXCY   \blk00000001/blk00000032  (
    .CI(\blk00000001/sig0000004d ),
    .DI(a[15]),
    .S(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig0000004e )
  );
  XORCY   \blk00000001/blk00000031  (
    .CI(\blk00000001/sig0000004d ),
    .LI(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig0000006b )
  );
  MUXCY   \blk00000001/blk00000030  (
    .CI(\blk00000001/sig0000004e ),
    .DI(a[16]),
    .S(\blk00000001/sig00000058 ),
    .O(\blk00000001/sig0000004f )
  );
  XORCY   \blk00000001/blk0000002f  (
    .CI(\blk00000001/sig0000004e ),
    .LI(\blk00000001/sig00000058 ),
    .O(\blk00000001/sig0000006c )
  );
  MUXCY   \blk00000001/blk0000002e  (
    .CI(\blk00000001/sig0000004f ),
    .DI(a[17]),
    .S(\blk00000001/sig00000059 ),
    .O(\blk00000001/sig00000050 )
  );
  XORCY   \blk00000001/blk0000002d  (
    .CI(\blk00000001/sig0000004f ),
    .LI(\blk00000001/sig00000059 ),
    .O(\blk00000001/sig0000006d )
  );
  MUXCY   \blk00000001/blk0000002c  (
    .CI(\blk00000001/sig00000050 ),
    .DI(a[18]),
    .S(\blk00000001/sig0000005a ),
    .O(\blk00000001/sig00000051 )
  );
  XORCY   \blk00000001/blk0000002b  (
    .CI(\blk00000001/sig00000050 ),
    .LI(\blk00000001/sig0000005a ),
    .O(\blk00000001/sig0000006e )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000066 ),
    .Q(\blk00000001/sig0000005c )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000029  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000067 ),
    .Q(\blk00000001/sig0000005e )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000028  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000068 ),
    .Q(\blk00000001/sig0000005f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000027  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000069 ),
    .Q(\blk00000001/sig00000060 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000026  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000006a ),
    .Q(\blk00000001/sig00000061 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000025  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000006b ),
    .Q(\blk00000001/sig00000062 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000024  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000006c ),
    .Q(\blk00000001/sig00000063 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000023  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000006d ),
    .Q(\blk00000001/sig00000064 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000022  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000006e ),
    .Q(\blk00000001/sig00000065 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000021  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000006f ),
    .Q(\blk00000001/sig0000005d )
  );
  MUXCY   \blk00000001/blk00000020  (
    .CI(\blk00000001/sig0000003e ),
    .DI(\blk00000001/sig00000029 ),
    .S(\blk00000001/sig000000a0 ),
    .O(\blk00000001/sig00000084 )
  );
  XORCY   \blk00000001/blk0000001f  (
    .CI(\blk00000001/sig0000003e ),
    .LI(\blk00000001/sig000000a0 ),
    .O(\blk00000001/sig000000a1 )
  );
  XORCY   \blk00000001/blk0000001e  (
    .CI(\blk00000001/sig0000008c ),
    .LI(\blk00000001/sig0000009f ),
    .O(\blk00000001/sig000000aa )
  );
  MUXCY   \blk00000001/blk0000001d  (
    .CI(\blk00000001/sig0000008c ),
    .DI(\blk00000001/sig00000029 ),
    .S(\blk00000001/sig0000009f ),
    .O(\NLW_blk00000001/blk0000001d_O_UNCONNECTED )
  );
  MUXCY   \blk00000001/blk0000001c  (
    .CI(\blk00000001/sig00000084 ),
    .DI(\blk00000001/sig00000029 ),
    .S(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig00000085 )
  );
  XORCY   \blk00000001/blk0000001b  (
    .CI(\blk00000001/sig00000084 ),
    .LI(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig000000a2 )
  );
  MUXCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig00000085 ),
    .DI(\blk00000001/sig00000029 ),
    .S(\blk00000001/sig00000098 ),
    .O(\blk00000001/sig00000086 )
  );
  XORCY   \blk00000001/blk00000019  (
    .CI(\blk00000001/sig00000085 ),
    .LI(\blk00000001/sig00000098 ),
    .O(\blk00000001/sig000000a3 )
  );
  MUXCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig00000086 ),
    .DI(\blk00000001/sig00000029 ),
    .S(\blk00000001/sig00000099 ),
    .O(\blk00000001/sig00000087 )
  );
  XORCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig00000086 ),
    .LI(\blk00000001/sig00000099 ),
    .O(\blk00000001/sig000000a4 )
  );
  MUXCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig00000087 ),
    .DI(\blk00000001/sig00000029 ),
    .S(\blk00000001/sig0000009a ),
    .O(\blk00000001/sig00000088 )
  );
  XORCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig00000087 ),
    .LI(\blk00000001/sig0000009a ),
    .O(\blk00000001/sig000000a5 )
  );
  MUXCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig00000088 ),
    .DI(\blk00000001/sig00000029 ),
    .S(\blk00000001/sig0000009b ),
    .O(\blk00000001/sig00000089 )
  );
  XORCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig00000088 ),
    .LI(\blk00000001/sig0000009b ),
    .O(\blk00000001/sig000000a6 )
  );
  MUXCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig00000089 ),
    .DI(\blk00000001/sig00000029 ),
    .S(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig0000008a )
  );
  XORCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig00000089 ),
    .LI(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig000000a7 )
  );
  MUXCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig0000008a ),
    .DI(\blk00000001/sig00000029 ),
    .S(\blk00000001/sig0000009d ),
    .O(\blk00000001/sig0000008b )
  );
  XORCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig0000008a ),
    .LI(\blk00000001/sig0000009d ),
    .O(\blk00000001/sig000000a8 )
  );
  MUXCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig0000008b ),
    .DI(\blk00000001/sig00000029 ),
    .S(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig0000008c )
  );
  XORCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig0000008b ),
    .LI(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig000000a9 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a1 ),
    .Q(s[10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a2 ),
    .Q(s[11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a3 ),
    .Q(s[12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000009  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a4 ),
    .Q(s[13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000008  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a5 ),
    .Q(s[14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000007  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a6 ),
    .Q(s[15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000006  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a7 ),
    .Q(s[16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000005  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a8 ),
    .Q(s[17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000004  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a9 ),
    .Q(s[18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000003  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000aa ),
    .Q(s[19])
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig00000029 )
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
