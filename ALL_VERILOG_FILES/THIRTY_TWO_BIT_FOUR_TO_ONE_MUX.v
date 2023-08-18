`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:53:12 10/28/2022 
// Design Name: 
// Module Name:    THIRTY_TWO_BIT_FOUR_TO_ONE_MUX 
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
module MUX432( input [1:0] SEL,
					input [31:0] ZERO, 
					input [31:0] ONE, 
					input [31:0] TWO, 
					input [31:0] THREE, 
					output [31:0] OUT);
					
    assign OUT = ({ 32 {~SEL[1]} } & { 32 {~SEL[0]} } & ZERO) |
        ({ 32 {~SEL[1]} } & { 32 {SEL[0]} } & ONE) |
        ({ 32 {SEL[1]} } & { 32 {~SEL[0]} } & TWO) |
        ({ 32 {SEL[1]} } & { 32 {SEL[0]} } & THREE);

endmodule
