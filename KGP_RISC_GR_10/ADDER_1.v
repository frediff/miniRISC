`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:55:39 11/04/2022 
// Design Name: 
// Module Name:    ADDER_1 
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
module ADDER_1(input [31:0] PC, output [31:0] PC_1);
    
    assign PC_1 = PC + 32'd1;
    
endmodule
