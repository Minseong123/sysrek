`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Wojtek Gumua
// 
// Create Date:    20:50:29 04/09/2015 
// Design Name: 
// Module Name:    mainLUT 
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
module mainLUT(
    input [7:0] a,
    input clk,
    output [7:0] qspo
    );

LUT lut (
  .a(a), // input [7 : 0] a
  .clk(clk), // input clk
  .qspo(qspo) // output [7 : 0] qspo
);

endmodule
