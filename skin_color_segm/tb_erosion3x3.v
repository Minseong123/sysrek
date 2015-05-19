`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:47:43 05/19/2015
// Design Name:   erosion3x3
// Module Name:   /home/vka/Programming/VHDL/workspace/sysrek/skin_color_segm/tb_erosion3x3.v
// Project Name:  vision
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: erosion3x3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_erosion3x3(
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
	 
reg [7:0] erosion_r;
reg [7:0] erosion_g;
reg [7:0] erosion_b;

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
	.clk(rx_pclk),
	.ce(1'b1),
	.rst(1'b0),

	.mask((rx_red == 8'hFF) ? 1'b1 : 1'b0),
	.in_de(rx_de),
	.in_vsync(rx_vsync),
	.in_hsync(rx_hsync),

	.eroded(erosion),
	.out_de(erosion_de),
	.out_vsync(erosion_vsync),
	.out_hsync(erosion_hsync)

);

always @(posedge rx_pclk) begin
	erosion_r = (erosion) ? 8'hFF : 8'h00;
	erosion_g = (erosion) ? 8'hFF : 8'h00;
	erosion_b = (erosion) ? 8'hFF : 8'h00;
end
// --------------------------------------
// Output assigment
// --------------------------------------
  
	assign tx_de 				= erosion_de;
	assign tx_hsync 			= erosion_hsync;
	assign tx_vsync 			= erosion_vsync;
	assign tx_red         	= erosion_r;
	assign tx_green        	= erosion_g;
	assign tx_blue         	= erosion_b;

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
