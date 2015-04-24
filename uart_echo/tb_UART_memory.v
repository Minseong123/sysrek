`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:08:17 11/01/2014
// Design Name:   UART_memory
// Module Name:   F:/Projekt/UART_FRESH_Kris/tb_UART_memory.v
// Project Name:  UART_FRESH
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: UART_memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_UART_memory;

	// Inputs
	reg UartRx = 1'b1;
	reg clk100 = 1'b0;

	// Outputs
	wire UartTx;

	// Instantiate the Unit Under Test (UUT)
	UART_memory uut (
		.UartRx(UartRx), 
		.UartTx(UartTx), 
		.clk100(clk100)
	);

	reg sendingByte = 1'b0;

	always #5 clk100 <= !clk100; // 100MHz

	task sendByte;
	input [7:0]byteToSend;
	begin: body
		integer k;
		UartRx <= 1'b0; #8680.555;
		sendingByte <= 1'b1;
		for (k=0; k<8; k=k+1) begin
			UartRx <= byteToSend[k]; #8680.555; // low bit first
		end
		sendingByte <= 1'b0;
		UartRx <= 1'b1; #8680.555;
	end
	endtask

	initial begin
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		// send command write 5 to address 0
		sendByte(8'b01000000);
		sendByte(8'h0);
		sendByte(8'd5);
		
		// send command write 0x5555 to address 2
		sendByte(8'b01000010);
		sendByte(8'h55);
		sendByte(8'h55);
		
		// read command from address 2
		sendByte(8'b00000010);
		sendByte(8'd0); 
		sendByte(8'd0);
		// now 3 bytes should be transmitted
		
		#300_000;
		sendByte(8'b00000010);
		sendByte(8'd0); 
		sendByte(8'd0);
		// the same should be seen
		
	end
      
endmodule

