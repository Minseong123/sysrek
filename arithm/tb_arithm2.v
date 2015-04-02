`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:31:30 03/26/2015
// Design Name:   arithm2
// Module Name:   /home/vka/Programming/VHDL/workspace/sysrek/arithm/tb_arithm2.v
// Project Name:  arithm
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: arithm2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_arithm2;

	// Inputs
	reg clk;
	reg ce;
	reg [17:0] A;
	reg [7:0] B;
	reg [11:0] C;
	reg [7:0] D;
	reg [13:0] E;
	reg [18:0] F;
	
	// Outputs
	wire [36:0] Y;

	// Instantiate the Unit Under Test (UUT)
	arithm2 uut (
		.clk(clk), 
		.ce(ce), 
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.E(E), 
		.F(F), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		ce = 1;
		A = 18'b000000000110010000; //1.5643
		B = 8'b00001101; //1.5654
		C = 12'b111110101101; //-0.64564
		D = 8'b00001001; //2.321
		E = 14'b00000011000100; //6.1234
		F = 19'b1111110111011100001; //-8.56
		
		//oczekiwany wynik:
		//1111111111111111101001100010010001000
		
		// Wait 100 ns for global reset to finish
		#100;
	end
	
	always
	begin
		#1 clk = ~clk;
	end
endmodule

