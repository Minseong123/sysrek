`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:48:31 03/12/2015
// Design Name:   complex
// Module Name:   /home/lsriw/SR/Wojciech Gumula/15_03_12/zad/tb_complex.v
// Project Name:  zad
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: complex
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_complex;

	// Inputs
	reg [7:0] x;
	reg [7:0] y;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	complex uut (
		.x(x), 
		.y(y), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		x = 8'b10101111;
		y = 8'b10101110;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end

always
begin
	#10 x = x - 1;
	y = y - 1;
end
      
endmodule

