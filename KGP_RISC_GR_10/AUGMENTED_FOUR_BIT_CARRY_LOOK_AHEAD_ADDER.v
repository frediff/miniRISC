`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:19:02 08/31/2022 
// Design Name: 
// Module Name:    AUGMENTED_FOUR_BIT_CARRY_LOOK_AHEAD_ADDER 
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
module AUGMENTED_FOUR_BIT_CARRY_LOOK_AHEAD_ADDER(input [3:0] A, input [3:0] B, input C0, output [3:0] SUM, output COUT, output P, output G);

    // P3, P2, P1, P0 --> PROPAGATE BITS
    // G3, G2, G1, G0 --> GENERATE BITS
    // C3, C2, C1, C0 --> CARRY BITS
    // C4 ---> COUT
    // I[9:0] --> INTERNAL WIRES FOR INTERMEDIATE BOOLEAN LOGICS

    wire P3, P2, P1, P0, G3, G2, G1, G0, C3, C2, C1, I[9:0];

    // COMPUTE PROPAGATE BITS
    or OR0 (P0, A[0], B[0]);                  // P0 = A[0] OR B[0]
    or OR1 (P1, A[1], B[1]);                  // P1 = A[1] OR B[1]
    or OR2 (P2, A[2], B[2]);                  // P2 = A[2] OR B[2]
    or OR3 (P3, A[3], B[3]);                  // P3 = A[3] OR B[3]

    // COMPUTE GENERATE BITS
    and AND0 (G0, A[0], B[0]);                // G0 = A[0] AND B[0]
    and AND1 (G1, A[1], B[1]);                // G1 = A[1] AND B[1]
    and AND2 (G2, A[2], B[2]);                // G2 = A[2] AND B[2]
    and AND3 (G3, A[3], B[3]);                // G3 = A[3] AND B[3]


    // PRE-COMPUTE CARRY BITS NOW
    // C0 <--- PROVIDED AS INPUT


    /*
     *  IN THIS STRUCTURAL CODE
     *  WE EVALUATE C1 = C1 = G0 OR (P0 AND C0)
     */
    and AND4 (I[0], P0, C0);
    or OR4 (C1, G0, I[0]);


    /*
     *  IN THIS STRUCTURAL CODE
     *  WE EVALUATE C2 = G1 OR (P1 AND C1) = G1 OR (P1 AND G0) OR (P1 AND P0 AND C0)
     */
    and AND5 (I[1], P1, P0, C0);
    and AND6 (I[2], P1, G0);
    or OR5 (C2, G1, I[1], I[2]);


    /*
     *  IN THIS STRUCTURAL CODE
     *  WE EVALUATE C3 = G2 OR (P2 AND C2) = G2 OR (P2 AND G1) OR (P2 AND P1 AND G0) OR (P2 AND P1 AND P0 AND C0)
     */
    and AND7 (I[3], P2, P1, P0, C0);
    and AND8 (I[4], P2, P1, G0);
    and AND9 (I[5], P2, G1);
    or OR6 (C3, G2, I[3], I[4], I[5]);


    /*
     *  IN THIS STRUCTURAL CODE
     *  WE EVALUATE C4 = G3 OR (P3 AND C3) = G3 OR (P3 AND G2) OR (P3 AND P2 AND G1) OR (P3 AND P2 AND P1 AND G0) OR (P3 AND P2 AND P1 AND P0 AND C0)
     */
    and AND10 (I[6], P3, P2, P1, P0, C0);
    and AND11 (I[7], P3, P2, P1, G0);
    and AND12 (I[8], P3, P2, G1);
    and AND13 (I[9], P3, G2);
    or OR7 (COUT, G3, I[6], I[7], I[8], I[9]);

    /*
     *  NOW WE COMPUTE THE GROUP PROPAGATE AND GENERATE BITS
     */
    and AND14 (P, P3, P2, P1, P0);
    or OR8 (G, G3, I[7], I[8], I[9]);

    // FINALLY FIND THE SUM
    xor X0 (SUM[0], A[0], B[0], C0);
    xor X1 (SUM[1], A[1], B[1], C1);
    xor X2 (SUM[2], A[2], B[2], C2);
    xor X3 (SUM[3], A[3], B[3], C3);

endmodule
