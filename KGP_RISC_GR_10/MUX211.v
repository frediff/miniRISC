`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:51:31 11/07/2022 
// Design Name: 
// Module Name:    MUX211 
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
module MUX212(input SEL, input [11:0] ZERO, input [11:0] ONE, output [11:0] OUT);
    
    assign OUT = ({12{~(SEL)}} & ZERO) | ({12{SEL}} & ONE);
    
endmodule
