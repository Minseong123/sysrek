`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:02:55 03/24/2015 
// Design Name: 
// Module Name:    arithm 
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
module arithm(
    input clk,
    input ce,
    input [13:0] A,
    input [13:0] B,
    input [13:0] C,
	 
	 output [28:0] O
    );

wire signed [14:0] a_plus_b;
wire signed [13:0] opoz_c;
wire signed [28:0] wynik;

//latency = 2
add dodawanie (
  .a(A), // input [13 : 0] a
  .b(B), // input [13 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(a_plus_b) // output [14 : 0] s
);

delay # (
	.DELAY(2),
	.N(14)) 
	opoznienie
	(
	.d(C), 
	.ce(ce), 
	.clk(clk), 
	.q(opoz_c)
 );
 
 //latency = 3
 mul mnozenie (
  .clk(clk), // input clk
  .a(a_plus_b), // input [13 : 0] a
  .b(opoz_c), // input [13 : 0] b
  .p(wynik) // output [28 : 0] p
 );
 
 assign O = wynik;//powinno byc 11111101111001101101011110000
endmodule
