`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:19:22 08/31/2022 
// Design Name: 
// Module Name:    LOOKAHEAD_CARRY_UNIT 
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
module LOOKAHEAD_CARRY_UNIT (input P0, input P1, input P2, input P3, input G0, input G1, input G2, input G3, input C0, output C1, output C2, output C3, output C4, output P, output G);

    // P3, P2, P1, P0 --> PROPAGATE BITS
    // G3, G2, G1, G0 --> GENERATE BITS
    // C4, C3, C2, C1, C0 --> CARRY BITS, C0 IS TAKEN AS INPUT
    // I[9:0] --> INTERNAL WIRES FOR INTERMEDIATE BOOLEAN LOGICS

    wire I[9:0];

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
    or OR7 (C4, G3, I[6], I[7], I[8], I[9]);


     /*
      *  NOW WE COMPUTE THE GROUP PROPAGATE AND GENERATE BITS
      */
    and AND14 (P, P3, P2, P1, P0);
    or OR8 (G, G3, I[7], I[8], I[9]);

endmodule
