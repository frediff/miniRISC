`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:35:31 10/21/2022 
// Design Name: 
// Module Name:    ONE_BIT_TWO_TO_ONE_MUX 
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
module MUX21(input SEL, input IFTRUE, input IFFALSE, output OUT);
	
	wire T, F, NOTSEL;
	
	not N0(NOTSEL, SEL);
	and A0(T, SEL, IFTRUE);
	and A1(F, NOTSEL, IFFALSE);
	or O0(OUT, T, F);

endmodule
