`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:11:50 10/21/2022 
// Design Name: 
// Module Name:    SHIFT_RIGHT_ARITHMETIC 
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
module SHIFT_RIGHT_ARITHMETIC(input signed [31:0] IN, input [4:0] SHAMT, output reg [31:0] OUT);
	always @(SHAMT or IN)
		OUT <= IN >>> SHAMT;
endmodule