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
    output [40:0] Y
    );

wire signed [17:0] n_B;

wire signed [18:0] ApB;
wire signed [18:0] n_C;
wire signed [18:0] opozC;

wire signed [13:0] n_D;
wire signed [14:0] DpE;

wire signed [18:0] n_E;
wire signed [19:0] EpF;


wire signed [37:0] ApBrC;

wire signed [19:0] n_DpE;
wire signed [39:0] DpErEpF;

wire signed [39:0] n_ApBrC;

assign n_B = {{B[7]}, {5{B[7]}}, {B[6:0]}, {5{1'b0}}};
assign n_C = {{C[11]}, {6{C[11]}}, {C[10:0]}, {1'b0}};
assign n_D = {{D[7]}, {3{D[7]}}, {D[6:0]}, {3{1'b0}}};
assign n_E = {{E[13]}, {E[13]}, {E[12:0]}, {4{1'b0}}};
assign n_DpE = {{DpE[14]}, {DpE[14]}, {DpE[13:0]}, {4{1'b0}}};
assign n_ApBrC = {{ApBrC[37]}, {ApBrC[36:0]}, {2{1'b0}}};
//lat = 2
apB A_plus_B (
  .a(A), // input [17 : 0] a
  .b(n_B), // input [17 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(ApB) // output [18 : 0] s
);

//lat = 2
DpE D_plus_E (
  .a(n_D), // input [13 : 0] a
  .b(E), // input [13 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(DpE) // output [14 : 0] s
);

//lat = 2
EpF E_plus_F (
  .a(n_E), // input [18 : 0] a
  .b(F), // input [18 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(EpF) // output [19 : 0] s
);

delay #(
	.N(19),
	.DELAY(2)
)
delay_C
(
	.d(n_C),
	.q(opozC),
	.clk(clk),
	.ce(ce)
	
);

//lat = 5
ApBrC A_plus_B_mul_C (
  .clk(clk), // input clk
  .a(ApB), // input [18 : 0] a
  .b(opozC), // input [18 : 0] b
  .ce(ce), // input ce
  .p(ApBrC) // output [37 : 0] p
);

//lat =5
DpErEpF D_plus_E_mul_E_plus_F (
  .clk(clk), // input clk
  .a(n_DpE), // input [19 : 0] a
  .b(EpF), // input [19 : 0] b
  .ce(ce), // input ce
  .p(DpErEpF) // output [39 : 0] p
);

//lat = 5
final_sum last_sum (
  .a(n_ApBrC), // input [39 : 0] a
  .b(DpErEpF), // input [39 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(Y) // output [40 : 0] s
);
endmodule
