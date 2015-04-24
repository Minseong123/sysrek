`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:41:33 10/30/2014 
// Design Name: 
// Module Name:    UART_loop 
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
module UART_loop(
	input UartRx,
	output UartTx,
	input clk100,
	output [7:0]LED
	);

wire [7:0]Rx_D;
reg [7:0]Tx_D;
reg WR = 1'b0;
reg RD = 1'b0;
reg RST = 1'b0;
wire RXNE;
wire TXE;

// Instantiate the module
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

// Instantiate the module
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

assign LED = Rx_D;
reg tog = 1'b0;

reg prevRXNE = 1'b0;
always @(posedge clk100) begin
	if (prevRXNE == 1'b0 && RXNE == 1'b1) begin
		RD <= 1'b1;
		Tx_D <= Rx_D;
		WR <= 1'b1;
		tog <= !tog;
	end else begin
		RD <= 1'b0;
		WR <= 1'b0;
	end
	prevRXNE <= RXNE;
end

endmodule
