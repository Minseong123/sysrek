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
	
	reg [20:0] acc;
	
	reg [8:0] i;
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
		A = 13'b0000000000000;
		clk = 0;
		ce = 0;
		rst = 0;
		acc = 0;
		i = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always
	begin
		if(ce == 0) //pierwsze okrazenie
		begin
			while(i < 100)
			begin
				i = i + 1;
				#1 clk = ~clk;
			end
			ce = 1;
		end

		rst = 1;
		acc = 0;
		A = 0;
		
		#1 clk = ~clk;
		#1 clk = ~clk;
		
		rst = 0;
		
		#1 clk = ~clk;
		#1 clk = ~clk;
		
		A = 13'b0000000001101;
		acc = 21'b000000000000000001101;
		
		#1 clk = ~clk;
		#1 clk = ~clk;
		
		A = 13'b1111111111001;
		acc = 21'b000000000000000000110;
		
		#1 clk = ~clk;
		#1 clk = ~clk;
		
		A = 13'b1111111111001;
		acc = 21'b111111111111111111111;
		
		#1 clk = ~clk;
		#1 clk = ~clk;
		
		A = 13'b0000000000011;
		acc = 21'b000000000000000000010;
		
		#1 clk = ~clk;
		#1 clk = ~clk;
		
		A = 13'b1111111111111;
		acc = 21'b000000000000000000001;
		
		#1 clk = ~clk;
		#1 clk = ~clk;
		
		A = 13'b1111111111100;
		acc = 21'b111111111111111111101;
		
		#1 clk = ~clk;
		#1 clk = ~clk;
		
		A = 13'b0000000000101;
		acc = 21'b000000000000000000010;
		
		#1 clk = ~clk;
		#1 clk = ~clk;
		
		A = 13'b0000000001110;
		acc = 21'b000000000000000010000;
		
		#1 clk = ~clk;
		#1 clk = ~clk;
		
		A = 13'b0000000000100;
		acc = 21'b000000000000000010100;
		
		#1 clk = ~clk;
		#1 clk = ~clk;
		
		A = 13'b1111111111001;
		acc = 21'b000000000000000001101;
		
		#1 clk = ~clk;
		#1 clk = ~clk;
	end
endmodule

