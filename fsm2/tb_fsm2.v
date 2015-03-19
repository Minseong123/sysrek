`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:11:35 03/19/2015
// Design Name:   fsm2
// Module Name:   /home/lsriw/SR/Wojciech Gumula/repo/fsm2/tb_fsm2.v
// Project Name:  fsm2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fsm2
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
	input [7:0] c,
	input received
);

integer file;

initial
begin
	file=$fopen("data/output.ise", "wb");
	
	repeat (16) begin
      @(posedge received);
      $fwrite(file, "%c", c);
   end
	$fwrite(file, "\n");
	$fclose(file);
end
endmodule

module tb_fsm2;

	// Inputs
	reg clk;
	reg rst; //reset jest wspólny dla uproszczenia układu
	
	// Outputs
	wire rxd;
	wire [7:0] data;
	wire [7:0] data_out;
	wire received;
	
	// Instantiate the Unit Under Test (UUT)
	fsm2 uut (
		.clk(clk), 
		.rst(rst), 
		.rxd(rxd), 
		.data(data_out), 
		.received(received)
	);
	
	fsm serial (
		.clk(clk),
		.send(send),
		.data(data),
		.txd(rxd),
		.rst(rst)
	);
	
	load_file load (
		.out(data),
		.send(send)
	);
	
	save_file save (
		.c(data_out),
		.received(received)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		// Wait 100 ns for global reset to finish
		#100;

	end
always #2 clk = ~clk;
 
endmodule
