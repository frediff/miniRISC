`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:10:18 11/04/2022
// Design Name:   CONTROLLER
// Module Name:   D:/upsc/KGP_RISC_GR_10/test_controller.v
// Project Name:  KGP_RISC_GR_10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CONTROLLER
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_controller;

	// Inputs
	reg [15:0] IR;
	reg HLT;

	// Outputs
	wire SSW;
	wire WR;
	wire SS;
	wire SPC;
	wire [2:0] SC;
	wire [1:0] SB;
	wire SA;
	wire [2:0] OP;
	wire DIFF;
	wire [4:0] RTA;
	wire [4:0] RSA;
	wire WA;
	wire WB;

	// Instantiate the Unit Under Test (UUT)
	CONTROLLER uut (
		.IR(IR), 
		.HLT(HLT), 
		.SSW(SSW), 
		.WR(WR), 
		.SS(SS), 
		.SPC(SPC), 
		.SC(SC), 
		.SB(SB), 
		.SA(SA), 
		.OP(OP), 
		.DIFF(DIFF), 
		.RTA(RTA), 
		.RSA(RSA), 
		.WA(WA), 
		.WB(WB)
	);

	initial begin
		// Initialize Inputs
		IR = 0;
		HLT = 0;

		// Wait 100 ns for global reset to finish
		#100;
		IR = 16'b1010010100100100;
        
		// Add stimulus here

	end
      
endmodule

