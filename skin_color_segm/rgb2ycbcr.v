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
	 
reg [17:0] matrix_coef1;
reg [17:0] matrix_coef2;
reg [17:0] matrix_coef3;
reg [17:0] matrix_coef4;
reg [17:0] matrix_coef5;
reg [17:0] matrix_coef6;
reg [17:0] matrix_coef7;
reg [17:0] matrix_coef8;
reg [17:0] matrix_coef9;

reg [8:0] vector_coef1;
reg [8:0] vector_coef2;
reg [8:0] vector_coef3;

wire [26:0] mul1;
wire [26:0] mul2;
wire [26:0] mul3;
wire [26:0] mul4;
wire [26:0] mul5;
wire [26:0] mul6;
wire [26:0] mul7;
wire [26:0] mul8;
wire [26:0] mul9;

wire [10:0] sum1;
wire [10:0] sum2;

//konwersja na Y
multiply AmR (
  .clk(clk), // input clk
  .a(matrix_coef1), // input [17 : 0] a
  .b(R), // input [8 : 0] b
  .p(mul1) // output [26 : 0] p
);

multiply BmG (
  .clk(clk), // input clk
  .a(matrix_coef2), // input [17 : 0] a
  .b(G), // input [8 : 0] b
  .p(mul2) // output [26 : 0] p
);

multiply CmB (
  .clk(clk), // input clk
  .a(matrix_coef3), // input [17 : 0] a
  .b(B), // input [8 : 0] b
  .p(mul2) // output [26 : 0] p
);

sum ApB (
  .a(a), // input [10 : 0] a
  .b(b), // input [10 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(sum1) // output [10 : 0] s
);

sum CpCONST (
  .a(a), // input [10 : 0] a
  .b(b), // input [10 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(sum2) // output [10 : 0] s
);

sum outY (
  .a(a), // input [10 : 0] a
  .b(b), // input [10 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(s) // output [10 : 0] s
);
//konwersja na Cb


//konwersja na Cr


endmodule
