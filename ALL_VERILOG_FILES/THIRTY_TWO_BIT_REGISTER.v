`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:50:23 10/28/2022 
// Design Name: 
// Module Name:    THIRTY_TWO_BIT_REGISTER 
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
module THIRTY_TWO_BIT_REGISTER(input [31:0] IN, input CLK, input RST, output reg [31:0] OUT);

	always @(posedge CLK or posedge RST) // asynchronous reset
		begin
			if(RST)
				OUT <= 0;
			else
				OUT <= IN;
		end
		
endmodule
