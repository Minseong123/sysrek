`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Wojtek Gumua
// 
// Create Date:    16:51:58 06/07/2015 
// Design Name: 
// Module Name:    jump_select 
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
module jump_select(
    input [7:0] cmp_res,
    input [1:0] pc_op,
    output out
    );
	 
reg [3:0] results;
always
begin
	results[0] <= 1'b0; //jmp
	results[1] <= (cmp_res > 8'b0) ? 1'b0 : 1'b1;
	results[2] <= (cmp_res == 8'b0) ? 1'b0 : 1'b1;
	results[3] <= 1'b1; //no jmp
end;

assign out = results[pc_op];

endmodule
