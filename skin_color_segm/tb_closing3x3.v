`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:13:40 05/19/2015
// Design Name:   closing3x3
// Module Name:   /home/vka/Programming/VHDL/workspace/sysrek/skin_color_segm/tb_closing3x3.v
// Project Name:  vision
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: closing3x3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_closing3x3(
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
	 
reg [7:0] closing_r;
reg [7:0] closing_g;
reg [7:0] closing_b;

wire closing;
wire closing_de;
wire closing_vsync;
wire closing_hsync;

closing3x3 #
(
	.H_SIZE(10'd83)
)
close33
(
	.clk(rx_pclk),
	.ce(1'b1),
	.rst(1'b0),

	.mask((rx_red == 8'hFF) ? 1'b1 : 1'b0),
	.in_de(rx_de),
	.in_vsync(rx_vsync),
	.in_hsync(rx_hsync),

	.closed(closing),
	.out_de(closing_de),
	.out_vsync(closing_vsync),
	.out_hsync(closing_hsync)

);

always @(posedge rx_pclk) begin
	closing_r = (closing) ? 8'hFF : 8'h00;
	closing_g = (closing) ? 8'hFF : 8'h00;
	closing_b = (closing) ? 8'hFF : 8'h00;
end
// --------------------------------------
// Output assigment
// --------------------------------------
  
	assign tx_de 				= closing_de;
	assign tx_hsync 			= closing_hsync;
	assign tx_vsync 			= closing_vsync;
	assign tx_red         	= closing_r;
	assign tx_green        	= closing_g;
	assign tx_blue         	= closing_b;

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