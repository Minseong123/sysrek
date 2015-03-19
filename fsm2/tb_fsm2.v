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



module tb_fsm2;

	// Inputs
	reg clk;
	reg rst;
	reg rxd;

	// Outputs
	wire [7:0] data;
	wire received;
	

	// Instantiate the Unit Under Test (UUT)
	fsm2 uut (
		.clk(clk), 
		.rst(rst), 
		.rxd(rxd), 
		.data(data), 
		.received(received)
	);
	
	fsm uut2 (
		.clk(clk),
		.send(send),
		.data(data),
		.txd(rxd)
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
		rxd = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
	always
	begin
		#1 clk = ~clk;
	end;
	end
      
endmodule

