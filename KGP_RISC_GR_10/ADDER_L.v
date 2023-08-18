`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:56:30 11/04/2022 
// Design Name: 
// Module Name:    ADDER_L 
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
module ADDER_L(input [31:0] PC, input [15:0] L, output [31:0] PC_L);
    
    assign PC_L = PC + {{16{L[15]}}, L};
    
endmodule

