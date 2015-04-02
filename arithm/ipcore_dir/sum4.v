////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: sum4.v
// /___/   /\     Timestamp: Thu Apr  2 14:56:56 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/vka/Programming/VHDL/workspace/sysrek/arithm/ipcore_dir/tmp/_cg/sum4.ngc /home/vka/Programming/VHDL/workspace/sysrek/arithm/ipcore_dir/tmp/_cg/sum4.v 
// Device	: 3s500efg320-4
// Input file	: /home/vka/Programming/VHDL/workspace/sysrek/arithm/ipcore_dir/tmp/_cg/sum4.ngc
// Output file	: /home/vka/Programming/VHDL/workspace/sysrek/arithm/ipcore_dir/tmp/_cg/sum4.v
// # of Modules	: 1
// Design Name	: sum4
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

module sum4 (
  clk, ce, s, a, b
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  output [36 : 0] s;
  input [30 : 0] a;
  input [35 : 0] b;
  
  // synthesis translate_off
  
  wire \blk00000001/sig00000185 ;
  wire \blk00000001/sig00000184 ;
  wire \blk00000001/sig00000183 ;
  wire \blk00000001/sig00000182 ;
  wire \blk00000001/sig00000181 ;
  wire \blk00000001/sig00000180 ;
  wire \blk00000001/sig0000017f ;
  wire \blk00000001/sig0000017e ;
  wire \blk00000001/sig0000017d ;
  wire \blk00000001/sig0000017c ;
  wire \blk00000001/sig0000017b ;
  wire \blk00000001/sig0000017a ;
  wire \blk00000001/sig00000179 ;
  wire \blk00000001/sig00000178 ;
  wire \blk00000001/sig00000177 ;
  wire \blk00000001/sig00000176 ;
  wire \blk00000001/sig00000175 ;
  wire \blk00000001/sig00000174 ;
  wire \blk00000001/sig00000173 ;
  wire \blk00000001/sig00000172 ;
  wire \blk00000001/sig00000167 ;
  wire \blk00000001/sig00000166 ;
  wire \blk00000001/sig00000165 ;
  wire \blk00000001/sig00000164 ;
  wire \blk00000001/sig00000163 ;
  wire \blk00000001/sig00000162 ;
  wire \blk00000001/sig00000161 ;
  wire \blk00000001/sig00000160 ;
  wire \blk00000001/sig0000015f ;
  wire \blk00000001/sig00000155 ;
  wire \blk00000001/sig00000154 ;
  wire \blk00000001/sig00000153 ;
  wire \blk00000001/sig00000149 ;
  wire \blk00000001/sig00000148 ;
  wire \blk00000001/sig00000147 ;
  wire \blk00000001/sig00000146 ;
  wire \blk00000001/sig00000145 ;
  wire \blk00000001/sig00000144 ;
  wire \blk00000001/sig00000143 ;
  wire \blk00000001/sig00000142 ;
  wire \blk00000001/sig00000141 ;
  wire \blk00000001/sig00000137 ;
  wire \blk00000001/sig00000136 ;
  wire \blk00000001/sig00000135 ;
  wire \blk00000001/sig00000134 ;
  wire \blk00000001/sig00000133 ;
  wire \blk00000001/sig00000132 ;
  wire \blk00000001/sig00000131 ;
  wire \blk00000001/sig00000130 ;
  wire \blk00000001/sig0000012f ;
  wire \blk00000001/sig0000012e ;
  wire \blk00000001/sig0000012d ;
  wire \blk00000001/sig0000012c ;
  wire \blk00000001/sig0000012b ;
  wire \blk00000001/sig0000012a ;
  wire \blk00000001/sig00000129 ;
  wire \blk00000001/sig00000128 ;
  wire \blk00000001/sig00000127 ;
  wire \blk00000001/sig00000126 ;
  wire \blk00000001/sig00000125 ;
  wire \blk00000001/sig00000124 ;
  wire \blk00000001/sig00000123 ;
  wire \blk00000001/sig00000122 ;
  wire \blk00000001/sig00000121 ;
  wire \blk00000001/sig00000120 ;
  wire \blk00000001/sig0000011f ;
  wire \blk00000001/sig0000011e ;
  wire \blk00000001/sig0000011d ;
  wire \blk00000001/sig0000011c ;
  wire \blk00000001/sig0000011b ;
  wire \blk00000001/sig0000011a ;
  wire \blk00000001/sig00000119 ;
  wire \blk00000001/sig00000118 ;
  wire \blk00000001/sig00000117 ;
  wire \blk00000001/sig00000116 ;
  wire \blk00000001/sig00000115 ;
  wire \blk00000001/sig00000114 ;
  wire \blk00000001/sig00000113 ;
  wire \blk00000001/sig00000112 ;
  wire \blk00000001/sig00000111 ;
  wire \blk00000001/sig00000110 ;
  wire \blk00000001/sig0000010f ;
  wire \blk00000001/sig0000010e ;
  wire \blk00000001/sig0000010d ;
  wire \blk00000001/sig0000010c ;
  wire \blk00000001/sig0000010b ;
  wire \blk00000001/sig0000010a ;
  wire \blk00000001/sig00000109 ;
  wire \blk00000001/sig00000108 ;
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
  wire \blk00000001/sig000000f5 ;
  wire \blk00000001/sig000000f4 ;
  wire \blk00000001/sig000000f3 ;
  wire \blk00000001/sig000000f2 ;
  wire \blk00000001/sig000000f1 ;
  wire \blk00000001/sig000000f0 ;
  wire \blk00000001/sig000000ef ;
  wire \blk00000001/sig000000ee ;
  wire \blk00000001/sig000000ed ;
  wire \blk00000001/sig000000ec ;
  wire \blk00000001/sig000000eb ;
  wire \blk00000001/sig000000ea ;
  wire \blk00000001/sig000000e9 ;
  wire \blk00000001/sig000000e8 ;
  wire \blk00000001/sig000000e7 ;
  wire \blk00000001/sig000000e6 ;
  wire \blk00000001/sig000000e5 ;
  wire \blk00000001/sig000000e4 ;
  wire \blk00000001/sig000000e3 ;
  wire \blk00000001/sig000000e2 ;
  wire \blk00000001/sig000000e1 ;
  wire \blk00000001/sig000000e0 ;
  wire \blk00000001/sig000000df ;
  wire \blk00000001/sig000000de ;
  wire \blk00000001/sig000000dd ;
  wire \blk00000001/sig000000dc ;
  wire \blk00000001/sig000000db ;
  wire \blk00000001/sig000000da ;
  wire \blk00000001/sig000000d9 ;
  wire \blk00000001/sig000000d8 ;
  wire \blk00000001/sig000000d7 ;
  wire \blk00000001/sig000000d6 ;
  wire \blk00000001/sig000000d5 ;
  wire \blk00000001/sig000000d4 ;
  wire \blk00000001/sig000000d3 ;
  wire \blk00000001/sig000000d2 ;
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
  wire \NLW_blk00000001/blk0000001d_O_UNCONNECTED ;
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000142  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000153 ),
    .Q(s[18])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000141  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000111 ),
    .Q(\blk00000001/sig00000153 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000140  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000154 ),
    .Q(s[19])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000013f  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000112 ),
    .Q(\blk00000001/sig00000154 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000013e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000141 ),
    .Q(s[9])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000013d  (
    .A0(\blk00000001/sig00000047 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000dc ),
    .Q(\blk00000001/sig00000141 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000013c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000142 ),
    .Q(s[10])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000013b  (
    .A0(\blk00000001/sig00000047 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000dd ),
    .Q(\blk00000001/sig00000142 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000013a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000155 ),
    .Q(s[20])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000139  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000113 ),
    .Q(\blk00000001/sig00000155 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000138  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000143 ),
    .Q(s[11])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000137  (
    .A0(\blk00000001/sig00000047 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000de ),
    .Q(\blk00000001/sig00000143 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000136  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000144 ),
    .Q(s[12])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000135  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000cd ),
    .Q(\blk00000001/sig00000144 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000134  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000146 ),
    .Q(s[14])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000133  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000cf ),
    .Q(\blk00000001/sig00000146 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000132  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000147 ),
    .Q(s[15])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000131  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000d0 ),
    .Q(\blk00000001/sig00000147 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000130  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000145 ),
    .Q(s[13])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000012f  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000ce ),
    .Q(\blk00000001/sig00000145 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000012e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000148 ),
    .Q(s[16])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000012d  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000d1 ),
    .Q(\blk00000001/sig00000148 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000012c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000149 ),
    .Q(s[17])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000012b  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000d2 ),
    .Q(\blk00000001/sig00000149 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000012a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000130 ),
    .Q(s[1])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000129  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000047 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000060 ),
    .Q(\blk00000001/sig00000130 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000128  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000131 ),
    .Q(s[2])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000127  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000047 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000061 ),
    .Q(\blk00000001/sig00000131 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000126  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000012f ),
    .Q(s[0])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000125  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000047 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000005f ),
    .Q(\blk00000001/sig0000012f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000124  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000132 ),
    .Q(s[3])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000123  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000047 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000062 ),
    .Q(\blk00000001/sig00000132 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000122  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000133 ),
    .Q(s[4])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000121  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000047 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000063 ),
    .Q(\blk00000001/sig00000133 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000120  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000135 ),
    .Q(s[6])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000011f  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000047 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000065 ),
    .Q(\blk00000001/sig00000135 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000011e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000136 ),
    .Q(s[7])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000011d  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000047 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000066 ),
    .Q(\blk00000001/sig00000136 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000011c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000134 ),
    .Q(s[5])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000011b  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000047 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000064 ),
    .Q(\blk00000001/sig00000134 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000011a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000137 ),
    .Q(s[8])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000119  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000047 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000067 ),
    .Q(\blk00000001/sig00000137 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000118  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000e8 ),
    .Q(\blk00000001/sig000000f1 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000117  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000009f ),
    .Q(\blk00000001/sig000000e8 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000116  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000ea ),
    .Q(\blk00000001/sig000000f3 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000115  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000a1 ),
    .Q(\blk00000001/sig000000ea )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000114  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000eb ),
    .Q(\blk00000001/sig000000f4 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000113  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000a2 ),
    .Q(\blk00000001/sig000000eb )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000112  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000e9 ),
    .Q(\blk00000001/sig000000f2 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000111  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000a0 ),
    .Q(\blk00000001/sig000000e9 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000110  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000ec ),
    .Q(\blk00000001/sig000000f5 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000010f  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000a3 ),
    .Q(\blk00000001/sig000000ec )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000010e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000ed ),
    .Q(\blk00000001/sig000000f6 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000010d  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000a4 ),
    .Q(\blk00000001/sig000000ed )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000010c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000ef ),
    .Q(\blk00000001/sig000000f8 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000010b  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000a6 ),
    .Q(\blk00000001/sig000000ef )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000010a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000f0 ),
    .Q(\blk00000001/sig000000f9 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000109  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000a7 ),
    .Q(\blk00000001/sig000000f0 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000108  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000ee ),
    .Q(\blk00000001/sig000000f7 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000107  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000a5 ),
    .Q(\blk00000001/sig000000ee )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000106  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000e6 ),
    .Q(\blk00000001/sig000000e7 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000105  (
    .A0(\blk00000001/sig00000046 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000095 ),
    .Q(\blk00000001/sig000000e6 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000104  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000011b ),
    .Q(\blk00000001/sig00000125 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000103  (
    .A0(\blk00000001/sig00000047 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000bb ),
    .Q(\blk00000001/sig0000011b )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000102  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000011e ),
    .Q(\blk00000001/sig00000128 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000101  (
    .A0(\blk00000001/sig00000047 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000bd ),
    .Q(\blk00000001/sig0000011e )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000100  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000011f ),
    .Q(\blk00000001/sig00000129 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000ff  (
    .A0(\blk00000001/sig00000047 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000be ),
    .Q(\blk00000001/sig0000011f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000fe  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000011d ),
    .Q(\blk00000001/sig00000127 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000fd  (
    .A0(\blk00000001/sig00000047 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000bc ),
    .Q(\blk00000001/sig0000011d )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000fc  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000121 ),
    .Q(\blk00000001/sig0000012b )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000fb  (
    .A0(\blk00000001/sig00000047 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000c0 ),
    .Q(\blk00000001/sig00000121 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000fa  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000122 ),
    .Q(\blk00000001/sig0000012c )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000f9  (
    .A0(\blk00000001/sig00000047 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000c1 ),
    .Q(\blk00000001/sig00000122 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000f8  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000120 ),
    .Q(\blk00000001/sig0000012a )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000f7  (
    .A0(\blk00000001/sig00000047 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000bf ),
    .Q(\blk00000001/sig00000120 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000f6  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000124 ),
    .Q(\blk00000001/sig0000012e )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000f5  (
    .A0(\blk00000001/sig00000047 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000c3 ),
    .Q(\blk00000001/sig00000124 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000f4  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000011c ),
    .Q(\blk00000001/sig00000126 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000f3  (
    .A0(\blk00000001/sig00000047 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000c4 ),
    .Q(\blk00000001/sig0000011c )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000f2  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000123 ),
    .Q(\blk00000001/sig0000012d )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000f1  (
    .A0(\blk00000001/sig00000047 ),
    .A1(\blk00000001/sig00000046 ),
    .A2(\blk00000001/sig00000046 ),
    .A3(\blk00000001/sig00000046 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000c2 ),
    .Q(\blk00000001/sig00000123 )
  );
  VCC   \blk00000001/blk000000f0  (
    .P(\blk00000001/sig00000047 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000ef  (
    .I0(\blk00000001/sig000000f1 ),
    .O(\blk00000001/sig00000110 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000ee  (
    .I0(\blk00000001/sig000000f9 ),
    .O(\blk00000001/sig0000010f )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000ed  (
    .I0(\blk00000001/sig000000f2 ),
    .O(\blk00000001/sig00000108 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000ec  (
    .I0(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig00000109 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000eb  (
    .I0(\blk00000001/sig000000f4 ),
    .O(\blk00000001/sig0000010a )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000ea  (
    .I0(\blk00000001/sig000000f5 ),
    .O(\blk00000001/sig0000010b )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000e9  (
    .I0(\blk00000001/sig000000f6 ),
    .O(\blk00000001/sig0000010c )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000e8  (
    .I0(\blk00000001/sig000000f7 ),
    .O(\blk00000001/sig0000010d )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000e7  (
    .I0(\blk00000001/sig000000f8 ),
    .O(\blk00000001/sig0000010e )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000e6  (
    .I0(\blk00000001/sig0000007a ),
    .O(\blk00000001/sig000000db )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000e5  (
    .I0(\blk00000001/sig00000082 ),
    .O(\blk00000001/sig000000da )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000e4  (
    .I0(\blk00000001/sig0000007b ),
    .O(\blk00000001/sig000000d3 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000e3  (
    .I0(\blk00000001/sig0000007c ),
    .O(\blk00000001/sig000000d4 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000e2  (
    .I0(\blk00000001/sig0000007d ),
    .O(\blk00000001/sig000000d5 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000e1  (
    .I0(\blk00000001/sig0000007e ),
    .O(\blk00000001/sig000000d6 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000e0  (
    .I0(\blk00000001/sig0000007f ),
    .O(\blk00000001/sig000000d7 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000df  (
    .I0(\blk00000001/sig00000080 ),
    .O(\blk00000001/sig000000d8 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000de  (
    .I0(\blk00000001/sig00000081 ),
    .O(\blk00000001/sig000000d9 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000dd  (
    .I0(\blk00000001/sig00000125 ),
    .O(\blk00000001/sig0000017b )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000dc  (
    .I0(\blk00000001/sig00000126 ),
    .O(\blk00000001/sig0000017a )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000db  (
    .I0(\blk00000001/sig00000127 ),
    .O(\blk00000001/sig00000172 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000da  (
    .I0(\blk00000001/sig00000128 ),
    .O(\blk00000001/sig00000173 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000d9  (
    .I0(\blk00000001/sig00000129 ),
    .O(\blk00000001/sig00000174 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000d8  (
    .I0(\blk00000001/sig0000012a ),
    .O(\blk00000001/sig00000175 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000d7  (
    .I0(\blk00000001/sig0000012b ),
    .O(\blk00000001/sig00000176 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000d6  (
    .I0(\blk00000001/sig0000012c ),
    .O(\blk00000001/sig00000177 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000d5  (
    .I0(\blk00000001/sig0000012d ),
    .O(\blk00000001/sig00000178 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000d4  (
    .I0(\blk00000001/sig0000012e ),
    .O(\blk00000001/sig00000179 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d3  (
    .I0(b[27]),
    .I1(a[27]),
    .O(\blk00000001/sig000000b1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d2  (
    .I0(b[0]),
    .I1(a[0]),
    .O(\blk00000001/sig00000055 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d1  (
    .I0(b[9]),
    .I1(a[9]),
    .O(\blk00000001/sig00000071 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d0  (
    .I0(b[18]),
    .I1(a[18]),
    .O(\blk00000001/sig00000096 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000cf  (
    .I0(b[28]),
    .I1(a[28]),
    .O(\blk00000001/sig000000b2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000ce  (
    .I0(b[1]),
    .I1(a[1]),
    .O(\blk00000001/sig00000056 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000cd  (
    .I0(b[10]),
    .I1(a[10]),
    .O(\blk00000001/sig00000072 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000cc  (
    .I0(b[19]),
    .I1(a[19]),
    .O(\blk00000001/sig00000097 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000cb  (
    .I0(b[29]),
    .I1(a[29]),
    .O(\blk00000001/sig000000b3 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000ca  (
    .I0(b[2]),
    .I1(a[2]),
    .O(\blk00000001/sig00000057 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000c9  (
    .I0(b[11]),
    .I1(a[11]),
    .O(\blk00000001/sig00000073 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000c8  (
    .I0(b[20]),
    .I1(a[20]),
    .O(\blk00000001/sig00000098 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000c7  (
    .I0(b[30]),
    .I1(a[30]),
    .O(\blk00000001/sig000000b4 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \blk00000001/blk000000c6  (
    .I0(\blk00000001/sig00000083 ),
    .I1(\blk00000001/sig00000048 ),
    .O(\blk00000001/sig0000004a )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \blk00000001/blk000000c5  (
    .I0(\blk00000001/sig000000e7 ),
    .I1(\blk00000001/sig00000049 ),
    .O(\blk00000001/sig0000004b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000c4  (
    .I0(b[3]),
    .I1(a[3]),
    .O(\blk00000001/sig00000058 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000c3  (
    .I0(b[12]),
    .I1(a[12]),
    .O(\blk00000001/sig00000074 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000c2  (
    .I0(b[21]),
    .I1(a[21]),
    .O(\blk00000001/sig00000099 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000c1  (
    .I0(b[31]),
    .I1(a[30]),
    .O(\blk00000001/sig000000b5 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000c0  (
    .I0(b[4]),
    .I1(a[4]),
    .O(\blk00000001/sig00000059 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000bf  (
    .I0(b[13]),
    .I1(a[13]),
    .O(\blk00000001/sig00000075 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000be  (
    .I0(b[22]),
    .I1(a[22]),
    .O(\blk00000001/sig0000009a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000bd  (
    .I0(b[32]),
    .I1(a[30]),
    .O(\blk00000001/sig000000b6 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000bc  (
    .I0(b[5]),
    .I1(a[5]),
    .O(\blk00000001/sig0000005a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000bb  (
    .I0(b[14]),
    .I1(a[14]),
    .O(\blk00000001/sig00000076 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000ba  (
    .I0(b[23]),
    .I1(a[23]),
    .O(\blk00000001/sig0000009b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b9  (
    .I0(b[33]),
    .I1(a[30]),
    .O(\blk00000001/sig000000b7 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b8  (
    .I0(b[6]),
    .I1(a[6]),
    .O(\blk00000001/sig0000005b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b7  (
    .I0(b[15]),
    .I1(a[15]),
    .O(\blk00000001/sig00000077 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b6  (
    .I0(b[24]),
    .I1(a[24]),
    .O(\blk00000001/sig0000009c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b5  (
    .I0(b[34]),
    .I1(a[30]),
    .O(\blk00000001/sig000000b8 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b4  (
    .I0(b[7]),
    .I1(a[7]),
    .O(\blk00000001/sig0000005c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b3  (
    .I0(b[16]),
    .I1(a[16]),
    .O(\blk00000001/sig00000078 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b2  (
    .I0(b[25]),
    .I1(a[25]),
    .O(\blk00000001/sig0000009d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b1  (
    .I0(b[35]),
    .I1(a[30]),
    .O(\blk00000001/sig000000b9 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b0  (
    .I0(b[8]),
    .I1(a[8]),
    .O(\blk00000001/sig0000005d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000af  (
    .I0(b[17]),
    .I1(a[17]),
    .O(\blk00000001/sig00000079 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000ae  (
    .I0(b[26]),
    .I1(a[26]),
    .O(\blk00000001/sig0000009e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000ad  (
    .I0(b[35]),
    .I1(a[30]),
    .O(\blk00000001/sig000000ba )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ac  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000102 ),
    .Q(s[21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ab  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000103 ),
    .Q(s[22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000aa  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000104 ),
    .Q(s[23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000a9  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000105 ),
    .Q(s[24])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000a8  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000106 ),
    .Q(s[25])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000a7  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000107 ),
    .Q(s[26])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000a6  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000004b ),
    .Q(\blk00000001/sig0000011a )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000a5  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000004a ),
    .Q(\blk00000001/sig000000e5 )
  );
  MUXCY   \blk00000001/blk000000a4  (
    .CI(\blk00000001/sig00000046 ),
    .DI(a[18]),
    .S(\blk00000001/sig00000096 ),
    .O(\blk00000001/sig0000008d )
  );
  XORCY   \blk00000001/blk000000a3  (
    .CI(\blk00000001/sig00000046 ),
    .LI(\blk00000001/sig00000096 ),
    .O(\blk00000001/sig0000009f )
  );
  XORCY   \blk00000001/blk000000a2  (
    .CI(\blk00000001/sig00000094 ),
    .LI(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig000000a7 )
  );
  MUXCY   \blk00000001/blk000000a1  (
    .CI(\blk00000001/sig00000094 ),
    .DI(a[26]),
    .S(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig00000095 )
  );
  MUXCY   \blk00000001/blk000000a0  (
    .CI(\blk00000001/sig0000008d ),
    .DI(a[19]),
    .S(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig0000008e )
  );
  XORCY   \blk00000001/blk0000009f  (
    .CI(\blk00000001/sig0000008d ),
    .LI(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig000000a0 )
  );
  MUXCY   \blk00000001/blk0000009e  (
    .CI(\blk00000001/sig0000008e ),
    .DI(a[20]),
    .S(\blk00000001/sig00000098 ),
    .O(\blk00000001/sig0000008f )
  );
  XORCY   \blk00000001/blk0000009d  (
    .CI(\blk00000001/sig0000008e ),
    .LI(\blk00000001/sig00000098 ),
    .O(\blk00000001/sig000000a1 )
  );
  MUXCY   \blk00000001/blk0000009c  (
    .CI(\blk00000001/sig0000008f ),
    .DI(a[21]),
    .S(\blk00000001/sig00000099 ),
    .O(\blk00000001/sig00000090 )
  );
  XORCY   \blk00000001/blk0000009b  (
    .CI(\blk00000001/sig0000008f ),
    .LI(\blk00000001/sig00000099 ),
    .O(\blk00000001/sig000000a2 )
  );
  MUXCY   \blk00000001/blk0000009a  (
    .CI(\blk00000001/sig00000090 ),
    .DI(a[22]),
    .S(\blk00000001/sig0000009a ),
    .O(\blk00000001/sig00000091 )
  );
  XORCY   \blk00000001/blk00000099  (
    .CI(\blk00000001/sig00000090 ),
    .LI(\blk00000001/sig0000009a ),
    .O(\blk00000001/sig000000a3 )
  );
  MUXCY   \blk00000001/blk00000098  (
    .CI(\blk00000001/sig00000091 ),
    .DI(a[23]),
    .S(\blk00000001/sig0000009b ),
    .O(\blk00000001/sig00000092 )
  );
  XORCY   \blk00000001/blk00000097  (
    .CI(\blk00000001/sig00000091 ),
    .LI(\blk00000001/sig0000009b ),
    .O(\blk00000001/sig000000a4 )
  );
  MUXCY   \blk00000001/blk00000096  (
    .CI(\blk00000001/sig00000092 ),
    .DI(a[24]),
    .S(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig00000093 )
  );
  XORCY   \blk00000001/blk00000095  (
    .CI(\blk00000001/sig00000092 ),
    .LI(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig000000a5 )
  );
  MUXCY   \blk00000001/blk00000094  (
    .CI(\blk00000001/sig00000093 ),
    .DI(a[25]),
    .S(\blk00000001/sig0000009d ),
    .O(\blk00000001/sig00000094 )
  );
  XORCY   \blk00000001/blk00000093  (
    .CI(\blk00000001/sig00000093 ),
    .LI(\blk00000001/sig0000009d ),
    .O(\blk00000001/sig000000a6 )
  );
  MUXCY   \blk00000001/blk00000092  (
    .CI(\blk00000001/sig00000046 ),
    .DI(a[9]),
    .S(\blk00000001/sig00000071 ),
    .O(\blk00000001/sig00000068 )
  );
  XORCY   \blk00000001/blk00000091  (
    .CI(\blk00000001/sig00000046 ),
    .LI(\blk00000001/sig00000071 ),
    .O(\blk00000001/sig00000084 )
  );
  XORCY   \blk00000001/blk00000090  (
    .CI(\blk00000001/sig0000006f ),
    .LI(\blk00000001/sig00000079 ),
    .O(\blk00000001/sig0000008c )
  );
  MUXCY   \blk00000001/blk0000008f  (
    .CI(\blk00000001/sig0000006f ),
    .DI(a[17]),
    .S(\blk00000001/sig00000079 ),
    .O(\blk00000001/sig00000070 )
  );
  MUXCY   \blk00000001/blk0000008e  (
    .CI(\blk00000001/sig00000068 ),
    .DI(a[10]),
    .S(\blk00000001/sig00000072 ),
    .O(\blk00000001/sig00000069 )
  );
  XORCY   \blk00000001/blk0000008d  (
    .CI(\blk00000001/sig00000068 ),
    .LI(\blk00000001/sig00000072 ),
    .O(\blk00000001/sig00000085 )
  );
  MUXCY   \blk00000001/blk0000008c  (
    .CI(\blk00000001/sig00000069 ),
    .DI(a[11]),
    .S(\blk00000001/sig00000073 ),
    .O(\blk00000001/sig0000006a )
  );
  XORCY   \blk00000001/blk0000008b  (
    .CI(\blk00000001/sig00000069 ),
    .LI(\blk00000001/sig00000073 ),
    .O(\blk00000001/sig00000086 )
  );
  MUXCY   \blk00000001/blk0000008a  (
    .CI(\blk00000001/sig0000006a ),
    .DI(a[12]),
    .S(\blk00000001/sig00000074 ),
    .O(\blk00000001/sig0000006b )
  );
  XORCY   \blk00000001/blk00000089  (
    .CI(\blk00000001/sig0000006a ),
    .LI(\blk00000001/sig00000074 ),
    .O(\blk00000001/sig00000087 )
  );
  MUXCY   \blk00000001/blk00000088  (
    .CI(\blk00000001/sig0000006b ),
    .DI(a[13]),
    .S(\blk00000001/sig00000075 ),
    .O(\blk00000001/sig0000006c )
  );
  XORCY   \blk00000001/blk00000087  (
    .CI(\blk00000001/sig0000006b ),
    .LI(\blk00000001/sig00000075 ),
    .O(\blk00000001/sig00000088 )
  );
  MUXCY   \blk00000001/blk00000086  (
    .CI(\blk00000001/sig0000006c ),
    .DI(a[14]),
    .S(\blk00000001/sig00000076 ),
    .O(\blk00000001/sig0000006d )
  );
  XORCY   \blk00000001/blk00000085  (
    .CI(\blk00000001/sig0000006c ),
    .LI(\blk00000001/sig00000076 ),
    .O(\blk00000001/sig00000089 )
  );
  MUXCY   \blk00000001/blk00000084  (
    .CI(\blk00000001/sig0000006d ),
    .DI(a[15]),
    .S(\blk00000001/sig00000077 ),
    .O(\blk00000001/sig0000006e )
  );
  XORCY   \blk00000001/blk00000083  (
    .CI(\blk00000001/sig0000006d ),
    .LI(\blk00000001/sig00000077 ),
    .O(\blk00000001/sig0000008a )
  );
  MUXCY   \blk00000001/blk00000082  (
    .CI(\blk00000001/sig0000006e ),
    .DI(a[16]),
    .S(\blk00000001/sig00000078 ),
    .O(\blk00000001/sig0000006f )
  );
  XORCY   \blk00000001/blk00000081  (
    .CI(\blk00000001/sig0000006e ),
    .LI(\blk00000001/sig00000078 ),
    .O(\blk00000001/sig0000008b )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000080  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000070 ),
    .Q(\blk00000001/sig00000083 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000084 ),
    .Q(\blk00000001/sig0000007a )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000085 ),
    .Q(\blk00000001/sig0000007b )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000086 ),
    .Q(\blk00000001/sig0000007c )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000087 ),
    .Q(\blk00000001/sig0000007d )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000088 ),
    .Q(\blk00000001/sig0000007e )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000089 ),
    .Q(\blk00000001/sig0000007f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000079  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000008a ),
    .Q(\blk00000001/sig00000080 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000078  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000008b ),
    .Q(\blk00000001/sig00000081 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000077  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000008c ),
    .Q(\blk00000001/sig00000082 )
  );
  MUXCY   \blk00000001/blk00000076  (
    .CI(\blk00000001/sig00000046 ),
    .DI(a[0]),
    .S(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig0000004c )
  );
  XORCY   \blk00000001/blk00000075  (
    .CI(\blk00000001/sig00000046 ),
    .LI(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig0000005f )
  );
  XORCY   \blk00000001/blk00000074  (
    .CI(\blk00000001/sig00000053 ),
    .LI(\blk00000001/sig0000005d ),
    .O(\blk00000001/sig00000067 )
  );
  MUXCY   \blk00000001/blk00000073  (
    .CI(\blk00000001/sig00000053 ),
    .DI(a[8]),
    .S(\blk00000001/sig0000005d ),
    .O(\blk00000001/sig00000054 )
  );
  MUXCY   \blk00000001/blk00000072  (
    .CI(\blk00000001/sig0000004c ),
    .DI(a[1]),
    .S(\blk00000001/sig00000056 ),
    .O(\blk00000001/sig0000004d )
  );
  XORCY   \blk00000001/blk00000071  (
    .CI(\blk00000001/sig0000004c ),
    .LI(\blk00000001/sig00000056 ),
    .O(\blk00000001/sig00000060 )
  );
  MUXCY   \blk00000001/blk00000070  (
    .CI(\blk00000001/sig0000004d ),
    .DI(a[2]),
    .S(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig0000004e )
  );
  XORCY   \blk00000001/blk0000006f  (
    .CI(\blk00000001/sig0000004d ),
    .LI(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000061 )
  );
  MUXCY   \blk00000001/blk0000006e  (
    .CI(\blk00000001/sig0000004e ),
    .DI(a[3]),
    .S(\blk00000001/sig00000058 ),
    .O(\blk00000001/sig0000004f )
  );
  XORCY   \blk00000001/blk0000006d  (
    .CI(\blk00000001/sig0000004e ),
    .LI(\blk00000001/sig00000058 ),
    .O(\blk00000001/sig00000062 )
  );
  MUXCY   \blk00000001/blk0000006c  (
    .CI(\blk00000001/sig0000004f ),
    .DI(a[4]),
    .S(\blk00000001/sig00000059 ),
    .O(\blk00000001/sig00000050 )
  );
  XORCY   \blk00000001/blk0000006b  (
    .CI(\blk00000001/sig0000004f ),
    .LI(\blk00000001/sig00000059 ),
    .O(\blk00000001/sig00000063 )
  );
  MUXCY   \blk00000001/blk0000006a  (
    .CI(\blk00000001/sig00000050 ),
    .DI(a[5]),
    .S(\blk00000001/sig0000005a ),
    .O(\blk00000001/sig00000051 )
  );
  XORCY   \blk00000001/blk00000069  (
    .CI(\blk00000001/sig00000050 ),
    .LI(\blk00000001/sig0000005a ),
    .O(\blk00000001/sig00000064 )
  );
  MUXCY   \blk00000001/blk00000068  (
    .CI(\blk00000001/sig00000051 ),
    .DI(a[6]),
    .S(\blk00000001/sig0000005b ),
    .O(\blk00000001/sig00000052 )
  );
  XORCY   \blk00000001/blk00000067  (
    .CI(\blk00000001/sig00000051 ),
    .LI(\blk00000001/sig0000005b ),
    .O(\blk00000001/sig00000065 )
  );
  MUXCY   \blk00000001/blk00000066  (
    .CI(\blk00000001/sig00000052 ),
    .DI(a[7]),
    .S(\blk00000001/sig0000005c ),
    .O(\blk00000001/sig00000053 )
  );
  XORCY   \blk00000001/blk00000065  (
    .CI(\blk00000001/sig00000052 ),
    .LI(\blk00000001/sig0000005c ),
    .O(\blk00000001/sig00000066 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000064  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000054 ),
    .Q(\blk00000001/sig0000005e )
  );
  MUXCY   \blk00000001/blk00000063  (
    .CI(\blk00000001/sig00000046 ),
    .DI(a[27]),
    .S(\blk00000001/sig000000b1 ),
    .O(\blk00000001/sig000000a8 )
  );
  XORCY   \blk00000001/blk00000062  (
    .CI(\blk00000001/sig00000046 ),
    .LI(\blk00000001/sig000000b1 ),
    .O(\blk00000001/sig000000bb )
  );
  XORCY   \blk00000001/blk00000061  (
    .CI(\blk00000001/sig000000b0 ),
    .LI(\blk00000001/sig000000ba ),
    .O(\blk00000001/sig000000c4 )
  );
  MUXCY   \blk00000001/blk00000060  (
    .CI(\blk00000001/sig000000a8 ),
    .DI(a[28]),
    .S(\blk00000001/sig000000b2 ),
    .O(\blk00000001/sig000000a9 )
  );
  XORCY   \blk00000001/blk0000005f  (
    .CI(\blk00000001/sig000000a8 ),
    .LI(\blk00000001/sig000000b2 ),
    .O(\blk00000001/sig000000bc )
  );
  MUXCY   \blk00000001/blk0000005e  (
    .CI(\blk00000001/sig000000a9 ),
    .DI(a[29]),
    .S(\blk00000001/sig000000b3 ),
    .O(\blk00000001/sig000000aa )
  );
  XORCY   \blk00000001/blk0000005d  (
    .CI(\blk00000001/sig000000a9 ),
    .LI(\blk00000001/sig000000b3 ),
    .O(\blk00000001/sig000000bd )
  );
  MUXCY   \blk00000001/blk0000005c  (
    .CI(\blk00000001/sig000000aa ),
    .DI(a[30]),
    .S(\blk00000001/sig000000b4 ),
    .O(\blk00000001/sig000000ab )
  );
  XORCY   \blk00000001/blk0000005b  (
    .CI(\blk00000001/sig000000aa ),
    .LI(\blk00000001/sig000000b4 ),
    .O(\blk00000001/sig000000be )
  );
  MUXCY   \blk00000001/blk0000005a  (
    .CI(\blk00000001/sig000000ab ),
    .DI(a[30]),
    .S(\blk00000001/sig000000b5 ),
    .O(\blk00000001/sig000000ac )
  );
  XORCY   \blk00000001/blk00000059  (
    .CI(\blk00000001/sig000000ab ),
    .LI(\blk00000001/sig000000b5 ),
    .O(\blk00000001/sig000000bf )
  );
  MUXCY   \blk00000001/blk00000058  (
    .CI(\blk00000001/sig000000ac ),
    .DI(a[30]),
    .S(\blk00000001/sig000000b6 ),
    .O(\blk00000001/sig000000ad )
  );
  XORCY   \blk00000001/blk00000057  (
    .CI(\blk00000001/sig000000ac ),
    .LI(\blk00000001/sig000000b6 ),
    .O(\blk00000001/sig000000c0 )
  );
  MUXCY   \blk00000001/blk00000056  (
    .CI(\blk00000001/sig000000ad ),
    .DI(a[30]),
    .S(\blk00000001/sig000000b7 ),
    .O(\blk00000001/sig000000ae )
  );
  XORCY   \blk00000001/blk00000055  (
    .CI(\blk00000001/sig000000ad ),
    .LI(\blk00000001/sig000000b7 ),
    .O(\blk00000001/sig000000c1 )
  );
  MUXCY   \blk00000001/blk00000054  (
    .CI(\blk00000001/sig000000ae ),
    .DI(a[30]),
    .S(\blk00000001/sig000000b8 ),
    .O(\blk00000001/sig000000af )
  );
  XORCY   \blk00000001/blk00000053  (
    .CI(\blk00000001/sig000000ae ),
    .LI(\blk00000001/sig000000b8 ),
    .O(\blk00000001/sig000000c2 )
  );
  MUXCY   \blk00000001/blk00000052  (
    .CI(\blk00000001/sig000000af ),
    .DI(a[30]),
    .S(\blk00000001/sig000000b9 ),
    .O(\blk00000001/sig000000b0 )
  );
  XORCY   \blk00000001/blk00000051  (
    .CI(\blk00000001/sig000000af ),
    .LI(\blk00000001/sig000000b9 ),
    .O(\blk00000001/sig000000c3 )
  );
  MUXCY   \blk00000001/blk00000050  (
    .CI(\blk00000001/sig000000e5 ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig00000110 ),
    .O(\blk00000001/sig000000fa )
  );
  XORCY   \blk00000001/blk0000004f  (
    .CI(\blk00000001/sig000000e5 ),
    .LI(\blk00000001/sig00000110 ),
    .O(\blk00000001/sig00000111 )
  );
  XORCY   \blk00000001/blk0000004e  (
    .CI(\blk00000001/sig00000101 ),
    .LI(\blk00000001/sig0000010f ),
    .O(\blk00000001/sig00000119 )
  );
  MUXCY   \blk00000001/blk0000004d  (
    .CI(\blk00000001/sig00000101 ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig0000010f ),
    .O(\blk00000001/sig00000049 )
  );
  MUXCY   \blk00000001/blk0000004c  (
    .CI(\blk00000001/sig000000fa ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig00000108 ),
    .O(\blk00000001/sig000000fb )
  );
  XORCY   \blk00000001/blk0000004b  (
    .CI(\blk00000001/sig000000fa ),
    .LI(\blk00000001/sig00000108 ),
    .O(\blk00000001/sig00000112 )
  );
  MUXCY   \blk00000001/blk0000004a  (
    .CI(\blk00000001/sig000000fb ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig00000109 ),
    .O(\blk00000001/sig000000fc )
  );
  XORCY   \blk00000001/blk00000049  (
    .CI(\blk00000001/sig000000fb ),
    .LI(\blk00000001/sig00000109 ),
    .O(\blk00000001/sig00000113 )
  );
  MUXCY   \blk00000001/blk00000048  (
    .CI(\blk00000001/sig000000fc ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig0000010a ),
    .O(\blk00000001/sig000000fd )
  );
  XORCY   \blk00000001/blk00000047  (
    .CI(\blk00000001/sig000000fc ),
    .LI(\blk00000001/sig0000010a ),
    .O(\blk00000001/sig00000114 )
  );
  MUXCY   \blk00000001/blk00000046  (
    .CI(\blk00000001/sig000000fd ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig0000010b ),
    .O(\blk00000001/sig000000fe )
  );
  XORCY   \blk00000001/blk00000045  (
    .CI(\blk00000001/sig000000fd ),
    .LI(\blk00000001/sig0000010b ),
    .O(\blk00000001/sig00000115 )
  );
  MUXCY   \blk00000001/blk00000044  (
    .CI(\blk00000001/sig000000fe ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig0000010c ),
    .O(\blk00000001/sig000000ff )
  );
  XORCY   \blk00000001/blk00000043  (
    .CI(\blk00000001/sig000000fe ),
    .LI(\blk00000001/sig0000010c ),
    .O(\blk00000001/sig00000116 )
  );
  MUXCY   \blk00000001/blk00000042  (
    .CI(\blk00000001/sig000000ff ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig0000010d ),
    .O(\blk00000001/sig00000100 )
  );
  XORCY   \blk00000001/blk00000041  (
    .CI(\blk00000001/sig000000ff ),
    .LI(\blk00000001/sig0000010d ),
    .O(\blk00000001/sig00000117 )
  );
  MUXCY   \blk00000001/blk00000040  (
    .CI(\blk00000001/sig00000100 ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig0000010e ),
    .O(\blk00000001/sig00000101 )
  );
  XORCY   \blk00000001/blk0000003f  (
    .CI(\blk00000001/sig00000100 ),
    .LI(\blk00000001/sig0000010e ),
    .O(\blk00000001/sig00000118 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000114 ),
    .Q(\blk00000001/sig00000102 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000115 ),
    .Q(\blk00000001/sig00000103 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000116 ),
    .Q(\blk00000001/sig00000104 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000117 ),
    .Q(\blk00000001/sig00000105 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000118 ),
    .Q(\blk00000001/sig00000106 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000039  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000119 ),
    .Q(\blk00000001/sig00000107 )
  );
  MUXCY   \blk00000001/blk00000038  (
    .CI(\blk00000001/sig0000005e ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig000000db ),
    .O(\blk00000001/sig000000c5 )
  );
  XORCY   \blk00000001/blk00000037  (
    .CI(\blk00000001/sig0000005e ),
    .LI(\blk00000001/sig000000db ),
    .O(\blk00000001/sig000000dc )
  );
  XORCY   \blk00000001/blk00000036  (
    .CI(\blk00000001/sig000000cc ),
    .LI(\blk00000001/sig000000da ),
    .O(\blk00000001/sig000000e4 )
  );
  MUXCY   \blk00000001/blk00000035  (
    .CI(\blk00000001/sig000000cc ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig000000da ),
    .O(\blk00000001/sig00000048 )
  );
  MUXCY   \blk00000001/blk00000034  (
    .CI(\blk00000001/sig000000c5 ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig000000d3 ),
    .O(\blk00000001/sig000000c6 )
  );
  XORCY   \blk00000001/blk00000033  (
    .CI(\blk00000001/sig000000c5 ),
    .LI(\blk00000001/sig000000d3 ),
    .O(\blk00000001/sig000000dd )
  );
  MUXCY   \blk00000001/blk00000032  (
    .CI(\blk00000001/sig000000c6 ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig000000d4 ),
    .O(\blk00000001/sig000000c7 )
  );
  XORCY   \blk00000001/blk00000031  (
    .CI(\blk00000001/sig000000c6 ),
    .LI(\blk00000001/sig000000d4 ),
    .O(\blk00000001/sig000000de )
  );
  MUXCY   \blk00000001/blk00000030  (
    .CI(\blk00000001/sig000000c7 ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig000000d5 ),
    .O(\blk00000001/sig000000c8 )
  );
  XORCY   \blk00000001/blk0000002f  (
    .CI(\blk00000001/sig000000c7 ),
    .LI(\blk00000001/sig000000d5 ),
    .O(\blk00000001/sig000000df )
  );
  MUXCY   \blk00000001/blk0000002e  (
    .CI(\blk00000001/sig000000c8 ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig000000d6 ),
    .O(\blk00000001/sig000000c9 )
  );
  XORCY   \blk00000001/blk0000002d  (
    .CI(\blk00000001/sig000000c8 ),
    .LI(\blk00000001/sig000000d6 ),
    .O(\blk00000001/sig000000e0 )
  );
  MUXCY   \blk00000001/blk0000002c  (
    .CI(\blk00000001/sig000000c9 ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig000000d7 ),
    .O(\blk00000001/sig000000ca )
  );
  XORCY   \blk00000001/blk0000002b  (
    .CI(\blk00000001/sig000000c9 ),
    .LI(\blk00000001/sig000000d7 ),
    .O(\blk00000001/sig000000e1 )
  );
  MUXCY   \blk00000001/blk0000002a  (
    .CI(\blk00000001/sig000000ca ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig000000d8 ),
    .O(\blk00000001/sig000000cb )
  );
  XORCY   \blk00000001/blk00000029  (
    .CI(\blk00000001/sig000000ca ),
    .LI(\blk00000001/sig000000d8 ),
    .O(\blk00000001/sig000000e2 )
  );
  MUXCY   \blk00000001/blk00000028  (
    .CI(\blk00000001/sig000000cb ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig000000d9 ),
    .O(\blk00000001/sig000000cc )
  );
  XORCY   \blk00000001/blk00000027  (
    .CI(\blk00000001/sig000000cb ),
    .LI(\blk00000001/sig000000d9 ),
    .O(\blk00000001/sig000000e3 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000026  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000df ),
    .Q(\blk00000001/sig000000cd )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000025  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000e0 ),
    .Q(\blk00000001/sig000000ce )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000024  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000e1 ),
    .Q(\blk00000001/sig000000cf )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000023  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000e2 ),
    .Q(\blk00000001/sig000000d0 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000022  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000e3 ),
    .Q(\blk00000001/sig000000d1 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000021  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000e4 ),
    .Q(\blk00000001/sig000000d2 )
  );
  MUXCY   \blk00000001/blk00000020  (
    .CI(\blk00000001/sig0000011a ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig0000017b ),
    .O(\blk00000001/sig0000015f )
  );
  XORCY   \blk00000001/blk0000001f  (
    .CI(\blk00000001/sig0000011a ),
    .LI(\blk00000001/sig0000017b ),
    .O(\blk00000001/sig0000017c )
  );
  XORCY   \blk00000001/blk0000001e  (
    .CI(\blk00000001/sig00000167 ),
    .LI(\blk00000001/sig0000017a ),
    .O(\blk00000001/sig00000185 )
  );
  MUXCY   \blk00000001/blk0000001d  (
    .CI(\blk00000001/sig00000167 ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig0000017a ),
    .O(\NLW_blk00000001/blk0000001d_O_UNCONNECTED )
  );
  MUXCY   \blk00000001/blk0000001c  (
    .CI(\blk00000001/sig0000015f ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig00000172 ),
    .O(\blk00000001/sig00000160 )
  );
  XORCY   \blk00000001/blk0000001b  (
    .CI(\blk00000001/sig0000015f ),
    .LI(\blk00000001/sig00000172 ),
    .O(\blk00000001/sig0000017d )
  );
  MUXCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig00000160 ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig00000173 ),
    .O(\blk00000001/sig00000161 )
  );
  XORCY   \blk00000001/blk00000019  (
    .CI(\blk00000001/sig00000160 ),
    .LI(\blk00000001/sig00000173 ),
    .O(\blk00000001/sig0000017e )
  );
  MUXCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig00000161 ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig00000174 ),
    .O(\blk00000001/sig00000162 )
  );
  XORCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig00000161 ),
    .LI(\blk00000001/sig00000174 ),
    .O(\blk00000001/sig0000017f )
  );
  MUXCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig00000162 ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig00000175 ),
    .O(\blk00000001/sig00000163 )
  );
  XORCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig00000162 ),
    .LI(\blk00000001/sig00000175 ),
    .O(\blk00000001/sig00000180 )
  );
  MUXCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig00000163 ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig00000176 ),
    .O(\blk00000001/sig00000164 )
  );
  XORCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig00000163 ),
    .LI(\blk00000001/sig00000176 ),
    .O(\blk00000001/sig00000181 )
  );
  MUXCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig00000164 ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig00000177 ),
    .O(\blk00000001/sig00000165 )
  );
  XORCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig00000164 ),
    .LI(\blk00000001/sig00000177 ),
    .O(\blk00000001/sig00000182 )
  );
  MUXCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig00000165 ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig00000178 ),
    .O(\blk00000001/sig00000166 )
  );
  XORCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig00000165 ),
    .LI(\blk00000001/sig00000178 ),
    .O(\blk00000001/sig00000183 )
  );
  MUXCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig00000166 ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/sig00000179 ),
    .O(\blk00000001/sig00000167 )
  );
  XORCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig00000166 ),
    .LI(\blk00000001/sig00000179 ),
    .O(\blk00000001/sig00000184 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000017c ),
    .Q(s[27])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000017d ),
    .Q(s[28])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000017e ),
    .Q(s[29])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000009  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000017f ),
    .Q(s[30])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000008  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000180 ),
    .Q(s[31])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000007  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000181 ),
    .Q(s[32])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000006  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000182 ),
    .Q(s[33])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000005  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000183 ),
    .Q(s[34])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000004  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000184 ),
    .Q(s[35])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000003  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000185 ),
    .Q(s[36])
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig00000046 )
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
