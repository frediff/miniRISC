`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:14:37 10/21/2022 
// Design Name: 
// Module Name:    THIRTY_TWO_BIT_ADDER 
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
module THIRTY_TWO_BIT_ADDER(input [31:0] A, input [31:0] B, output [31:0] SUM, output C);
    
    wire C16;
    wire C00;

    assign C00 = 1'b0;

    SIXTEEN_BIT_CARRY_LOOK_AHEAD_ADDER A1(.A(A[15:0]), .B(B[15:0]), .SUM(SUM[15:0]), .C0(C00), .COUT(C16));
    SIXTEEN_BIT_CARRY_LOOK_AHEAD_ADDER A2(.A(A[31:16]), .B(B[31:16]), .SUM(SUM[31:16]), .C0(C16), .COUT(C));

endmodule
