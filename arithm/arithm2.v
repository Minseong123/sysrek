`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:42:46 03/26/2015 
// Design Name: 
// Module Name:    arithm2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module arithm2(
	 input clk,
	 input ce,
    input [17:0] A,
    input [7:0] B,
    input [11:0] C,
    input [7:0] D,
    input [13:0] E,
    input [18:0] F,
    output [36:0] Y
    );

wire signed [12:0] n_B;

wire signed [18:0] ApB;
wire signed [11:0] opozC;

wire signed [10:0] n_D;
wire signed [14:0] DpE;

wire signed [17:0] n_E;
wire signed [19:0] EpF;

wire signed [30:0] ApBrC;

wire signed [34:0] DpErEpF;

wire signed [35:0] n_DpErEpF;

assign n_B = {B, {5{1'b0}}};
assign n_D = {D, {3{1'b0}}};
assign n_E = {E, {4{1'b0}}};
assign n_DpErEpF = {DpErEpF, 1'b0};

//latency = 2
sum1 AplusB (
  .a(A), // input [17 : 0] a
  .b(n_B), // input [12 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(ApB) // output [18 : 0] s z10c8u
);

//latency = 2
sum2 DplusE (
  .a(n_D), // input [10 : 0] a
  .b(E), // input [13 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(DpE) // output [14 : 0] s z9c5u
);

//latency = 2
sum3 EplusF (
  .a(n_E), // input [17 : 0] a
  .b(F), // input [18 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(EpF) // output [19 : 0] s z10c9u
);

delay #
(
	.N(12),
	.DELAY(2)
)
delayC
(
	.clk(clk),
	.ce(ce),
	.d(C),
	.q(opozC)
);

//latency = 4
mul1 AplusBmulC (
  .clk(clk), // input clk
  .a(ApB), // input [18 : 0] a
  .b(opozC), // input [11 : 0] b
  .p(ApBrC) // output [30 : 0] p z15c15u
);

//latency = 4
mul2 DplusEmulEplusF (
  .clk(clk), // input clk
  .a(DpE), // input [14 : 0] a
  .b(EpF), // input [19 : 0] b
  .p(DpErEpF) // output [34 : 0] p z20c14u
);

//latency = 4
sum4 outputY (
  .a(ApBrC), // input [30 : 0] a
  .b(n_DpErEpF), // input [35 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(Y) // output [36 : 0] s
);
endmodule
