`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Wojtek Gumua
// 
// Create Date:    20:18:43 04/19/2015 
// Design Name: 
// Module Name:    rgb2hsv 
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
module rgb2hsv(
	input clk,
	input ce,
	
	input [7:0] R,
	input [7:0] G,
	input [7:0] B,
	input in_hsync,          // hsync data
	input in_vsync,          // vsync data
	input in_de,
	
	output [7:0] H,
	output [7:0] S,
	output [7:0] V,
	output out_hsync,          // hsync data
	output out_vsync,          // vsync data
	output out_de    
);

wire [7:0] q_R;
wire [7:0] q_G;
wire [7:0] q_B;
wire [7:0] f_R;
wire [7:0] f_G;
wire [7:0] f_B;

wire signed [9:0] n_R;
wire signed [9:0] n_G;
wire signed [9:0] n_B;

wire signed [9:0] v_max;
wire signed [9:0] v_min;
wire signed [9:0] v_delta;

wire [1:0] index_min;
wire [1:0] index_max;

endmodule
