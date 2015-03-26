////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: final_sum.v
// /___/   /\     Timestamp: Thu Mar 26 21:32:22 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/vka/Programming/VHDL/workspace/sysrek/arithm/ipcore_dir/tmp/_cg/final_sum.ngc /home/vka/Programming/VHDL/workspace/sysrek/arithm/ipcore_dir/tmp/_cg/final_sum.v 
// Device	: 3s500efg320-4
// Input file	: /home/vka/Programming/VHDL/workspace/sysrek/arithm/ipcore_dir/tmp/_cg/final_sum.ngc
// Output file	: /home/vka/Programming/VHDL/workspace/sysrek/arithm/ipcore_dir/tmp/_cg/final_sum.v
// # of Modules	: 1
// Design Name	: final_sum
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

module final_sum (
  clk, ce, s, a, b
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  output [40 : 0] s;
  input [39 : 0] a;
  input [39 : 0] b;
  
  // synthesis translate_off
  
  wire \blk00000001/sig000001cb ;
  wire \blk00000001/sig000001ca ;
  wire \blk00000001/sig000001c9 ;
  wire \blk00000001/sig000001c8 ;
  wire \blk00000001/sig000001c7 ;
  wire \blk00000001/sig000001c6 ;
  wire \blk00000001/sig000001c5 ;
  wire \blk00000001/sig000001c4 ;
  wire \blk00000001/sig000001c3 ;
  wire \blk00000001/sig000001c2 ;
  wire \blk00000001/sig000001c1 ;
  wire \blk00000001/sig000001c0 ;
  wire \blk00000001/sig000001bf ;
  wire \blk00000001/sig000001be ;
  wire \blk00000001/sig000001bd ;
  wire \blk00000001/sig000001bc ;
  wire \blk00000001/sig000001bb ;
  wire \blk00000001/sig000001ba ;
  wire \blk00000001/sig000001b0 ;
  wire \blk00000001/sig000001af ;
  wire \blk00000001/sig000001ae ;
  wire \blk00000001/sig000001ad ;
  wire \blk00000001/sig000001ac ;
  wire \blk00000001/sig000001ab ;
  wire \blk00000001/sig000001aa ;
  wire \blk00000001/sig000001a9 ;
  wire \blk00000001/sig000001a0 ;
  wire \blk00000001/sig0000019f ;
  wire \blk00000001/sig00000196 ;
  wire \blk00000001/sig00000195 ;
  wire \blk00000001/sig00000194 ;
  wire \blk00000001/sig00000193 ;
  wire \blk00000001/sig00000192 ;
  wire \blk00000001/sig00000191 ;
  wire \blk00000001/sig00000190 ;
  wire \blk00000001/sig0000018f ;
  wire \blk00000001/sig00000186 ;
  wire \blk00000001/sig00000185 ;
  wire \blk00000001/sig00000184 ;
  wire \blk00000001/sig00000183 ;
  wire \blk00000001/sig00000182 ;
  wire \blk00000001/sig00000181 ;
  wire \blk00000001/sig00000180 ;
  wire \blk00000001/sig0000017f ;
  wire \blk00000001/sig00000176 ;
  wire \blk00000001/sig00000175 ;
  wire \blk00000001/sig00000174 ;
  wire \blk00000001/sig00000173 ;
  wire \blk00000001/sig00000172 ;
  wire \blk00000001/sig00000171 ;
  wire \blk00000001/sig00000170 ;
  wire \blk00000001/sig0000016f ;
  wire \blk00000001/sig0000016e ;
  wire \blk00000001/sig0000016d ;
  wire \blk00000001/sig0000016c ;
  wire \blk00000001/sig0000016b ;
  wire \blk00000001/sig0000016a ;
  wire \blk00000001/sig00000169 ;
  wire \blk00000001/sig00000168 ;
  wire \blk00000001/sig00000167 ;
  wire \blk00000001/sig00000166 ;
  wire \blk00000001/sig00000165 ;
  wire \blk00000001/sig00000164 ;
  wire \blk00000001/sig00000163 ;
  wire \blk00000001/sig00000162 ;
  wire \blk00000001/sig00000161 ;
  wire \blk00000001/sig00000160 ;
  wire \blk00000001/sig0000015f ;
  wire \blk00000001/sig0000015e ;
  wire \blk00000001/sig0000015d ;
  wire \blk00000001/sig0000015c ;
  wire \blk00000001/sig0000015b ;
  wire \blk00000001/sig0000015a ;
  wire \blk00000001/sig00000159 ;
  wire \blk00000001/sig00000158 ;
  wire \blk00000001/sig00000157 ;
  wire \blk00000001/sig00000156 ;
  wire \blk00000001/sig00000155 ;
  wire \blk00000001/sig00000154 ;
  wire \blk00000001/sig00000153 ;
  wire \blk00000001/sig00000152 ;
  wire \blk00000001/sig00000151 ;
  wire \blk00000001/sig00000150 ;
  wire \blk00000001/sig0000014f ;
  wire \blk00000001/sig0000014e ;
  wire \blk00000001/sig0000014d ;
  wire \blk00000001/sig0000014c ;
  wire \blk00000001/sig0000014b ;
  wire \blk00000001/sig0000014a ;
  wire \blk00000001/sig00000149 ;
  wire \blk00000001/sig00000148 ;
  wire \blk00000001/sig00000147 ;
  wire \blk00000001/sig00000146 ;
  wire \blk00000001/sig00000145 ;
  wire \blk00000001/sig00000144 ;
  wire \blk00000001/sig00000143 ;
  wire \blk00000001/sig00000142 ;
  wire \blk00000001/sig00000141 ;
  wire \blk00000001/sig00000140 ;
  wire \blk00000001/sig0000013f ;
  wire \blk00000001/sig0000013e ;
  wire \blk00000001/sig0000013d ;
  wire \blk00000001/sig0000013c ;
  wire \blk00000001/sig0000013b ;
  wire \blk00000001/sig0000013a ;
  wire \blk00000001/sig00000139 ;
  wire \blk00000001/sig00000138 ;
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
  wire \NLW_blk00000001/blk0000001a_O_UNCONNECTED ;
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000017b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000001a0 ),
    .Q(s[25])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000017a  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000155 ),
    .Q(\blk00000001/sig000001a0 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000179  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000018f ),
    .Q(s[16])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000178  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000124 ),
    .Q(\blk00000001/sig0000018f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000177  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000019f ),
    .Q(s[24])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000176  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000154 ),
    .Q(\blk00000001/sig0000019f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000175  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000191 ),
    .Q(s[18])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000174  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000116 ),
    .Q(\blk00000001/sig00000191 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000173  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000192 ),
    .Q(s[19])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000172  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000117 ),
    .Q(\blk00000001/sig00000192 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000171  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000190 ),
    .Q(s[17])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000170  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000125 ),
    .Q(\blk00000001/sig00000190 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000016f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000194 ),
    .Q(s[21])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000016e  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000119 ),
    .Q(\blk00000001/sig00000194 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000016d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000195 ),
    .Q(s[22])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000016c  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000011a ),
    .Q(\blk00000001/sig00000195 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000016b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000193 ),
    .Q(s[20])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000016a  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000118 ),
    .Q(\blk00000001/sig00000193 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000169  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000196 ),
    .Q(s[23])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000168  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000011b ),
    .Q(\blk00000001/sig00000196 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000167  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000017f ),
    .Q(s[8])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000166  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000054 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000f4 ),
    .Q(\blk00000001/sig0000017f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000165  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000180 ),
    .Q(s[9])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000164  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000054 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000f5 ),
    .Q(\blk00000001/sig00000180 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000163  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000181 ),
    .Q(s[10])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000162  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000e6 ),
    .Q(\blk00000001/sig00000181 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000161  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000183 ),
    .Q(s[12])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000160  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000e8 ),
    .Q(\blk00000001/sig00000183 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000015f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000184 ),
    .Q(s[13])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000015e  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000e9 ),
    .Q(\blk00000001/sig00000184 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000015d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000182 ),
    .Q(s[11])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000015c  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000e7 ),
    .Q(\blk00000001/sig00000182 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000015b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000186 ),
    .Q(s[15])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000015a  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000eb ),
    .Q(\blk00000001/sig00000186 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000159  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000016f ),
    .Q(s[0])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000158  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000054 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000006c ),
    .Q(\blk00000001/sig0000016f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000157  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000185 ),
    .Q(s[14])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000156  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000ea ),
    .Q(\blk00000001/sig00000185 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000155  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000171 ),
    .Q(s[2])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000154  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000054 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000006e ),
    .Q(\blk00000001/sig00000171 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000153  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000172 ),
    .Q(s[3])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000152  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000054 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000006f ),
    .Q(\blk00000001/sig00000172 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000151  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000170 ),
    .Q(s[1])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000150  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000054 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000006d ),
    .Q(\blk00000001/sig00000170 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000014f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000173 ),
    .Q(s[4])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000014e  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000054 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000070 ),
    .Q(\blk00000001/sig00000173 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000014d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000174 ),
    .Q(s[5])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000014c  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000054 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000071 ),
    .Q(\blk00000001/sig00000174 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000014b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000175 ),
    .Q(s[6])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000014a  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000054 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000072 ),
    .Q(\blk00000001/sig00000175 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000149  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000176 ),
    .Q(s[7])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000148  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000054 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000073 ),
    .Q(\blk00000001/sig00000176 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000147  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000130 ),
    .Q(\blk00000001/sig00000138 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000146  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000be ),
    .Q(\blk00000001/sig00000130 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000145  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000131 ),
    .Q(\blk00000001/sig00000139 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000144  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000bf ),
    .Q(\blk00000001/sig00000131 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000143  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000012f ),
    .Q(\blk00000001/sig00000137 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000142  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000bd ),
    .Q(\blk00000001/sig0000012f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000141  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000133 ),
    .Q(\blk00000001/sig0000013b )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000140  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000c1 ),
    .Q(\blk00000001/sig00000133 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000013f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000134 ),
    .Q(\blk00000001/sig0000013c )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000013e  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000c2 ),
    .Q(\blk00000001/sig00000134 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000013d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000132 ),
    .Q(\blk00000001/sig0000013a )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000013c  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000c0 ),
    .Q(\blk00000001/sig00000132 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000013b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000136 ),
    .Q(\blk00000001/sig0000013e )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000013a  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000c4 ),
    .Q(\blk00000001/sig00000136 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000139  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000ff ),
    .Q(\blk00000001/sig00000107 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000138  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000a5 ),
    .Q(\blk00000001/sig000000ff )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000137  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000135 ),
    .Q(\blk00000001/sig0000013d )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000136  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000c3 ),
    .Q(\blk00000001/sig00000135 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000135  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000100 ),
    .Q(\blk00000001/sig00000108 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000134  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000a6 ),
    .Q(\blk00000001/sig00000100 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000133  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000101 ),
    .Q(\blk00000001/sig00000109 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000132  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000a7 ),
    .Q(\blk00000001/sig00000101 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000131  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000102 ),
    .Q(\blk00000001/sig0000010a )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000130  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000a8 ),
    .Q(\blk00000001/sig00000102 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000012f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000103 ),
    .Q(\blk00000001/sig0000010b )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000012e  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000a9 ),
    .Q(\blk00000001/sig00000103 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000012d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000105 ),
    .Q(\blk00000001/sig0000010d )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000012c  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000ab ),
    .Q(\blk00000001/sig00000105 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000012b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000106 ),
    .Q(\blk00000001/sig0000010e )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000012a  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000ac ),
    .Q(\blk00000001/sig00000106 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000129  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000104 ),
    .Q(\blk00000001/sig0000010c )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000128  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000aa ),
    .Q(\blk00000001/sig00000104 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000127  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000012d ),
    .Q(\blk00000001/sig0000012e )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000126  (
    .A0(\blk00000001/sig00000054 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000b4 ),
    .Q(\blk00000001/sig0000012d )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000125  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000fd ),
    .Q(\blk00000001/sig000000fe )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000124  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000009c ),
    .Q(\blk00000001/sig000000fd )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000123  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000015d ),
    .Q(\blk00000001/sig00000166 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000122  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000054 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000d6 ),
    .Q(\blk00000001/sig0000015d )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000121  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000015e ),
    .Q(\blk00000001/sig00000167 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000120  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000054 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000d7 ),
    .Q(\blk00000001/sig0000015e )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000011f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000160 ),
    .Q(\blk00000001/sig00000169 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000011e  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000054 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000d9 ),
    .Q(\blk00000001/sig00000160 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000011d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000161 ),
    .Q(\blk00000001/sig0000016a )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000011c  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000054 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000da ),
    .Q(\blk00000001/sig00000161 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000011b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000015f ),
    .Q(\blk00000001/sig00000168 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000011a  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000054 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000d8 ),
    .Q(\blk00000001/sig0000015f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000119  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000162 ),
    .Q(\blk00000001/sig0000016b )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000118  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000054 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000db ),
    .Q(\blk00000001/sig00000162 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000117  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000163 ),
    .Q(\blk00000001/sig0000016c )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000116  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000054 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000dc ),
    .Q(\blk00000001/sig00000163 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000115  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000164 ),
    .Q(\blk00000001/sig0000016d )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000114  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000054 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000dd ),
    .Q(\blk00000001/sig00000164 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000113  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000165 ),
    .Q(\blk00000001/sig0000016e )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000112  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000054 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig000000de ),
    .Q(\blk00000001/sig00000165 )
  );
  VCC   \blk00000001/blk00000111  (
    .P(\blk00000001/sig00000054 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000110  (
    .I0(\blk00000001/sig00000137 ),
    .O(\blk00000001/sig00000153 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000010f  (
    .I0(\blk00000001/sig0000013e ),
    .O(\blk00000001/sig00000152 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000010e  (
    .I0(\blk00000001/sig00000138 ),
    .O(\blk00000001/sig0000014c )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000010d  (
    .I0(\blk00000001/sig00000139 ),
    .O(\blk00000001/sig0000014d )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000010c  (
    .I0(\blk00000001/sig0000013a ),
    .O(\blk00000001/sig0000014e )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000010b  (
    .I0(\blk00000001/sig0000013b ),
    .O(\blk00000001/sig0000014f )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000010a  (
    .I0(\blk00000001/sig0000013c ),
    .O(\blk00000001/sig00000150 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000109  (
    .I0(\blk00000001/sig0000013d ),
    .O(\blk00000001/sig00000151 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000108  (
    .I0(\blk00000001/sig00000107 ),
    .O(\blk00000001/sig00000123 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000107  (
    .I0(\blk00000001/sig0000010e ),
    .O(\blk00000001/sig00000122 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000106  (
    .I0(\blk00000001/sig00000108 ),
    .O(\blk00000001/sig0000011c )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000105  (
    .I0(\blk00000001/sig00000109 ),
    .O(\blk00000001/sig0000011d )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000104  (
    .I0(\blk00000001/sig0000010a ),
    .O(\blk00000001/sig0000011e )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000103  (
    .I0(\blk00000001/sig0000010b ),
    .O(\blk00000001/sig0000011f )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000102  (
    .I0(\blk00000001/sig0000010c ),
    .O(\blk00000001/sig00000120 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000101  (
    .I0(\blk00000001/sig0000010d ),
    .O(\blk00000001/sig00000121 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000100  (
    .I0(\blk00000001/sig00000084 ),
    .O(\blk00000001/sig000000f3 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000ff  (
    .I0(\blk00000001/sig0000008b ),
    .O(\blk00000001/sig000000f2 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000fe  (
    .I0(\blk00000001/sig00000085 ),
    .O(\blk00000001/sig000000ec )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000fd  (
    .I0(\blk00000001/sig00000086 ),
    .O(\blk00000001/sig000000ed )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000fc  (
    .I0(\blk00000001/sig00000087 ),
    .O(\blk00000001/sig000000ee )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000fb  (
    .I0(\blk00000001/sig00000088 ),
    .O(\blk00000001/sig000000ef )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000fa  (
    .I0(\blk00000001/sig00000089 ),
    .O(\blk00000001/sig000000f0 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000f9  (
    .I0(\blk00000001/sig0000008a ),
    .O(\blk00000001/sig000000f1 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000f8  (
    .I0(\blk00000001/sig00000166 ),
    .O(\blk00000001/sig000001c2 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000f7  (
    .I0(\blk00000001/sig0000016e ),
    .O(\blk00000001/sig000001c1 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000f6  (
    .I0(\blk00000001/sig00000167 ),
    .O(\blk00000001/sig000001ba )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000f5  (
    .I0(\blk00000001/sig00000168 ),
    .O(\blk00000001/sig000001bb )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000f4  (
    .I0(\blk00000001/sig00000169 ),
    .O(\blk00000001/sig000001bc )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000f3  (
    .I0(\blk00000001/sig0000016a ),
    .O(\blk00000001/sig000001bd )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000f2  (
    .I0(\blk00000001/sig0000016b ),
    .O(\blk00000001/sig000001be )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000f1  (
    .I0(\blk00000001/sig0000016c ),
    .O(\blk00000001/sig000001bf )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000000f0  (
    .I0(\blk00000001/sig0000016d ),
    .O(\blk00000001/sig000001c0 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000ef  (
    .I0(b[32]),
    .I1(a[32]),
    .O(\blk00000001/sig000000cd )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000ee  (
    .I0(b[0]),
    .I1(a[0]),
    .O(\blk00000001/sig00000063 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000ed  (
    .I0(b[8]),
    .I1(a[8]),
    .O(\blk00000001/sig0000007c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000ec  (
    .I0(b[16]),
    .I1(a[16]),
    .O(\blk00000001/sig0000009d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000eb  (
    .I0(b[24]),
    .I1(a[24]),
    .O(\blk00000001/sig000000b5 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000ea  (
    .I0(b[33]),
    .I1(a[33]),
    .O(\blk00000001/sig000000ce )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000e9  (
    .I0(b[1]),
    .I1(a[1]),
    .O(\blk00000001/sig00000064 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000e8  (
    .I0(b[9]),
    .I1(a[9]),
    .O(\blk00000001/sig0000007d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000e7  (
    .I0(b[17]),
    .I1(a[17]),
    .O(\blk00000001/sig0000009e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000e6  (
    .I0(b[25]),
    .I1(a[25]),
    .O(\blk00000001/sig000000b6 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000e5  (
    .I0(b[34]),
    .I1(a[34]),
    .O(\blk00000001/sig000000cf )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000e4  (
    .I0(b[2]),
    .I1(a[2]),
    .O(\blk00000001/sig00000065 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000e3  (
    .I0(b[10]),
    .I1(a[10]),
    .O(\blk00000001/sig0000007e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000e2  (
    .I0(b[18]),
    .I1(a[18]),
    .O(\blk00000001/sig0000009f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000e1  (
    .I0(b[26]),
    .I1(a[26]),
    .O(\blk00000001/sig000000b7 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000e0  (
    .I0(b[35]),
    .I1(a[35]),
    .O(\blk00000001/sig000000d0 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \blk00000001/blk000000df  (
    .I0(\blk00000001/sig0000008c ),
    .I1(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig00000058 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \blk00000001/blk000000de  (
    .I0(\blk00000001/sig000000fe ),
    .I1(\blk00000001/sig00000056 ),
    .O(\blk00000001/sig00000059 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \blk00000001/blk000000dd  (
    .I0(\blk00000001/sig0000012e ),
    .I1(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig0000005a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000dc  (
    .I0(b[3]),
    .I1(a[3]),
    .O(\blk00000001/sig00000066 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000db  (
    .I0(b[11]),
    .I1(a[11]),
    .O(\blk00000001/sig0000007f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000da  (
    .I0(b[19]),
    .I1(a[19]),
    .O(\blk00000001/sig000000a0 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d9  (
    .I0(b[27]),
    .I1(a[27]),
    .O(\blk00000001/sig000000b8 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d8  (
    .I0(b[36]),
    .I1(a[36]),
    .O(\blk00000001/sig000000d1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d7  (
    .I0(b[4]),
    .I1(a[4]),
    .O(\blk00000001/sig00000067 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d6  (
    .I0(b[12]),
    .I1(a[12]),
    .O(\blk00000001/sig00000080 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d5  (
    .I0(b[20]),
    .I1(a[20]),
    .O(\blk00000001/sig000000a1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d4  (
    .I0(b[28]),
    .I1(a[28]),
    .O(\blk00000001/sig000000b9 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d3  (
    .I0(b[37]),
    .I1(a[37]),
    .O(\blk00000001/sig000000d2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d2  (
    .I0(b[5]),
    .I1(a[5]),
    .O(\blk00000001/sig00000068 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d1  (
    .I0(b[13]),
    .I1(a[13]),
    .O(\blk00000001/sig00000081 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d0  (
    .I0(b[21]),
    .I1(a[21]),
    .O(\blk00000001/sig000000a2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000cf  (
    .I0(b[29]),
    .I1(a[29]),
    .O(\blk00000001/sig000000ba )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000ce  (
    .I0(b[38]),
    .I1(a[38]),
    .O(\blk00000001/sig000000d3 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000cd  (
    .I0(b[6]),
    .I1(a[6]),
    .O(\blk00000001/sig00000069 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000cc  (
    .I0(b[14]),
    .I1(a[14]),
    .O(\blk00000001/sig00000082 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000cb  (
    .I0(b[22]),
    .I1(a[22]),
    .O(\blk00000001/sig000000a3 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000ca  (
    .I0(b[30]),
    .I1(a[30]),
    .O(\blk00000001/sig000000bb )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000c9  (
    .I0(b[39]),
    .I1(a[39]),
    .O(\blk00000001/sig000000d4 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000c8  (
    .I0(b[7]),
    .I1(a[7]),
    .O(\blk00000001/sig0000006a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000c7  (
    .I0(b[15]),
    .I1(a[15]),
    .O(\blk00000001/sig00000083 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000c6  (
    .I0(b[23]),
    .I1(a[23]),
    .O(\blk00000001/sig000000a4 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000c5  (
    .I0(b[31]),
    .I1(a[31]),
    .O(\blk00000001/sig000000bc )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000c4  (
    .I0(b[39]),
    .I1(a[39]),
    .O(\blk00000001/sig000000d5 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000c3  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000146 ),
    .Q(s[26])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000c2  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000147 ),
    .Q(s[27])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000c1  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000148 ),
    .Q(s[28])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000c0  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000149 ),
    .Q(s[29])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000bf  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000014a ),
    .Q(s[30])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000be  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000014b ),
    .Q(s[31])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000bd  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000005a ),
    .Q(\blk00000001/sig0000015c )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000bc  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000059 ),
    .Q(\blk00000001/sig0000012c )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000bb  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000058 ),
    .Q(\blk00000001/sig000000fc )
  );
  MUXCY   \blk00000001/blk000000ba  (
    .CI(\blk00000001/sig00000053 ),
    .DI(a[24]),
    .S(\blk00000001/sig000000b5 ),
    .O(\blk00000001/sig000000ad )
  );
  XORCY   \blk00000001/blk000000b9  (
    .CI(\blk00000001/sig00000053 ),
    .LI(\blk00000001/sig000000b5 ),
    .O(\blk00000001/sig000000bd )
  );
  XORCY   \blk00000001/blk000000b8  (
    .CI(\blk00000001/sig000000b3 ),
    .LI(\blk00000001/sig000000bc ),
    .O(\blk00000001/sig000000c4 )
  );
  MUXCY   \blk00000001/blk000000b7  (
    .CI(\blk00000001/sig000000b3 ),
    .DI(a[31]),
    .S(\blk00000001/sig000000bc ),
    .O(\blk00000001/sig000000b4 )
  );
  MUXCY   \blk00000001/blk000000b6  (
    .CI(\blk00000001/sig000000ad ),
    .DI(a[25]),
    .S(\blk00000001/sig000000b6 ),
    .O(\blk00000001/sig000000ae )
  );
  XORCY   \blk00000001/blk000000b5  (
    .CI(\blk00000001/sig000000ad ),
    .LI(\blk00000001/sig000000b6 ),
    .O(\blk00000001/sig000000be )
  );
  MUXCY   \blk00000001/blk000000b4  (
    .CI(\blk00000001/sig000000ae ),
    .DI(a[26]),
    .S(\blk00000001/sig000000b7 ),
    .O(\blk00000001/sig000000af )
  );
  XORCY   \blk00000001/blk000000b3  (
    .CI(\blk00000001/sig000000ae ),
    .LI(\blk00000001/sig000000b7 ),
    .O(\blk00000001/sig000000bf )
  );
  MUXCY   \blk00000001/blk000000b2  (
    .CI(\blk00000001/sig000000af ),
    .DI(a[27]),
    .S(\blk00000001/sig000000b8 ),
    .O(\blk00000001/sig000000b0 )
  );
  XORCY   \blk00000001/blk000000b1  (
    .CI(\blk00000001/sig000000af ),
    .LI(\blk00000001/sig000000b8 ),
    .O(\blk00000001/sig000000c0 )
  );
  MUXCY   \blk00000001/blk000000b0  (
    .CI(\blk00000001/sig000000b0 ),
    .DI(a[28]),
    .S(\blk00000001/sig000000b9 ),
    .O(\blk00000001/sig000000b1 )
  );
  XORCY   \blk00000001/blk000000af  (
    .CI(\blk00000001/sig000000b0 ),
    .LI(\blk00000001/sig000000b9 ),
    .O(\blk00000001/sig000000c1 )
  );
  MUXCY   \blk00000001/blk000000ae  (
    .CI(\blk00000001/sig000000b1 ),
    .DI(a[29]),
    .S(\blk00000001/sig000000ba ),
    .O(\blk00000001/sig000000b2 )
  );
  XORCY   \blk00000001/blk000000ad  (
    .CI(\blk00000001/sig000000b1 ),
    .LI(\blk00000001/sig000000ba ),
    .O(\blk00000001/sig000000c2 )
  );
  MUXCY   \blk00000001/blk000000ac  (
    .CI(\blk00000001/sig000000b2 ),
    .DI(a[30]),
    .S(\blk00000001/sig000000bb ),
    .O(\blk00000001/sig000000b3 )
  );
  XORCY   \blk00000001/blk000000ab  (
    .CI(\blk00000001/sig000000b2 ),
    .LI(\blk00000001/sig000000bb ),
    .O(\blk00000001/sig000000c3 )
  );
  MUXCY   \blk00000001/blk000000aa  (
    .CI(\blk00000001/sig00000053 ),
    .DI(a[16]),
    .S(\blk00000001/sig0000009d ),
    .O(\blk00000001/sig00000095 )
  );
  XORCY   \blk00000001/blk000000a9  (
    .CI(\blk00000001/sig00000053 ),
    .LI(\blk00000001/sig0000009d ),
    .O(\blk00000001/sig000000a5 )
  );
  XORCY   \blk00000001/blk000000a8  (
    .CI(\blk00000001/sig0000009b ),
    .LI(\blk00000001/sig000000a4 ),
    .O(\blk00000001/sig000000ac )
  );
  MUXCY   \blk00000001/blk000000a7  (
    .CI(\blk00000001/sig0000009b ),
    .DI(a[23]),
    .S(\blk00000001/sig000000a4 ),
    .O(\blk00000001/sig0000009c )
  );
  MUXCY   \blk00000001/blk000000a6  (
    .CI(\blk00000001/sig00000095 ),
    .DI(a[17]),
    .S(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig00000096 )
  );
  XORCY   \blk00000001/blk000000a5  (
    .CI(\blk00000001/sig00000095 ),
    .LI(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig000000a6 )
  );
  MUXCY   \blk00000001/blk000000a4  (
    .CI(\blk00000001/sig00000096 ),
    .DI(a[18]),
    .S(\blk00000001/sig0000009f ),
    .O(\blk00000001/sig00000097 )
  );
  XORCY   \blk00000001/blk000000a3  (
    .CI(\blk00000001/sig00000096 ),
    .LI(\blk00000001/sig0000009f ),
    .O(\blk00000001/sig000000a7 )
  );
  MUXCY   \blk00000001/blk000000a2  (
    .CI(\blk00000001/sig00000097 ),
    .DI(a[19]),
    .S(\blk00000001/sig000000a0 ),
    .O(\blk00000001/sig00000098 )
  );
  XORCY   \blk00000001/blk000000a1  (
    .CI(\blk00000001/sig00000097 ),
    .LI(\blk00000001/sig000000a0 ),
    .O(\blk00000001/sig000000a8 )
  );
  MUXCY   \blk00000001/blk000000a0  (
    .CI(\blk00000001/sig00000098 ),
    .DI(a[20]),
    .S(\blk00000001/sig000000a1 ),
    .O(\blk00000001/sig00000099 )
  );
  XORCY   \blk00000001/blk0000009f  (
    .CI(\blk00000001/sig00000098 ),
    .LI(\blk00000001/sig000000a1 ),
    .O(\blk00000001/sig000000a9 )
  );
  MUXCY   \blk00000001/blk0000009e  (
    .CI(\blk00000001/sig00000099 ),
    .DI(a[21]),
    .S(\blk00000001/sig000000a2 ),
    .O(\blk00000001/sig0000009a )
  );
  XORCY   \blk00000001/blk0000009d  (
    .CI(\blk00000001/sig00000099 ),
    .LI(\blk00000001/sig000000a2 ),
    .O(\blk00000001/sig000000aa )
  );
  MUXCY   \blk00000001/blk0000009c  (
    .CI(\blk00000001/sig0000009a ),
    .DI(a[22]),
    .S(\blk00000001/sig000000a3 ),
    .O(\blk00000001/sig0000009b )
  );
  XORCY   \blk00000001/blk0000009b  (
    .CI(\blk00000001/sig0000009a ),
    .LI(\blk00000001/sig000000a3 ),
    .O(\blk00000001/sig000000ab )
  );
  MUXCY   \blk00000001/blk0000009a  (
    .CI(\blk00000001/sig00000053 ),
    .DI(a[8]),
    .S(\blk00000001/sig0000007c ),
    .O(\blk00000001/sig00000074 )
  );
  XORCY   \blk00000001/blk00000099  (
    .CI(\blk00000001/sig00000053 ),
    .LI(\blk00000001/sig0000007c ),
    .O(\blk00000001/sig0000008d )
  );
  XORCY   \blk00000001/blk00000098  (
    .CI(\blk00000001/sig0000007a ),
    .LI(\blk00000001/sig00000083 ),
    .O(\blk00000001/sig00000094 )
  );
  MUXCY   \blk00000001/blk00000097  (
    .CI(\blk00000001/sig0000007a ),
    .DI(a[15]),
    .S(\blk00000001/sig00000083 ),
    .O(\blk00000001/sig0000007b )
  );
  MUXCY   \blk00000001/blk00000096  (
    .CI(\blk00000001/sig00000074 ),
    .DI(a[9]),
    .S(\blk00000001/sig0000007d ),
    .O(\blk00000001/sig00000075 )
  );
  XORCY   \blk00000001/blk00000095  (
    .CI(\blk00000001/sig00000074 ),
    .LI(\blk00000001/sig0000007d ),
    .O(\blk00000001/sig0000008e )
  );
  MUXCY   \blk00000001/blk00000094  (
    .CI(\blk00000001/sig00000075 ),
    .DI(a[10]),
    .S(\blk00000001/sig0000007e ),
    .O(\blk00000001/sig00000076 )
  );
  XORCY   \blk00000001/blk00000093  (
    .CI(\blk00000001/sig00000075 ),
    .LI(\blk00000001/sig0000007e ),
    .O(\blk00000001/sig0000008f )
  );
  MUXCY   \blk00000001/blk00000092  (
    .CI(\blk00000001/sig00000076 ),
    .DI(a[11]),
    .S(\blk00000001/sig0000007f ),
    .O(\blk00000001/sig00000077 )
  );
  XORCY   \blk00000001/blk00000091  (
    .CI(\blk00000001/sig00000076 ),
    .LI(\blk00000001/sig0000007f ),
    .O(\blk00000001/sig00000090 )
  );
  MUXCY   \blk00000001/blk00000090  (
    .CI(\blk00000001/sig00000077 ),
    .DI(a[12]),
    .S(\blk00000001/sig00000080 ),
    .O(\blk00000001/sig00000078 )
  );
  XORCY   \blk00000001/blk0000008f  (
    .CI(\blk00000001/sig00000077 ),
    .LI(\blk00000001/sig00000080 ),
    .O(\blk00000001/sig00000091 )
  );
  MUXCY   \blk00000001/blk0000008e  (
    .CI(\blk00000001/sig00000078 ),
    .DI(a[13]),
    .S(\blk00000001/sig00000081 ),
    .O(\blk00000001/sig00000079 )
  );
  XORCY   \blk00000001/blk0000008d  (
    .CI(\blk00000001/sig00000078 ),
    .LI(\blk00000001/sig00000081 ),
    .O(\blk00000001/sig00000092 )
  );
  MUXCY   \blk00000001/blk0000008c  (
    .CI(\blk00000001/sig00000079 ),
    .DI(a[14]),
    .S(\blk00000001/sig00000082 ),
    .O(\blk00000001/sig0000007a )
  );
  XORCY   \blk00000001/blk0000008b  (
    .CI(\blk00000001/sig00000079 ),
    .LI(\blk00000001/sig00000082 ),
    .O(\blk00000001/sig00000093 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000008a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000007b ),
    .Q(\blk00000001/sig0000008c )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000089  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000008d ),
    .Q(\blk00000001/sig00000084 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000088  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000008e ),
    .Q(\blk00000001/sig00000085 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000087  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000008f ),
    .Q(\blk00000001/sig00000086 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000086  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000090 ),
    .Q(\blk00000001/sig00000087 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000085  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000091 ),
    .Q(\blk00000001/sig00000088 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000084  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000092 ),
    .Q(\blk00000001/sig00000089 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000083  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000093 ),
    .Q(\blk00000001/sig0000008a )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000082  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000094 ),
    .Q(\blk00000001/sig0000008b )
  );
  MUXCY   \blk00000001/blk00000081  (
    .CI(\blk00000001/sig00000053 ),
    .DI(a[0]),
    .S(\blk00000001/sig00000063 ),
    .O(\blk00000001/sig0000005b )
  );
  XORCY   \blk00000001/blk00000080  (
    .CI(\blk00000001/sig00000053 ),
    .LI(\blk00000001/sig00000063 ),
    .O(\blk00000001/sig0000006c )
  );
  XORCY   \blk00000001/blk0000007f  (
    .CI(\blk00000001/sig00000061 ),
    .LI(\blk00000001/sig0000006a ),
    .O(\blk00000001/sig00000073 )
  );
  MUXCY   \blk00000001/blk0000007e  (
    .CI(\blk00000001/sig00000061 ),
    .DI(a[7]),
    .S(\blk00000001/sig0000006a ),
    .O(\blk00000001/sig00000062 )
  );
  MUXCY   \blk00000001/blk0000007d  (
    .CI(\blk00000001/sig0000005b ),
    .DI(a[1]),
    .S(\blk00000001/sig00000064 ),
    .O(\blk00000001/sig0000005c )
  );
  XORCY   \blk00000001/blk0000007c  (
    .CI(\blk00000001/sig0000005b ),
    .LI(\blk00000001/sig00000064 ),
    .O(\blk00000001/sig0000006d )
  );
  MUXCY   \blk00000001/blk0000007b  (
    .CI(\blk00000001/sig0000005c ),
    .DI(a[2]),
    .S(\blk00000001/sig00000065 ),
    .O(\blk00000001/sig0000005d )
  );
  XORCY   \blk00000001/blk0000007a  (
    .CI(\blk00000001/sig0000005c ),
    .LI(\blk00000001/sig00000065 ),
    .O(\blk00000001/sig0000006e )
  );
  MUXCY   \blk00000001/blk00000079  (
    .CI(\blk00000001/sig0000005d ),
    .DI(a[3]),
    .S(\blk00000001/sig00000066 ),
    .O(\blk00000001/sig0000005e )
  );
  XORCY   \blk00000001/blk00000078  (
    .CI(\blk00000001/sig0000005d ),
    .LI(\blk00000001/sig00000066 ),
    .O(\blk00000001/sig0000006f )
  );
  MUXCY   \blk00000001/blk00000077  (
    .CI(\blk00000001/sig0000005e ),
    .DI(a[4]),
    .S(\blk00000001/sig00000067 ),
    .O(\blk00000001/sig0000005f )
  );
  XORCY   \blk00000001/blk00000076  (
    .CI(\blk00000001/sig0000005e ),
    .LI(\blk00000001/sig00000067 ),
    .O(\blk00000001/sig00000070 )
  );
  MUXCY   \blk00000001/blk00000075  (
    .CI(\blk00000001/sig0000005f ),
    .DI(a[5]),
    .S(\blk00000001/sig00000068 ),
    .O(\blk00000001/sig00000060 )
  );
  XORCY   \blk00000001/blk00000074  (
    .CI(\blk00000001/sig0000005f ),
    .LI(\blk00000001/sig00000068 ),
    .O(\blk00000001/sig00000071 )
  );
  MUXCY   \blk00000001/blk00000073  (
    .CI(\blk00000001/sig00000060 ),
    .DI(a[6]),
    .S(\blk00000001/sig00000069 ),
    .O(\blk00000001/sig00000061 )
  );
  XORCY   \blk00000001/blk00000072  (
    .CI(\blk00000001/sig00000060 ),
    .LI(\blk00000001/sig00000069 ),
    .O(\blk00000001/sig00000072 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000071  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000062 ),
    .Q(\blk00000001/sig0000006b )
  );
  MUXCY   \blk00000001/blk00000070  (
    .CI(\blk00000001/sig00000053 ),
    .DI(a[32]),
    .S(\blk00000001/sig000000cd ),
    .O(\blk00000001/sig000000c5 )
  );
  XORCY   \blk00000001/blk0000006f  (
    .CI(\blk00000001/sig00000053 ),
    .LI(\blk00000001/sig000000cd ),
    .O(\blk00000001/sig000000d6 )
  );
  XORCY   \blk00000001/blk0000006e  (
    .CI(\blk00000001/sig000000cc ),
    .LI(\blk00000001/sig000000d5 ),
    .O(\blk00000001/sig000000de )
  );
  MUXCY   \blk00000001/blk0000006d  (
    .CI(\blk00000001/sig000000c5 ),
    .DI(a[33]),
    .S(\blk00000001/sig000000ce ),
    .O(\blk00000001/sig000000c6 )
  );
  XORCY   \blk00000001/blk0000006c  (
    .CI(\blk00000001/sig000000c5 ),
    .LI(\blk00000001/sig000000ce ),
    .O(\blk00000001/sig000000d7 )
  );
  MUXCY   \blk00000001/blk0000006b  (
    .CI(\blk00000001/sig000000c6 ),
    .DI(a[34]),
    .S(\blk00000001/sig000000cf ),
    .O(\blk00000001/sig000000c7 )
  );
  XORCY   \blk00000001/blk0000006a  (
    .CI(\blk00000001/sig000000c6 ),
    .LI(\blk00000001/sig000000cf ),
    .O(\blk00000001/sig000000d8 )
  );
  MUXCY   \blk00000001/blk00000069  (
    .CI(\blk00000001/sig000000c7 ),
    .DI(a[35]),
    .S(\blk00000001/sig000000d0 ),
    .O(\blk00000001/sig000000c8 )
  );
  XORCY   \blk00000001/blk00000068  (
    .CI(\blk00000001/sig000000c7 ),
    .LI(\blk00000001/sig000000d0 ),
    .O(\blk00000001/sig000000d9 )
  );
  MUXCY   \blk00000001/blk00000067  (
    .CI(\blk00000001/sig000000c8 ),
    .DI(a[36]),
    .S(\blk00000001/sig000000d1 ),
    .O(\blk00000001/sig000000c9 )
  );
  XORCY   \blk00000001/blk00000066  (
    .CI(\blk00000001/sig000000c8 ),
    .LI(\blk00000001/sig000000d1 ),
    .O(\blk00000001/sig000000da )
  );
  MUXCY   \blk00000001/blk00000065  (
    .CI(\blk00000001/sig000000c9 ),
    .DI(a[37]),
    .S(\blk00000001/sig000000d2 ),
    .O(\blk00000001/sig000000ca )
  );
  XORCY   \blk00000001/blk00000064  (
    .CI(\blk00000001/sig000000c9 ),
    .LI(\blk00000001/sig000000d2 ),
    .O(\blk00000001/sig000000db )
  );
  MUXCY   \blk00000001/blk00000063  (
    .CI(\blk00000001/sig000000ca ),
    .DI(a[38]),
    .S(\blk00000001/sig000000d3 ),
    .O(\blk00000001/sig000000cb )
  );
  XORCY   \blk00000001/blk00000062  (
    .CI(\blk00000001/sig000000ca ),
    .LI(\blk00000001/sig000000d3 ),
    .O(\blk00000001/sig000000dc )
  );
  MUXCY   \blk00000001/blk00000061  (
    .CI(\blk00000001/sig000000cb ),
    .DI(a[39]),
    .S(\blk00000001/sig000000d4 ),
    .O(\blk00000001/sig000000cc )
  );
  XORCY   \blk00000001/blk00000060  (
    .CI(\blk00000001/sig000000cb ),
    .LI(\blk00000001/sig000000d4 ),
    .O(\blk00000001/sig000000dd )
  );
  MUXCY   \blk00000001/blk0000005f  (
    .CI(\blk00000001/sig0000012c ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig00000153 ),
    .O(\blk00000001/sig0000013f )
  );
  XORCY   \blk00000001/blk0000005e  (
    .CI(\blk00000001/sig0000012c ),
    .LI(\blk00000001/sig00000153 ),
    .O(\blk00000001/sig00000154 )
  );
  XORCY   \blk00000001/blk0000005d  (
    .CI(\blk00000001/sig00000145 ),
    .LI(\blk00000001/sig00000152 ),
    .O(\blk00000001/sig0000015b )
  );
  MUXCY   \blk00000001/blk0000005c  (
    .CI(\blk00000001/sig00000145 ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig00000152 ),
    .O(\blk00000001/sig00000057 )
  );
  MUXCY   \blk00000001/blk0000005b  (
    .CI(\blk00000001/sig0000013f ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig0000014c ),
    .O(\blk00000001/sig00000140 )
  );
  XORCY   \blk00000001/blk0000005a  (
    .CI(\blk00000001/sig0000013f ),
    .LI(\blk00000001/sig0000014c ),
    .O(\blk00000001/sig00000155 )
  );
  MUXCY   \blk00000001/blk00000059  (
    .CI(\blk00000001/sig00000140 ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig0000014d ),
    .O(\blk00000001/sig00000141 )
  );
  XORCY   \blk00000001/blk00000058  (
    .CI(\blk00000001/sig00000140 ),
    .LI(\blk00000001/sig0000014d ),
    .O(\blk00000001/sig00000156 )
  );
  MUXCY   \blk00000001/blk00000057  (
    .CI(\blk00000001/sig00000141 ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig0000014e ),
    .O(\blk00000001/sig00000142 )
  );
  XORCY   \blk00000001/blk00000056  (
    .CI(\blk00000001/sig00000141 ),
    .LI(\blk00000001/sig0000014e ),
    .O(\blk00000001/sig00000157 )
  );
  MUXCY   \blk00000001/blk00000055  (
    .CI(\blk00000001/sig00000142 ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig0000014f ),
    .O(\blk00000001/sig00000143 )
  );
  XORCY   \blk00000001/blk00000054  (
    .CI(\blk00000001/sig00000142 ),
    .LI(\blk00000001/sig0000014f ),
    .O(\blk00000001/sig00000158 )
  );
  MUXCY   \blk00000001/blk00000053  (
    .CI(\blk00000001/sig00000143 ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig00000150 ),
    .O(\blk00000001/sig00000144 )
  );
  XORCY   \blk00000001/blk00000052  (
    .CI(\blk00000001/sig00000143 ),
    .LI(\blk00000001/sig00000150 ),
    .O(\blk00000001/sig00000159 )
  );
  MUXCY   \blk00000001/blk00000051  (
    .CI(\blk00000001/sig00000144 ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig00000151 ),
    .O(\blk00000001/sig00000145 )
  );
  XORCY   \blk00000001/blk00000050  (
    .CI(\blk00000001/sig00000144 ),
    .LI(\blk00000001/sig00000151 ),
    .O(\blk00000001/sig0000015a )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000156 ),
    .Q(\blk00000001/sig00000146 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000157 ),
    .Q(\blk00000001/sig00000147 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000158 ),
    .Q(\blk00000001/sig00000148 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000159 ),
    .Q(\blk00000001/sig00000149 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000015a ),
    .Q(\blk00000001/sig0000014a )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000015b ),
    .Q(\blk00000001/sig0000014b )
  );
  MUXCY   \blk00000001/blk00000049  (
    .CI(\blk00000001/sig000000fc ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig00000123 ),
    .O(\blk00000001/sig0000010f )
  );
  XORCY   \blk00000001/blk00000048  (
    .CI(\blk00000001/sig000000fc ),
    .LI(\blk00000001/sig00000123 ),
    .O(\blk00000001/sig00000124 )
  );
  XORCY   \blk00000001/blk00000047  (
    .CI(\blk00000001/sig00000115 ),
    .LI(\blk00000001/sig00000122 ),
    .O(\blk00000001/sig0000012b )
  );
  MUXCY   \blk00000001/blk00000046  (
    .CI(\blk00000001/sig00000115 ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig00000122 ),
    .O(\blk00000001/sig00000056 )
  );
  MUXCY   \blk00000001/blk00000045  (
    .CI(\blk00000001/sig0000010f ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig0000011c ),
    .O(\blk00000001/sig00000110 )
  );
  XORCY   \blk00000001/blk00000044  (
    .CI(\blk00000001/sig0000010f ),
    .LI(\blk00000001/sig0000011c ),
    .O(\blk00000001/sig00000125 )
  );
  MUXCY   \blk00000001/blk00000043  (
    .CI(\blk00000001/sig00000110 ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig0000011d ),
    .O(\blk00000001/sig00000111 )
  );
  XORCY   \blk00000001/blk00000042  (
    .CI(\blk00000001/sig00000110 ),
    .LI(\blk00000001/sig0000011d ),
    .O(\blk00000001/sig00000126 )
  );
  MUXCY   \blk00000001/blk00000041  (
    .CI(\blk00000001/sig00000111 ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig0000011e ),
    .O(\blk00000001/sig00000112 )
  );
  XORCY   \blk00000001/blk00000040  (
    .CI(\blk00000001/sig00000111 ),
    .LI(\blk00000001/sig0000011e ),
    .O(\blk00000001/sig00000127 )
  );
  MUXCY   \blk00000001/blk0000003f  (
    .CI(\blk00000001/sig00000112 ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig0000011f ),
    .O(\blk00000001/sig00000113 )
  );
  XORCY   \blk00000001/blk0000003e  (
    .CI(\blk00000001/sig00000112 ),
    .LI(\blk00000001/sig0000011f ),
    .O(\blk00000001/sig00000128 )
  );
  MUXCY   \blk00000001/blk0000003d  (
    .CI(\blk00000001/sig00000113 ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig00000120 ),
    .O(\blk00000001/sig00000114 )
  );
  XORCY   \blk00000001/blk0000003c  (
    .CI(\blk00000001/sig00000113 ),
    .LI(\blk00000001/sig00000120 ),
    .O(\blk00000001/sig00000129 )
  );
  MUXCY   \blk00000001/blk0000003b  (
    .CI(\blk00000001/sig00000114 ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig00000121 ),
    .O(\blk00000001/sig00000115 )
  );
  XORCY   \blk00000001/blk0000003a  (
    .CI(\blk00000001/sig00000114 ),
    .LI(\blk00000001/sig00000121 ),
    .O(\blk00000001/sig0000012a )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000039  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000126 ),
    .Q(\blk00000001/sig00000116 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000038  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000127 ),
    .Q(\blk00000001/sig00000117 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000037  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000128 ),
    .Q(\blk00000001/sig00000118 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000036  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000129 ),
    .Q(\blk00000001/sig00000119 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000035  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000012a ),
    .Q(\blk00000001/sig0000011a )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000034  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000012b ),
    .Q(\blk00000001/sig0000011b )
  );
  MUXCY   \blk00000001/blk00000033  (
    .CI(\blk00000001/sig0000006b ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig000000df )
  );
  XORCY   \blk00000001/blk00000032  (
    .CI(\blk00000001/sig0000006b ),
    .LI(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig000000f4 )
  );
  XORCY   \blk00000001/blk00000031  (
    .CI(\blk00000001/sig000000e5 ),
    .LI(\blk00000001/sig000000f2 ),
    .O(\blk00000001/sig000000fb )
  );
  MUXCY   \blk00000001/blk00000030  (
    .CI(\blk00000001/sig000000e5 ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig000000f2 ),
    .O(\blk00000001/sig00000055 )
  );
  MUXCY   \blk00000001/blk0000002f  (
    .CI(\blk00000001/sig000000df ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig000000ec ),
    .O(\blk00000001/sig000000e0 )
  );
  XORCY   \blk00000001/blk0000002e  (
    .CI(\blk00000001/sig000000df ),
    .LI(\blk00000001/sig000000ec ),
    .O(\blk00000001/sig000000f5 )
  );
  MUXCY   \blk00000001/blk0000002d  (
    .CI(\blk00000001/sig000000e0 ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig000000ed ),
    .O(\blk00000001/sig000000e1 )
  );
  XORCY   \blk00000001/blk0000002c  (
    .CI(\blk00000001/sig000000e0 ),
    .LI(\blk00000001/sig000000ed ),
    .O(\blk00000001/sig000000f6 )
  );
  MUXCY   \blk00000001/blk0000002b  (
    .CI(\blk00000001/sig000000e1 ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig000000ee ),
    .O(\blk00000001/sig000000e2 )
  );
  XORCY   \blk00000001/blk0000002a  (
    .CI(\blk00000001/sig000000e1 ),
    .LI(\blk00000001/sig000000ee ),
    .O(\blk00000001/sig000000f7 )
  );
  MUXCY   \blk00000001/blk00000029  (
    .CI(\blk00000001/sig000000e2 ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig000000ef ),
    .O(\blk00000001/sig000000e3 )
  );
  XORCY   \blk00000001/blk00000028  (
    .CI(\blk00000001/sig000000e2 ),
    .LI(\blk00000001/sig000000ef ),
    .O(\blk00000001/sig000000f8 )
  );
  MUXCY   \blk00000001/blk00000027  (
    .CI(\blk00000001/sig000000e3 ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig000000f0 ),
    .O(\blk00000001/sig000000e4 )
  );
  XORCY   \blk00000001/blk00000026  (
    .CI(\blk00000001/sig000000e3 ),
    .LI(\blk00000001/sig000000f0 ),
    .O(\blk00000001/sig000000f9 )
  );
  MUXCY   \blk00000001/blk00000025  (
    .CI(\blk00000001/sig000000e4 ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig000000f1 ),
    .O(\blk00000001/sig000000e5 )
  );
  XORCY   \blk00000001/blk00000024  (
    .CI(\blk00000001/sig000000e4 ),
    .LI(\blk00000001/sig000000f1 ),
    .O(\blk00000001/sig000000fa )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000023  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000f6 ),
    .Q(\blk00000001/sig000000e6 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000022  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000f7 ),
    .Q(\blk00000001/sig000000e7 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000021  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000f8 ),
    .Q(\blk00000001/sig000000e8 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000020  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000f9 ),
    .Q(\blk00000001/sig000000e9 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000fa ),
    .Q(\blk00000001/sig000000ea )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000fb ),
    .Q(\blk00000001/sig000000eb )
  );
  MUXCY   \blk00000001/blk0000001d  (
    .CI(\blk00000001/sig0000015c ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig000001c2 ),
    .O(\blk00000001/sig000001a9 )
  );
  XORCY   \blk00000001/blk0000001c  (
    .CI(\blk00000001/sig0000015c ),
    .LI(\blk00000001/sig000001c2 ),
    .O(\blk00000001/sig000001c3 )
  );
  XORCY   \blk00000001/blk0000001b  (
    .CI(\blk00000001/sig000001b0 ),
    .LI(\blk00000001/sig000001c1 ),
    .O(\blk00000001/sig000001cb )
  );
  MUXCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig000001b0 ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig000001c1 ),
    .O(\NLW_blk00000001/blk0000001a_O_UNCONNECTED )
  );
  MUXCY   \blk00000001/blk00000019  (
    .CI(\blk00000001/sig000001a9 ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig000001ba ),
    .O(\blk00000001/sig000001aa )
  );
  XORCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig000001a9 ),
    .LI(\blk00000001/sig000001ba ),
    .O(\blk00000001/sig000001c4 )
  );
  MUXCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig000001aa ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig000001bb ),
    .O(\blk00000001/sig000001ab )
  );
  XORCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig000001aa ),
    .LI(\blk00000001/sig000001bb ),
    .O(\blk00000001/sig000001c5 )
  );
  MUXCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig000001ab ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig000001bc ),
    .O(\blk00000001/sig000001ac )
  );
  XORCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig000001ab ),
    .LI(\blk00000001/sig000001bc ),
    .O(\blk00000001/sig000001c6 )
  );
  MUXCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig000001ac ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig000001bd ),
    .O(\blk00000001/sig000001ad )
  );
  XORCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig000001ac ),
    .LI(\blk00000001/sig000001bd ),
    .O(\blk00000001/sig000001c7 )
  );
  MUXCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig000001ad ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig000001be ),
    .O(\blk00000001/sig000001ae )
  );
  XORCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig000001ad ),
    .LI(\blk00000001/sig000001be ),
    .O(\blk00000001/sig000001c8 )
  );
  MUXCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig000001ae ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig000001bf ),
    .O(\blk00000001/sig000001af )
  );
  XORCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig000001ae ),
    .LI(\blk00000001/sig000001bf ),
    .O(\blk00000001/sig000001c9 )
  );
  MUXCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig000001af ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/sig000001c0 ),
    .O(\blk00000001/sig000001b0 )
  );
  XORCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig000001af ),
    .LI(\blk00000001/sig000001c0 ),
    .O(\blk00000001/sig000001ca )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000001c3 ),
    .Q(s[32])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000001c4 ),
    .Q(s[33])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000009  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000001c5 ),
    .Q(s[34])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000008  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000001c6 ),
    .Q(s[35])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000007  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000001c7 ),
    .Q(s[36])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000006  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000001c8 ),
    .Q(s[37])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000005  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000001c9 ),
    .Q(s[38])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000004  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000001ca ),
    .Q(s[39])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000003  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000001cb ),
    .Q(s[40])
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig00000053 )
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
