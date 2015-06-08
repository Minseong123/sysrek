`timescale 1ns / 1ps
//-----------------------------------------------
// Company: agh
//-----------------------------------------------
module i_mem
(
  input [7:0]address,
  output [31:0]data
);
//-----------------------------------------------
//instruction memory
wire [31:0]program[255:0];

//assign program[0]=32'h0036e00c; // movi R0, 12
//assign program[1]=32'h0036e10d; // movi R1, 13
//assign program[2]=32'h00101000; // add R0, R0, R1
//assign program[3]=32'h0010e10e; // addi R1, R0, 14
//assign program[4]=32'h00001000; // and R0, R0, R1
//assign program[5]=32'h0000e10b; // andi R1, R0, 11
//assign program[6]=32'h0136e700; // jmpi 0
//assign program[7]=32'h00360000; // nop
assign program[0]=32'h0036e000; // movi R0, 0
assign program[1]=32'h0036e104; // movi R1, 4
assign program[2]=32'h0010e001; // addi R0, R0, 1
assign program[3]=32'h00001200; // and R2, R0, R1
assign program[4]=32'h0332e702; // jz R2, 2
assign program[5]=32'h0036e301; // movi R3, 1



//-----------------------------------------------
assign data=program[address];
//-----------------------------------------------
endmodule
//-----------------------------------------------