`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:08:03 03/26/2015
// Design Name:   summator
// Module Name:   /home/vka/Programming/VHDL/workspace/sysrek/pipeline_summator/tb_summator.v
// Project Name:  pipeline_summator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: summator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_summator;

	// Inputs
	reg [12:0] A;
	reg clk;
	reg ce;
	reg rst;

	// Outputs
	wire [20:0] Y;
	
	reg [10:0] i;

	// Instantiate the Unit Under Test (UUT)
	summator uut (
		.A(A), 
		.clk(clk), 
		.ce(ce), 
		.rst(rst), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A = 12'b000000000001;
		clk = 0;
		ce = 1;
		rst = 0;
		i = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always
	begin
		
		while(i < 128) begin
			#1 clk = ~clk;
			i = i + 1;
		end
		i = 0;
		ce = ~ce;
		rst = 1;
		#1 clk = ~clk;
		#1 clk = ~clk;
		rst = 0;
	end
      
endmodule

