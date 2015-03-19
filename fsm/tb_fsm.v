`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:16:29 03/15/2015
// Design Name:   fsm
// Module Name:   /home/vka/Programming/VHDL/workspace/sysrek/fsm/tb_fsm.v
// Project Name:  fsm
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fsm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module load_file
(
	output [7:0] out,
	output send
);

integer file;
reg [7:0] c;
reg s;
reg [7:0] i = 0;

initial
begin
	file=$fopen("data/input.data", "r");
	for(i = 0; i < 16; i = i + 1)
	begin
		c=$fgetc(file);
		s = 1;
		#4;
		s = 0;
		#44;
	end
	$fclose(file);
end

assign out = c;
assign send = s;


endmodule

module save_file
(
	input c
);

integer file;
reg [7:0] i;
reg [7:0] j;
reg [7:0] data = 8'b00110000;

initial
begin
	file=$fopen("data/output.ise", "wb");
	for(i = 0; i < 16; i = i + 1)
	begin
		for(j = 0; j < 12; j = j +1)
		begin
			#4;
			data[0] = c;
			$fwrite(file, "%c", data);
		end
		$fwrite(file, "%c", "\n");
	end
	$fclose(file);
end
endmodule

module tb_fsm;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire txd;
	wire [1:0] state;
	wire [7:0] data;
	wire send;

	fsm uut (
		.clk(clk), 
		.send(send), 
		.data(data), 
		.txd(txd),
		.s(state)
	);
	
	load_file load (
		.out(data),
		.send(send)
	);
	
	save_file save (
		.c(txd)
	);
	
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		

	end
always
begin
	#2 clk = ~clk;
end
endmodule

