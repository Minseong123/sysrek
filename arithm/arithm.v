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
	 
	 output [13:0] O
    );

wire signed [13:0] a_plus_b;
wire signed [13:0] opoz_c;
wire signed [27:0] wynik;

//latency = 2
add dodawanie (
  .a(A), // input [13 : 0] a
  .b(B), // input [13 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(a_plus_b) // output [13 : 0] s
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
 mul your_instance_name (
  .clk(clk), // input clk
  .a(a_plus_b), // input [13 : 0] a
  .b(opoz_c), // input [13 : 0] b
  .p(wynik) // output [27 : 0] p
 );
 
 assign O = wynik[27:14];
endmodule
