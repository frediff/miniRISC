`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:37:55 10/21/2022 
// Design Name: 
// Module Name:    THIRTY_TWO_BIT_TWO_TO_ONE_MUX 
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
module MUX232(input SEL, input [31:0] ZERO, input [31:0] ONE, output [31:0] OUT);
    
    assign OUT = ({32{~(SEL)}} & ZERO) | ({32{SEL}} & ONE);
    
endmodule

