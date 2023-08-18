`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:19:45 08/31/2022 
// Design Name: 
// Module Name:    SIXTEEN_BIT_CARRY_LOOK_AHEAD_ADDER 
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
module SIXTEEN_BIT_CARRY_LOOK_AHEAD_ADDER(input [15:0] A, input [15:0] B, input C0, output [15:0] SUM, output COUT);

    // P3, P2, P1, P0 --> GROUP PROPAGATE BITS
    // G3, G2, G1, G0 --> GROUP GENERATE BITS
    // C3, C2, C1, C0 --> GROUP CARRY BITS
    // C4 ---> COUT

    wire P3, P2, P1, P0, G3, G2, G1, G0, C3, C2, C1;

    AUGMENTED_FOUR_BIT_CARRY_LOOK_AHEAD_ADDER ACLA0 (.A(A[3:0]), .B(B[3:0]), .C0(C0), .SUM(SUM[3:0]), .COUT(), .P(P0), .G(G0));
    AUGMENTED_FOUR_BIT_CARRY_LOOK_AHEAD_ADDER ACLA1 (.A(A[7:4]), .B(B[7:4]), .C0(C1), .SUM(SUM[7:4]), .COUT(), .P(P1), .G(G1));
    AUGMENTED_FOUR_BIT_CARRY_LOOK_AHEAD_ADDER ACLA2 (.A(A[11:8]), .B(B[11:8]), .C0(C2), .SUM(SUM[11:8]), .COUT(), .P(P2), .G(G2));
    AUGMENTED_FOUR_BIT_CARRY_LOOK_AHEAD_ADDER ACLA3 (.A(A[15:12]), .B(B[15:12]), .C0(C3), .SUM(SUM[15:12]), .COUT(), .P(P3), .G(G3));

    // NOW WE INTEGRATE THE LOOKAHEAD CARRY UNIT WITH THE ADDER

    LOOKAHEAD_CARRY_UNIT LCU0 (.P0(P0), .P1(P1), .P2(P2), .P3(P3), .G0(G0), .G1(G1), .G2(G2), .G3(G3), .C0(C0), .C1(C1), .C2(C2), .C3(C3), .C4(COUT), .P(), .G());

    // THE GROUP GENERATE AND PROPAGATE BITS (FOR THE ENTIRE 16 BIT INPUT) FROM THE ABOVE LOOKAHEAD CARRY UNIT NEED
    // NOT BE UTILIZED HERE. IT MAY BE UTILIZED IF THE GIVEN 16 BIT CLA IS FURTHER EXTENDED TO 32 BIT AND 64 BIT ADDERS.

endmodule
