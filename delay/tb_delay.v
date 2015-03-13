`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:43:12 03/11/2015
// Design Name:   delay
// Module Name:   /home/vka/Programming/VHDL/workspace/test/tb_delay.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: delay
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_delay;

	// Inputs
	reg [7:0] in;
	reg ce;
	reg clk;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	delay #
	( 
		.DELAY(1)
	)
	uut (
		.d(in), 
		.ce(ce), 
		.clk(clk), 
		.q(out)
	);

	initial begin
		// Initialize Inputs
		in = 8'b00000001;
		//out = 0;
		ce = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end

always
begin
	#10
	clk = !clk;
	#10
	clk = !clk;
	in = in + 1;
end     
endmodule

