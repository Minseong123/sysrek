`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:14:28 05/18/2015
// Design Name:   median5x5
// Module Name:   /home/vka/Programming/VHDL/workspace/sysrek/skin_color_segm/tb_median5x5.v
// Project Name:  vision
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: median5x5
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_median5x5(
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
	 
reg [7:0] median_r;
reg [7:0] median_g;
reg [7:0] median_b;

wire median;
wire median_de;
wire median_vsync;
wire median_hsync;

median5x5 #
(
	.H_SIZE(10'd83)
)
med5
(
	.clk(rx_pclk),
	.ce(1'b1),
	.rst(1'b0),

	.mask((rx_red == 8'hFF) ? 1'b1 : 1'b0),
	.in_de(rx_de),
	.in_vsync(rx_vsync),
	.in_hsync(rx_hsync),

	.median(median),
	.out_de(median_de),
	.out_vsync(median_vsync),
	.out_hsync(median_hsync)

);

always @(posedge rx_pclk) begin
	median_r = (median) ? 8'hFF : 8'h00;
	median_g = (median) ? 8'hFF : 8'h00;
	median_b = (median) ? 8'hFF : 8'h00;
end
// --------------------------------------
// Output assigment
// --------------------------------------
  
	assign tx_de 				= median_de;
	assign tx_hsync 			= median_hsync;
	assign tx_vsync 			= median_vsync;
	assign tx_red         	= median_r;
	assign tx_green        	= median_g;
	assign tx_blue         	= median_b;

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
