`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:15:08 10/26/2022
// Design Name:   THIRTY_TWO_BIT_TWO_TO_ONE_MUX
// Module Name:   D:/upsc/KGP_RISC_GR_10/test_mux.v
// Project Name:  KGP_RISC_GR_10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: THIRTY_TWO_BIT_TWO_TO_ONE_MUX
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_mux;

	// Inputs
	reg SEL;
	reg [31:0] IFTRUE;
	reg [31:0] IFFALSE;

	// Outputs
	wire [31:0] OUT;

	// Instantiate the Unit Under Test (UUT)
	THIRTY_TWO_BIT_TWO_TO_ONE_MUX uut (
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
		SEL <= 0;
		IFTRUE <= 4;
		IFFALSE <= 2;
		
		#100;		
		SEL <= 1;
		IFTRUE <= 3;
		IFFALSE <= 12;
		
		#100;		
		SEL <= 0;
		IFTRUE <= 3;
		IFFALSE <= 12;


		#100;		
		SEL <= 1;
		IFTRUE <= 4;
		IFFALSE <= 2;


		#100;		
		SEL <= 0;
		IFTRUE <= 555;
		IFFALSE <= 555;

		#100;		
		SEL <= 1;
		IFTRUE <= 1;
		IFFALSE <= 7;

        
		// Add stimulus here

	end
      
endmodule

