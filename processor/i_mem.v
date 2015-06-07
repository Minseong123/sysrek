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

assign program[0]=32'h00000000;
assign program[1]=32'h00168033;
assign program[2]=32'h00168032;
assign program[3]=32'h00168031;
assign program[4]=32'h00168030;
assign program[5]=32'h00168031;
assign program[6]=32'h00168032;
assign program[7]=32'h00168033;

//-----------------------------------------------
assign data=program[address];
//-----------------------------------------------
endmodule
//-----------------------------------------------