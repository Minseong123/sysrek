`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:54:44 04/09/2015
// Design Name:   mainLUT
// Module Name:   /home/vka/Programming/VHDL/workspace/sysrek/lut_test/tb_mainLUT.v
// Project Name:  lut_test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mainLUT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_mainLUT;

	// Inputs
	reg [7:0] a;
	reg clk;
	wire [7:0] qspo;

	// Instantiate the Unit Under Test (UUT)
	mainLUT uut (
		.a(a), 
		.clk(clk), 
		.qspo(qspo)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		clk = 0;
		//qspo = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 8'hF0;
	end
	
	always
		#5 clk = ~clk;
		
      
endmodule

