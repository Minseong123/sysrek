`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Wojtek Gumua
// 
// Create Date:    16:25:01 04/18/2015 
// Design Name: 
// Module Name:    ycbcr_thresholding 
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
module ycbcr_thresholding(
    input [7:0] Y,
    input [7:0] Cb,
    input [7:0] Cr,
    input [7:0] Ta,
    input [7:0] Tb,
    input [7:0] Tc,
    input [7:0] Td,
    output [7:0] binary
    );

assign binary = (Ta < Cb && Cb < Tb && Tc < Cr && Cr < Td) ? 8'h0 : 8'hFF; // !!!

endmodule
