`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:57:24 03/11/2015
// Design Name:   multiplexer
// Module Name:   /home/vka/Programming/VHDL/workspace/test/tb_multiplexer.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplexer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_multiplexer;

	// Inputs
	reg [2:0] address;
	reg [7:0] data;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	multiplexer uut (
		.address(address), 
		.data(data), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		address = 0;
		data = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
always
begin
	#10
	address = address + 1;
	if(address == 0) data = data + 1;
end
      
endmodule

