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
    output Y
    );

//lat = 2
apB ApB (
  .a(A), // input [17 : 0] a
  .b(B), // input [7 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(s) // output [18 : 0] s
);

//lat = 2
DpE DpE (
  .a(a), // input [7 : 0] a
  .b(b), // input [13 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(s) // output [14 : 0] s
);

//lat = 2
EpF EpF (
  .a(a), // input [13 : 0] a
  .b(b), // input [18 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(s) // output [19 : 0] s
);

delay #(
	.N(12),
	.DELAY(2)
)
opoznienie
(
	.d(C),
	.q(opoz_C),
	.clk(clk),
	.ce(ce)
	
);
//lat = 4
ApBrC ApBrC (
  .clk(clk), // input clk
  .a(a), // input [18 : 0] a
  .b(b), // input [11 : 0] b
  .p(p) // output [30 : 0] p
);

DpErEpF DpErEpF (
  .clk(clk), // input clk
  .a(a), // input [14 : 0] a
  .b(b), // input [19 : 0] b
  .p(p) // output [34 : 0] p
);

//konieczne rozszerzenie czesci ulamkowej DpErEpF

//lat = 4
wynik wynik (
  .a(a), // input [30 : 0] a
  .b(b), // input [35 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(s) // output [36 : 0] s
);
endmodule
