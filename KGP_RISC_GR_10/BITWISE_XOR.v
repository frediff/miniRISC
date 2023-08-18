`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:09:20 10/21/2022 
// Design Name: 
// Module Name:    BITWISE_XOR 
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
module BITWISE_XOR(input [31:0] A, input [31:0] B, output [31:0] C);
	xor A0(C[0], A[0], B[0]);
	xor A1(C[1], A[1], B[1]);
	xor A2(C[2], A[2], B[2]);
	xor A3(C[3], A[3], B[3]);
	xor A4(C[4], A[4], B[4]);
	xor A5(C[5], A[5], B[5]);
	xor A6(C[6], A[6], B[6]);
	xor A7(C[7], A[7], B[7]);
	xor A8(C[8], A[8], B[8]);
	xor A9(C[9], A[9], B[9]);
	xor A10(C[10], A[10], B[10]);
	xor A11(C[11], A[11], B[11]);
	xor A12(C[12], A[12], B[12]);
	xor A13(C[13], A[13], B[13]);
	xor A14(C[14], A[14], B[14]);
	xor A15(C[15], A[15], B[15]);
	xor A16(C[16], A[16], B[16]);
	xor A17(C[17], A[17], B[17]);
	xor A18(C[18], A[18], B[18]);
	xor A19(C[19], A[19], B[19]);
	xor A20(C[20], A[20], B[20]);
	xor A21(C[21], A[21], B[21]);
	xor A22(C[22], A[22], B[22]);
	xor A23(C[23], A[23], B[23]);
	xor A24(C[24], A[24], B[24]);
	xor A25(C[25], A[25], B[25]);
	xor A26(C[26], A[26], B[26]);
	xor A27(C[27], A[27], B[27]);
	xor A28(C[28], A[28], B[28]);
	xor A29(C[29], A[29], B[29]);
	xor A30(C[30], A[30], B[30]);
	xor A31(C[31], A[31], B[31]);
endmodule
