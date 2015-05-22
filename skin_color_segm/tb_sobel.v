`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:00:16 05/22/2015
// Design Name:   sobel
// Module Name:   /home/vka/Programming/VHDL/workspace/sysrek/skin_color_segm/tb_sobel.v
// Project Name:  vision
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sobel
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_sobel(
    );
	 

wire rx_pclk;

wire rx_de;
wire rx_hsync;
wire rx_vsync;

wire [7:0] rx_red;
wire [7:0] rx_green;
wire [7:0] rx_blue;


wire tx_de;
wire tx_hsync;
wire tx_vsync;

wire [7:0] tx_red;
wire [7:0] tx_green;
wire [7:0] tx_blue;

// --------------------------------------
// HDMI input
// --------------------------------------
hdmi_in file_input (
    .hdmi_clk(rx_pclk), 
    .hdmi_de(rx_de), 
    .hdmi_hs(rx_hsync), 
    .hdmi_vs(rx_vsync), 
    .hdmi_r(rx_red), 
    .hdmi_g(rx_green), 
    .hdmi_b(rx_blue)
    );

wire [7:0] out_sobel;
wire out_de;
wire out_vsync;
wire out_hsync;
sobel #(
    	.H_SIZE(10'd83) // domylny rozmiar obrazu to szeroko = 64 piksele
) sob(
	.clk(rx_pclk),
	.ce(1'b1),
	.rst(1'b0),
	
	.in_image(rx_red),
	.in_de(rx_de),
	.in_vsync(rx_vsync),
	.in_hsync(rx_hsync),
	
	.out_sobel(out_sobel),
	.out_de(out_de),
	.out_vsync(out_vsync),
	.out_hsync(out_hsync)   
	);

// --------------------------------------
// Output assigment
// --------------------------------------
  
	assign tx_de 				= out_de;
	assign tx_hsync 			= out_hsync;
	assign tx_vsync 			= out_vsync;
	assign tx_red         	= out_sobel;
	assign tx_green        	= out_sobel;
	assign tx_blue         	= out_sobel;

// --------------------------------------
// HDMI output
// --------------------------------------
hdmi_out file_output (
    .hdmi_clk(rx_pclk), 
    .hdmi_vs(tx_vsync), 
    .hdmi_de(tx_de), 
    .hdmi_data({8'b0,tx_red,tx_green,tx_blue})
    );
endmodule