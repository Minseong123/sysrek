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

module tb_rgb2hsv;

	// Inputs
	reg clk;
	reg ce;
	reg [7:0] R;
	reg [7:0] G;
	reg [7:0] B;
	reg in_hsync;
	reg in_vsync;
	reg in_de;

	// Outputs
	wire [7:0] H;
	wire [7:0] S;
	wire [7:0] V;
	wire out_hsync;
	wire out_vsync;
	wire out_de;

	// Instantiate the Unit Under Test (UUT)
	rgb2hsv uut (
		.clk(clk), 
		.ce(ce), 
		.R(R), 
		.G(G), 
		.B(B), 
		.in_hsync(in_hsync), 
		.in_vsync(in_vsync), 
		.in_de(in_de), 
		.H(H), 
		.S(S), 
		.V(V), 
		.out_hsync(out_hsync), 
		.out_vsync(out_vsync), 
		.out_de(out_de)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		ce = 1;
		R = 8'd101;
		G = 8'd100;
		B = 8'd101;
		in_hsync = 1;
		in_vsync = 1;
		in_de = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
	end
integer i = 0;
always begin
	#1 clk = ~clk;
	i = i + 1;
	if (i == 1000) begin
		i = 0;
		R = 8'd192;
		G = 8'd100;
		B = 8'd98;
		in_hsync= 0;
		in_vsync = 0;
		in_de = 0;
	end
end
endmodule
