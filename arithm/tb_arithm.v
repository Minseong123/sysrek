`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:36:47 03/24/2015
// Design Name:   arithm
// Module Name:   /home/vka/Programming/VHDL/workspace/sysrek/arithm/tb_arithm.v
// Project Name:  arithm
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: arithm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_arithm;

	// Inputs
	reg clk;
	reg ce;
	reg [13:0] A;
	reg [13:0] B;
	reg [13:0] C;

	// Outputs
	wire signed [28:0] O;

	// Instantiate the Unit Under Test (UUT)
	arithm uut (
		.clk(clk), 
		.ce(ce), 
		.A(A), 
		.B(B), 
		.C(C), 
		.O(O)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		ce = 0;
		A = 14'b00010100101101; //0.32345
		B = 14'b11001101100111; //-0.78743
		C = 14'b00100100001100; //0.56532

		// Wait 100 ns for global reset to finish
		#100;
      ce = 1;
		// Add stimulus here

	end
		always
		begin
			#1 clk = ~clk;
		end      
endmodule

