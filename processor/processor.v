`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Wojtek Gumua
// 
// Create Date:    15:47:33 06/07/2015 
// Design Name: 
// Module Name:    processor 
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
module processor(
    input clk100
    );

wire [7:0] PC_addr;
wire [7:0] alu_res;
wire jmp_out;

wire [7:0] data_out;
d_mem data_memory (
	.address(alu_res),
	.data(data_out)
);

wire [31:0] inst_out;
i_mem inst_memory (
	.address(PC_addr),
	.data(inst_out)
);

// dekodowanie polecenia
reg [1:0] pc_op;
reg [1:0] alu_op;
reg [2:0] rx_op;
reg imm_op;
reg [2:0] ry_op;
reg rd_op;
reg [2:0] d_op;
reg [7:0] imm;
always @(posedge clk100)
begin
	pc_op = inst_out[25:24];
	alu_op = inst_out[21:20];
	rx_op = inst_out[18:16];
	imm_op = inst_out[15];
	ry_op = inst_out[14:12];
	rd_op = inst_out[11];
	d_op = inst_out[10:8];
	imm = inst_out[7:0];
end

wire [7:0] dekoder_out; 
demux8x1 dekoder (
	.clk(clk),
	.address(d_op),
	.in(1'b1),
	.out(dekoder_out)
);
wire [7:0] rd_mux_out;
mux2x8 rd_mux (
	.address(rd_op),
	.in0(alu_res), //todo
	.in1(data_out),
	.out(rd_mux_out)
);

wire [7:0] pc_mux_out;
mux2x8 pc_mux (
	.address(jmp_out),
	.in0(alu_res),
	.in1(pc_addr + 8'b1),
	.out(pc_mux_out)
);

//definicje rejestrow
reg [7:0] R0_in;
wire [7:0] R0_out;
wire [7:0] R1_out;
wire [7:0] R2_out;
wire [7:0] R3_out;
wire [7:0] R4_out;
wire [7:0] R5_out;
wire [7:0] R6_out;
register R0 (
	.clk(clk100),
	.ce(dekoder_out[0]),
	.d(rd_mux_out),
	.q(R0_out)
);
register R1 (
	.clk(clk100),
	.ce(dekoder_out[1]),
	.d(rd_mux_out),
	.q(R1_out)
);
register R2 (
	.clk(clk100),
	.ce(dekoder_out[2]),
	.d(rd_mux_out),
	.q(R2_out)
);
register R3 (
	.clk(clk100),
	.ce(dekoder_out[3]),
	.d(rd_mux_out),
	.q(R3_out)
);
register R4 (
	.clk(clk100),
	.ce(dekoder_out[4]),
	.d(rd_mux_out),
	.q(R4_out)
);
register R5 (
	.clk(clk100),
	.ce(dekoder_out[5]),
	.d(rd_mux_out),
	.q(R5_out)
);
register R6 (
	.clk(clk100),
	.ce(dekoder_out[6]),
	.d(8'b0),
	.q(R6_out)
);
register PC (
	.clk(clk100),
	.ce(1'b1),
	.d(cp_mux_out),
	.q(PC_addr)
);

wire [7:0] rx_mux_out;
mux8x8 rx_mux (
	.address(rx_op),
	.in0(R0_out),
	.in1(R1_out),
	.in2(R2_out),
	.in3(R3_out),
	.in4(R4_out),
	.in5(R5_out),
	.in6(R6_out),
	.in7(PC_addr),
	.out(rx_mux_out)
);
wire [7:0] ry_mux_out;
mux8x8 ry_mux (
	.address(ry_op),
	.in0(R0_out),
	.in1(R1_out),
	.in2(R2_out),
	.in3(R3_out),
	.in4(R4_out),
	.in5(R5_out),
	.in6(R6_out),
	.in7(PC_addr),
	.out(ry_mux_out)
);

wire [7:0] imm_mux_out;
mux2x8 imm_mux (
	.address(imm_op),
	.in0(ry_mux_out),
	.in1(imm),
	.out(imm_mux_out)
);

wire [7:0] alu_sum;
wire [7:0] alu_and;
wire [7:0] alu_cmp;

ALU alu (
	.input_x(rx_mux_out),
	.input_y(imm_mux_out),
	.output_sum(alu_sum),
	.output_and(alu_and),
	.output_cmp(alu_cmp)
);

mux8x8 alu_mux ( //4x8!!
	.address(alu_op),
	.in0(alu_and),
	.in1(alu_sum),
	.in2(alu_cmp),
	.in3(imm_mux_out),
	.out(alu_res)
);

jump_select jump_switch (
	.cmp_res(alu_cmp),
	.pc_op(pc_op),
	.out(jmp_out)
);

endmodule
