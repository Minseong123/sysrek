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

wire signed [9:0] n_R; 	// z1c8u
wire signed [9:0] n_G; 	// z1c8u
wire signed [9:0] n_B; 	// z1c8u

wire signed [9:0] v_max; 	// z1c8u
wire signed [9:0] v_min; 	// z1c8u
wire signed [9:0] v_delta; // z1c8u

wire [1:0] i_min;
wire [1:0] i_max;

//dzielenie RGB przez 255, bez znaku
div8 div_R_255 (
	.clk(clk), // input clk
	//.rfd(rfd), // output rfd
	.dividend(R), // input [7 : 0] dividend
	.divisor(8'hFF), // input [7 : 0] divisor
	.quotient(q_R), // output [7 : 0] quotient
	.fractional(f_R) // output [7 : 0] fractional
);
div8 div_G_255 (
	.clk(clk), // input clk
	//.rfd(rfd), // output rfd
	.dividend(G), // input [7 : 0] dividend
	.divisor(8'hFF), // input [7 : 0] divisor
	.quotient(q_G), // output [7 : 0] quotient
	.fractional(f_G) // output [7 : 0] fractional
);
div8 div_B_255 (
	.clk(clk), // input clk
	//.rfd(rfd), // output rfd
	.dividend(B), // input [7 : 0] dividend
	.divisor(8'hFF), // input [7 : 0] divisor
	.quotient(q_B), // output [7 : 0] quotient
	.fractional(f_B) // output [7 : 0] fractional
);

assign n_R = {1'b0, q_R[0], f_R};
assign n_G = {1'b0, q_G[0], f_G};
assign n_B = {1'b0, q_B[0], f_B};

//opoznij sygnaly n_{RGB} by synchronizowac z liczeniem delty
wire signed [9:0] delayed_R;
wire signed [9:0] delayed_G;
wire signed [9:0] delayed_B;
delay #
(
	.N(10),
	.DELAY(3)
)
delay_R
(
	.d(n_R),
	.ce(ce),
	.clk(clk),
	.q(delayed_R)
);

delay #
(
	.N(10),
	.DELAY(3)
)
delay_G
(
	.d(n_G),
	.ce(ce),
	.clk(clk),
	.q(delayed_G)
);

delay #
(
	.N(10),
	.DELAY(3)
)
delay_B
(
	.d(n_B),
	.ce(ce),
	.clk(clk),
	.q(delayed_B)
);

//wyznaczanie max, min i delty
max max_RGB
(
	.clk(clk),
	
	.a(delayed_R),
	.b(delayed_G),
	.c(delayed_B),
	
	.o(v_max),
	.index(i_max)
);

min min_RGB
(
	.clk(clk),
	
	.a(delayed_R),
	.b(delayed_G),
	.c(delayed_B),
	
	.o(v_min),
	.index(i_min)
);

//lat = 2
sub10 sub_delta (
  .a(v_max), // input [9 : 0] a
  .b(v_min), // input [9 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(v_delta) // output [9 : 0] s
);


//obliczenia HSV

wire [9:0] v_S; //z1c8u
wire [9:0] v_V; //z1c8u

//V
assign v_V = v_max[9:0];


//S
wire [9:0] v_S1[1:0];
assign v_S1[0] = 10'b0; // V = 0

wire [9:0] q_S;
wire [9:0] f_S;
div10 div_S (
	.clk(clk), // input clk
	//.rfd(rfd), // output rfd
	.dividend(v_delta), // input [9 : 0] dividend
	.divisor(v_max), // input [9 : 0] divisor
	.quotient(q_S), // output [9 : 0] quotient
	.fractional(f_S) // output [9 : 0] fractional
);
assign v_S1[1] = {1'b0, q_S[0], f_S[8:1]}; //f_S ??

assign v_S = (v_max == 10'b0) ? v_S1[0] : v_S1[1];


//H
wire [11:0] G_sub_B;
wire [11:0] B_sub_R;
wire [11:0] R_sub_G;

sub12 sub_G_B (
  .a({2'b0, delayed_G}), // input [11 : 0] a
  .b({2'b0, delayed_B}), // input [11 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(G_sub_B) // output [11 : 0] s
);

sub12 sub_B_R (
  .a({2'b0, delayed_B}), // input [11 : 0] a
  .b({2'b0, delayed_R}), // input [11 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(B_sub_R) // output [11 : 0] s
);

sub12 sub_R_G (
  .a({2'b0, delayed_R}), // input [11 : 0] a
  .b({2'b0, delayed_G}), // input [11 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(R_sub_G) // output [11 : 0] s
);

wire [9:0] v_V_del1;

delay #
(
	.N(10),
	.DELAY(3)
)
delay_V1
(
	.d(v_V),
	.ce(ce),
	.clk(clk),
	.q(v_V_del1)
);

wire [11:0] v_select_H;

mux4 select_H_type
(
	.clk(clk),
	
	.i1(G_sub_B),
	.i2(B_sub_R),
	.i3(R_sub_G),
	
	.r(delayed_R),
	.g(delayed_G),
	.b(delayed_B),
	
	.value(v_V_del1),
	
	.o(v_select_H)
);

//dzielenie przez v_delta
//op delte
wire [11:0] delayed_delta;

delay #
(
	.N(12),
	.DELAY(3)
)
delay_delta
(
	.d({2'b0, v_delta}),
	.ce(ce),
	.clk(clk),
	.q(delayed_delta)
);
//dzielenie
wire [11:0] q_H;
wire [11:0] f_H;
div12 div_H (
	.clk(clk), // input clk
	//.rfd(rfd), // output rfd
	.dividend(v_select_H), // input [11 : 0] dividend
	.divisor(delayed_delta), // input [11 : 0] divisor
	.quotient(q_H), // output [11 : 0] quotient
	.fractional(f_H) // output [11 : 0] fractional
);
wire signed [11:0] v_H1;
//assign v_H1 = {q_H[11], q_H[2:0], f_H[10:3]}; //todo ??
assign v_H1[11] = q_H[11] | f_H[10];
assign v_H1[10] = (f_H[10] == 1'b0 & q_H[10] == 1'b0) ? 1'b0 : 1'b1;
assign v_H1[9] = (f_H[9] == 1'b0 & q_H[9] == 1'b0) ? 1'b0 : 1'b1;
assign v_H1[8] = (f_H[8] == 1'b0 & q_H[0] == 1'b0) ? f_H[0] : 1'b1;
assign v_H1[7:0] = f_H[7:0];

//dodaj stala do H
wire signed [11:0] v_select_const_H;
mux4 select_H_const
(
	.clk(clk),
	
	.i1(12'b0),
	.i2(12'h200),
	.i3(12'h400),
	
	.r(delayed_R),
	.g(delayed_G),
	.b(delayed_B),
	
	.value(v_V_del1),
	
	.o(v_select_const_H)
);

wire signed [11:0] v_H2;
assign v_H2 = v_H1 + v_select_const_H; // ??
//warunkowe dodanie 6!
wire signed [11:0] v_H3;
assign v_H3 = (v_H2[11] == 1'b1) ? (v_H2 + 12'h600) : v_H2;


//dzielenie H przez 6
wire [11:0] q_H2;
wire [11:0] f_H2;
div12 div_H2 (
	.clk(clk), // input clk
	//.rfd(rfd), // output rfd
	.dividend(v_H3), // input [11 : 0] dividend
	.divisor(12'h600), // input [11 : 0] divisor
	.quotient(q_H2), // output [11 : 0] quotient
	.fractional(f_H2) // output [11 : 0] fractional
);
wire signed [9:0] v_H4;
assign v_H4 = {q_H2[11], q_H2[0], f_H2[10:3]}; //todo ??

//opoznij sygnaly V i S
wire [9:0] v_H_final;
wire [9:0] v_S_final;
wire [9:0] v_V_final;

delay #
(
	.N(10),
	.DELAY(60)
)
delay_V
(
	.d(v_V),
	.ce(ce),
	.clk(clk),
	.q(v_V_final)
);


delay #
(
	.N(10),
	.DELAY(36)
)
delay_S
(
	.d(v_S),
	.ce(ce),
	.clk(clk),
	.q(v_S_final)
);

assign v_H_final = v_H4;

//wire [9:0] v_H_final;
//wire [9:0] v_S_final;
//wire [9:0] v_V_final;
//assign v_H_final = v_H4;
//assign v_S_final = v_S;
//assign v_V_final = v_V;

//pomnoz HSV przez 255
wire [19:0] final_H;
wire [19:0] final_S;
wire [19:0] final_V;
mul10 mul_final_H (
  .clk(clk), // input clk
  .a(v_H_final), // input [9 : 0] a
  .b(10'h0FF), // input [9 : 0] b
  .p(final_H) // output [19 : 0] p
);
mul10 mul_final_S (
  .clk(clk), // input clk
  .a(v_S_final), // input [9 : 0] a
  .b(10'h0FF), // input [9 : 0] b
  .p(final_S) // output [19 : 0] p
);
mul10 mul_final_V (
  .clk(clk), // input clk
  .a(v_V_final), // input [9 : 0] a
  .b(10'h0FF), // input [9 : 0] b
  .p(final_V) // output [19 : 0] p
);

assign H = final_H[17:10];
assign S = final_S[17:10];
assign V = final_V[17:10];

//opoznij sygnaly synchronizacji
wire [2:0] syncs;
delay #
(
	.N(3),
	.DELAY(73)
)
delay_sync
(
	.d({in_hsync, in_vsync, in_de}),
	.ce(ce),
	.clk(clk),
	.q(syncs)
);

assign out_hsync = syncs[2];
assign out_vsync = syncs[1];
assign out_de = syncs[0];
endmodule
