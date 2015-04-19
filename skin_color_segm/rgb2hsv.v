`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Wojtek Gumua
// 
// Create Date:    20:18:43 04/19/2015 
// Design Name: 
// Module Name:    rgb2hsv 
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
module rgb2hsv(
	input clk,
	input ce,
	
	input [7:0] R,
	input [7:0] G,
	input [7:0] B,
	input in_hsync,          // hsync data
	input in_vsync,          // vsync data
	input in_de,
	
	output [7:0] H,
	output [7:0] S,
	output [7:0] V,
	output out_hsync,          // hsync data
	output out_vsync,          // vsync data
	output out_de    
);

wire [7:0] q_R;
wire [7:0] q_G;
wire [7:0] q_B;
wire [7:0] f_R;
wire [7:0] f_G;
wire [7:0] f_B;

wire signed [9:0] n_R;
wire signed [9:0] n_G;
wire signed [9:0] n_B;

wire signed [9:0] v_max;
wire signed [9:0] v_min;
wire signed [9:0] v_delta;

wire [1:0] index_min;
wire [1:0] index_max;

// moduly dzielce RGB / 255
div255 divR (
	.clk(clk), 					// input clk
	//.rfd(rfd), 					// output rfd
	.dividend(R), 	// input [7 : 0] dividend
	.divisor(8'hFF), 			// input [7 : 0] divisor
	.quotient(q_R), 	// output [7 : 0] quotient
	.fractional(f_R) // output [7 : 0] fractional
); 

div255 divG (
	.clk(clk), 					// input clk
	//.rfd(rfd), 					// output rfd
	.dividend(G), 	// input [7 : 0] dividend
	.divisor(8'hFF), 			// input [7 : 0] divisor
	.quotient(q_G), 	// output [7 : 0] quotient
	.fractional(f_G) // output [7 : 0] fractional
); 

div255 divB (
	.clk(clk), 					// input clk
	//.rfd(rfd), 					// output rfd
	.dividend(B), 	// input [7 : 0] dividend
	.divisor(8'hFF), 			// input [7 : 0] divisor
	.quotient(q_B), 	// output [7 : 0] quotient
	.fractional(f_B) // output [7 : 0] fractional
); 

assign n_R = {1'b0, q_R[1:0], f_R[6:1]};
assign n_G = {1'b0, q_G[1:0], f_G[6:1]};
assign n_B = {1'b0, q_B[1:0], f_B[6:1]};

//wyznaczanie wartoci max i min z RGB
min minRGB
(
	.a(n_R),
	.b(n_G),
	.c(n_B),
	
	.o(v_min),
	.index(index_min)
);

max maxRGB
(
	.a(n_R),
	.b(n_G),
	.c(n_B),
	
	.o(v_max),
	.index(index_max)
);

//wyznaczanie max - min
sub10 sub_delta (
  .a(v_max), // input [9 : 0] a
  .b(v_min), // input [9 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(v_delta) // output [9 : 0] s
);

//wyznaczanie S
wire [9:0] f_S;
wire [9:0] q_S;
div10 delta_div_max (
	.clk(clk), // input clk
	//.rfd(rfd), // output rfd
	.dividend(v_delta), // input [9 : 0] dividend
	.divisor(v_max), // input [9 : 0] divisor
	.quotient(q_S), // output [9 : 0] quotient
	.fractional(f_S) // output [9 : 0] fractional
);

wire [9:0] v_S;
assign v_S = (v_delta > 0 ) ? {1'b0, q_S[0], f_S[8:1]} : 10'b0;

//wyznaczanie H
wire [9:0] v_H [3:0];
wire [9:0] v_Subs [2:0];
wire [9:0] f_Subs [2:0];
wire [9:0] q_Subs [2:0];

sub10 G_sub_B (
  .a(n_G), // input [9 : 0] a
  .b(n_B), // input [9 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(v_Subs[0]) // output [9 : 0] s
);

sub10 B_sub_R (
  .a(n_B), // input [9 : 0] a
  .b(n_R), // input [9 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(v_Subs[1]) // output [9 : 0] s
);

sub10 R_sub_G (
  .a(n_R), // input [9 : 0] a
  .b(n_G), // input [9 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(v_Subs[2]) // output [9 : 0] s
);

div10 G_sub_B_div (
	.clk(clk), // input clk
//	.rfd(rfd), // output rfd
	.dividend(v_Subs[0]), // input [9 : 0] dividend
	.divisor(v_delta), // input [9 : 0] divisor
	.quotient(q_Subs[0]), // output [9 : 0] quotient
	.fractional(f_Subs[0]) // output [9 : 0] fractional
);

div10 B_sub_R_div (
	.clk(clk), // input clk
//	.rfd(rfd), // output rfd
	.dividend(v_Subs[1]), // input [9 : 0] dividend
	.divisor(v_delta), // input [9 : 0] divisor
	.quotient(q_Subs[1]), // output [9 : 0] quotient
	.fractional(f_Subs[1]) // output [9 : 0] fractional
);

div10 R_sub_G_div (
	.clk(clk), // input clk
//	.rfd(rfd), // output rfd
	.dividend(v_Subs[2]), // input [9 : 0] dividend
	.divisor(v_delta), // input [9 : 0] divisor
	.quotient(q_Subs[2]), // output [9 : 0] quotient
	.fractional(f_Subs[2]) // output [9 : 0] fractional
);

wire [9:0] v_H2;
assign v_H2 = (v_delta > 0) ? {q_Subs[index_max + 1][9], q_Subs[index_max + 1][0], f_Subs[index_max + 1][8:1]} : 10'b0;

wire [11:0] const_H[3:0];
wire [11:0] v_const_H;
assign const_H[0] = 12'b0;
assign const_H[1] = 12'b0;
assign const_H[2] = 12'h20;
assign v_const_H = (v_delta > 0) ? const_H[index_max] : 12'h0;
//dodawanie staej

wire [11:0] v_H3;
add12 add_H_const (
  .a({v_H2[9], 2'b0, v_H2}), // input [11 : 0] a
  .b(v_const_H), // input [11 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(v_H3) // output [11 : 0] s
);

//sprawdzanie, czy H < 0
wire signed [11:0] v_H4;
assign v_H4 = (v_H3 > 0) ? v_H3 : (v_H3 + 12'h600);

wire [11:0] q_H2;
wire [11:0] f_H2;
//dzielenie przez 6 (!!!)
div12 div_H_6 (
	.clk(clk), // input clk
//	.rfd(rfd), // output rfd
	.dividend(v_H4), // input [11 : 0] dividend
	.divisor({12'h600}), // input [11 : 0] divisor
	.quotient(q_H2), // output [11 : 0] quotient
	.fractional(f_H2) // output [11 : 0] fractional
);

wire signed [9:0] v_H5;
assign v_H5 = {q_H2[11], q_H2[0], f_H2[10:3]};

wire signed [16:0] H1;
wire signed [16:0] S1;
wire signed [16:0] V1;

mul9 mul_255_H (
  .clk(clk), // input clk
  .a(v_H5[7:0]), // input [8 : 0] a
  .p(H1) // output [16 : 0] p
);
mul9 mul_255_S (
  .clk(clk), // input clk
  .a(v_S[7:0]), // input [8 : 0] a
  .p(S1) // output [16 : 0] p
);
mul9 mul_255_V (
  .clk(clk), // input clk
  .a(v_max[7:0]), // input [8 : 0] a
  .p(V1) // output [16 : 0] p
);

assign H = H1[15:8];
assign S = S1[15:8];
assign V = V1[15:8];
assign out_hsync = in_hsync;
assign out_vsync = in_vsync;
assign out_de = in_de;
endmodule
