`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:08:20 05/21/2015 
// Design Name: 
// Module Name:    sobel 
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
module sobel #(
    	parameter [9:0] H_SIZE = 83 // domylny rozmiar obrazu to szeroko = 64 piksele
)(
	input clk,
	input ce,
	input rst,
	
	input [7:0] in_bin,
	input in_de,
	input in_vsync,
	input in_hsync,
	
	output [7:0] out_bin,
	output out_de,
	output out_vsync,
	output out_hsync   
	);
	
	wire [10:0] delay_line11;
reg  [10:0] delay_line12 [2:0];
wire [10:0] delay_line21;
reg  [10:0] delay_line22 [2:0];
wire [10:0] delay_line31;
reg  [10:0] delay_line32 [2:0];

reg signed [11:0] sum_linesX[2:0];
reg signed [11:0] sum_finalX;
reg signed [11:0] sum_linesY[2:0];
reg signed [11:0] sum_finalY;
assign delay_line11 = {in_bin, in_de, in_hsync, in_vsync};

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

wire [9:0] dummy;//zbdne dane
delayLinieBRAM_WP long_delay1
(    
	.clk(clk),
	.rst(1'b0),
	.ce(1'b1),
	.din({5'b0, delay_line12[2]}),
	.dout({dummy[4:0], delay_line21}),
	.h_size(H_SIZE - 3)
);

delayLinieBRAM_WP long_delay2
(    
	.clk(clk),
	.rst(1'b0),
	.ce(1'b1),
	.din({5'b0, delay_line22[2]}),
	.dout({dummy[9:5], delay_line31}),
	.h_size(H_SIZE - 3)
);

always @(posedge clk)
begin
	//wyznaczanie sum
	if(context_valid) begin
	
		//sobel Y
		//-A - 2B - C
		sum_linesY[0] <= - {4'b0, delay_line12[0][10:3]} - {3'b0, delay_line12[1][10:3], 1'b0} - {4'b0,delay_line12[2][10:3]};
		//0
		sum_linesY[1] <= 12'b0;
		//A + 2B + C
		sum_linesY[2] <= {4'b0, delay_line32[0][10:3]} + {3'b0, delay_line32[1][10:3], 1'b0} + {4'b0,delay_line32[2][10:3]};
		sum_finalY <= sum_linesY[0] + sum_linesY[1] + sum_linesY[2];
		
		//sobel X
		//-A + 0 + C
		sum_linesX[0] <= - {4'b0, delay_line12[0][10:3]} + {4'b0,delay_line12[2][10:3]};
		//-2A + 0 +2C
		sum_linesX[1] <= - {3'b0, delay_line22[0][10:3], 1'b0} + {3'b0,delay_line22[2][10:3], 1'b0};
		////-A + 0 + C
		sum_linesX[2] <= {4'b0, delay_line32[0][10:3]} + {4'b0,delay_line32[2][10:3]};

		sum_finalX <= sum_linesX[0] + sum_linesX[1] + sum_linesX[2];
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

reg [7:0] mean_latch = 0;

always @(posedge clk)
begin
//	if(context_valid) mean_latch <= sum_final[11:4];
end;
assign out_Y = mean_latch;

//opoznienie sygnalow Cb, Cr
delay #
(
	.N(8),
	.DELAY(2 + H_SIZE + 1)
)
delay_cb
(
	.d(in_Cb),
	.ce(1'b1),
	.clk(clk),
	.q(out_Cb)
);
delay #
(
	.N(8),
	.DELAY(2 + H_SIZE + 1)
)
delay_cr
(
	.d(in_Cr),
	.ce(1'b1),
	.clk(clk),
	.q(out_Cr)
);

	
	endmodule
