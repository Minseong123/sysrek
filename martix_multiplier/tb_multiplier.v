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
	
	wire ok;
	reg [26:0] Y_cmp;
	reg [26:0] Z_cmp;
	
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
		//ok = 0;
		// Wait 100 ns for global reset to finish
		#100;
	end
	
	always
	begin
//		-------------------------------
		A = 13'b1111111111111;
		B = 13'b1111111111111;
		Y_cmp = 27'b111111111111111111111011101;
		Z_cmp = 27'b000000000000000000010000010;

		while(i < 16)
		begin
			#1 clk = ~clk;
			i = i + 1;
		end
		i = 0;
//		-------------------------------		
		A = 13'b0000000000000;
		B = 13'b0000000000000;
		Y_cmp = 27'b000000000000000000000000000;
		Z_cmp = 27'b000000000000000000000000000;

		while(i < 16)
		begin
			#1 clk = ~clk;
			i = i + 1;
		end
		i = 0;
//		-------------------------------
		A = 13'b1111111111111;
		B = 13'b0000000000000;
		Y_cmp = 27'b000000000000000000000000010;
		Z_cmp = 27'b111111111111111111111001110;

		while(i < 16)
		begin
			#1 clk = ~clk;
			i = i + 1;
		end
		i = 0;
//		-------------------------------
		A = 13'b0000000000000;
		B = 13'b1111111111111;
		Y_cmp = 27'b111111111111111111111011011;
		Z_cmp = 27'b000000000000000000010110100;

		while(i < 16)
		begin
			#1 clk = ~clk;
			i = i + 1;
		end
		i = 0;
//		-------------------------------
		A = 13'b1010101010101;
		B = 13'b1010111010101;
		Y_cmp = 27'b111111111101001110100011111;
		Z_cmp = 27'b000000001010001000011010110;

		while(i < 16)
		begin
			#1 clk = ~clk;
			i = i + 1;
		end
		i = 0;
//		-------------------------------
		A = 13'b0101010101010;
		B = 13'b0101010001010;
		Y_cmp = 27'b000000000010111000010011110;
		Z_cmp = 27'b111111110101010110000101100;

		while(i < 16)
		begin
			#1 clk = ~clk;
			i = i + 1;
		end
		i = 0;
//		-------------------------------
		A = 13'b1111100000111;
		B = 13'b1110000000011;
		Y_cmp = 27'b111111111110110111001100001;
		Z_cmp = 27'b000000000101001110101000010;

		while(i < 16)
		begin
			#1 clk = ~clk;
			i = i + 1;
		end
		i = 0;
//		-------------------------------
		A = 13'b0011110110111;
		B = 13'b0010010101111;
		Y_cmp = 27'b000000000001001110111011101;
		Z_cmp = 27'b111111111100011011010110010;

		while(i < 16)
		begin
			#1 clk = ~clk;
			i = i + 1;
		end
		i = 0;
	end

assign ok = (Y == Y_cmp && Z == Z_cmp) ? 1'b1 : 1'b0;
endmodule

