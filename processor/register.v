`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:09:22 03/11/2015 
// Design Name: 
// Module Name:    register 
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
module register
(
	input clk,
	input ce,
	input [7:0] d,
	output [7:0] q
);
reg [7:0] val = 0;

always @(posedge clk)
begin
	if(ce) val <= d;
	else val <= val;
end

assign q = val;

endmodule