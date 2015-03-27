`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:24:40 03/26/2015 
// Design Name: 
// Module Name:    multiplier 
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
module multiplier(
	 input clk,
    input [12:0] A,
    input [12:0] B,
    output [26:0] Y,
    output [26:0] Z
    );
	 
// [Y,Z] = [a, b; c, d] * [A; B]
reg [12:0] a = 13'b1111111111110; // -0.11
reg [12:0] b = 13'b0000000100101; // 2.3
reg [12:0] c = 13'b0000000110010; // 3.14
reg [12:0] d = 13'b1111101001100; // -11.25

//wyniki z mnozarek
wire [25:0] Aa;
wire [25:0] Bb;
wire[25:0] Ac;
wire [25:0] Bd;

multiply m1 ( // A * a
  .clk(clk), // input clk
  .a(A), // input [12 : 0] a
  .b(a), // input [12 : 0] b
  .p(Aa) // output [25 : 0] p
);
multiply m2 ( // B * b
  .clk(clk), // input clk
  .a(B), // input [12 : 0] a
  .b(b), // input [12 : 0] b
  .p(Bb) // output [25 : 0] p
);
multiply m3 ( // A * c
  .clk(clk), // input clk
  .a(A), // input [12 : 0] a
  .b(c), // input [12 : 0] b
  .p(Ac) // output [25 : 0] p
);
multiply m4 ( // B * d
  .clk(clk), // input clk
  .a(B), // input [12 : 0] a
  .b(d), // input [12 : 0] b
  .p(Bd) // output [25 : 0] p
);
//assign Y = Ac;
//assign Z = Bd;
sum s1 (
  .a(Aa), // input [25 : 0] a
  .b(Bb), // input [25 : 0] b
  .clk(clk), // input clk
  .s(Y) // output [26 : 0] s
);

sum s2 (
  .a(Ac), // input [25 : 0] a
  .b(Bd), // input [25 : 0] b
  .clk(clk), // input clk
  .s(Z) // output [26 : 0] s
);
endmodule
