`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Wojtek Gumua
// 
// Create Date:    21:20:55 05/11/2015 
// Design Name: 
// Module Name:    circle 
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
module circle #
(
	parameter [9:0] IMG_W = 720,
	parameter [9:0] IMG_H = 576
)
(
    input clk,
    input ce,
    input rst,
    input de,
    input hsync,
    input vsync,
    input mask,
	 
    output [9:0] x,
    output [9:0] y,
	 output inside_circle,
	 
	 output [9:0] c_h,
	 output [9:0] c_w
    );

//implementacja licznikow
reg [9:0] curr_w = 0;
reg [9:0] curr_h = 0;
wire eof;
wire p_vsync;
delay #
(
	.DELAY(1),
	.N(1)
)
delay_vsync
(
	.d(vsync),
	.ce(1'b1),
	.clk(clk),
	.q(p_vsync)
);


always @(posedge clk)
begin
	if (vsync == 0) begin
		curr_w = 0;
		curr_h = 0;
	end
	else if(de == 1) begin
		curr_w <= curr_w + 1;
		
		if (curr_w == IMG_W - 1) begin
			curr_w <= 0;
			curr_h <= curr_h + 1;
			
			if (curr_h == IMG_H - 1) begin
				curr_h <= 0;
			end
		end
	end
end

assign eof = (p_vsync == 1'b1 && vsync == 1'b0) ? 1'b1 : 1'b0;

//wyliczanie m00
reg [18:0] count_m00 = 0;
wire [18:0] count_m10;
wire [18:0] count_m01;

always @(posedge clk)
begin
	if(eof) count_m00 <= 0;
	else count_m00 <= count_m00 + (mask ? 19'd1 : 19'd0);
end

wire d_mask;
wire d_eof;

delay #
(
	.DELAY(1),
	.N(1)
)
delay_mask
(
	.d(mask),
	.ce(1'b1),
	.clk(clk),
	.q(d_mask)
);

delay #
(
	.DELAY(1),
	.N(1)
)
delay_eof
(
	.d(eof),
	.ce(1'b1),
	.clk(clk),
	.q(d_eof)
);

summator sum_m10 
(
	.A(curr_w),
	.clk(clk),
	.ce(d_mask),
	.rst(d_eof),
	
	.Y(count_m10)
);

summator sum_m01 
(
	.A(curr_h),
	.clk(clk),
	.ce(d_mask),
	.rst(d_eof),
	
	.Y(count_m01)
);

wire [27:0] d_x;
wire [27:0] d_y;
wire qv_x;
wire qv_y;

divider_28_20 div_x
(
	.clk(clk),
	.start(eof),
	.dividend({9'b0, count_m10}),
	.divisor({1'b0, count_m00}),
	.quotient(d_x),
	.qv(qv_x)
);

divider_28_20 div_y
(
	.clk(clk),
	.start(eof),
	.dividend({9'b0, count_m01}),
	.divisor({1'b0, count_m00}),
	.quotient(d_y),
	.qv(qv_y)
);

reg [9:0] x_latch = 0;
reg [9:0] y_latch = 0;

always @(posedge clk)
begin
	if(qv_x) x_latch = d_x[9:0];
	if(qv_y) y_latch = d_y[9:0];
end

//wyznacz czy wewnatrz kola

assign inside_circle = (((x_latch - curr_w) ** 2 + (y_latch - curr_h) ** 2) <= 16) ? 1'b1 : 1'b0;

assign x = x_latch;
assign y = y_latch;

assign c_h = curr_h;
assign c_w = curr_w;
endmodule
