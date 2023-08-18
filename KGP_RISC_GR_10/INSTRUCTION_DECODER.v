`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:00:16 10/28/2022 
// Design Name: 
// Module Name:    INSTRUCTION_DECODER 
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
module INSTRUCTION_DECODER(input [5:0]  OP,
									output SA,
									output [1:0] SB,
									output [2:0] ALUOP,
									output DIFF,
									output [2:0] SC,
									output WA,
									output WB,
									output WR,
									output SSW,
									output SS,
									output SPC
									);
	
	assign WA = 0;

	assign SB = 2'b00;
	assign ALUOP = 3'b001;
	assign DIFF = 0;
	assign SC = 3'b000;
	assign WB = 0;
	assign WR = 1;
	assign SSW = 0;
	assign SPC = 0;
	
	always @ *
		begin
			casex (OP)
				6'b001000: 
									assign SA = 0;/*
									assign SB = 2'b00;
									assign ALUOP = 3'b001;
									assign DIFF = 0;
									assign SC = 3'b000;
									assign WB = 0;
									assign WR = 1;
									assign SSW = 0;
									assign SPC = 0;*/
				default		:  assign SA = 0;
			endcase
		end
			

endmodule
