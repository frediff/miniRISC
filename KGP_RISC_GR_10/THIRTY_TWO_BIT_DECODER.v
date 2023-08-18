`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:15:54 10/21/2022 
// Design Name: 
// Module Name:    THIRTY_TWO_BIT_DECODER 
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
module THIRTY_TWO_BIT_DECODER (input [31:0] IN, output [31:0] OUT);
	
	assign OUT[31:6] = 27'b0;

	wire T00, T01, T02, T03;
	wire T10, T11, T12, T13;
	wire T20, T21, T22, T23;
	wire T30, T31, T32, T33;
	wire T40, T41, T42, T43;

	// CHECK IF BIT 0 IS ON
	or O00(T00, IN[1], IN[3], IN[5], IN[7]);
	or O01(T01, IN[9], IN[11], IN[13], IN[15]);
	or O02(T02, IN[17], IN[19], IN[21], IN[23]);
	or O03(T03, IN[25], IN[27], IN[29], IN[31]);
	or O0(OUT[0], T00, T01, T02, T03);

	// CHECK IF BIT 1 IS ON
	or O10(T10, IN[2], IN[3], IN[6], IN[7]);
	or O11(T11, IN[10], IN[11], IN[14], IN[15]);
	or O12(T12, IN[18], IN[19], IN[22], IN[23]);
	or O13(T13, IN[26], IN[27], IN[30], IN[31]);
	or O1(OUT[1], T10, T11, T12, T13);

	// CHECK IF BIT 2 IS ON
	or O20(T20, IN[4], IN[5], IN[6], IN[7]);
	or O21(T21, IN[12], IN[13], IN[14], IN[15]);
	or O22(T22, IN[20], IN[21], IN[22], IN[23]);
	or O23(T23, IN[28], IN[29], IN[30], IN[31]);
	or O2(OUT[2], T20, T21, T22, T23);

	// CHECK IF BIT 3 IS ON
	or O30(T30, IN[8], IN[9], IN[10], IN[11]);
	or O31(T31, IN[12], IN[13], IN[14], IN[15]);
	or O32(T32, IN[24], IN[25], IN[26], IN[27]);
	or O33(T33, IN[28], IN[29], IN[30], IN[31]);
	or O3(OUT[3], T30, T31, T32, T33);

	// CHECK IF BIT 4 IS ON
	or O40(T40, IN[16], IN[17], IN[18], IN[19]);
	or O41(T41, IN[20], IN[21], IN[22], IN[23]);
	or O42(T42, IN[24], IN[25], IN[26], IN[27]);
	or O43(T43, IN[28], IN[29], IN[30], IN[31]);
	or O4(OUT[4], T40, T41, T42, T43);

	nor NOR(OUT[5], OUT[0], OUT[1], OUT[2], OUT[3], OUT[4], IN[0]);

endmodule