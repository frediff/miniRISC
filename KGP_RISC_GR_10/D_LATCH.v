`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:16:28 10/26/2022 
// Design Name: 
// Module Name:    D_LATCH 
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
module D_LATCH(input MOD, input IN, output OUT);
	wire NOTD, OUT_BAR, T1, T2;
	
	not N(NOTD, IN);
	nand N1(T1, IN, MOD);
	nand N2(T2, NOTD, MOD);
	nand N3(OUT, T1, OUT_BAR);
	nand N4(OUT_BAR, T2, OUT);
endmodule
