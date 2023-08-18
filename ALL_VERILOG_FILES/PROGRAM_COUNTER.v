`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:01:29 11/04/2022 
// Design Name: 
// Module Name:    PROGRAM_COUNTER 
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
module PROGRAM_COUNTER(input CLK, input RST, input HLT, input [31:0] PC_IN, output [31:0] PC_OUT);
    
    reg [31:0] PC;
    
    initial begin
        PC = 32'b0;
    end
       
    always @ (negedge CLK)
        if(RST) PC = 32'b0;
		  else if(~HLT) PC = PC_IN;
		  // else exhibit latch behavior when HLT is on
    
    assign PC_OUT = PC;
    
endmodule
