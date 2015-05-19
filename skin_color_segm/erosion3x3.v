`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Wojtek Gumua
// 
// Create Date:    13:40:55 05/19/2015 
// Design Name: 
// Module Name:    erosion3x3 
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
module erosion3x3 #(
    	parameter [9:0] H_SIZE = 83 // domylny rozmiar obrazu to szeroko = 64 piksele
)(
	input clk,
	input ce,
	input rst,
	
	input mask,
	input in_de,
	input in_vsync,
	input in_hsync,
	
	output eroded,
	output out_de,
	output out_vsync,
	output out_hsync   
	);

wire [3:0] delay_line11;
reg  [3:0] delay_line12 [2:0];
wire [3:0] delay_line21;
reg  [3:0] delay_line22 [2:0];
wire [3:0] delay_line31;
reg  [3:0] delay_line32 [2:0];

reg [4:0] sum_lines[2:0];
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
				
				delay_line12[1] <= delay_line12[0];
				delay_line22[1] <= delay_line22[0];
				delay_line32[1] <= delay_line32[0];
				
				delay_line12[2] <= delay_line12[1];
				delay_line22[2] <= delay_line22[1];
				delay_line32[2] <= delay_line32[1];
	end
endgenerate;

wire [7:0] dummy;//zbdne dane
delayLinieBRAM_WP long_delay
(    
	.clk(clk),
	.rst(1'b0),
	.ce(1'b1),
	.din({8'b0, delay_line12[2], delay_line22[2]}),
	.dout({dummy, delay_line21, delay_line31}),
	.h_size(H_SIZE - 3)
);

always @(posedge clk)
begin
	//wyznaczanie sum
	if(context_valid) begin
		sum_lines[0] <= delay_line12[0][3] + delay_line12[1][3] + delay_line12[2][3];
		sum_lines[1] <= delay_line22[0][3] + delay_line22[1][3] + delay_line22[2][3];
		sum_lines[2] <= delay_line32[0][3] + delay_line32[1][3] + delay_line32[2][3];
	
		sum_final <= sum_lines[0] + sum_lines[1] + sum_lines[2];
	end
end

wire context_valid;

assign context_valid = delay_line12[0][1] & delay_line12[1][1] & delay_line12[2][1] & 
	delay_line22[0][1] & delay_line22[1][1] & delay_line22[2][1] & 
	delay_line32[0][1] & delay_line32[1][1] & delay_line32[2][1];


wire [2:0] d_dhv;

delay #
(
	.N(3),
	.DELAY(2)
)
dhv
(
	.d(delay_line22[2][2:0]),
	.ce(1'b1),
	.clk(clk),
	.q({d_dhv})
);

assign out_de = d_dhv[2];
assign out_hsync = d_dhv[1];
assign out_vsync = d_dhv[0];

reg erosion_latch = 0;
always @(posedge clk)
begin
	if(context_valid) erosion_latch <= (sum_final < 5'd9) ? 1'b0 : 1'b1;
end;
assign eroded = erosion_latch;

endmodule
