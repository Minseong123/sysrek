`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Wojtek Gumua
// 
// Create Date:    16:10:15 06/07/2015 
// Design Name: 
// Module Name:    mux2x8 
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
module mux2x8(
    input address,
    input [7:0] in0,
    input [7:0] in1,
    output [7:0] out
    );
assign out = (address == 1'b1) ? in1 : in0;

endmodule
