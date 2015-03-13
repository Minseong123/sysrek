`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:30:53 03/10/2015 
// Design Name: 
// Module Name:    and_cascade 
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
module and_cascade #
(
	parameter LENGTH = 8
)
(
    input [LENGTH - 1:0] in,
    output out	
);

wire [LENGTH:0] chain;
assign chain[0] = 1'b1;

genvar i;
generate
	for(i=0; i < LENGTH; i = i + 1)
	begin: and_gate
		assign chain[i + 1] = in[i] & chain[i];
	end
endgenerate

assign out = chain[LENGTH];
endmodule
