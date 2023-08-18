`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:56:56 10/21/2022 
// Design Name: 
// Module Name:    THIRTY_TWO_BIT_OR 
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
module THIRTY_TWO_FAN_IN_OR(input [31:0] IN, output OUT);

	wire [9:0] T;
	or O0(T[0], IN[0], IN[1], IN[2], IN[3]);
	or O1(T[1], IN[4], IN[5], IN[6], IN[7]);
	or O2(T[2], IN[8], IN[9], IN[10], IN[11]);
	or O3(T[3], IN[12], IN[13], IN[14], IN[15]);
	or O4(T[4], IN[16], IN[17], IN[18], IN[19]);
	or O5(T[5], IN[20], IN[21], IN[22], IN[23]);
	or O6(T[6], IN[24], IN[25], IN[26], IN[27]);
	or O7(T[7], IN[28], IN[29], IN[30], IN[31]);
	
	or O8(T[8], T[0], T[1], T[2], T[3]);
	or O9(T[9], T[4], T[5], T[6], T[7]);
	
	or OF(OUT, T[8], T[9]);

endmodule
