`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Tomasz Kryjak
// 
// Create Date:    11:29:28 10/28/2013 
// Design Name: 
// Module Name:    tb_filter 
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
module tb_hdmi(
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
	 
 wire [7:0] lub_blue;
 wire [7:0] lut_red;
 wire [7:0] lut_green;
BINARYZACJA lut_r (
  .a(rx_red), // input [7 : 0] a
  .clk(rx_pclk), // input clk
  .qspo(lut_red) // output [7 : 0] qspo
);

BINARYZACJA lut_g (
  .a(rx_green), // input [7 : 0] a
  .clk(rx_pclk), // input clk
  .qspo(lut_green) // output [7 : 0] qspo
);

BINARYZACJA lut_b (
  .a(rx_blue), // input [7 : 0] a
  .clk(rx_pclk), // input clk
  .qspo(lut_blue) // output [7 : 0] qspo
);
 
 
reg lut_de = 0;
reg lut_hsync = 0;
reg lut_vsync = 0;
always @(posedge rx_pclk)
begin
	lut_de <= rx_de;
	lut_hsync <= rx_hsync;
	lut_vsync <= rx_vsync;
end
	 
	 
// --------------------------------------
// Output assigment
// --------------------------------------
  
	assign tx_de 				= lut_de;
	assign tx_hsync 			= lut_hsync;
	assign tx_vsync 			= lut_vsync;
	assign tx_blue         	= lut_blue & lut_green & lut_red;
	assign tx_green        	= lut_blue & lut_green & lut_red;
	assign tx_red          	= lut_blue & lut_green & lut_red;

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
