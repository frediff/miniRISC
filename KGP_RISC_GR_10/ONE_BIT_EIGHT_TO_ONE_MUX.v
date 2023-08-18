`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:05:07 11/04/2022 
// Design Name: 
// Module Name:    ONE_BIT_EIGHT_TO_ONE_MUX 
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
module MUX81(input [2:0] SEL, 
			 input ZERO, 
          input ONE, 
			 input TWO, 
			 input THREE, 
			 input FOUR, 
			 input FIVE, 
			 input SIX, 
			 input SEVEN, 
			 output OUT);
													
    

    
    assign OUT = (~(SEL[2]) & ~SEL[1] & ~SEL[0] & ZERO) |
        (~(SEL[2]) & ~SEL[1] & SEL[0] & ONE) |
        (~(SEL[2]) & SEL[1] & ~SEL[0] & TWO) |
        (~(SEL[2]) & SEL[1] & SEL[0] & THREE) |
        (SEL[2] & ~SEL[1] & ~SEL[0] & FOUR) |
        (SEL[2] & ~SEL[1] & SEL[0] & FIVE) |
        (SEL[2] & SEL[1] & ~SEL[0] & SIX) |
        (SEL[2] & SEL[1] & SEL[0] & SEVEN);

endmodule