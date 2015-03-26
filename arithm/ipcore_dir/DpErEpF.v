////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: DpErEpF.v
// /___/   /\     Timestamp: Thu Mar 26 19:13:09 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog "/home/lsriw/SR/Wojciech Gumula/repo/arithm/ipcore_dir/tmp/_cg/DpErEpF.ngc" "/home/lsriw/SR/Wojciech Gumula/repo/arithm/ipcore_dir/tmp/_cg/DpErEpF.v" 
// Device	: 3s500efg320-4
// Input file	: /home/lsriw/SR/Wojciech Gumula/repo/arithm/ipcore_dir/tmp/_cg/DpErEpF.ngc
// Output file	: /home/lsriw/SR/Wojciech Gumula/repo/arithm/ipcore_dir/tmp/_cg/DpErEpF.v
// # of Modules	: 1
// Design Name	: DpErEpF
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

module DpErEpF (
  clk, p, a, b
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  output [34 : 0] p;
  input [14 : 0] a;
  input [19 : 0] b;
  
  // synthesis translate_off
  
  wire \blk00000001/sig000000bf ;
  wire \blk00000001/sig000000be ;
  wire \blk00000001/sig000000bd ;
  wire \blk00000001/sig000000bc ;
  wire \blk00000001/sig000000bb ;
  wire \blk00000001/sig000000ba ;
  wire \blk00000001/sig000000b9 ;
  wire \blk00000001/sig000000b8 ;
  wire \blk00000001/sig000000b7 ;
  wire \blk00000001/sig000000b6 ;
  wire \blk00000001/sig000000b5 ;
  wire \blk00000001/sig000000b4 ;
  wire \blk00000001/sig000000b3 ;
  wire \blk00000001/sig000000b2 ;
  wire \blk00000001/sig000000b1 ;
  wire \blk00000001/sig000000b0 ;
  wire \blk00000001/sig000000af ;
  wire \blk00000001/sig000000ae ;
  wire \blk00000001/sig000000ad ;
  wire \blk00000001/sig000000ac ;
  wire \blk00000001/sig000000ab ;
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
  wire \blk00000001/sig0000008a ;
  wire \blk00000001/sig00000089 ;
  wire \blk00000001/sig00000088 ;
  wire \blk00000001/sig00000087 ;
  wire \blk00000001/sig00000086 ;
  wire \blk00000001/sig00000085 ;
  wire \blk00000001/sig00000084 ;
  wire \blk00000001/sig00000083 ;
  wire \blk00000001/sig00000082 ;
  wire \blk00000001/sig00000081 ;
  wire \blk00000001/sig00000080 ;
  wire \blk00000001/sig0000007f ;
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
  wire \NLW_blk00000001/blk00000005_P<35>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<34>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<33>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<32>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<35>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<34>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<33>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<32>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<31>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<30>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<29>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<28>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<27>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<26>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<25>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<24>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<23>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<22>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<21>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<20>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<19>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<18>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<0>_UNCONNECTED ;
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000008f  (
    .C(clk),
    .D(\blk00000001/sig00000025 ),
    .Q(p[0])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000008e  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig0000005b ),
    .Q(\blk00000001/sig00000025 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000008d  (
    .C(clk),
    .D(\blk00000001/sig00000026 ),
    .Q(p[1])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000008c  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig00000066 ),
    .Q(\blk00000001/sig00000026 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000008b  (
    .C(clk),
    .D(\blk00000001/sig0000002e ),
    .Q(p[2])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000008a  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig00000071 ),
    .Q(\blk00000001/sig0000002e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000089  (
    .C(clk),
    .D(\blk00000001/sig0000002f ),
    .Q(p[3])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000088  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig00000074 ),
    .Q(\blk00000001/sig0000002f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000087  (
    .C(clk),
    .D(\blk00000001/sig00000030 ),
    .Q(p[4])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000086  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig00000075 ),
    .Q(\blk00000001/sig00000030 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000085  (
    .C(clk),
    .D(\blk00000001/sig00000031 ),
    .Q(p[5])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000084  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig00000076 ),
    .Q(\blk00000001/sig00000031 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000083  (
    .C(clk),
    .D(\blk00000001/sig00000032 ),
    .Q(p[6])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000082  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig00000077 ),
    .Q(\blk00000001/sig00000032 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000081  (
    .C(clk),
    .D(\blk00000001/sig00000033 ),
    .Q(p[7])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000080  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig00000078 ),
    .Q(\blk00000001/sig00000033 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007f  (
    .C(clk),
    .D(\blk00000001/sig00000034 ),
    .Q(p[8])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007e  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig00000079 ),
    .Q(\blk00000001/sig00000034 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007d  (
    .C(clk),
    .D(\blk00000001/sig00000035 ),
    .Q(p[9])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007c  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig0000007a ),
    .Q(\blk00000001/sig00000035 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007b  (
    .C(clk),
    .D(\blk00000001/sig00000027 ),
    .Q(p[10])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007a  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig0000005c ),
    .Q(\blk00000001/sig00000027 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000079  (
    .C(clk),
    .D(\blk00000001/sig00000028 ),
    .Q(p[11])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000078  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig0000005d ),
    .Q(\blk00000001/sig00000028 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000077  (
    .C(clk),
    .D(\blk00000001/sig00000029 ),
    .Q(p[12])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000076  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig0000005e ),
    .Q(\blk00000001/sig00000029 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000075  (
    .C(clk),
    .D(\blk00000001/sig0000002a ),
    .Q(p[13])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000074  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig0000005f ),
    .Q(\blk00000001/sig0000002a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000073  (
    .C(clk),
    .D(\blk00000001/sig0000002c ),
    .Q(p[15])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000072  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig00000061 ),
    .Q(\blk00000001/sig0000002c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000071  (
    .C(clk),
    .D(\blk00000001/sig0000002d ),
    .Q(p[16])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000070  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig00000062 ),
    .Q(\blk00000001/sig0000002d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000006f  (
    .C(clk),
    .D(\blk00000001/sig0000002b ),
    .Q(p[14])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000006e  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig00000060 ),
    .Q(\blk00000001/sig0000002b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000006d  (
    .C(clk),
    .D(\blk00000001/sig00000063 ),
    .Q(\blk00000001/sig0000008d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000006c  (
    .C(clk),
    .D(\blk00000001/sig00000064 ),
    .Q(\blk00000001/sig0000008e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000006b  (
    .C(clk),
    .D(\blk00000001/sig00000065 ),
    .Q(\blk00000001/sig0000008f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000006a  (
    .C(clk),
    .D(\blk00000001/sig00000067 ),
    .Q(\blk00000001/sig00000090 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000069  (
    .C(clk),
    .D(\blk00000001/sig00000068 ),
    .Q(\blk00000001/sig00000091 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000068  (
    .C(clk),
    .D(\blk00000001/sig00000069 ),
    .Q(\blk00000001/sig00000092 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000067  (
    .C(clk),
    .D(\blk00000001/sig0000006a ),
    .Q(\blk00000001/sig00000093 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000066  (
    .C(clk),
    .D(\blk00000001/sig0000006b ),
    .Q(\blk00000001/sig00000094 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000065  (
    .C(clk),
    .D(\blk00000001/sig0000006c ),
    .Q(\blk00000001/sig00000095 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000064  (
    .C(clk),
    .D(\blk00000001/sig0000006d ),
    .Q(\blk00000001/sig00000096 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000063  (
    .C(clk),
    .D(\blk00000001/sig0000006e ),
    .Q(\blk00000001/sig00000097 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000062  (
    .C(clk),
    .D(\blk00000001/sig0000006f ),
    .Q(\blk00000001/sig00000098 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000061  (
    .C(clk),
    .D(\blk00000001/sig00000070 ),
    .Q(\blk00000001/sig00000099 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000060  (
    .C(clk),
    .D(\blk00000001/sig00000072 ),
    .Q(\blk00000001/sig0000009a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005f  (
    .C(clk),
    .D(\blk00000001/sig00000073 ),
    .Q(\blk00000001/sig0000009b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005e  (
    .C(clk),
    .D(\blk00000001/sig0000007b ),
    .Q(\blk00000001/sig0000009c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005d  (
    .C(clk),
    .D(\blk00000001/sig00000084 ),
    .Q(\blk00000001/sig0000009d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005c  (
    .C(clk),
    .D(\blk00000001/sig00000085 ),
    .Q(\blk00000001/sig000000a6 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005b  (
    .C(clk),
    .D(\blk00000001/sig00000086 ),
    .Q(\blk00000001/sig000000a7 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005a  (
    .C(clk),
    .D(\blk00000001/sig00000087 ),
    .Q(\blk00000001/sig000000a8 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000059  (
    .C(clk),
    .D(\blk00000001/sig00000088 ),
    .Q(\blk00000001/sig000000a9 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000058  (
    .C(clk),
    .D(\blk00000001/sig00000089 ),
    .Q(\blk00000001/sig000000aa )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000057  (
    .C(clk),
    .D(\blk00000001/sig0000008a ),
    .Q(\blk00000001/sig000000ab )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000056  (
    .C(clk),
    .D(\blk00000001/sig0000008b ),
    .Q(\blk00000001/sig000000ac )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000055  (
    .C(clk),
    .D(\blk00000001/sig0000008c ),
    .Q(\blk00000001/sig000000ad )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000054  (
    .C(clk),
    .D(\blk00000001/sig0000007c ),
    .Q(\blk00000001/sig0000009e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000053  (
    .C(clk),
    .D(\blk00000001/sig0000007d ),
    .Q(\blk00000001/sig0000009f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000052  (
    .C(clk),
    .D(\blk00000001/sig0000007e ),
    .Q(\blk00000001/sig000000a0 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000051  (
    .C(clk),
    .D(\blk00000001/sig0000007f ),
    .Q(\blk00000001/sig000000a1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000050  (
    .C(clk),
    .D(\blk00000001/sig00000080 ),
    .Q(\blk00000001/sig000000a2 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004f  (
    .C(clk),
    .D(\blk00000001/sig00000081 ),
    .Q(\blk00000001/sig000000a3 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004e  (
    .C(clk),
    .D(\blk00000001/sig00000082 ),
    .Q(\blk00000001/sig000000a4 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d  (
    .C(clk),
    .D(\blk00000001/sig00000083 ),
    .Q(\blk00000001/sig000000a5 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004c  (
    .C(clk),
    .D(\blk00000001/sig000000ae ),
    .Q(p[17])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004b  (
    .C(clk),
    .D(\blk00000001/sig000000b7 ),
    .Q(p[18])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004a  (
    .C(clk),
    .D(\blk00000001/sig000000b8 ),
    .Q(p[19])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000049  (
    .C(clk),
    .D(\blk00000001/sig000000b9 ),
    .Q(p[20])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000048  (
    .C(clk),
    .D(\blk00000001/sig000000ba ),
    .Q(p[21])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000047  (
    .C(clk),
    .D(\blk00000001/sig000000bb ),
    .Q(p[22])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000046  (
    .C(clk),
    .D(\blk00000001/sig000000bc ),
    .Q(p[23])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000045  (
    .C(clk),
    .D(\blk00000001/sig000000bd ),
    .Q(p[24])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000044  (
    .C(clk),
    .D(\blk00000001/sig000000be ),
    .Q(p[25])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000043  (
    .C(clk),
    .D(\blk00000001/sig000000bf ),
    .Q(p[26])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000042  (
    .C(clk),
    .D(\blk00000001/sig000000af ),
    .Q(p[27])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000041  (
    .C(clk),
    .D(\blk00000001/sig000000b0 ),
    .Q(p[28])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000040  (
    .C(clk),
    .D(\blk00000001/sig000000b1 ),
    .Q(p[29])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003f  (
    .C(clk),
    .D(\blk00000001/sig000000b2 ),
    .Q(p[30])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003e  (
    .C(clk),
    .D(\blk00000001/sig000000b3 ),
    .Q(p[31])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003d  (
    .C(clk),
    .D(\blk00000001/sig000000b4 ),
    .Q(p[32])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003c  (
    .C(clk),
    .D(\blk00000001/sig000000b5 ),
    .Q(p[33])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003b  (
    .C(clk),
    .D(\blk00000001/sig000000b6 ),
    .Q(p[34])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003a  (
    .I0(\blk00000001/sig0000008d ),
    .I1(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig00000049 )
  );
  MUXCY   \blk00000001/blk00000039  (
    .CI(\blk00000001/sig00000036 ),
    .DI(\blk00000001/sig0000008d ),
    .S(\blk00000001/sig00000049 ),
    .O(\blk00000001/sig00000038 )
  );
  XORCY   \blk00000001/blk00000038  (
    .CI(\blk00000001/sig00000036 ),
    .LI(\blk00000001/sig00000049 ),
    .O(\blk00000001/sig000000ae )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000037  (
    .I0(\blk00000001/sig0000008e ),
    .I1(\blk00000001/sig0000009d ),
    .O(\blk00000001/sig00000052 )
  );
  MUXCY   \blk00000001/blk00000036  (
    .CI(\blk00000001/sig00000038 ),
    .DI(\blk00000001/sig0000008e ),
    .S(\blk00000001/sig00000052 ),
    .O(\blk00000001/sig00000040 )
  );
  XORCY   \blk00000001/blk00000035  (
    .CI(\blk00000001/sig00000038 ),
    .LI(\blk00000001/sig00000052 ),
    .O(\blk00000001/sig000000b7 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000034  (
    .I0(\blk00000001/sig0000008f ),
    .I1(\blk00000001/sig000000a6 ),
    .O(\blk00000001/sig00000053 )
  );
  MUXCY   \blk00000001/blk00000033  (
    .CI(\blk00000001/sig00000040 ),
    .DI(\blk00000001/sig0000008f ),
    .S(\blk00000001/sig00000053 ),
    .O(\blk00000001/sig00000041 )
  );
  XORCY   \blk00000001/blk00000032  (
    .CI(\blk00000001/sig00000040 ),
    .LI(\blk00000001/sig00000053 ),
    .O(\blk00000001/sig000000b8 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000031  (
    .I0(\blk00000001/sig00000090 ),
    .I1(\blk00000001/sig000000a7 ),
    .O(\blk00000001/sig00000054 )
  );
  MUXCY   \blk00000001/blk00000030  (
    .CI(\blk00000001/sig00000041 ),
    .DI(\blk00000001/sig00000090 ),
    .S(\blk00000001/sig00000054 ),
    .O(\blk00000001/sig00000042 )
  );
  XORCY   \blk00000001/blk0000002f  (
    .CI(\blk00000001/sig00000041 ),
    .LI(\blk00000001/sig00000054 ),
    .O(\blk00000001/sig000000b9 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002e  (
    .I0(\blk00000001/sig00000091 ),
    .I1(\blk00000001/sig000000a8 ),
    .O(\blk00000001/sig00000055 )
  );
  MUXCY   \blk00000001/blk0000002d  (
    .CI(\blk00000001/sig00000042 ),
    .DI(\blk00000001/sig00000091 ),
    .S(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig00000043 )
  );
  XORCY   \blk00000001/blk0000002c  (
    .CI(\blk00000001/sig00000042 ),
    .LI(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig000000ba )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002b  (
    .I0(\blk00000001/sig00000092 ),
    .I1(\blk00000001/sig000000a9 ),
    .O(\blk00000001/sig00000056 )
  );
  MUXCY   \blk00000001/blk0000002a  (
    .CI(\blk00000001/sig00000043 ),
    .DI(\blk00000001/sig00000092 ),
    .S(\blk00000001/sig00000056 ),
    .O(\blk00000001/sig00000044 )
  );
  XORCY   \blk00000001/blk00000029  (
    .CI(\blk00000001/sig00000043 ),
    .LI(\blk00000001/sig00000056 ),
    .O(\blk00000001/sig000000bb )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000028  (
    .I0(\blk00000001/sig00000093 ),
    .I1(\blk00000001/sig000000aa ),
    .O(\blk00000001/sig00000057 )
  );
  MUXCY   \blk00000001/blk00000027  (
    .CI(\blk00000001/sig00000044 ),
    .DI(\blk00000001/sig00000093 ),
    .S(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000045 )
  );
  XORCY   \blk00000001/blk00000026  (
    .CI(\blk00000001/sig00000044 ),
    .LI(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig000000bc )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000025  (
    .I0(\blk00000001/sig00000094 ),
    .I1(\blk00000001/sig000000ab ),
    .O(\blk00000001/sig00000058 )
  );
  MUXCY   \blk00000001/blk00000024  (
    .CI(\blk00000001/sig00000045 ),
    .DI(\blk00000001/sig00000094 ),
    .S(\blk00000001/sig00000058 ),
    .O(\blk00000001/sig00000046 )
  );
  XORCY   \blk00000001/blk00000023  (
    .CI(\blk00000001/sig00000045 ),
    .LI(\blk00000001/sig00000058 ),
    .O(\blk00000001/sig000000bd )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000022  (
    .I0(\blk00000001/sig00000095 ),
    .I1(\blk00000001/sig000000ac ),
    .O(\blk00000001/sig00000059 )
  );
  MUXCY   \blk00000001/blk00000021  (
    .CI(\blk00000001/sig00000046 ),
    .DI(\blk00000001/sig00000095 ),
    .S(\blk00000001/sig00000059 ),
    .O(\blk00000001/sig00000047 )
  );
  XORCY   \blk00000001/blk00000020  (
    .CI(\blk00000001/sig00000046 ),
    .LI(\blk00000001/sig00000059 ),
    .O(\blk00000001/sig000000be )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000001f  (
    .I0(\blk00000001/sig00000096 ),
    .I1(\blk00000001/sig000000ad ),
    .O(\blk00000001/sig0000005a )
  );
  MUXCY   \blk00000001/blk0000001e  (
    .CI(\blk00000001/sig00000047 ),
    .DI(\blk00000001/sig00000096 ),
    .S(\blk00000001/sig0000005a ),
    .O(\blk00000001/sig00000048 )
  );
  XORCY   \blk00000001/blk0000001d  (
    .CI(\blk00000001/sig00000047 ),
    .LI(\blk00000001/sig0000005a ),
    .O(\blk00000001/sig000000bf )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000001c  (
    .I0(\blk00000001/sig00000097 ),
    .I1(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig0000004a )
  );
  MUXCY   \blk00000001/blk0000001b  (
    .CI(\blk00000001/sig00000048 ),
    .DI(\blk00000001/sig00000097 ),
    .S(\blk00000001/sig0000004a ),
    .O(\blk00000001/sig00000039 )
  );
  XORCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig00000048 ),
    .LI(\blk00000001/sig0000004a ),
    .O(\blk00000001/sig000000af )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000019  (
    .I0(\blk00000001/sig00000098 ),
    .I1(\blk00000001/sig0000009f ),
    .O(\blk00000001/sig0000004b )
  );
  MUXCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig00000039 ),
    .DI(\blk00000001/sig00000098 ),
    .S(\blk00000001/sig0000004b ),
    .O(\blk00000001/sig0000003a )
  );
  XORCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig00000039 ),
    .LI(\blk00000001/sig0000004b ),
    .O(\blk00000001/sig000000b0 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000016  (
    .I0(\blk00000001/sig00000099 ),
    .I1(\blk00000001/sig000000a0 ),
    .O(\blk00000001/sig0000004c )
  );
  MUXCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig0000003a ),
    .DI(\blk00000001/sig00000099 ),
    .S(\blk00000001/sig0000004c ),
    .O(\blk00000001/sig0000003b )
  );
  XORCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig0000003a ),
    .LI(\blk00000001/sig0000004c ),
    .O(\blk00000001/sig000000b1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000013  (
    .I0(\blk00000001/sig0000009a ),
    .I1(\blk00000001/sig000000a1 ),
    .O(\blk00000001/sig0000004d )
  );
  MUXCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig0000003b ),
    .DI(\blk00000001/sig0000009a ),
    .S(\blk00000001/sig0000004d ),
    .O(\blk00000001/sig0000003c )
  );
  XORCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig0000003b ),
    .LI(\blk00000001/sig0000004d ),
    .O(\blk00000001/sig000000b2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000010  (
    .I0(\blk00000001/sig000000a2 ),
    .I1(\blk00000001/sig0000009b ),
    .O(\blk00000001/sig0000004e )
  );
  MUXCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig0000003c ),
    .DI(\blk00000001/sig0000009b ),
    .S(\blk00000001/sig0000004e ),
    .O(\blk00000001/sig0000003d )
  );
  XORCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig0000003c ),
    .LI(\blk00000001/sig0000004e ),
    .O(\blk00000001/sig000000b3 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000000d  (
    .I0(\blk00000001/sig000000a3 ),
    .I1(\blk00000001/sig0000009b ),
    .O(\blk00000001/sig0000004f )
  );
  MUXCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig0000003d ),
    .DI(\blk00000001/sig0000009b ),
    .S(\blk00000001/sig0000004f ),
    .O(\blk00000001/sig0000003e )
  );
  XORCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig0000003d ),
    .LI(\blk00000001/sig0000004f ),
    .O(\blk00000001/sig000000b4 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000000a  (
    .I0(\blk00000001/sig000000a4 ),
    .I1(\blk00000001/sig0000009b ),
    .O(\blk00000001/sig00000050 )
  );
  MUXCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig0000003e ),
    .DI(\blk00000001/sig0000009b ),
    .S(\blk00000001/sig00000050 ),
    .O(\blk00000001/sig0000003f )
  );
  XORCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig0000003e ),
    .LI(\blk00000001/sig00000050 ),
    .O(\blk00000001/sig000000b5 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000007  (
    .I0(\blk00000001/sig0000009b ),
    .I1(\blk00000001/sig000000a5 ),
    .O(\blk00000001/sig00000051 )
  );
  XORCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig0000003f ),
    .LI(\blk00000001/sig00000051 ),
    .O(\blk00000001/sig000000b6 )
  );
  MULT18X18SIO #(
    .AREG ( 1 ),
    .BREG ( 1 ),
    .B_INPUT ( "DIRECT" ),
    .PREG ( 1 ))
  \blk00000001/blk00000005  (
    .CEA(\blk00000001/sig00000037 ),
    .CEB(\blk00000001/sig00000037 ),
    .CEP(\blk00000001/sig00000037 ),
    .CLK(clk),
    .RSTA(\blk00000001/sig00000036 ),
    .RSTB(\blk00000001/sig00000036 ),
    .RSTP(\blk00000001/sig00000036 ),
    .A({\blk00000001/sig00000036 , b[16], b[15], b[14], b[13], b[12], b[11], b[10], b[9], b[8], b[7], b[6], b[5], b[4], b[3], b[2], b[1], b[0]}),
    .B({a[14], a[14], a[14], a[14], a[13], a[12], a[11], a[10], a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0]}),
    .BCIN({\blk00000001/sig00000036 , \blk00000001/sig00000036 , \blk00000001/sig00000036 , \blk00000001/sig00000036 , \blk00000001/sig00000036 , 
\blk00000001/sig00000036 , \blk00000001/sig00000036 , \blk00000001/sig00000036 , \blk00000001/sig00000036 , \blk00000001/sig00000036 , 
\blk00000001/sig00000036 , \blk00000001/sig00000036 , \blk00000001/sig00000036 , \blk00000001/sig00000036 , \blk00000001/sig00000036 , 
\blk00000001/sig00000036 , \blk00000001/sig00000036 , \blk00000001/sig00000036 }),
    .P({\NLW_blk00000001/blk00000005_P<35>_UNCONNECTED , \NLW_blk00000001/blk00000005_P<34>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_P<33>_UNCONNECTED , \NLW_blk00000001/blk00000005_P<32>_UNCONNECTED , \blk00000001/sig00000073 , \blk00000001/sig00000072 
, \blk00000001/sig00000070 , \blk00000001/sig0000006f , \blk00000001/sig0000006e , \blk00000001/sig0000006d , \blk00000001/sig0000006c , 
\blk00000001/sig0000006b , \blk00000001/sig0000006a , \blk00000001/sig00000069 , \blk00000001/sig00000068 , \blk00000001/sig00000067 , 
\blk00000001/sig00000065 , \blk00000001/sig00000064 , \blk00000001/sig00000063 , \blk00000001/sig00000062 , \blk00000001/sig00000061 , 
\blk00000001/sig00000060 , \blk00000001/sig0000005f , \blk00000001/sig0000005e , \blk00000001/sig0000005d , \blk00000001/sig0000005c , 
\blk00000001/sig0000007a , \blk00000001/sig00000079 , \blk00000001/sig00000078 , \blk00000001/sig00000077 , \blk00000001/sig00000076 , 
\blk00000001/sig00000075 , \blk00000001/sig00000074 , \blk00000001/sig00000071 , \blk00000001/sig00000066 , \blk00000001/sig0000005b }),
    .BCOUT({\NLW_blk00000001/blk00000005_BCOUT<17>_UNCONNECTED , \NLW_blk00000001/blk00000005_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_BCOUT<15>_UNCONNECTED , \NLW_blk00000001/blk00000005_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_BCOUT<13>_UNCONNECTED , \NLW_blk00000001/blk00000005_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_BCOUT<11>_UNCONNECTED , \NLW_blk00000001/blk00000005_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_BCOUT<9>_UNCONNECTED , \NLW_blk00000001/blk00000005_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_BCOUT<7>_UNCONNECTED , \NLW_blk00000001/blk00000005_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_BCOUT<5>_UNCONNECTED , \NLW_blk00000001/blk00000005_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_BCOUT<3>_UNCONNECTED , \NLW_blk00000001/blk00000005_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_BCOUT<1>_UNCONNECTED , \NLW_blk00000001/blk00000005_BCOUT<0>_UNCONNECTED })
  );
  MULT18X18SIO #(
    .AREG ( 1 ),
    .BREG ( 1 ),
    .B_INPUT ( "DIRECT" ),
    .PREG ( 1 ))
  \blk00000001/blk00000004  (
    .CEA(\blk00000001/sig00000037 ),
    .CEB(\blk00000001/sig00000037 ),
    .CEP(\blk00000001/sig00000037 ),
    .CLK(clk),
    .RSTA(\blk00000001/sig00000036 ),
    .RSTB(\blk00000001/sig00000036 ),
    .RSTP(\blk00000001/sig00000036 ),
    .A({b[19], b[19], b[19], b[19], b[19], b[19], b[19], b[19], b[19], b[19], b[19], b[19], b[19], b[19], b[19], b[19], b[18], b[17]}),
    .B({a[14], a[14], a[14], a[14], a[13], a[12], a[11], a[10], a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0]}),
    .BCIN({\blk00000001/sig00000036 , \blk00000001/sig00000036 , \blk00000001/sig00000036 , \blk00000001/sig00000036 , \blk00000001/sig00000036 , 
\blk00000001/sig00000036 , \blk00000001/sig00000036 , \blk00000001/sig00000036 , \blk00000001/sig00000036 , \blk00000001/sig00000036 , 
\blk00000001/sig00000036 , \blk00000001/sig00000036 , \blk00000001/sig00000036 , \blk00000001/sig00000036 , \blk00000001/sig00000036 , 
\blk00000001/sig00000036 , \blk00000001/sig00000036 , \blk00000001/sig00000036 }),
    .P({\NLW_blk00000001/blk00000004_P<35>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<34>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P<33>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<32>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<31>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P<30>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<29>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<28>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P<27>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<26>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<25>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P<24>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<23>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<22>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P<21>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<20>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<19>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P<18>_UNCONNECTED , \blk00000001/sig00000083 , \blk00000001/sig00000082 , \blk00000001/sig00000081 , 
\blk00000001/sig00000080 , \blk00000001/sig0000007f , \blk00000001/sig0000007e , \blk00000001/sig0000007d , \blk00000001/sig0000007c , 
\blk00000001/sig0000008c , \blk00000001/sig0000008b , \blk00000001/sig0000008a , \blk00000001/sig00000089 , \blk00000001/sig00000088 , 
\blk00000001/sig00000087 , \blk00000001/sig00000086 , \blk00000001/sig00000085 , \blk00000001/sig00000084 , \blk00000001/sig0000007b }),
    .BCOUT({\NLW_blk00000001/blk00000004_BCOUT<17>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT<15>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT<13>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT<11>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT<9>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT<7>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT<5>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT<3>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT<1>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<0>_UNCONNECTED })
  );
  VCC   \blk00000001/blk00000003  (
    .P(\blk00000001/sig00000037 )
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig00000036 )
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
