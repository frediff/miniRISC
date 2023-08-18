`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:18:06 10/26/2022
// Design Name:   ALU_STRUCTURAL
// Module Name:   D:/upsc/KGP_RISC_GR_10/test.v
// Project Name:  KGP_RISC_GR_10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_STRUCTURAL
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg DIFF;
	reg [2:0] OP;

	// Outputs
	wire [31:0] RES;
	wire CY;

	// Instantiate the Unit Under Test (UUT)
	ALU_STRUCTURAL uut (
		.A(A), 
		.B(B), 
		.DIFF(DIFF), 
		.OP(OP), 
		.RES(RES),
		.CY(CY)
	);
	
	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		DIFF = 0;
		OP = 0;

		// Wait 100 ns for global reset to finish
		#10;
 
		// Add stimulus here
		A <= -2147483648;
		B <= 0;
		DIFF <= 1;
		OP <= 0;
		
		//AND
		#10
		A <= 35230;
		B <= 3;
		DIFF <= 0;
		OP <= 4;
		
		#10
		A <= 335230;
		B <= 30;
		DIFF <= 0;
		OP <= 2;
		
		#10
		A <= 2000000009;
		B <= 3;
		DIFF <= 0;
		OP <= 6;
				
		
		//XOR
		#10
		A <= 35230;
		B <= 3;
		DIFF <= 0;
		OP <= 3;
		
		#10
		A <= 3532230;
		B <= 5;
		DIFF <= 0;
		OP <= 1;
		
		#10
		A <= 5;
		B <= 1;
		DIFF <= 0;
		OP <= 5;
		
		#10
		A <= -2000000009;
		B <= 3;
		DIFF <= 0;
		OP <= 7;
		
		#10
		A <= -4000000009;
		B <= 4;
		DIFF <= 1;
		OP <= 0;
	
		#10
		A <= -4000000009;
		B <= 2;
		DIFF <= 0;
		OP <= 0;
		
				
		//2's COMP
		#10
		A <= 1135230;
		B <= 4;
		DIFF <= 0;
		OP <= 7;
		
		#10
		A <= -1135230;
		B <= 4;
		DIFF <= 0;
		OP <= 7;
		
		#10
		A <= 35230;
		B <= 3;
		DIFF <= 0;
		OP <= 7;
		
		#10
		A <= 5;
		B <= 1;
		DIFF <= 0;
		OP <= 7;
								
		#10
		A <= 2000000009;
		B <= 5;
		DIFF <= 0;
		OP <= 7;
				
		#10
		A <= -2000000009;
		B <= 2;
		DIFF <= 0;
		OP <= 7;
				
		#10
		A <= -2000000009;
		B <= 10;
		DIFF <= 0;
		OP <= 7;

	end
      
endmodule

