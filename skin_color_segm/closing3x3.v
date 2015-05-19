`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Wojtek Gumua
// 
// Create Date:    14:10:58 05/19/2015 
// Design Name: 
// Module Name:    closing3x3 
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
module closing3x3#(
    	parameter [9:0] H_SIZE = 83 // domylny rozmiar obrazu to szeroko = 64 piksele
)(
	input clk,
	input ce,
	input rst,
	
	input mask,
	input in_de,
	input in_vsync,
	input in_hsync,
	
	output closed,
	output out_de,
	output out_vsync,
	output out_hsync   
	);

wire dilation;
wire dilation_de;
wire dilation_vsync;
wire dilation_hsync;

dilation3x3 #
(
	.H_SIZE(10'd83)
)
dilate3
(
	.clk(clk),
	.ce(1'b1),
	.rst(1'b0),

	.mask(mask),
	.in_de(in_de),
	.in_vsync(in_vsync),
	.in_hsync(in_hsync),

	.dilated(dilation),
	.out_de(dilation_de),
	.out_vsync(dilation_vsync),
	.out_hsync(dilation_hsync)
);

wire erosion;
wire erosion_de;
wire erosion_vsync;
wire erosion_hsync;

erosion3x3 #
(
	.H_SIZE(10'd83)
)
erode3
(
	.clk(clk),
	.ce(1'b1),
	.rst(1'b0),

	.mask(dilation),
	.in_de(dilation_de),
	.in_vsync(dilation_vsync),
	.in_hsync(dilation_hsync),

	.eroded(erosion),
	.out_de(erosion_de),
	.out_vsync(erosion_vsync),
	.out_hsync(erosion_hsync)

);

assign out_de = dilation_de;
assign out_hsync = dilation_hsync;
assign out_vsync = dilation_vsync;
assign closed = erosion;

endmodule
