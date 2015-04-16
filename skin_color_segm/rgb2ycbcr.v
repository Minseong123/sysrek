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
	 
reg [17:0] matrix_coef1_1 = 18'b001001100100010110;
reg [17:0] matrix_coef1_2 = 18'b010010110010001011;
reg [17:0] matrix_coef1_3 = 18'b000011101001011110;
reg [17:0] matrix_coef2_1 = 18'b111010100110011011;
reg [17:0] matrix_coef2_2 = 18'b110101011001100100;
reg [17:0] matrix_coef2_3 = 18'b010000000000000000;
reg [17:0] matrix_coef3_1 = 18'b010000000000000000;
reg [17:0] matrix_coef3_2 = 18'b110010100110100001;
reg [17:0] matrix_coef3_3 = 18'b111101011001011110;

reg [10:0] vector_coef1 = 11'b00000000000;
reg [10:0] vector_coef2 = 11'b00010000000;
reg [10:0] vector_coef3 = 11'b00010000000;

wire [26:0] mul1_1;
wire [26:0] mul1_2;
wire [26:0] mul1_3;
wire [26:0] mul2_1;
wire [26:0] mul2_2;
wire [26:0] mul2_3;
wire [26:0] mul3_1;
wire [26:0] mul3_2;
wire [26:0] mul3_3;

wire [10:0] sum1_1;
wire [10:0] sum1_2;
wire [10:0] sum1_3;
wire [10:0] sum2_1;
wire [10:0] sum2_2;
wire [10:0] sum2_3;
wire [10:0] sum3_1;
wire [10:0] sum3_2;
wire [10:0] sum3_3;

//konwersja na Y
multiply AmR_1 (
  .clk(clk), // input clk
  .a(matrix_coef1_1), // input [17 : 0] a
  .b({1'b0, R}), // input [8 : 0] b
  .p(mul1_1) // output [26 : 0] p
);

multiply BmG_1 (
  .clk(clk), // input clk
  .a(matrix_coef1_2), // input [17 : 0] a
  .b({1'b0, G}), // input [8 : 0] b
  .p(mul1_2) // output [26 : 0] p
);

multiply CmB_1 (
  .clk(clk), // input clk
  .a(matrix_coef1_3), // input [17 : 0] a
  .b({1'b0, B}), // input [8 : 0] b
  .p(mul1_3) // output [26 : 0] p
);

sum ApB_1 (
  .a({1'b0, mul1_1[26:17]}), // input [10 : 0] a
  .b({1'b0, mul1_2[26:17]}), // input [10 : 0] b
  .clk(clk), // input clk
  .ce(ce),
  .s(sum1_1) // output [10 : 0] s
);

sum CpCONST_1 (
  .a({1'b0, mul1_3[26:17]}), // input [10 : 0] a
  .b(vector_coef1), // input [10 : 0] b
  .clk(clk), // input clk
  .ce(ce),
  .s(sum1_2) // output [10 : 0] s
);

sum outY (
  .a(sum1_1), // input [10 : 0] a
  .b(sum1_2), // input [10 : 0] b
  .clk(clk), // input clk
  .ce(ce),
  .s(sum1_3) // output [10 : 0] s
);

//konwersja na Cb
multiply AmR_2 (
  .clk(clk), // input clk
  .a(matrix_coef2_1), // input [17 : 0] a
  .b({1'b0, R}), // input [8 : 0] b
  .p(mul2_1) // output [26 : 0] p
);

multiply BmG_2 (
  .clk(clk), // input clk
  .a(matrix_coef2_2), // input [17 : 0] a
  .b({1'b0, G}), // input [8 : 0] b
  .p(mul2_2) // output [26 : 0] p
);

multiply CmB_2 (
  .clk(clk), // input clk
  .a(matrix_coef2_3), // input [17 : 0] a
  .b({1'b0, B}), // input [8 : 0] b
  .p(mul2_3) // output [26 : 0] p
);

sum ApB_2 (
  .a({1'b0, mul2_1[26:17]}), // input [10 : 0] a
  .b({1'b0, mul2_2[26:17]}), // input [10 : 0] b
  .clk(clk), // input clk
  .ce(ce),
  .s(sum2_1) // output [10 : 0] s
);

sum CpCONST_2 (
  .a({1'b0, mul2_3[26:17]}), // input [10 : 0] a
  .b(vector_coef2), // input [10 : 0] b
  .clk(clk), // input clk
  .ce(ce),
  .s(sum2_2) // output [10 : 0] s
);

sum outCb (
  .a(sum2_1), // input [10 : 0] a
  .b(sum2_2), // input [10 : 0] b
  .clk(clk), // input clk
  .ce(ce),
  .s(sum2_3) // output [10 : 0] s
);

//konwersja na Cr
multiply AmR_3 (
  .clk(clk), // input clk
  .a(matrix_coef3_1), // input [17 : 0] a
  .b({1'b0, R}), // input [8 : 0] b
  .p(mul3_1) // output [26 : 0] p
);

multiply BmG_3 (
  .clk(clk), // input clk
  .a(matrix_coef3_2), // input [17 : 0] a
  .b({1'b0, G}), // input [8 : 0] b
  .p(mul3_2) // output [26 : 0] p
);

multiply CmB_3 (
  .clk(clk), // input clk
  .a(matrix_coef3_3), // input [17 : 0] a
  .b({1'b0, B}), // input [8 : 0] b
  .p(mul3_3) // output [26 : 0] p
);

sum ApB_3 (
  .a({1'b0, mul3_1[26:17]}), // input [10 : 0] a
  .b({1'b0, mul3_2[26:17]}), // input [10 : 0] b
  .clk(clk), // input clk
  .ce(ce),
  .s(sum3_1) // output [10 : 0] s
);

sum CpCONST_3 (
  .a({1'b0, mul3_3[26:17]}), // input [10 : 0] a
  .b(vector_coef3), // input [10 : 0] b
  .clk(clk), // input clk
  .ce(ce),
  .s(sum3_2) // output [10 : 0] s
);

sum outCr (
  .a(sum3_1), // input [10 : 0] a
  .b(sum3_2), // input [10 : 0] b
  .clk(clk), // input clk
  .ce(ce),
  .s(sum3_3) // output [10 : 0] s
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
