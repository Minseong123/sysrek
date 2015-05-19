`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:29:00 05/19/2015
// Design Name:   mean_filter3x3
// Module Name:   /home/vka/Programming/VHDL/workspace/sysrek/skin_color_segm/tb_mean_filter3x3.v
// Project Name:  vision
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mean_filter3x3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_mean_filter3x3(
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

// proccessing 
wire [7:0] conv_Y;
wire [7:0] conv_Cb;
wire [7:0] conv_Cr;
wire conv_de;
wire conv_vsync;
wire conv_hsync;

wire [7:0] mean_Y;
wire [7:0] mean_Cb;
wire [7:0] mean_Cr;
wire mean_de;
wire mean_vsync;
wire mean_hsync;

rgb2ycbcr conv (
	.clk(rx_pclk), 
	.ce(1'b1), 
	.R(rx_red), 
	.G(rx_green), 
	.B(rx_blue), 
	.in_hsync(rx_hsync), 
	.in_vsync(rx_vsync), 
	.in_de(rx_de), 
	.Y(conv_Y), 
	.Cb(conv_Cb), 
	.Cr(conv_Cr), 
	.out_hsync(conv_hsync), 
	.out_vsync(conv_vsync), 
	.out_de(conv_de)
);

mean_filter3x3 #
(
	.H_SIZE(10'd83)
)
mean_f
(
	.clk(rx_pclk),
	.ce(1'b1),
	.rst(1'b0),

	.in_Y(conv_Y),
	.in_Cb(conv_Cb),
	.in_Cr(conv_Cr),
	.in_de(conv_de),
	.in_vsync(conv_vsync),
	.in_hsync(conv_hsync),
	
	.out_Y(mean_Y),
	.out_Cb(mean_Cb),
	.out_Cr(mean_Cr),
	.out_de(mean_de),
	.out_vsync(mean_vsync),
	.out_hsync(mean_hsync)   

);

// --------------------------------------
// Output assigment
// --------------------------------------
  
	assign tx_de 				= mean_de;
	assign tx_hsync 			= mean_hsync;
	assign tx_vsync 			= mean_vsync;
	assign tx_red         	= mean_Y;
	assign tx_green        	= mean_Cb;
	assign tx_blue         	= mean_Cr;

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