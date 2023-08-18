`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:28:19 10/28/2022
// Design Name:   MEM
// Module Name:   D:/upsc/KGP_RISC_GR_10/MEMORY_TEST.v
// Project Name:  KGP_RISC_GR_10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MEM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MEMORY_TEST;

	// Inputs
	reg clk;
	reg wea;
	reg [31:0] dina;
	reg [12:0] addra;
	reg web;
	reg [31:0] dinb;
	reg [12:0] addrb;

	// Outputs
	wire [31:0] douta;
	wire [31:0] doutb;

	// Instantiate the Unit Under Test (UUT)
	MEM uut (
		.clk(clk), 
		.wea(wea), 
		.dina(dina), 
		.addra(addra), 
		.douta(douta), 
		.web(web), 
		.dinb(dinb), 
		.addrb(addrb), 
		.doutb(doutb)
	);
	
	initial begin
		clk <= 0;
	end
	
	always #10 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		wea = 0;
		dina = 0;
		addra = 0;
		web = 0;
		dinb = 0;
		addrb = 2;

		#10;
		addra <= 13'd6;
		
		#20
		addra <= 13'd3;
		
		#30
		addra <= 13'd6;
		dina <= 57;
		wea <= 1;
		
		#10
		wea <= 0;
		
		#10
		addra <= 13'd7;
		
		#10
		addra <= 13'd6;

	end
      
endmodule

