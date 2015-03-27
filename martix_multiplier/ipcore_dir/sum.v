////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: sum.v
// /___/   /\     Timestamp: Thu Mar 26 23:34:38 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/vka/Programming/VHDL/workspace/sysrek/martix_multiplier/ipcore_dir/tmp/_cg/sum.ngc /home/vka/Programming/VHDL/workspace/sysrek/martix_multiplier/ipcore_dir/tmp/_cg/sum.v 
// Device	: 3s500efg320-4
// Input file	: /home/vka/Programming/VHDL/workspace/sysrek/martix_multiplier/ipcore_dir/tmp/_cg/sum.ngc
// Output file	: /home/vka/Programming/VHDL/workspace/sysrek/martix_multiplier/ipcore_dir/tmp/_cg/sum.v
// # of Modules	: 1
// Design Name	: sum
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

module sum (
  clk, s, a, b
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  output [26 : 0] s;
  input [25 : 0] a;
  input [25 : 0] b;
  
  // synthesis translate_off
  
  wire \blk00000001/sig00000107 ;
  wire \blk00000001/sig00000106 ;
  wire \blk00000001/sig00000105 ;
  wire \blk00000001/sig00000104 ;
  wire \blk00000001/sig00000103 ;
  wire \blk00000001/sig00000102 ;
  wire \blk00000001/sig00000101 ;
  wire \blk00000001/sig00000100 ;
  wire \blk00000001/sig000000ff ;
  wire \blk00000001/sig000000fe ;
  wire \blk00000001/sig000000fd ;
  wire \blk00000001/sig000000fc ;
  wire \blk00000001/sig000000fb ;
  wire \blk00000001/sig000000fa ;
  wire \blk00000001/sig000000f9 ;
  wire \blk00000001/sig000000f8 ;
  wire \blk00000001/sig000000f7 ;
  wire \blk00000001/sig000000f6 ;
  wire \blk00000001/sig000000ec ;
  wire \blk00000001/sig000000eb ;
  wire \blk00000001/sig000000ea ;
  wire \blk00000001/sig000000e9 ;
  wire \blk00000001/sig000000e8 ;
  wire \blk00000001/sig000000e7 ;
  wire \blk00000001/sig000000e6 ;
  wire \blk00000001/sig000000e5 ;
  wire \blk00000001/sig000000db ;
  wire \blk00000001/sig000000d1 ;
  wire \blk00000001/sig000000d0 ;
  wire \blk00000001/sig000000cf ;
  wire \blk00000001/sig000000ce ;
  wire \blk00000001/sig000000cd ;
  wire \blk00000001/sig000000cc ;
  wire \blk00000001/sig000000cb ;
  wire \blk00000001/sig000000ca ;
  wire \blk00000001/sig000000c9 ;
  wire \blk00000001/sig000000c8 ;
  wire \blk00000001/sig000000c7 ;
  wire \blk00000001/sig000000c6 ;
  wire \blk00000001/sig000000c5 ;
  wire \blk00000001/sig000000c4 ;
  wire \blk00000001/sig000000c3 ;
  wire \blk00000001/sig000000c2 ;
  wire \blk00000001/sig000000c1 ;
  wire \blk00000001/sig000000c0 ;
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
  wire \NLW_blk00000001/blk00000034_O_UNCONNECTED ;
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000d4  (
    .C(clk),
    .D(\blk00000001/sig000000db ),
    .Q(s[9])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000d3  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig000000ad ),
    .Q(\blk00000001/sig000000db )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000d2  (
    .C(clk),
    .D(\blk00000001/sig000000c9 ),
    .Q(s[0])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000d1  (
    .A0(\blk00000001/sig00000037 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig0000004c ),
    .Q(\blk00000001/sig000000c9 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000d0  (
    .C(clk),
    .D(\blk00000001/sig000000ca ),
    .Q(s[1])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000cf  (
    .A0(\blk00000001/sig00000037 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig0000004d ),
    .Q(\blk00000001/sig000000ca )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ce  (
    .C(clk),
    .D(\blk00000001/sig000000cb ),
    .Q(s[2])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000cd  (
    .A0(\blk00000001/sig00000037 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig0000004e ),
    .Q(\blk00000001/sig000000cb )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000cc  (
    .C(clk),
    .D(\blk00000001/sig000000cc ),
    .Q(s[3])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000cb  (
    .A0(\blk00000001/sig00000037 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig0000004f ),
    .Q(\blk00000001/sig000000cc )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ca  (
    .C(clk),
    .D(\blk00000001/sig000000cd ),
    .Q(s[4])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000c9  (
    .A0(\blk00000001/sig00000037 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig00000050 ),
    .Q(\blk00000001/sig000000cd )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000c8  (
    .C(clk),
    .D(\blk00000001/sig000000cf ),
    .Q(s[6])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000c7  (
    .A0(\blk00000001/sig00000037 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig00000052 ),
    .Q(\blk00000001/sig000000cf )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000c6  (
    .C(clk),
    .D(\blk00000001/sig000000d0 ),
    .Q(s[7])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000c5  (
    .A0(\blk00000001/sig00000037 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig00000053 ),
    .Q(\blk00000001/sig000000d0 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000c4  (
    .C(clk),
    .D(\blk00000001/sig000000ce ),
    .Q(s[5])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000c3  (
    .A0(\blk00000001/sig00000037 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig00000051 ),
    .Q(\blk00000001/sig000000ce )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000c2  (
    .C(clk),
    .D(\blk00000001/sig000000d1 ),
    .Q(s[8])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000c1  (
    .A0(\blk00000001/sig00000037 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig00000054 ),
    .Q(\blk00000001/sig000000d1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000c0  (
    .C(clk),
    .D(\blk00000001/sig000000b7 ),
    .Q(\blk00000001/sig000000c0 )
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000bf  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig0000008b ),
    .Q(\blk00000001/sig000000b7 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000be  (
    .C(clk),
    .D(\blk00000001/sig000000b9 ),
    .Q(\blk00000001/sig000000c2 )
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000bd  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig0000008d ),
    .Q(\blk00000001/sig000000b9 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000bc  (
    .C(clk),
    .D(\blk00000001/sig000000ba ),
    .Q(\blk00000001/sig000000c3 )
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000bb  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig0000008e ),
    .Q(\blk00000001/sig000000ba )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ba  (
    .C(clk),
    .D(\blk00000001/sig000000b8 ),
    .Q(\blk00000001/sig000000c1 )
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000b9  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig0000008c ),
    .Q(\blk00000001/sig000000b8 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000b8  (
    .C(clk),
    .D(\blk00000001/sig000000bb ),
    .Q(\blk00000001/sig000000c4 )
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000b7  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig0000008f ),
    .Q(\blk00000001/sig000000bb )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000b6  (
    .C(clk),
    .D(\blk00000001/sig000000bc ),
    .Q(\blk00000001/sig000000c5 )
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000b5  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig00000090 ),
    .Q(\blk00000001/sig000000bc )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000b4  (
    .C(clk),
    .D(\blk00000001/sig000000be ),
    .Q(\blk00000001/sig000000c7 )
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000b3  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig00000092 ),
    .Q(\blk00000001/sig000000be )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000b2  (
    .C(clk),
    .D(\blk00000001/sig000000bf ),
    .Q(\blk00000001/sig000000c8 )
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000b1  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig00000093 ),
    .Q(\blk00000001/sig000000bf )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000b0  (
    .C(clk),
    .D(\blk00000001/sig000000bd ),
    .Q(\blk00000001/sig000000c6 )
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000af  (
    .A0(\blk00000001/sig00000036 ),
    .A1(\blk00000001/sig00000036 ),
    .A2(\blk00000001/sig00000036 ),
    .A3(\blk00000001/sig00000036 ),
    .CLK(clk),
    .D(\blk00000001/sig00000091 ),
    .Q(\blk00000001/sig000000bd )
  );
  VCC   \blk00000001/blk000000ae  (
    .P(\blk00000001/sig00000037 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000ad  (
    .I0(\blk00000001/sig000000c0 ),
    .O(\blk00000001/sig000000fe )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000ac  (
    .I0(\blk00000001/sig000000c8 ),
    .O(\blk00000001/sig000000fd )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000ab  (
    .I0(\blk00000001/sig000000c1 ),
    .O(\blk00000001/sig000000f6 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000aa  (
    .I0(\blk00000001/sig000000c2 ),
    .O(\blk00000001/sig000000f7 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000a9  (
    .I0(\blk00000001/sig000000c3 ),
    .O(\blk00000001/sig000000f8 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000a8  (
    .I0(\blk00000001/sig000000c4 ),
    .O(\blk00000001/sig000000f9 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000a7  (
    .I0(\blk00000001/sig000000c5 ),
    .O(\blk00000001/sig000000fa )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000a6  (
    .I0(\blk00000001/sig000000c6 ),
    .O(\blk00000001/sig000000fb )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000a5  (
    .I0(\blk00000001/sig000000c7 ),
    .O(\blk00000001/sig000000fc )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000a4  (
    .I0(\blk00000001/sig00000067 ),
    .O(\blk00000001/sig000000ac )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000a3  (
    .I0(\blk00000001/sig0000006f ),
    .O(\blk00000001/sig000000ab )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000a2  (
    .I0(\blk00000001/sig00000068 ),
    .O(\blk00000001/sig000000a4 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000a1  (
    .I0(\blk00000001/sig00000069 ),
    .O(\blk00000001/sig000000a5 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000a0  (
    .I0(\blk00000001/sig0000006a ),
    .O(\blk00000001/sig000000a6 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000009f  (
    .I0(\blk00000001/sig0000006b ),
    .O(\blk00000001/sig000000a7 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000009e  (
    .I0(\blk00000001/sig0000006c ),
    .O(\blk00000001/sig000000a8 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000009d  (
    .I0(\blk00000001/sig0000006d ),
    .O(\blk00000001/sig000000a9 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000009c  (
    .I0(\blk00000001/sig0000006e ),
    .O(\blk00000001/sig000000aa )
  );
  FDS #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000009b  (
    .C(clk),
    .D(\blk00000001/sig00000038 ),
    .S(\blk00000001/sig00000070 ),
    .Q(\blk00000001/sig000000b6 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000009a  (
    .I0(b[0]),
    .I1(a[0]),
    .O(\blk00000001/sig00000042 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000099  (
    .I0(b[9]),
    .I1(a[9]),
    .O(\blk00000001/sig0000005e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000098  (
    .I0(b[18]),
    .I1(a[18]),
    .O(\blk00000001/sig00000082 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000097  (
    .I0(b[1]),
    .I1(a[1]),
    .O(\blk00000001/sig00000043 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000096  (
    .I0(b[10]),
    .I1(a[10]),
    .O(\blk00000001/sig0000005f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000095  (
    .I0(b[19]),
    .I1(a[19]),
    .O(\blk00000001/sig00000083 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000094  (
    .I0(b[2]),
    .I1(a[2]),
    .O(\blk00000001/sig00000044 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000093  (
    .I0(b[11]),
    .I1(a[11]),
    .O(\blk00000001/sig00000060 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000092  (
    .I0(b[20]),
    .I1(a[20]),
    .O(\blk00000001/sig00000084 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000091  (
    .I0(b[3]),
    .I1(a[3]),
    .O(\blk00000001/sig00000045 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000090  (
    .I0(b[12]),
    .I1(a[12]),
    .O(\blk00000001/sig00000061 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000008f  (
    .I0(b[21]),
    .I1(a[21]),
    .O(\blk00000001/sig00000085 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000008e  (
    .I0(b[4]),
    .I1(a[4]),
    .O(\blk00000001/sig00000046 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000008d  (
    .I0(b[13]),
    .I1(a[13]),
    .O(\blk00000001/sig00000062 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000008c  (
    .I0(b[22]),
    .I1(a[22]),
    .O(\blk00000001/sig00000086 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000008b  (
    .I0(b[5]),
    .I1(a[5]),
    .O(\blk00000001/sig00000047 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000008a  (
    .I0(b[14]),
    .I1(a[14]),
    .O(\blk00000001/sig00000063 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000089  (
    .I0(b[23]),
    .I1(a[23]),
    .O(\blk00000001/sig00000087 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000088  (
    .I0(b[6]),
    .I1(a[6]),
    .O(\blk00000001/sig00000048 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000087  (
    .I0(b[15]),
    .I1(a[15]),
    .O(\blk00000001/sig00000064 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000086  (
    .I0(b[24]),
    .I1(a[24]),
    .O(\blk00000001/sig00000088 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000085  (
    .I0(b[7]),
    .I1(a[7]),
    .O(\blk00000001/sig00000049 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000084  (
    .I0(b[16]),
    .I1(a[16]),
    .O(\blk00000001/sig00000065 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000083  (
    .I0(b[25]),
    .I1(a[25]),
    .O(\blk00000001/sig00000089 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000082  (
    .I0(b[8]),
    .I1(a[8]),
    .O(\blk00000001/sig0000004a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000081  (
    .I0(b[17]),
    .I1(a[17]),
    .O(\blk00000001/sig00000066 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000080  (
    .I0(b[25]),
    .I1(a[25]),
    .O(\blk00000001/sig0000008a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007f  (
    .C(clk),
    .D(\blk00000001/sig0000009c ),
    .Q(s[10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007e  (
    .C(clk),
    .D(\blk00000001/sig0000009d ),
    .Q(s[11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007d  (
    .C(clk),
    .D(\blk00000001/sig0000009e ),
    .Q(s[12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007c  (
    .C(clk),
    .D(\blk00000001/sig0000009f ),
    .Q(s[13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007b  (
    .C(clk),
    .D(\blk00000001/sig000000a0 ),
    .Q(s[14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007a  (
    .C(clk),
    .D(\blk00000001/sig000000a1 ),
    .Q(s[15])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000079  (
    .C(clk),
    .D(\blk00000001/sig000000a2 ),
    .Q(s[16])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000078  (
    .C(clk),
    .D(\blk00000001/sig000000a3 ),
    .Q(s[17])
  );
  MUXCY   \blk00000001/blk00000077  (
    .CI(\blk00000001/sig00000036 ),
    .DI(a[9]),
    .S(\blk00000001/sig0000005e ),
    .O(\blk00000001/sig00000055 )
  );
  XORCY   \blk00000001/blk00000076  (
    .CI(\blk00000001/sig00000036 ),
    .LI(\blk00000001/sig0000005e ),
    .O(\blk00000001/sig00000071 )
  );
  XORCY   \blk00000001/blk00000075  (
    .CI(\blk00000001/sig0000005c ),
    .LI(\blk00000001/sig00000066 ),
    .O(\blk00000001/sig00000079 )
  );
  MUXCY   \blk00000001/blk00000074  (
    .CI(\blk00000001/sig0000005c ),
    .DI(a[17]),
    .S(\blk00000001/sig00000066 ),
    .O(\blk00000001/sig0000005d )
  );
  MUXCY   \blk00000001/blk00000073  (
    .CI(\blk00000001/sig00000055 ),
    .DI(a[10]),
    .S(\blk00000001/sig0000005f ),
    .O(\blk00000001/sig00000056 )
  );
  XORCY   \blk00000001/blk00000072  (
    .CI(\blk00000001/sig00000055 ),
    .LI(\blk00000001/sig0000005f ),
    .O(\blk00000001/sig00000072 )
  );
  MUXCY   \blk00000001/blk00000071  (
    .CI(\blk00000001/sig00000056 ),
    .DI(a[11]),
    .S(\blk00000001/sig00000060 ),
    .O(\blk00000001/sig00000057 )
  );
  XORCY   \blk00000001/blk00000070  (
    .CI(\blk00000001/sig00000056 ),
    .LI(\blk00000001/sig00000060 ),
    .O(\blk00000001/sig00000073 )
  );
  MUXCY   \blk00000001/blk0000006f  (
    .CI(\blk00000001/sig00000057 ),
    .DI(a[12]),
    .S(\blk00000001/sig00000061 ),
    .O(\blk00000001/sig00000058 )
  );
  XORCY   \blk00000001/blk0000006e  (
    .CI(\blk00000001/sig00000057 ),
    .LI(\blk00000001/sig00000061 ),
    .O(\blk00000001/sig00000074 )
  );
  MUXCY   \blk00000001/blk0000006d  (
    .CI(\blk00000001/sig00000058 ),
    .DI(a[13]),
    .S(\blk00000001/sig00000062 ),
    .O(\blk00000001/sig00000059 )
  );
  XORCY   \blk00000001/blk0000006c  (
    .CI(\blk00000001/sig00000058 ),
    .LI(\blk00000001/sig00000062 ),
    .O(\blk00000001/sig00000075 )
  );
  MUXCY   \blk00000001/blk0000006b  (
    .CI(\blk00000001/sig00000059 ),
    .DI(a[14]),
    .S(\blk00000001/sig00000063 ),
    .O(\blk00000001/sig0000005a )
  );
  XORCY   \blk00000001/blk0000006a  (
    .CI(\blk00000001/sig00000059 ),
    .LI(\blk00000001/sig00000063 ),
    .O(\blk00000001/sig00000076 )
  );
  MUXCY   \blk00000001/blk00000069  (
    .CI(\blk00000001/sig0000005a ),
    .DI(a[15]),
    .S(\blk00000001/sig00000064 ),
    .O(\blk00000001/sig0000005b )
  );
  XORCY   \blk00000001/blk00000068  (
    .CI(\blk00000001/sig0000005a ),
    .LI(\blk00000001/sig00000064 ),
    .O(\blk00000001/sig00000077 )
  );
  MUXCY   \blk00000001/blk00000067  (
    .CI(\blk00000001/sig0000005b ),
    .DI(a[16]),
    .S(\blk00000001/sig00000065 ),
    .O(\blk00000001/sig0000005c )
  );
  XORCY   \blk00000001/blk00000066  (
    .CI(\blk00000001/sig0000005b ),
    .LI(\blk00000001/sig00000065 ),
    .O(\blk00000001/sig00000078 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000065  (
    .C(clk),
    .D(\blk00000001/sig0000005d ),
    .Q(\blk00000001/sig00000070 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000064  (
    .C(clk),
    .D(\blk00000001/sig00000071 ),
    .Q(\blk00000001/sig00000067 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000063  (
    .C(clk),
    .D(\blk00000001/sig00000072 ),
    .Q(\blk00000001/sig00000068 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000062  (
    .C(clk),
    .D(\blk00000001/sig00000073 ),
    .Q(\blk00000001/sig00000069 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000061  (
    .C(clk),
    .D(\blk00000001/sig00000074 ),
    .Q(\blk00000001/sig0000006a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000060  (
    .C(clk),
    .D(\blk00000001/sig00000075 ),
    .Q(\blk00000001/sig0000006b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005f  (
    .C(clk),
    .D(\blk00000001/sig00000076 ),
    .Q(\blk00000001/sig0000006c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005e  (
    .C(clk),
    .D(\blk00000001/sig00000077 ),
    .Q(\blk00000001/sig0000006d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005d  (
    .C(clk),
    .D(\blk00000001/sig00000078 ),
    .Q(\blk00000001/sig0000006e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005c  (
    .C(clk),
    .D(\blk00000001/sig00000079 ),
    .Q(\blk00000001/sig0000006f )
  );
  MUXCY   \blk00000001/blk0000005b  (
    .CI(\blk00000001/sig00000036 ),
    .DI(a[0]),
    .S(\blk00000001/sig00000042 ),
    .O(\blk00000001/sig00000039 )
  );
  XORCY   \blk00000001/blk0000005a  (
    .CI(\blk00000001/sig00000036 ),
    .LI(\blk00000001/sig00000042 ),
    .O(\blk00000001/sig0000004c )
  );
  XORCY   \blk00000001/blk00000059  (
    .CI(\blk00000001/sig00000040 ),
    .LI(\blk00000001/sig0000004a ),
    .O(\blk00000001/sig00000054 )
  );
  MUXCY   \blk00000001/blk00000058  (
    .CI(\blk00000001/sig00000040 ),
    .DI(a[8]),
    .S(\blk00000001/sig0000004a ),
    .O(\blk00000001/sig00000041 )
  );
  MUXCY   \blk00000001/blk00000057  (
    .CI(\blk00000001/sig00000039 ),
    .DI(a[1]),
    .S(\blk00000001/sig00000043 ),
    .O(\blk00000001/sig0000003a )
  );
  XORCY   \blk00000001/blk00000056  (
    .CI(\blk00000001/sig00000039 ),
    .LI(\blk00000001/sig00000043 ),
    .O(\blk00000001/sig0000004d )
  );
  MUXCY   \blk00000001/blk00000055  (
    .CI(\blk00000001/sig0000003a ),
    .DI(a[2]),
    .S(\blk00000001/sig00000044 ),
    .O(\blk00000001/sig0000003b )
  );
  XORCY   \blk00000001/blk00000054  (
    .CI(\blk00000001/sig0000003a ),
    .LI(\blk00000001/sig00000044 ),
    .O(\blk00000001/sig0000004e )
  );
  MUXCY   \blk00000001/blk00000053  (
    .CI(\blk00000001/sig0000003b ),
    .DI(a[3]),
    .S(\blk00000001/sig00000045 ),
    .O(\blk00000001/sig0000003c )
  );
  XORCY   \blk00000001/blk00000052  (
    .CI(\blk00000001/sig0000003b ),
    .LI(\blk00000001/sig00000045 ),
    .O(\blk00000001/sig0000004f )
  );
  MUXCY   \blk00000001/blk00000051  (
    .CI(\blk00000001/sig0000003c ),
    .DI(a[4]),
    .S(\blk00000001/sig00000046 ),
    .O(\blk00000001/sig0000003d )
  );
  XORCY   \blk00000001/blk00000050  (
    .CI(\blk00000001/sig0000003c ),
    .LI(\blk00000001/sig00000046 ),
    .O(\blk00000001/sig00000050 )
  );
  MUXCY   \blk00000001/blk0000004f  (
    .CI(\blk00000001/sig0000003d ),
    .DI(a[5]),
    .S(\blk00000001/sig00000047 ),
    .O(\blk00000001/sig0000003e )
  );
  XORCY   \blk00000001/blk0000004e  (
    .CI(\blk00000001/sig0000003d ),
    .LI(\blk00000001/sig00000047 ),
    .O(\blk00000001/sig00000051 )
  );
  MUXCY   \blk00000001/blk0000004d  (
    .CI(\blk00000001/sig0000003e ),
    .DI(a[6]),
    .S(\blk00000001/sig00000048 ),
    .O(\blk00000001/sig0000003f )
  );
  XORCY   \blk00000001/blk0000004c  (
    .CI(\blk00000001/sig0000003e ),
    .LI(\blk00000001/sig00000048 ),
    .O(\blk00000001/sig00000052 )
  );
  MUXCY   \blk00000001/blk0000004b  (
    .CI(\blk00000001/sig0000003f ),
    .DI(a[7]),
    .S(\blk00000001/sig00000049 ),
    .O(\blk00000001/sig00000040 )
  );
  XORCY   \blk00000001/blk0000004a  (
    .CI(\blk00000001/sig0000003f ),
    .LI(\blk00000001/sig00000049 ),
    .O(\blk00000001/sig00000053 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000049  (
    .C(clk),
    .D(\blk00000001/sig00000041 ),
    .Q(\blk00000001/sig0000004b )
  );
  MUXCY   \blk00000001/blk00000048  (
    .CI(\blk00000001/sig00000036 ),
    .DI(a[18]),
    .S(\blk00000001/sig00000082 ),
    .O(\blk00000001/sig0000007a )
  );
  XORCY   \blk00000001/blk00000047  (
    .CI(\blk00000001/sig00000036 ),
    .LI(\blk00000001/sig00000082 ),
    .O(\blk00000001/sig0000008b )
  );
  XORCY   \blk00000001/blk00000046  (
    .CI(\blk00000001/sig00000081 ),
    .LI(\blk00000001/sig0000008a ),
    .O(\blk00000001/sig00000093 )
  );
  MUXCY   \blk00000001/blk00000045  (
    .CI(\blk00000001/sig0000007a ),
    .DI(a[19]),
    .S(\blk00000001/sig00000083 ),
    .O(\blk00000001/sig0000007b )
  );
  XORCY   \blk00000001/blk00000044  (
    .CI(\blk00000001/sig0000007a ),
    .LI(\blk00000001/sig00000083 ),
    .O(\blk00000001/sig0000008c )
  );
  MUXCY   \blk00000001/blk00000043  (
    .CI(\blk00000001/sig0000007b ),
    .DI(a[20]),
    .S(\blk00000001/sig00000084 ),
    .O(\blk00000001/sig0000007c )
  );
  XORCY   \blk00000001/blk00000042  (
    .CI(\blk00000001/sig0000007b ),
    .LI(\blk00000001/sig00000084 ),
    .O(\blk00000001/sig0000008d )
  );
  MUXCY   \blk00000001/blk00000041  (
    .CI(\blk00000001/sig0000007c ),
    .DI(a[21]),
    .S(\blk00000001/sig00000085 ),
    .O(\blk00000001/sig0000007d )
  );
  XORCY   \blk00000001/blk00000040  (
    .CI(\blk00000001/sig0000007c ),
    .LI(\blk00000001/sig00000085 ),
    .O(\blk00000001/sig0000008e )
  );
  MUXCY   \blk00000001/blk0000003f  (
    .CI(\blk00000001/sig0000007d ),
    .DI(a[22]),
    .S(\blk00000001/sig00000086 ),
    .O(\blk00000001/sig0000007e )
  );
  XORCY   \blk00000001/blk0000003e  (
    .CI(\blk00000001/sig0000007d ),
    .LI(\blk00000001/sig00000086 ),
    .O(\blk00000001/sig0000008f )
  );
  MUXCY   \blk00000001/blk0000003d  (
    .CI(\blk00000001/sig0000007e ),
    .DI(a[23]),
    .S(\blk00000001/sig00000087 ),
    .O(\blk00000001/sig0000007f )
  );
  XORCY   \blk00000001/blk0000003c  (
    .CI(\blk00000001/sig0000007e ),
    .LI(\blk00000001/sig00000087 ),
    .O(\blk00000001/sig00000090 )
  );
  MUXCY   \blk00000001/blk0000003b  (
    .CI(\blk00000001/sig0000007f ),
    .DI(a[24]),
    .S(\blk00000001/sig00000088 ),
    .O(\blk00000001/sig00000080 )
  );
  XORCY   \blk00000001/blk0000003a  (
    .CI(\blk00000001/sig0000007f ),
    .LI(\blk00000001/sig00000088 ),
    .O(\blk00000001/sig00000091 )
  );
  MUXCY   \blk00000001/blk00000039  (
    .CI(\blk00000001/sig00000080 ),
    .DI(a[25]),
    .S(\blk00000001/sig00000089 ),
    .O(\blk00000001/sig00000081 )
  );
  XORCY   \blk00000001/blk00000038  (
    .CI(\blk00000001/sig00000080 ),
    .LI(\blk00000001/sig00000089 ),
    .O(\blk00000001/sig00000092 )
  );
  MUXCY   \blk00000001/blk00000037  (
    .CI(\blk00000001/sig000000b6 ),
    .DI(\blk00000001/sig00000036 ),
    .S(\blk00000001/sig000000fe ),
    .O(\blk00000001/sig000000e5 )
  );
  XORCY   \blk00000001/blk00000036  (
    .CI(\blk00000001/sig000000b6 ),
    .LI(\blk00000001/sig000000fe ),
    .O(\blk00000001/sig000000ff )
  );
  XORCY   \blk00000001/blk00000035  (
    .CI(\blk00000001/sig000000ec ),
    .LI(\blk00000001/sig000000fd ),
    .O(\blk00000001/sig00000107 )
  );
  MUXCY   \blk00000001/blk00000034  (
    .CI(\blk00000001/sig000000ec ),
    .DI(\blk00000001/sig00000036 ),
    .S(\blk00000001/sig000000fd ),
    .O(\NLW_blk00000001/blk00000034_O_UNCONNECTED )
  );
  MUXCY   \blk00000001/blk00000033  (
    .CI(\blk00000001/sig000000e5 ),
    .DI(\blk00000001/sig00000036 ),
    .S(\blk00000001/sig000000f6 ),
    .O(\blk00000001/sig000000e6 )
  );
  XORCY   \blk00000001/blk00000032  (
    .CI(\blk00000001/sig000000e5 ),
    .LI(\blk00000001/sig000000f6 ),
    .O(\blk00000001/sig00000100 )
  );
  MUXCY   \blk00000001/blk00000031  (
    .CI(\blk00000001/sig000000e6 ),
    .DI(\blk00000001/sig00000036 ),
    .S(\blk00000001/sig000000f7 ),
    .O(\blk00000001/sig000000e7 )
  );
  XORCY   \blk00000001/blk00000030  (
    .CI(\blk00000001/sig000000e6 ),
    .LI(\blk00000001/sig000000f7 ),
    .O(\blk00000001/sig00000101 )
  );
  MUXCY   \blk00000001/blk0000002f  (
    .CI(\blk00000001/sig000000e7 ),
    .DI(\blk00000001/sig00000036 ),
    .S(\blk00000001/sig000000f8 ),
    .O(\blk00000001/sig000000e8 )
  );
  XORCY   \blk00000001/blk0000002e  (
    .CI(\blk00000001/sig000000e7 ),
    .LI(\blk00000001/sig000000f8 ),
    .O(\blk00000001/sig00000102 )
  );
  MUXCY   \blk00000001/blk0000002d  (
    .CI(\blk00000001/sig000000e8 ),
    .DI(\blk00000001/sig00000036 ),
    .S(\blk00000001/sig000000f9 ),
    .O(\blk00000001/sig000000e9 )
  );
  XORCY   \blk00000001/blk0000002c  (
    .CI(\blk00000001/sig000000e8 ),
    .LI(\blk00000001/sig000000f9 ),
    .O(\blk00000001/sig00000103 )
  );
  MUXCY   \blk00000001/blk0000002b  (
    .CI(\blk00000001/sig000000e9 ),
    .DI(\blk00000001/sig00000036 ),
    .S(\blk00000001/sig000000fa ),
    .O(\blk00000001/sig000000ea )
  );
  XORCY   \blk00000001/blk0000002a  (
    .CI(\blk00000001/sig000000e9 ),
    .LI(\blk00000001/sig000000fa ),
    .O(\blk00000001/sig00000104 )
  );
  MUXCY   \blk00000001/blk00000029  (
    .CI(\blk00000001/sig000000ea ),
    .DI(\blk00000001/sig00000036 ),
    .S(\blk00000001/sig000000fb ),
    .O(\blk00000001/sig000000eb )
  );
  XORCY   \blk00000001/blk00000028  (
    .CI(\blk00000001/sig000000ea ),
    .LI(\blk00000001/sig000000fb ),
    .O(\blk00000001/sig00000105 )
  );
  MUXCY   \blk00000001/blk00000027  (
    .CI(\blk00000001/sig000000eb ),
    .DI(\blk00000001/sig00000036 ),
    .S(\blk00000001/sig000000fc ),
    .O(\blk00000001/sig000000ec )
  );
  XORCY   \blk00000001/blk00000026  (
    .CI(\blk00000001/sig000000eb ),
    .LI(\blk00000001/sig000000fc ),
    .O(\blk00000001/sig00000106 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000025  (
    .C(clk),
    .D(\blk00000001/sig000000ff ),
    .Q(s[18])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000024  (
    .C(clk),
    .D(\blk00000001/sig00000100 ),
    .Q(s[19])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000023  (
    .C(clk),
    .D(\blk00000001/sig00000101 ),
    .Q(s[20])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000022  (
    .C(clk),
    .D(\blk00000001/sig00000102 ),
    .Q(s[21])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000021  (
    .C(clk),
    .D(\blk00000001/sig00000103 ),
    .Q(s[22])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000020  (
    .C(clk),
    .D(\blk00000001/sig00000104 ),
    .Q(s[23])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001f  (
    .C(clk),
    .D(\blk00000001/sig00000105 ),
    .Q(s[24])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001e  (
    .C(clk),
    .D(\blk00000001/sig00000106 ),
    .Q(s[25])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001d  (
    .C(clk),
    .D(\blk00000001/sig00000107 ),
    .Q(s[26])
  );
  MUXCY   \blk00000001/blk0000001c  (
    .CI(\blk00000001/sig0000004b ),
    .DI(\blk00000001/sig00000036 ),
    .S(\blk00000001/sig000000ac ),
    .O(\blk00000001/sig00000094 )
  );
  XORCY   \blk00000001/blk0000001b  (
    .CI(\blk00000001/sig0000004b ),
    .LI(\blk00000001/sig000000ac ),
    .O(\blk00000001/sig000000ad )
  );
  XORCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig0000009b ),
    .LI(\blk00000001/sig000000ab ),
    .O(\blk00000001/sig000000b5 )
  );
  MUXCY   \blk00000001/blk00000019  (
    .CI(\blk00000001/sig0000009b ),
    .DI(\blk00000001/sig00000036 ),
    .S(\blk00000001/sig000000ab ),
    .O(\blk00000001/sig00000038 )
  );
  MUXCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig00000094 ),
    .DI(\blk00000001/sig00000036 ),
    .S(\blk00000001/sig000000a4 ),
    .O(\blk00000001/sig00000095 )
  );
  XORCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig00000094 ),
    .LI(\blk00000001/sig000000a4 ),
    .O(\blk00000001/sig000000ae )
  );
  MUXCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig00000095 ),
    .DI(\blk00000001/sig00000036 ),
    .S(\blk00000001/sig000000a5 ),
    .O(\blk00000001/sig00000096 )
  );
  XORCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig00000095 ),
    .LI(\blk00000001/sig000000a5 ),
    .O(\blk00000001/sig000000af )
  );
  MUXCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig00000096 ),
    .DI(\blk00000001/sig00000036 ),
    .S(\blk00000001/sig000000a6 ),
    .O(\blk00000001/sig00000097 )
  );
  XORCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig00000096 ),
    .LI(\blk00000001/sig000000a6 ),
    .O(\blk00000001/sig000000b0 )
  );
  MUXCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig00000097 ),
    .DI(\blk00000001/sig00000036 ),
    .S(\blk00000001/sig000000a7 ),
    .O(\blk00000001/sig00000098 )
  );
  XORCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig00000097 ),
    .LI(\blk00000001/sig000000a7 ),
    .O(\blk00000001/sig000000b1 )
  );
  MUXCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig00000098 ),
    .DI(\blk00000001/sig00000036 ),
    .S(\blk00000001/sig000000a8 ),
    .O(\blk00000001/sig00000099 )
  );
  XORCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig00000098 ),
    .LI(\blk00000001/sig000000a8 ),
    .O(\blk00000001/sig000000b2 )
  );
  MUXCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig00000099 ),
    .DI(\blk00000001/sig00000036 ),
    .S(\blk00000001/sig000000a9 ),
    .O(\blk00000001/sig0000009a )
  );
  XORCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig00000099 ),
    .LI(\blk00000001/sig000000a9 ),
    .O(\blk00000001/sig000000b3 )
  );
  MUXCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig0000009a ),
    .DI(\blk00000001/sig00000036 ),
    .S(\blk00000001/sig000000aa ),
    .O(\blk00000001/sig0000009b )
  );
  XORCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig0000009a ),
    .LI(\blk00000001/sig000000aa ),
    .O(\blk00000001/sig000000b4 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000a  (
    .C(clk),
    .D(\blk00000001/sig000000ae ),
    .Q(\blk00000001/sig0000009c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000009  (
    .C(clk),
    .D(\blk00000001/sig000000af ),
    .Q(\blk00000001/sig0000009d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000008  (
    .C(clk),
    .D(\blk00000001/sig000000b0 ),
    .Q(\blk00000001/sig0000009e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000007  (
    .C(clk),
    .D(\blk00000001/sig000000b1 ),
    .Q(\blk00000001/sig0000009f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000006  (
    .C(clk),
    .D(\blk00000001/sig000000b2 ),
    .Q(\blk00000001/sig000000a0 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000005  (
    .C(clk),
    .D(\blk00000001/sig000000b3 ),
    .Q(\blk00000001/sig000000a1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000004  (
    .C(clk),
    .D(\blk00000001/sig000000b4 ),
    .Q(\blk00000001/sig000000a2 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000003  (
    .C(clk),
    .D(\blk00000001/sig000000b5 ),
    .Q(\blk00000001/sig000000a3 )
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
