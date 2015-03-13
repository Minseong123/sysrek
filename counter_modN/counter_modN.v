`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:01:47 03/10/2015 
// Design Name: 
// Module Name:    counter_modN 
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
module counter_modN #
(
	parameter N = 8,
	parameter WIDTH = clog2(N) - 1
)
(
    input clk,
    input ce,
    input rst,
    output [WIDTH:0] out
);
	function integer clog2;
	input integer value;
	begin
	value = value-1;
	for (clog2=0; value>0; clog2=clog2+1)
	value = value>>1;
	end
	endfunction
	
reg [WIDTH:0] val = 0; // init

always @(posedge clk)
	begin
		if(rst) val<= 0;
		else begin
			if(ce) begin
				if(val < N - 1) val<=val+1;
				else val <= 0;
			end
			else val<=val;
		end
	end
assign out=val;
endmodule
