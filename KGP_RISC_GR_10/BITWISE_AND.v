`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:08:50 10/21/2022 
// Design Name: 
// Module Name:    BITWISE_AND 
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
module BITWISE_AND(input [31:0] A, input [31:0] B, output wire [31:0] C);
	and A0(C[0], A[0], B[0]);
	and A1(C[1], A[1], B[1]);
	and A2(C[2], A[2], B[2]);
	and A3(C[3], A[3], B[3]);
	and A4(C[4], A[4], B[4]);
	and A5(C[5], A[5], B[5]);
	and A6(C[6], A[6], B[6]);
	and A7(C[7], A[7], B[7]);
	and A8(C[8], A[8], B[8]);
	and A9(C[9], A[9], B[9]);
	and A10(C[10], A[10], B[10]);
	and A11(C[11], A[11], B[11]);
	and A12(C[12], A[12], B[12]);
	and A13(C[13], A[13], B[13]);
	and A14(C[14], A[14], B[14]);
	and A15(C[15], A[15], B[15]);
	and A16(C[16], A[16], B[16]);
	and A17(C[17], A[17], B[17]);
	and A18(C[18], A[18], B[18]);
	and A19(C[19], A[19], B[19]);
	and A20(C[20], A[20], B[20]);
	and A21(C[21], A[21], B[21]);
	and A22(C[22], A[22], B[22]);
	and A23(C[23], A[23], B[23]);
	and A24(C[24], A[24], B[24]);
	and A25(C[25], A[25], B[25]);
	and A26(C[26], A[26], B[26]);
	and A27(C[27], A[27], B[27]);
	and A28(C[28], A[28], B[28]);
	and A29(C[29], A[29], B[29]);
	and A30(C[30], A[30], B[30]);
	and A31(C[31], A[31], B[31]);
endmodule