`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:12:31 04/21/2015
// Design Name:   rgb2hsv
// Module Name:   /home/vka/Programming/VHDL/workspace/sysrek/skin_color_segm/tr_rgb2hsv.v
// Project Name:  vision
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rgb2hsv
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_rgb2hsv2;
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



	// Outputs
	wire [7:0] H;
	wire [7:0] S;
	wire [7:0] V;
	wire out_hsync;
	wire out_vsync;
	wire out_de;

hdmi_in file_input (
    .hdmi_clk(rx_pclk), 
    .hdmi_de(rx_de), 
    .hdmi_hs(rx_hsync), 
    .hdmi_vs(rx_vsync), 
    .hdmi_r(rx_red), 
    .hdmi_g(rx_green), 
    .hdmi_b(rx_blue)
    );

	// Instantiate the Unit Under Test (UUT)
	rgb2hsv convertion (
		.clk(rx_pclk), 
		.ce(1'b1), 
		.R(rx_red), 
		.G(rx_green), 
		.B(rx_blue), 
		.in_hsync(rx_hsync), 
		.in_vsync(rx_vsync), 
		.in_de(rx_de), 
		.H(H), 
		.S(S), 
		.V(V), 
		.out_hsync(out_hsync), 
		.out_vsync(out_vsync), 
		.out_de(out_de)
	);

	assign tx_de 				= out_de;
	assign tx_hsync 			= out_hsync;
	assign tx_vsync 			= out_hsync;
	assign tx_red         	= H;
	assign tx_green        	= S;
	assign tx_blue         	= V;

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


