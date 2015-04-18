`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:45:05 04/18/2015
// Design Name:   rgb2ycbcr
// Module Name:   /home/vka/Programming/VHDL/workspace/sysrek/skin_color_segm/tb_rgb2ycbcr.v
// Project Name:  vision
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rgb2ycbcr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_rgb2ycbcr;

	// Inputs
	reg clk = 0;
	reg ce = 1'b1;
	reg [7:0] R;
	reg [7:0] G;
	reg [7:0] B;
	reg in_hsync = 0;
	reg in_vsync = 0;
	reg in_de = 0;

	// Outputs
	wire [7:0] Y;
	wire [7:0] Cb;
	wire [7:0] Cr;
	wire out_hsync;
	wire out_vsync;
	wire out_de;

	// Instantiate the Unit Under Test (UUT)
	rgb2ycbcr uut (
		.clk(clk), 
		.ce(ce), 
		.R(R), 
		.G(G), 
		.B(B), 
		.in_hsync(in_hsync), 
		.in_vsync(in_vsync), 
		.in_de(in_de), 
		.Y(Y), 
		.Cb(Cb), 
		.Cr(Cr), 
		.out_hsync(out_hsync), 
		.out_vsync(out_vsync), 
		.out_de(out_de)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		ce = 1;
		R = 8'b11110011;
		G = 8'b00001100;
		B = 8'b00101101;
		in_hsync = 0;
		in_vsync = 0;
		in_de = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// oczekiwane wyjscie
		// Y = 01010100;
		// Cb= 01101001;
		// Cr= 11110000;
	end
always #1 clk = ~clk;

endmodule

