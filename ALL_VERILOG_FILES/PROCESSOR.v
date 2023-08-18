`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:36:31 10/28/2022 
// Design Name: 
// Module Name:    PROCESSOR 
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
module PROCESSOR(   input CLK,              // REF_FILE, PC
                    input HLT,              // CONTROLLER
                    input RST,              // CONTROLLER, RST
                    input [31:0] IR,        // alias for DOUTA
                    input [31:0] DOUTB,     // S_MUX
                    // output [31:0] DINA,  // 
						  
						  output [31:0] DBG,
						  output [31:0] DBG_PC,

                    output [31:0] DINB,     //
                    output WA,              //
                    output WB,              //
                    output [11:0] ADDRA,    //*
                    output [11:0] ADDRB);   //
						  
    wire CY;            //* ALU, SPC_MUX
    wire NZ;            //* OR_NZ, SPC_MUX
    wire EZ;            //* NOT_NZ, SPC_MUX
    wire NCY;           //* NOT_CY, SPC_MUX
    wire [31:0] RES;    //* ALU, RSW_MUX
    wire [2:0] OP;      //* ALU, CONTROLLER
    wire DIFF;          //* ALU, CONTROLLER
    wire [31:0] A;      //* ALU, A_MUX
    wire [31:0] B;      //* ALU, A_MUX
    wire [31:0] S;      //* RSW_MUX, S_MUX
    wire [4:0] RTA;     //* REG_FILE, CONTROLLER
    wire [4:0] RSA;     //* REG_FILE, CONTROLLER
    wire [31:0] RSR;    //* REG_FILE, A_MUX, B_MUX, PC_MUX
    wire [31:0] RTR;    //* REG_FILE, B_MUX, A_MUX
	  
//    wire [31:0] RSRA;   // BS, A_MUX
//    wire [31:0] RSRB;   // BS, B_MUX
//    
//    wire [31:0] RTRA;   // BT, A_MUX
//    wire [31:0] RTRB;   // BT, B_MUX
    
	 wire [31:0] RSW;    // RSW_MUX, REG_FILE
    wire SA;            //* CONTROLLER, A_MUX
    wire [1:0] SB;      //* CONTROLLER, B_MUX
    wire [2:0] SC;      //* CONTROLLER, SPC_MUX
    wire SAD;           //* SPC_MUX, PCADD_MUX
    wire SPC;           //* PC_MUX, CONTROLLER
    wire SS;            //* S_MUX, CONTROLLER
    wire WR;            //* CONTROLLER, REG_FILE
    wire SSW;           //* RSW_MUX, CONTROLLER
    wire [31:0] PC_IN;  //* PC_MUX, PC
    wire [31:0] PC_OUT; //* PC, ADDER_1, ADDER_L, ADDRA
    wire [31:0] PC_1;   //* ADDER_1, PCADD_MUX, S_MUX
    wire [31:0] PC_L;   //* ADDER_L, PCADD_MUX 
    wire [31:0] PC_ADD; //* PCADD_MUX, PC_MUX
	 
	 // CONTROLLER
    CONTROLLER CLU(.IR(IR[15:0]), .HLT(HLT), 
                   .SSW(SSW), .WR(WR), .SS(SS), .SPC(SPC), 
                   .SC(SC), .SB(SB), .SA(SA), .OP(OP), .DIFF(DIFF),
                   .RTA(RTA), .RSA(RSA), .WA(WA), .WB(WB));
						 
    REGISTER_FILE REG_FILE(.RSA(RSA), .RTA(RTA), .RSR(RSR), .RTR(RTR), .RSW(RSW), .WR(WR), .CLK(CLK)); 
	 
    MUX232 A_MUX(.SEL(SA), .ZERO(RSR), .ONE(RTR), .OUT(A));
	 
    MUX432 B_MUX(.SEL(SB), .ZERO(RTR), .ONE(RSR), .TWO({{11 {IR[31]}}, IR[31:11]}), .THREE({{16 {IR[31]}}, IR[31:16]}), .OUT(B));
	 
    THIRTY_TWO_FAN_IN_OR OR_NZ(.IN(RSR), .OUT(NZ));
    not NOT_NZ(EZ, NZ);
    not NOT_NCY(NCY, CY);
	 
    MUX81 SPC_MUX(.SEL(SC), .ZERO(1'b0), 
                            .ONE(1'b1), 
                            .TWO(RSR[31:31]), // LZ
                            .THREE(NZ), 
                            .FOUR(EZ), 
                            .FIVE(CY), 
                            .SIX(NCY),
                            .SEVEN(1'b1),
                            .OUT(SAD));    
									 
    ALU_STRUCTURAL ALU(.A(A), .B(B), .DIFF(DIFF), .OP(OP), .RES(RES), .CY(CY));
    
	 PROGRAM_COUNTER PC(.CLK(CLK), .HLT(HLT), .RST(RST), .PC_IN(PC_IN), .PC_OUT(PC_OUT));
    ADDER_1 A1(.PC(PC_OUT), .PC_1(PC_1));
    ADDER_L AL(.PC(PC_OUT), .L(IR[31:16]), .PC_L(PC_L));
	 
    MUX232 PCADD_MUX(.SEL(SAD), .ZERO(PC_1), .ONE(PC_L), .OUT(PC_ADD));
    MUX232 PC_MUX(.SEL(SPC), .ZERO(PC_ADD), .ONE(RSR), .OUT(PC_IN));
    MUX232 RSW_MUX(.SEL(SSW), .ZERO(RES), .ONE(S), .OUT(RSW));
    MUX232 S_MUX(.SEL(SS), .ZERO(DOUTB), .ONE(PC_1), .OUT(S));
    
	 assign ADDRA = PC_OUT[11:0];
    assign ADDRB = RES[11:0];
    assign DINB = RSR;
	 
	 
	 assign DBG = A;
	 assign DBG_PC = PC_OUT;
	 
endmodule
