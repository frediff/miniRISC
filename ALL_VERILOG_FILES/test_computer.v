`timescale 1ns / 10ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:51:41 11/04/2022
// Design Name:   RISC_COMPUTER
// Module Name:   D:/upsc/KGP_RISC_GR_10/test_computer.v
// Project Name:  KGP_RISC_GR_10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RISC_COMPUTER
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_computer;

	// Inputs
	reg CLK;
	reg RST;
	reg HLT;
	reg [11:0] DBG_ADDR;

	// Outputs
	wire [31:0] DATA;
	wire [31:0] DBG;
	wire [31:0] DBG_PC;

	// wire [11:0] DBG_ADDR_INS;
	// wire [31:0] DATA_INS;

	// Instantiate the Unit Under Test (UUT)
	RISC_COMPUTER uut (
		.CLK(CLK), 
		.RST(RST), 
		.HLT(HLT), 
		.DBG_ADDR(DBG_ADDR), 
		.DATA(DATA)/*, 
		.DBG_ADDR_INS(DBG_ADDR_INS), 
		.DATA_INS(DATA_INS)*/
		,.DBG(DBG)
		,.DBG_PC(DBG_PC)
	);
	
	always #2 CLK = ~CLK;

	initial begin
		// Initialize Inputs
		CLK = 0;
		RST = 0;
		HLT = 0;
		
		#3
		RST = 1;
		
		#17;
		HLT = 1;
		/*
		#30
		DBG_ADDR = 0;
		*/
		#3
		DBG_ADDR = 31;
		#20
		DBG_ADDR = DBG_ADDR + 1;
		#20
		DBG_ADDR = DBG_ADDR + 1;
		#20
		DBG_ADDR = DBG_ADDR + 1;
		#20
		DBG_ADDR = DBG_ADDR + 1;
		#20
		DBG_ADDR = DBG_ADDR + 1;
		#20
		DBG_ADDR = DBG_ADDR + 1;
		#20
		DBG_ADDR = DBG_ADDR + 1;
		
		/*
		#30
		DBG_ADDR = 2;
		
		#30
		DBG_ADDR = 3;
		
		#30
		DBG_ADDR = 4;
		
		#30
		DBG_ADDR = 5;
		
		*/
		#19
		RST = 0;
		HLT = 0;

		// Wait 100 ns for global reset to finish
		#1401;
		HLT = 1;
		
		#30
		DBG_ADDR = 31;
		#20
		DBG_ADDR = DBG_ADDR + 1;
		#20
		DBG_ADDR = DBG_ADDR + 1;
		#20
		DBG_ADDR = DBG_ADDR + 1;
		#20
		DBG_ADDR = DBG_ADDR + 1;
		#20
		DBG_ADDR = DBG_ADDR + 1;
		#20
		DBG_ADDR = DBG_ADDR + 1;
		#20
		DBG_ADDR = DBG_ADDR + 1;
		
		/*
		#30
		DBG_ADDR = 15;
		
		#30
		DBG_ADDR = 2;
		
		#30
		DBG_ADDR = 3;
		
		#30
		DBG_ADDR = 4;
		
		#30
		DBG_ADDR = 5;
		*/
        
		// Add stimulus here

	end
      
endmodule
