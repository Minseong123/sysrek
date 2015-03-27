`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:41:46 03/26/2015
// Design Name:   multiplier
// Module Name:   /home/vka/Programming/VHDL/workspace/sysrek/martix_multiplier/tb_multiplier.v
// Project Name:  martix_multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_multiplier;

	// Inputs
	reg [12:0] A;
	reg [12:0] B;
	reg clk;

	// Outputs
	wire [26:0] Y;
	wire [26:0] Z;
	
	reg [10:0] i;
	// Instantiate the Unit Under Test (UUT)
	multiplier uut (
		.clk(clk),
		.A(A), 
		.B(B), 
		.Y(Y), 
		.Z(Z)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		i = 0;
		clk = 0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		A = 13'b0000010110000; // 11
		B = 13'b1111111101001; // -1.4375
		// Y = 111111111111111101101001101
		// Z = 000000000000011001010001100
	end
	
	always
	begin
		
		A = 13'b0000010110000; // 11
		B = 13'b1111111101001; // -1.4375
		// Y = 111111111111111101101001101
		// Z = 000000000000011001010001100
		#1 clk = ~clk;
		#1 clk = ~clk;
		#1 clk = ~clk;
		#1 clk = ~clk;
		
		A = 13'b0;
		B = 13'b0;
		// Y = 0
		// Z = 0
		
		#1 clk = ~clk;
		#1 clk = ~clk;
		#1 clk = ~clk;
		#1 clk = ~clk;
	end
      
endmodule

