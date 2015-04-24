`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Krzysztof Kapusta/Mateusz Furdyna
// 
// Create Date:    17:11:37 11/01/2014 
// Design Name: 	 UART_memory
// Module Name:    UART_memory 
// Project Name:   UART_memory
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: rx_module, tx_module
//
// Revision: 
// Revision 1.0
//
//////////////////////////////////////////////////////////////////////////////////
module UART_memory(
	input UartRx,
	output UartTx,
	input clk100,
	
	// declare as many output registers as you want
	output [7:0]reg0,
	output [7:0]reg1,
	output [7:0]reg2,
	output [7:0]reg3,
	output [7:0]reg4,
	output [7:0]reg5,
	output [7:0]reg6,
	output [7:0]reg7
);

// number of registers in memory, should be equal or more than output registers
parameter REG_NUMBER = 8;
reg [15:0]memory[REG_NUMBER-1:0];

initial begin: memory_init
	integer k;
	for (k = 0; k < REG_NUMBER; k = k+1)
	begin
		memory[k] = 16'd0;
	end
end

// assign memory to output for each declared register
assign reg0 = memory[0];
assign reg1 = memory[1];
assign reg2 = memory[2];
assign reg3 = memory[3];
assign reg4 = memory[4];
assign reg5 = memory[5];
assign reg6 = memory[6];
assign reg7 = memory[7];

wire [7:0]Rx_D;
reg [7:0]Tx_D;
reg WR = 1'b0;
reg RD = 1'b0;
reg RST = 1'b0;
wire RXNE;
wire TXE;

// Instantiate the Rx module
UART_Rx # (
	 .CLOCK(100_000_000),
	 .BAUD_RATE(115200)
)rx_module (
    .CLK(clk100), 
    .D(Rx_D), 
    .RD(RD), 
    .RST(RST), 
    .RX(UartRx), 
    .RXNE(RXNE)
);

// Instantiate the Tx module
UART_Tx # (
	 .CLOCK(100_000_000),
	 .BAUD_RATE(115200)
) tx_module (
    .CLK(clk100), 
    .D(Tx_D), 
    .WR(WR), 
    .RST(RST), 
    .TX(UartTx), 
    .TXE(TXE)
); 

reg prevRXNE = 1'b0;
reg prevTXE = 1'b1;
reg [7:0]command = 8'h0;		// command (first byte) of incomming data
reg [7:0]high_data = 8'h0;		// high byte (second byte) of incomming data
reg [1:0]rx_counter = 0;		// for counting incomming bytes
reg [1:0]tx_counter = 0;		// for counting bytes remaining to be transmitted
reg [7:0]output_queue[2:1]; // second byte to send back to PC, indexed from 1

always @(posedge clk100) begin
	WR <= 1'b0; // reset write signal, always

	// detect RXNE rising edge, send RD signal, and one clk after that, read byte
	if (prevRXNE == 1'b0 && RXNE == 1'b1) begin
		RD <= 1'b1;
	end else if (RD == 1'b1) begin
		RD <= 1'b0;
		case (rx_counter)
		0: begin // first byte is command
			command <= Rx_D;
			rx_counter <= rx_counter+1;
		end
		1: begin // second byte is high byte of data
			high_data <= Rx_D;
			rx_counter <= rx_counter+1;
		end
		2: begin // third byte is the last one and is low byte of data
			case (command[7:6]) // decode command
			// read command
			2'b00: begin
				output_queue[1] <= memory[command[5:0]][7:0];
				output_queue[2] <= memory[command[5:0]][15:8];
				Tx_D <= {2'b00, command[5:0]};
				tx_counter <= 2;
				WR <= 1'b1;
			end
			// write command
			2'b01: memory[command[5:0]] <= {high_data, Rx_D}; 
			//skip rest
			endcase
			rx_counter <= 0;
		end
		endcase
	end else if (tx_counter && TXE && !prevTXE) begin
		// on rising edge of TXE, when we need to send data
		Tx_D <= output_queue[tx_counter];
		tx_counter <= tx_counter-1;
		WR <= 1'b1;
	end
		
	prevTXE <= TXE;
	prevRXNE <= RXNE;
end

endmodule
