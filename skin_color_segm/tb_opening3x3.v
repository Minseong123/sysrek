`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:03:29 05/19/2015
// Design Name:   opening3x3
// Module Name:   /home/vka/Programming/VHDL/workspace/sysrek/skin_color_segm/tb_opening3x3.v
// Project Name:  vision
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: opening3x3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_opening3x3(
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
	 
reg [7:0] opening_r;
reg [7:0] opening_g;
reg [7:0] opening_b;

wire opening;
wire opening_de;
wire opening_vsync;
wire opening_hsync;

opening3x3 #
(
	.H_SIZE(10'd83)
)
open3
(
	.clk(rx_pclk),
	.ce(1'b1),
	.rst(1'b0),

	.mask((rx_red == 8'hFF) ? 1'b1 : 1'b0),
	.in_de(rx_de),
	.in_vsync(rx_vsync),
	.in_hsync(rx_hsync),

	.opened(opening),
	.out_de(opening_de),
	.out_vsync(opening_vsync),
	.out_hsync(opening_hsync)

);

always @(posedge rx_pclk) begin
	opening_r = (opening) ? 8'hFF : 8'h00;
	opening_g = (opening) ? 8'hFF : 8'h00;
	opening_b = (opening) ? 8'hFF : 8'h00;
end
// --------------------------------------
// Output assigment
// --------------------------------------
  
	assign tx_de 				= opening_de;
	assign tx_hsync 			= opening_hsync;
	assign tx_vsync 			= opening_vsync;
	assign tx_red         	= opening_r;
	assign tx_green        	= opening_g;
	assign tx_blue         	= opening_b;

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
