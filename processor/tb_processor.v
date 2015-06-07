`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:39:05 06/07/2015
// Design Name:   processor
// Module Name:   /home/vka/Programming/VHDL/workspace/sysrek/processor/tb_processor.v
// Project Name:  processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: processor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_processor;

	// Inputs
	reg clk100;

	// Instantiate the Unit Under Test (UUT)
	processor uut (
		.clk100(clk100)
	);

	initial begin
		// Initialize Inputs
		clk100 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		while(1)
		begin
			#1 clk100 = 1'b0;
			#1 clk100 = 1'b1;
		end
		// Add stimulus here

	end
      
endmodule

