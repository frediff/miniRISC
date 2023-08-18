`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:17:03 10/26/2022
// Design Name:   ONE_BIT_TWO_TO_ONE_MUX
// Module Name:   D:/upsc/KGP_RISC_GR_10/test_mux_1.v
// Project Name:  KGP_RISC_GR_10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ONE_BIT_TWO_TO_ONE_MUX
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_mux_1;

	// Inputs
	reg SEL;
	reg IFTRUE;
	reg IFFALSE;

	// Outputs
	wire OUT;

	// Instantiate the Unit Under Test (UUT)
	ONE_BIT_TWO_TO_ONE_MUX uut (
		.SEL(SEL), 
		.IFTRUE(IFTRUE), 
		.IFFALSE(IFFALSE), 
		.OUT(OUT)
	);

	initial begin
		// Initialize Inputs
		SEL = 0;
		IFTRUE = 0;
		IFFALSE = 0;
	
		// Wait 100 ns for global reset to finish 
		#100;
		SEL = 0;
		IFTRUE = 1;
		IFFALSE = 1;
        
		// Add stimulus here

	end
      
endmodule

