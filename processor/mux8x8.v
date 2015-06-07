`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Wojtek Gumua
// 
// Create Date:    16:05:48 06/07/2015 
// Design Name: 
// Module Name:    mux8x8 
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
module mux8x8(
    input [2:0] address,
    input [7:0] in0,
    input [7:0] in1,
    input [7:0] in2,
    input [7:0] in3,
    input [7:0] in4,
    input [7:0] in5,
    input [7:0] in6,
    input [7:0] in7,
    output [7:0] out
    );
wire [7:0] mux[7:0];
assign mux[0] = in0;
assign mux[1] = in1;
assign mux[2] = in2;
assign mux[3] = in3;
assign mux[4] = in4;
assign mux[5] = in5;
assign mux[6] = in6;
assign mux[7] = in7;

assign out = mux[address];

endmodule
