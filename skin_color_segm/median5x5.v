`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:05:34 05/14/2015 
// Design Name: 
// Module Name:    median5x5 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module median5x5 # (
	parameter [9:0] H_SIZE = 83 // domylny rozmiar obrazu to szeroko = 64 piksele
)(
	input clk,
	input ce,
	input rst,
	
	input mask,
	input in_de,
	input in_vsync,
	input in_hsync,
	
	output median,
	output out_de,
	output out_vsync,
	output out_hsync   
	);

wire [3:0] delay_line11;
reg  [3:0] delay_line12 [4:0];
wire [3:0] delay_line21;
reg  [3:0] delay_line22 [4:0];
wire [3:0] delay_line31;
reg  [3:0] delay_line32 [4:0];
wire [3:0] delay_line41;
reg  [3:0] delay_line42 [4:0];
wire [3:0] delay_line51;
reg  [3:0] delay_line52 [4:0];

reg [4:0] sum_lines[4:0];
reg [4:0] sum_final;
assign delay_line11 = {mask, in_de, in_hsync, in_vsync};

//pojedyncze opoznienia dla piksela
genvar i;
generate
		always @(posedge clk)
		begin
				delay_line12[0] <= delay_line11;
				delay_line22[0] <= delay_line21;
				delay_line32[0] <= delay_line31;
				delay_line42[0] <= delay_line41;
				delay_line52[0] <= delay_line51;
				
				delay_line12[1] <= delay_line12[0];
				delay_line22[1] <= delay_line22[0];
				delay_line32[1] <= delay_line32[0];
				delay_line42[1] <= delay_line42[0];
				delay_line52[1] <= delay_line52[0];
				
				delay_line12[2] <= delay_line12[1];
				delay_line22[2] <= delay_line22[1];
				delay_line32[2] <= delay_line32[1];
				delay_line42[2] <= delay_line42[1];
				delay_line52[2] <= delay_line52[1];
				
				delay_line12[3] <= delay_line12[2];
				delay_line22[3] <= delay_line22[2];
				delay_line32[3] <= delay_line32[2];
				delay_line42[3] <= delay_line42[2];
				delay_line52[3] <= delay_line52[2];
				
				delay_line12[4] <= delay_line12[3];
				delay_line22[4] <= delay_line22[3];
				delay_line32[4] <= delay_line32[3];
				delay_line42[4] <= delay_line42[3];
				delay_line52[4] <= delay_line52[3];

	end
endgenerate;


delayLinieBRAM_WP long_delay
(    
	.clk(clk),
	.rst(1'b0),
	.ce(1'b1),
	.din({delay_line12[4], delay_line22[4], delay_line32[4], delay_line42[4]}),
	.dout({delay_line21, delay_line31, delay_line41, delay_line51}),
	.h_size(H_SIZE - 5)
);

always @(posedge clk)
begin
	//wyznaczanie sum
	if(context_valid) begin
		sum_lines[0] <= delay_line12[0][3] + delay_line12[1][3] + delay_line12[2][3] + delay_line12[3][3] + delay_line12[4][3];
		sum_lines[1] <= delay_line22[0][3] + delay_line22[1][3] + delay_line22[2][3] + delay_line22[3][3] + delay_line22[4][3];
		sum_lines[2] <= delay_line32[0][3] + delay_line32[1][3] + delay_line32[2][3] + delay_line32[3][3] + delay_line32[4][3];
		sum_lines[3] <= delay_line42[0][3] + delay_line42[1][3] + delay_line42[2][3] + delay_line42[3][3] + delay_line42[4][3];
		sum_lines[4] <= delay_line52[0][3] + delay_line52[1][3] + delay_line52[2][3] + delay_line52[3][3] + delay_line52[4][3];	
	
		sum_final <= sum_lines[0] + sum_lines[1] + sum_lines[2] + sum_lines[3] + sum_lines[4];
	end
end

wire context_valid;

assign context_valid = delay_line12[0][1] & delay_line12[1][1] & delay_line12[2][1] & delay_line12[3][1] & delay_line12[4][1] & 
	delay_line22[0][1] & delay_line22[1][1] & delay_line22[2][1] & delay_line22[3][1] & delay_line22[4][1] & 
	delay_line32[0][1] & delay_line32[1][1] & delay_line32[2][1] & delay_line32[3][1] & delay_line32[4][1] & 
	delay_line42[0][1] & delay_line42[1][1] & delay_line42[2][1] & delay_line42[3][1] & delay_line42[4][1] & 
	delay_line52[0][1] & delay_line52[1][1] & delay_line52[2][1] & delay_line52[3][1] & delay_line52[4][1];


wire [2:0] d_dhv;

delay #
(
	.N(3),
	.DELAY(2)
)
dhv
(
	.d(delay_line32[3][2:0]),
	.ce(1'b1),
	.clk(clk),
	.q({d_dhv})
);

assign out_de = d_dhv[2];
assign out_hsync = d_dhv[1];
assign out_vsync = d_dhv[0];

reg median_latch = 0;
always @(posedge clk)
begin
	if(context_valid) median_latch <= (sum_final > 5'd12) ? 1'b1 : 1'b0;
end;
assign median = median_latch;

endmodule
