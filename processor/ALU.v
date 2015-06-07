`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Wojtek Gumua
// 
// Create Date:    16:00:42 06/07/2015 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [7:0] input_x,
    input [7:0] input_y,
    output [7:0] output_sum,
    output [7:0] output_and,
    output [7:0] output_cmp
    );
assign output_sum = input_x + input_y;
assign output_and = input_x & input_y;
assign output_cmp = (input_x == 8'b0) ? 8'b1 : 8'b0; 

endmodule
