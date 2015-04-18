`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:06:48 04/16/2015 
// Design Name: 
// Module Name:    rgb2ycbcr 
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
module rgb2ycbcr(
	input clk,
	input ce,
	
	input [7:0] R,
	input [7:0] G,
	input [7:0] B,
	input in_hsync,          // hsync data
	input in_vsync,          // vsync data
	input in_de,
	
	output [7:0] Y,
	output [7:0] Cb,
	output [7:0] Cr,
	output out_hsync,          // hsync data
	output out_vsync,          // vsync data
	output out_de
);
	 
reg signed [17:0] matrix_coef1_1 = 18'b001001100100010110;
reg signed [17:0] matrix_coef1_2 = 18'b010010110010001011;
reg signed [17:0] matrix_coef1_3 = 18'b000011101001011110;
reg signed [17:0] matrix_coef2_1 = 18'b111010100110011011;
reg signed [17:0] matrix_coef2_2 = 18'b110101011001100100;
reg signed [17:0] matrix_coef2_3 = 18'b010000000000000000;
reg signed [17:0] matrix_coef3_1 = 18'b010000000000000000;
reg signed [17:0] matrix_coef3_2 = 18'b110010100110100001;
reg signed [17:0] matrix_coef3_3 = 18'b111101011001011110;

reg signed [8:0] vector_coef1 = 9'b000000000;
reg signed [8:0] vector_coef2 = 9'b010000000;
reg signed [8:0] vector_coef3 = 9'b010000000;

wire signed [35:0] mul1_1;
wire signed [35:0] mul1_2;
wire signed [35:0] mul1_3;
wire signed [35:0] mul2_1;
wire signed [35:0] mul2_2;
wire signed [35:0] mul2_3;
wire signed [35:0] mul3_1;
wire signed [35:0] mul3_2;
wire signed [35:0] mul3_3;

wire signed [8:0] sum1_1;
wire signed [8:0] sum1_2;
wire signed [8:0] sum1_3;
wire signed [8:0] sum2_1;
wire signed [8:0] sum2_2;
wire signed [8:0] sum2_3;
wire signed [8:0] sum3_1;
wire signed [8:0] sum3_2;
wire signed [8:0] sum3_3;

//Y
multiply mult1_1 (
  .clk(clk), // input clk
  .a(matrix_coef1_1), // input [17 : 0] a
  .b({10'b0, R}), // input [17 : 0] b
  .p(mul1_1) // output [35 : 0] p
);

multiply mult1_2 (
  .clk(clk), // input clk
  .a(matrix_coef1_2), // input [17 : 0] a
  .b({10'b0, G}), // input [17 : 0] b
  .p(mul1_2) // output [35 : 0] p
);

multiply mult1_3 (
  .clk(clk), // input clk
  .a(matrix_coef1_3), // input [17 : 0] a
  .b({10'b0, B}), // input [17 : 0] b
  .p(mul1_3) // output [35 : 0] p
);

sum summ1_1 (
  .a(mul1_1[25:17]), // input [8 : 0] a
  .b(mul1_2[25:17]), // input [8 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(sum1_1) // output [8 : 0] s
);

sum summ1_2 (
  .a(mul1_3[25:17]), // input [8 : 0] a
  .b(vector_coef1), // input [8 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(sum1_2) // output [8 : 0] s
);


sum summ1_3 (
  .a(sum1_1), // input [8 : 0] a
  .b(sum1_2), // input [8 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(sum1_3) // output [8 : 0] s
);

// Cb
multiply mult2_1 (
  .clk(clk), // input clk
  .a(matrix_coef2_1), // input [17 : 0] a
  .b({10'b0, R}), // input [17 : 0] b
  .p(mul2_1) // output [35 : 0] p
);

multiply mult2_2 (
  .clk(clk), // input clk
  .a(matrix_coef2_2), // input [17 : 0] a
  .b({10'b0, G}), // input [17 : 0] b
  .p(mul2_2) // output [35 : 0] p
);

multiply mult2_3 (
  .clk(clk), // input clk
  .a(matrix_coef2_3), // input [17 : 0] a
  .b({10'b0, B}), // input [17 : 0] b
  .p(mul2_3) // output [35 : 0] p
);

sum summ2_1 (
  .a(mul2_1[25:17]), // input [8 : 0] a
  .b(mul2_2[25:17]), // input [8 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(sum2_1) // output [8 : 0] s
);

sum summ2_2 (
  .a(mul2_3[25:17]), // input [8 : 0] a
  .b(vector_coef2), // input [8 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(sum2_2) // output [8 : 0] s
);


sum summ2_3 (
  .a(sum2_1), // input [8 : 0] a
  .b(sum2_2), // input [8 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(sum2_3) // output [8 : 0] s
);

//Cr
multiply mult3_1 (
  .clk(clk), // input clk
  .a(matrix_coef3_1), // input [17 : 0] a
  .b({10'b0, R}), // input [17 : 0] b
  .p(mul3_1) // output [35 : 0] p
);

multiply mult3_2 (
  .clk(clk), // input clk
  .a(matrix_coef3_2), // input [17 : 0] a
  .b({10'b0, G}), // input [17 : 0] b
  .p(mul3_2) // output [35 : 0] p
);

multiply mult3_3 (
  .clk(clk), // input clk
  .a(matrix_coef3_3), // input [17 : 0] a
  .b({10'b0, B}), // input [17 : 0] b
  .p(mul3_3) // output [35 : 0] p
);

sum summ3_1 (
  .a(mul3_1[25:17]), // input [8 : 0] a
  .b(mul3_2[25:17]), // input [8 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(sum3_1) // output [8 : 0] s
);

sum summ3_2 (
  .a(mul3_3[25:17]), // input [8 : 0] a
  .b(vector_coef3), // input [8 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(sum3_2) // output [8 : 0] s
);


sum summ3_3 (
  .a(sum3_1), // input [8 : 0] a
  .b(sum3_2), // input [8 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(sum3_3) // output [8 : 0] s
);


//moduly opozniajace
delay #
(
	.N(1),
	.DELAY(6)
)
delay_vsync
(
	.d(in_vsync),
	.ce(ce),
	.clk(clk),
	.q(out_vsync)
);

delay #
(
	.N(1),
	.DELAY(6)
)
delay_hsync
(
	.d(in_hsync),
	.ce(ce),
	.clk(clk),
	.q(out_hsync)
);

delay #
(
	.N(1),
	.DELAY(6)
)
delay_de
(
	.d(in_de),
	.ce(ce),
	.clk(clk),
	.q(out_de)
);

//przepisanie wynikow
assign Y = 	sum1_3[7:0];
assign Cb = sum2_3[7:0];
assign Cr = sum3_3[7:0];

endmodule
