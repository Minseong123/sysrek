`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:26:20 04/18/2015
// Design Name:   ycbcr_thresholding
// Module Name:   /home/vka/Programming/VHDL/workspace/sysrek/skin_color_segm/tb_ycbcr_thresholding.v
// Project Name:  vision
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ycbcr_thresholding
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_ycbcr_thresholding;

	// Inputs
	reg [7:0] Y;
	reg [7:0] Cb;
	reg [7:0] Cr;
	reg [7:0] Ta;
	reg [7:0] Tb;
	reg [7:0] Tc;
	reg [7:0] Td;

	// Outputs
	wire [7:0] binary;

	// Instantiate the Unit Under Test (UUT)
	ycbcr_thresholding uut (
		.Y(Y), 
		.Cb(Cb), 
		.Cr(Cr), 
		.Ta(Ta), 
		.Tb(Tb), 
		.Tc(Tc), 
		.Td(Td), 
		.binary(binary)
	);

	initial begin
		// Initialize Inputs
		Y = 0;
		Cb = 0;
		Cr = 0;
		Ta = 8'h80;
		Tb = 8'h8F;
		Tc = 8'h80;
		Td = 8'h9F;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
always
begin
	#1 Cb = Cb + 1;
	#1 Cr = Cr + 1;
	#2;
end
endmodule

