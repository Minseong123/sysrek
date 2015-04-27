`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Wojtek Gumua
// 
// Create Date:    20:29:40 04/19/2015 
// Design Name: 
// Module Name:    min 
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
module min(
	 input clk,

    input [9:0] a,
    input [9:0] b,
    input [9:0] c,
    output [9:0] o,
	 output [1:0] index
    );
reg [9:0] val;
reg [1:0] i;
always @(posedge clk)

	begin
	if (a < b && a < c)
	begin
		val = a;
		i = 0;
	end
	else if(b < a && b < c)
	begin
		val = b;
		i = 1;
	end
	else
	begin
		val = c;
		i = 2;
	end
end
assign index = i;
assign o = val;
endmodule
