`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Wojtek Gumua
// 
// Create Date:    21:58:57 04/21/2015 
// Design Name: 
// Module Name:    mux4 
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
module mux4( //wybiera wejscie w zaleznosci od wartosci V i RGB
	input clk,
	
	input [11:0] i1,
	input [11:0] i2,
	input [11:0] i3,
	
	input [9:0] r,
	input [9:0] g,
	input [9:0] b,
	input [9:0] value,
	
	output [11:0] o
    );

reg [11:0] tmp;

always @(posedge clk)
begin
	if(value == 10'b0) begin
		tmp = 12'b0;
	end
	else if (value == r) begin
		tmp = i1;
	end
	else if (value == g) begin
		tmp = i2;
	end
	else begin
		tmp = i3;
	end
end

assign o = tmp;

endmodule
