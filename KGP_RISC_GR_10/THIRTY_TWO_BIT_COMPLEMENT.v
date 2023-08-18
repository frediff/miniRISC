`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:15:04 10/21/2022 
// Design Name: 
// Module Name:    THIRTY_TWO_BIT_COMPLEMENT 
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
module THIRTY_TWO_BIT_COMPLEMENT(input signed [31:0] IN, output [31:0] OUT);
	assign OUT = -IN;
endmodule