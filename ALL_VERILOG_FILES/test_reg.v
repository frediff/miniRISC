`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:32:55 10/28/2022
// Design Name:   REGISTER_FILE
// Module Name:   D:/upsc/KGP_RISC_GR_10/test_reg.v
// Project Name:  KGP_RISC_GR_10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: REGISTER_FILE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_reg;

	// Inputs
	reg [4:0] RSA;
	reg [4:0] RTA;
	reg WR;
	reg CLK;
	reg [31:0] RSW;

	// Outputs
	wire [31:0] RSR;
	wire [31:0] RTR;

	// Instantiate the Unit Under Test (UUT)
	REGISTER_FILE uut (
		.RSA(RSA), 
		.RTA(RTA), 
		.WR(WR), 
		.CLK(CLK), 
		.RSW(RSW), 
		.RSR(RSR), 
		.RTR(RTR)
	);
	
	always #10 CLK = ~CLK;

	initial begin
		// Initialize Inputs
		RSA = 0;
		RTA = 0;
		WR = 1;
		CLK = 1;
		RSW = 32'd56;
		
		// Wait 100 ns for global reset to finish
		
		#20
		RSA = 5'd1;
		RSW = 32'd64;
		RTA = 5'd0;
		
		#20
		RSA = 5'd19;
		RSW = 32'd213142345;
		
		#8
		RTA = 1;
		
		
		
		
        
		// Add stimulus here

	end
      
endmodule

