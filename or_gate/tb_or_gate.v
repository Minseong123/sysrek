`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:42:08 03/17/2015
// Design Name:   or_gate
// Module Name:   /home/vka/Programming/VHDL/workspace/sysrek/or_gate/tb_or_gate.v
// Project Name:  or_gate
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: or_gate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_or_gate;

	// Inputs
	reg [9:0] i = 10'b00000000;
	integer file;
	reg valid;
	// Outputs
	wire o;
	

	// Instantiate the Unit Under Test (UUT)
	or_gate uut (
		.i(i), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		i = 0;
		file = $fopen("or_gate_test.log", "w");
		valid = 1;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
 
always
begin: test
	#1	i = i + 1;
	#1
	if((i > 0 & o == 0) | (i == 0 & o == 1))
	begin
		$fwrite(file, "Output invalid for input %b = %d\n", i, i);
		valid = 0;
	end
	
	if(i == 10'b1111111111)
	begin
		if(valid == 1'b1) $fwrite("Test successful.\n");
		$fclose(file);
	end;
	
	
end
endmodule

