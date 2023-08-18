`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:46 10/26/2022 
// Design Name: 
// Module Name:    THIRTY_TWO_BIT_EIGHT_TO_ONE_MUX 
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
module THIRTY_TWO_BIT_EIGHT_TO_ONE_MUX(input [2:0] SEL, 
													input [31:0] ZERO, 
													input [31:0] ONE, 
													input [31:0] TWO, 
													input [31:0] THREE, 
													input [31:0] FOUR, 
													input [31:0] FIVE, 
													input [31:0] SIX, 
													input [31:0] SEVEN, 
													output [31:0] OUT);
													
    

    
    assign OUT = ({ 32 {~(SEL[2])} } & { 32 {~SEL[1]} } & { 32 {~SEL[0]} } & ZERO) |
        ({ 32 {~(SEL[2])} } & { 32 {~SEL[1]} } & { 32 {SEL[0]} } & ONE) |
        ({ 32 {~(SEL[2])} } & { 32 {SEL[1]} } & { 32 {~SEL[0]} } & TWO) |
        ({ 32 {~(SEL[2])} } & { 32 {SEL[1]} } & { 32 {SEL[0]} } & THREE) |
        ({ 32{SEL[2]} } & { 32 {~SEL[1]} } & { 32 {~SEL[0]} } & FOUR) |
        ({ 32{SEL[2]} } & { 32 {~SEL[1]} } & { 32 {SEL[0]} } & FIVE) |
        ({ 32{SEL[2]} } & { 32 {SEL[1]} } & { 32 {~SEL[0]} } & SIX) |
        ({ 32{SEL[2]} } & { 32 {SEL[1]} } & { 32 {SEL[0]} } & SEVEN);

endmodule
