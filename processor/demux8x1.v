`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Wojtek Gumua
// 
// Create Date:    16:11:56 06/07/2015 
// Design Name: 
// Module Name:    demux8x1 
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
module demux8x1(
    input [2:0] address,
    input in,
    output [7:0] out
    );
		
assign out = 8'h01 << address;

endmodule
