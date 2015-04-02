////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: sum1.v
// /___/   /\     Timestamp: Thu Apr  2 14:23:05 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/vka/Programming/VHDL/workspace/sysrek/arithm/ipcore_dir/tmp/_cg/sum1.ngc /home/vka/Programming/VHDL/workspace/sysrek/arithm/ipcore_dir/tmp/_cg/sum1.v 
// Device	: 3s500efg320-4
// Input file	: /home/vka/Programming/VHDL/workspace/sysrek/arithm/ipcore_dir/tmp/_cg/sum1.ngc
// Output file	: /home/vka/Programming/VHDL/workspace/sysrek/arithm/ipcore_dir/tmp/_cg/sum1.v
// # of Modules	: 1
// Design Name	: sum1
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

module sum1 (
  clk, ce, s, a, b
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  output [18 : 0] s;
  input [17 : 0] a;
  input [12 : 0] b;
  
  // synthesis translate_off
  
  wire \blk00000001/sig0000009e ;
  wire \blk00000001/sig0000009d ;
  wire \blk00000001/sig0000009c ;
  wire \blk00000001/sig0000009b ;
  wire \blk00000001/sig0000009a ;
  wire \blk00000001/sig00000099 ;
  wire \blk00000001/sig00000098 ;
  wire \blk00000001/sig00000097 ;
  wire \blk00000001/sig00000096 ;
  wire \blk00000001/sig00000095 ;
  wire \blk00000001/sig00000094 ;
  wire \blk00000001/sig00000093 ;
  wire \blk00000001/sig00000092 ;
  wire \blk00000001/sig00000091 ;
  wire \blk00000001/sig00000090 ;
  wire \blk00000001/sig0000008f ;
  wire \blk00000001/sig0000008e ;
  wire \blk00000001/sig0000008d ;
  wire \blk00000001/sig0000008c ;
  wire \blk00000001/sig0000008b ;
  wire \blk00000001/sig00000080 ;
  wire \blk00000001/sig0000007f ;
  wire \blk00000001/sig0000007e ;
  wire \blk00000001/sig0000007d ;
  wire \blk00000001/sig0000007c ;
  wire \blk00000001/sig0000007b ;
  wire \blk00000001/sig0000007a ;
  wire \blk00000001/sig00000079 ;
  wire \blk00000001/sig00000078 ;
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
  wire \blk00000001/sig00000028 ;
  wire \blk00000001/sig00000027 ;
  wire \blk00000001/sig00000026 ;
  wire \blk00000001/sig00000025 ;
  wire \blk00000001/sig00000024 ;
  wire \blk00000001/sig00000023 ;
  wire \blk00000001/sig00000022 ;
  wire \NLW_blk00000001/blk0000001d_O_UNCONNECTED ;
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000066 ),
    .Q(s[0])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007e  (
    .A0(\blk00000001/sig00000022 ),
    .A1(\blk00000001/sig00000022 ),
    .A2(\blk00000001/sig00000022 ),
    .A3(\blk00000001/sig00000022 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000036 ),
    .Q(\blk00000001/sig00000066 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000067 ),
    .Q(s[1])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007c  (
    .A0(\blk00000001/sig00000022 ),
    .A1(\blk00000001/sig00000022 ),
    .A2(\blk00000001/sig00000022 ),
    .A3(\blk00000001/sig00000022 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000037 ),
    .Q(\blk00000001/sig00000067 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000068 ),
    .Q(s[2])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007a  (
    .A0(\blk00000001/sig00000022 ),
    .A1(\blk00000001/sig00000022 ),
    .A2(\blk00000001/sig00000022 ),
    .A3(\blk00000001/sig00000022 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000038 ),
    .Q(\blk00000001/sig00000068 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000079  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000069 ),
    .Q(s[3])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000078  (
    .A0(\blk00000001/sig00000022 ),
    .A1(\blk00000001/sig00000022 ),
    .A2(\blk00000001/sig00000022 ),
    .A3(\blk00000001/sig00000022 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000039 ),
    .Q(\blk00000001/sig00000069 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000077  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000006a ),
    .Q(s[4])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000076  (
    .A0(\blk00000001/sig00000022 ),
    .A1(\blk00000001/sig00000022 ),
    .A2(\blk00000001/sig00000022 ),
    .A3(\blk00000001/sig00000022 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000003a ),
    .Q(\blk00000001/sig0000006a )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000075  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000006b ),
    .Q(s[5])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000074  (
    .A0(\blk00000001/sig00000022 ),
    .A1(\blk00000001/sig00000022 ),
    .A2(\blk00000001/sig00000022 ),
    .A3(\blk00000001/sig00000022 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000003b ),
    .Q(\blk00000001/sig0000006b )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000073  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000006d ),
    .Q(s[7])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000072  (
    .A0(\blk00000001/sig00000022 ),
    .A1(\blk00000001/sig00000022 ),
    .A2(\blk00000001/sig00000022 ),
    .A3(\blk00000001/sig00000022 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000003d ),
    .Q(\blk00000001/sig0000006d )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000071  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000006e ),
    .Q(s[8])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000070  (
    .A0(\blk00000001/sig00000022 ),
    .A1(\blk00000001/sig00000022 ),
    .A2(\blk00000001/sig00000022 ),
    .A3(\blk00000001/sig00000022 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000003e ),
    .Q(\blk00000001/sig0000006e )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000006f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000006c ),
    .Q(s[6])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000006e  (
    .A0(\blk00000001/sig00000022 ),
    .A1(\blk00000001/sig00000022 ),
    .A2(\blk00000001/sig00000022 ),
    .A3(\blk00000001/sig00000022 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000003c ),
    .Q(\blk00000001/sig0000006c )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000006d  (
    .I0(\blk00000001/sig00000052 ),
    .O(\blk00000001/sig00000094 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000006c  (
    .I0(\blk00000001/sig00000053 ),
    .O(\blk00000001/sig00000093 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000006b  (
    .I0(\blk00000001/sig00000054 ),
    .O(\blk00000001/sig0000008b )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000006a  (
    .I0(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig0000008c )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000069  (
    .I0(\blk00000001/sig00000056 ),
    .O(\blk00000001/sig0000008d )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000068  (
    .I0(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig0000008e )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000067  (
    .I0(\blk00000001/sig00000058 ),
    .O(\blk00000001/sig0000008f )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000066  (
    .I0(\blk00000001/sig00000059 ),
    .O(\blk00000001/sig00000090 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000065  (
    .I0(\blk00000001/sig0000005a ),
    .O(\blk00000001/sig00000091 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000064  (
    .I0(\blk00000001/sig0000005b ),
    .O(\blk00000001/sig00000092 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000063  (
    .I0(b[9]),
    .I1(a[9]),
    .O(\blk00000001/sig00000048 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000062  (
    .I0(b[0]),
    .I1(a[0]),
    .O(\blk00000001/sig0000002c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000061  (
    .I0(b[10]),
    .I1(a[10]),
    .O(\blk00000001/sig00000049 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000060  (
    .I0(b[1]),
    .I1(a[1]),
    .O(\blk00000001/sig0000002d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005f  (
    .I0(b[11]),
    .I1(a[11]),
    .O(\blk00000001/sig0000004a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005e  (
    .I0(b[2]),
    .I1(a[2]),
    .O(\blk00000001/sig0000002e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005d  (
    .I0(b[12]),
    .I1(a[12]),
    .O(\blk00000001/sig0000004b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005c  (
    .I0(b[3]),
    .I1(a[3]),
    .O(\blk00000001/sig0000002f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005b  (
    .I0(b[12]),
    .I1(a[13]),
    .O(\blk00000001/sig0000004c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005a  (
    .I0(b[4]),
    .I1(a[4]),
    .O(\blk00000001/sig00000030 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000059  (
    .I0(b[12]),
    .I1(a[14]),
    .O(\blk00000001/sig0000004d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000058  (
    .I0(b[5]),
    .I1(a[5]),
    .O(\blk00000001/sig00000031 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000057  (
    .I0(b[12]),
    .I1(a[15]),
    .O(\blk00000001/sig0000004e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000056  (
    .I0(b[6]),
    .I1(a[6]),
    .O(\blk00000001/sig00000032 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000055  (
    .I0(b[12]),
    .I1(a[16]),
    .O(\blk00000001/sig0000004f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000054  (
    .I0(b[7]),
    .I1(a[7]),
    .O(\blk00000001/sig00000033 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000053  (
    .I0(b[12]),
    .I1(a[17]),
    .O(\blk00000001/sig00000050 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000052  (
    .I0(b[8]),
    .I1(a[8]),
    .O(\blk00000001/sig00000034 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000051  (
    .I0(b[12]),
    .I1(a[17]),
    .O(\blk00000001/sig00000051 )
  );
  MUXCY   \blk00000001/blk00000050  (
    .CI(\blk00000001/sig00000022 ),
    .DI(a[0]),
    .S(\blk00000001/sig0000002c ),
    .O(\blk00000001/sig00000023 )
  );
  XORCY   \blk00000001/blk0000004f  (
    .CI(\blk00000001/sig00000022 ),
    .LI(\blk00000001/sig0000002c ),
    .O(\blk00000001/sig00000036 )
  );
  XORCY   \blk00000001/blk0000004e  (
    .CI(\blk00000001/sig0000002a ),
    .LI(\blk00000001/sig00000034 ),
    .O(\blk00000001/sig0000003e )
  );
  MUXCY   \blk00000001/blk0000004d  (
    .CI(\blk00000001/sig0000002a ),
    .DI(a[8]),
    .S(\blk00000001/sig00000034 ),
    .O(\blk00000001/sig0000002b )
  );
  MUXCY   \blk00000001/blk0000004c  (
    .CI(\blk00000001/sig00000023 ),
    .DI(a[1]),
    .S(\blk00000001/sig0000002d ),
    .O(\blk00000001/sig00000024 )
  );
  XORCY   \blk00000001/blk0000004b  (
    .CI(\blk00000001/sig00000023 ),
    .LI(\blk00000001/sig0000002d ),
    .O(\blk00000001/sig00000037 )
  );
  MUXCY   \blk00000001/blk0000004a  (
    .CI(\blk00000001/sig00000024 ),
    .DI(a[2]),
    .S(\blk00000001/sig0000002e ),
    .O(\blk00000001/sig00000025 )
  );
  XORCY   \blk00000001/blk00000049  (
    .CI(\blk00000001/sig00000024 ),
    .LI(\blk00000001/sig0000002e ),
    .O(\blk00000001/sig00000038 )
  );
  MUXCY   \blk00000001/blk00000048  (
    .CI(\blk00000001/sig00000025 ),
    .DI(a[3]),
    .S(\blk00000001/sig0000002f ),
    .O(\blk00000001/sig00000026 )
  );
  XORCY   \blk00000001/blk00000047  (
    .CI(\blk00000001/sig00000025 ),
    .LI(\blk00000001/sig0000002f ),
    .O(\blk00000001/sig00000039 )
  );
  MUXCY   \blk00000001/blk00000046  (
    .CI(\blk00000001/sig00000026 ),
    .DI(a[4]),
    .S(\blk00000001/sig00000030 ),
    .O(\blk00000001/sig00000027 )
  );
  XORCY   \blk00000001/blk00000045  (
    .CI(\blk00000001/sig00000026 ),
    .LI(\blk00000001/sig00000030 ),
    .O(\blk00000001/sig0000003a )
  );
  MUXCY   \blk00000001/blk00000044  (
    .CI(\blk00000001/sig00000027 ),
    .DI(a[5]),
    .S(\blk00000001/sig00000031 ),
    .O(\blk00000001/sig00000028 )
  );
  XORCY   \blk00000001/blk00000043  (
    .CI(\blk00000001/sig00000027 ),
    .LI(\blk00000001/sig00000031 ),
    .O(\blk00000001/sig0000003b )
  );
  MUXCY   \blk00000001/blk00000042  (
    .CI(\blk00000001/sig00000028 ),
    .DI(a[6]),
    .S(\blk00000001/sig00000032 ),
    .O(\blk00000001/sig00000029 )
  );
  XORCY   \blk00000001/blk00000041  (
    .CI(\blk00000001/sig00000028 ),
    .LI(\blk00000001/sig00000032 ),
    .O(\blk00000001/sig0000003c )
  );
  MUXCY   \blk00000001/blk00000040  (
    .CI(\blk00000001/sig00000029 ),
    .DI(a[7]),
    .S(\blk00000001/sig00000033 ),
    .O(\blk00000001/sig0000002a )
  );
  XORCY   \blk00000001/blk0000003f  (
    .CI(\blk00000001/sig00000029 ),
    .LI(\blk00000001/sig00000033 ),
    .O(\blk00000001/sig0000003d )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000002b ),
    .Q(\blk00000001/sig00000035 )
  );
  MUXCY   \blk00000001/blk0000003d  (
    .CI(\blk00000001/sig00000022 ),
    .DI(a[9]),
    .S(\blk00000001/sig00000048 ),
    .O(\blk00000001/sig0000003f )
  );
  XORCY   \blk00000001/blk0000003c  (
    .CI(\blk00000001/sig00000022 ),
    .LI(\blk00000001/sig00000048 ),
    .O(\blk00000001/sig0000005c )
  );
  XORCY   \blk00000001/blk0000003b  (
    .CI(\blk00000001/sig00000047 ),
    .LI(\blk00000001/sig00000051 ),
    .O(\blk00000001/sig00000065 )
  );
  MUXCY   \blk00000001/blk0000003a  (
    .CI(\blk00000001/sig0000003f ),
    .DI(a[10]),
    .S(\blk00000001/sig00000049 ),
    .O(\blk00000001/sig00000040 )
  );
  XORCY   \blk00000001/blk00000039  (
    .CI(\blk00000001/sig0000003f ),
    .LI(\blk00000001/sig00000049 ),
    .O(\blk00000001/sig0000005d )
  );
  MUXCY   \blk00000001/blk00000038  (
    .CI(\blk00000001/sig00000040 ),
    .DI(a[11]),
    .S(\blk00000001/sig0000004a ),
    .O(\blk00000001/sig00000041 )
  );
  XORCY   \blk00000001/blk00000037  (
    .CI(\blk00000001/sig00000040 ),
    .LI(\blk00000001/sig0000004a ),
    .O(\blk00000001/sig0000005e )
  );
  MUXCY   \blk00000001/blk00000036  (
    .CI(\blk00000001/sig00000041 ),
    .DI(a[12]),
    .S(\blk00000001/sig0000004b ),
    .O(\blk00000001/sig00000042 )
  );
  XORCY   \blk00000001/blk00000035  (
    .CI(\blk00000001/sig00000041 ),
    .LI(\blk00000001/sig0000004b ),
    .O(\blk00000001/sig0000005f )
  );
  MUXCY   \blk00000001/blk00000034  (
    .CI(\blk00000001/sig00000042 ),
    .DI(a[13]),
    .S(\blk00000001/sig0000004c ),
    .O(\blk00000001/sig00000043 )
  );
  XORCY   \blk00000001/blk00000033  (
    .CI(\blk00000001/sig00000042 ),
    .LI(\blk00000001/sig0000004c ),
    .O(\blk00000001/sig00000060 )
  );
  MUXCY   \blk00000001/blk00000032  (
    .CI(\blk00000001/sig00000043 ),
    .DI(a[14]),
    .S(\blk00000001/sig0000004d ),
    .O(\blk00000001/sig00000044 )
  );
  XORCY   \blk00000001/blk00000031  (
    .CI(\blk00000001/sig00000043 ),
    .LI(\blk00000001/sig0000004d ),
    .O(\blk00000001/sig00000061 )
  );
  MUXCY   \blk00000001/blk00000030  (
    .CI(\blk00000001/sig00000044 ),
    .DI(a[15]),
    .S(\blk00000001/sig0000004e ),
    .O(\blk00000001/sig00000045 )
  );
  XORCY   \blk00000001/blk0000002f  (
    .CI(\blk00000001/sig00000044 ),
    .LI(\blk00000001/sig0000004e ),
    .O(\blk00000001/sig00000062 )
  );
  MUXCY   \blk00000001/blk0000002e  (
    .CI(\blk00000001/sig00000045 ),
    .DI(a[16]),
    .S(\blk00000001/sig0000004f ),
    .O(\blk00000001/sig00000046 )
  );
  XORCY   \blk00000001/blk0000002d  (
    .CI(\blk00000001/sig00000045 ),
    .LI(\blk00000001/sig0000004f ),
    .O(\blk00000001/sig00000063 )
  );
  MUXCY   \blk00000001/blk0000002c  (
    .CI(\blk00000001/sig00000046 ),
    .DI(a[17]),
    .S(\blk00000001/sig00000050 ),
    .O(\blk00000001/sig00000047 )
  );
  XORCY   \blk00000001/blk0000002b  (
    .CI(\blk00000001/sig00000046 ),
    .LI(\blk00000001/sig00000050 ),
    .O(\blk00000001/sig00000064 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000005c ),
    .Q(\blk00000001/sig00000052 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000029  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000005d ),
    .Q(\blk00000001/sig00000054 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000028  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000005e ),
    .Q(\blk00000001/sig00000055 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000027  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000005f ),
    .Q(\blk00000001/sig00000056 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000026  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000060 ),
    .Q(\blk00000001/sig00000057 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000025  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000061 ),
    .Q(\blk00000001/sig00000058 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000024  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000062 ),
    .Q(\blk00000001/sig00000059 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000023  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000063 ),
    .Q(\blk00000001/sig0000005a )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000022  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000064 ),
    .Q(\blk00000001/sig0000005b )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000021  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000065 ),
    .Q(\blk00000001/sig00000053 )
  );
  MUXCY   \blk00000001/blk00000020  (
    .CI(\blk00000001/sig00000035 ),
    .DI(\blk00000001/sig00000022 ),
    .S(\blk00000001/sig00000094 ),
    .O(\blk00000001/sig00000078 )
  );
  XORCY   \blk00000001/blk0000001f  (
    .CI(\blk00000001/sig00000035 ),
    .LI(\blk00000001/sig00000094 ),
    .O(\blk00000001/sig00000095 )
  );
  XORCY   \blk00000001/blk0000001e  (
    .CI(\blk00000001/sig00000080 ),
    .LI(\blk00000001/sig00000093 ),
    .O(\blk00000001/sig0000009e )
  );
  MUXCY   \blk00000001/blk0000001d  (
    .CI(\blk00000001/sig00000080 ),
    .DI(\blk00000001/sig00000022 ),
    .S(\blk00000001/sig00000093 ),
    .O(\NLW_blk00000001/blk0000001d_O_UNCONNECTED )
  );
  MUXCY   \blk00000001/blk0000001c  (
    .CI(\blk00000001/sig00000078 ),
    .DI(\blk00000001/sig00000022 ),
    .S(\blk00000001/sig0000008b ),
    .O(\blk00000001/sig00000079 )
  );
  XORCY   \blk00000001/blk0000001b  (
    .CI(\blk00000001/sig00000078 ),
    .LI(\blk00000001/sig0000008b ),
    .O(\blk00000001/sig00000096 )
  );
  MUXCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig00000079 ),
    .DI(\blk00000001/sig00000022 ),
    .S(\blk00000001/sig0000008c ),
    .O(\blk00000001/sig0000007a )
  );
  XORCY   \blk00000001/blk00000019  (
    .CI(\blk00000001/sig00000079 ),
    .LI(\blk00000001/sig0000008c ),
    .O(\blk00000001/sig00000097 )
  );
  MUXCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig0000007a ),
    .DI(\blk00000001/sig00000022 ),
    .S(\blk00000001/sig0000008d ),
    .O(\blk00000001/sig0000007b )
  );
  XORCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig0000007a ),
    .LI(\blk00000001/sig0000008d ),
    .O(\blk00000001/sig00000098 )
  );
  MUXCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig0000007b ),
    .DI(\blk00000001/sig00000022 ),
    .S(\blk00000001/sig0000008e ),
    .O(\blk00000001/sig0000007c )
  );
  XORCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig0000007b ),
    .LI(\blk00000001/sig0000008e ),
    .O(\blk00000001/sig00000099 )
  );
  MUXCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig0000007c ),
    .DI(\blk00000001/sig00000022 ),
    .S(\blk00000001/sig0000008f ),
    .O(\blk00000001/sig0000007d )
  );
  XORCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig0000007c ),
    .LI(\blk00000001/sig0000008f ),
    .O(\blk00000001/sig0000009a )
  );
  MUXCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig0000007d ),
    .DI(\blk00000001/sig00000022 ),
    .S(\blk00000001/sig00000090 ),
    .O(\blk00000001/sig0000007e )
  );
  XORCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig0000007d ),
    .LI(\blk00000001/sig00000090 ),
    .O(\blk00000001/sig0000009b )
  );
  MUXCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig0000007e ),
    .DI(\blk00000001/sig00000022 ),
    .S(\blk00000001/sig00000091 ),
    .O(\blk00000001/sig0000007f )
  );
  XORCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig0000007e ),
    .LI(\blk00000001/sig00000091 ),
    .O(\blk00000001/sig0000009c )
  );
  MUXCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig0000007f ),
    .DI(\blk00000001/sig00000022 ),
    .S(\blk00000001/sig00000092 ),
    .O(\blk00000001/sig00000080 )
  );
  XORCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig0000007f ),
    .LI(\blk00000001/sig00000092 ),
    .O(\blk00000001/sig0000009d )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000095 ),
    .Q(s[9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000096 ),
    .Q(s[10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000097 ),
    .Q(s[11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000009  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000098 ),
    .Q(s[12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000008  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000099 ),
    .Q(s[13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000007  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000009a ),
    .Q(s[14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000006  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000009b ),
    .Q(s[15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000005  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000009c ),
    .Q(s[16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000004  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000009d ),
    .Q(s[17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000003  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000009e ),
    .Q(s[18])
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig00000022 )
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
