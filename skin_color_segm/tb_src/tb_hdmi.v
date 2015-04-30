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

// proccessing 

wire [7:0] 	Y;
wire [7:0] 	Cb;
wire [7:0] 	Cr;
wire			conv_hsync;
wire			conv_vsync;
wire			conv_de;

rgb2ycbcr conversion
(
	.clk(rx_pclk),
	.ce(1'b1),
	
	.R(rx_red),
	.G(rx_green),
	.B(rx_blue),
	
	.in_hsync(rx_hsync),
	.in_vsync(rx_vsync),
	.in_de(rx_de),
	
	.Y(Y),
	.Cb(Cb),
	.Cr(Cr),
	
	.out_hsync(conv_hsync),
	.out_vsync(conv_vsync),
	.out_de(conv_de)
);
	
wire [7:0] binary;

ycbcr_thresholding thresholding
(
	.Y(Y),
	.Cb(Cb),
	.Cr(Cr),
	
	.Ta(8'd90),
	.Tb(8'd140),
	.Tc(8'd90),
	.Td(8'd126),
	
	.binary(binary)
);
	 
wire [7:0] cross_r;
wire [7:0] cross_g;
wire [7:0] cross_b;	 

wire [9:0] centr_x;
wire [9:0] centr_y;
wire [9:0] curr_w;
wire [9:0] curr_h;
centroid #
(
	.IMG_W(64),
	.IMG_H(64)
)
centro
(
    .clk(rx_pclk),
    .ce(1'b1),
    .rst(1'b0),
    .de(conv_de),
    .hsync(conv_hsync),
    .vsync(conv_vsync),
    .mask((binary == 8'hFF) ? 1'b1 : 1'b0),
    .x(centr_x),
    .y(centr_y),
	 
	 .c_h(curr_h),
	 .c_w(curr_w)
);

assign cross_r = ((curr_w[9:0] == centr_x || curr_h[9:0] == centr_y) ? 8'hff : binary);
assign cross_g = ((curr_w[9:0] == centr_x || curr_h[9:0] == centr_y) ? 8'h0 : binary);
assign cross_b = ((curr_w[9:0] == centr_x || curr_h[9:0] == centr_y) ? 8'h0 : binary);

// --------------------------------------
// Output assigment
// --------------------------------------
  
	assign tx_de 				= conv_de;
	assign tx_hsync 			= conv_hsync;
	assign tx_vsync 			= conv_vsync;
	assign tx_red         	= cross_r;
	assign tx_green        	= cross_g;
	assign tx_blue         	= cross_b;

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
