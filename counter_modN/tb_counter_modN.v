`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:12:55 03/10/2015
// Design Name:   counter_modN
// Module Name:   /home/vka/Programming/VHDL/workspace/test/tb_counter_modN.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter_modN
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_counter_modN;

	// Inputs
	reg clk;
	reg ce;
	reg rst;
	wire [2:0] out;

	// Instantiate the Unit Under Test (UUT)
	counter_modN #
	(
		.N(6)
	)
	uut
	(
		.clk(clk), 
		.ce(ce), 
		.rst(rst), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		ce = 1;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always
		#5 clk = !clk;
      
endmodule

