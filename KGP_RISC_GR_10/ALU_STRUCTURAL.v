`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:34:52 10/26/2022 
// Design Name: 
// Module Name:    ALU_STRUCTURAL 
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
module ALU_STRUCTURAL(input [31:0] A, input [31:0] B, input DIFF, input [2:0] OP, output [31:0] RES, output CY);
    wire [31:0] COMPIN;
    wire [31:0] ANDIN_0;
    wire [31:0] ANDIN_1; 
    wire [31:0] ADDOUT; 
    wire [31:0] COMPOUT; 
    wire [31:0] ANDOUT;
    wire [31:0] XOROUT; 
    wire [31:0] DECOUT; 
    wire [31:0] DECNOPOUT; 
    wire [31:0] SLLOUT;
    wire [31:0] SRLOUT; 
    wire [31:0] SRAOUT;
    wire ISADD, T1, T2, CYIN;
    MUX232 M0(.SEL(DIFF), .ONE(XOROUT), .ZERO(B), .OUT(COMPIN));
    MUX232 M1(.SEL(DIFF), .ONE(COMPOUT), .ZERO(B), .OUT(ANDIN_0));
    MUX232 M2(.SEL(DIFF), .ONE(XOROUT), .ZERO(A), .OUT(ANDIN_1));
    MUX232 M3(.SEL(DIFF), .ONE(DECOUT), .ZERO(A), .OUT(DECNOPOUT));
    THIRTY_TWO_BIT_ADDER ADDER_ALU(.A(A), .B(B), .SUM(ADDOUT), .C(CYIN));
    THIRTY_TWO_BIT_COMPLEMENT COMP_ALU(.IN(COMPIN), .OUT(COMPOUT));
    BITWISE_AND AND_ALU(.A(ANDIN_0), .B(ANDIN_1), .C(ANDOUT));
    BITWISE_XOR XOR_ALU(.A(A), .B(B), .C(XOROUT));
    THIRTY_TWO_BIT_DECODER DEC_ALU(.IN(ANDOUT), .OUT(DECOUT));
    SHIFT_LEFT_LOGICAL SLL_ALU(.IN(A), .SHAMT(B[4:0]), .OUT(SLLOUT));
    SHIFT_RIGHT_LOGICAL SRL_ALU(.IN(A), .SHAMT(B[4:0]), .OUT(SRLOUT));
    SHIFT_RIGHT_ARITHMETIC SRA_ALU(.IN(A), .SHAMT(B[4:0]), .OUT(SRAOUT));
    MUX832 FINAL_MUX(.SEL(OP), .ZERO(DECNOPOUT), .ONE(XOROUT), .TWO(COMPOUT), .THREE(SRLOUT), .FOUR(ADDOUT),
                                                .FIVE(SLLOUT), .SIX(ANDOUT), .SEVEN(SRAOUT), .OUT(RES));
    not N1(T1, OP[0]);
    not N2(T2, OP[1]);
    and A0(ISADD, OP[2], T1, T2);
    D_LATCH CARRY_FLAG(.MOD(ISADD), .IN(CYIN), .OUT(CY));
endmodule
