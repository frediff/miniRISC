`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:58:21 11/04/2022 
// Design Name: 
// Module Name:    CONTROLLER 
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
module CONTROLLER(input [15:0] IR, //
                  input HLT, //
                  output SSW, //
                  output WR, //
                  output SS, //
                  output SPC, //
                  output [2:0] SC, // 
                  output [1:0] SB, //
                  output SA, //
                  output [2:0] OP, //
                  output DIFF, //
                  output [4:0] RTA, //
                  output [4:0] RSA, //
                  output WA, //
                  output WB); //
						
			
			reg SSREG;
			reg SSWREG;
			reg WRREG;
			reg SPCREG;
			reg [2:0] SCREG;
			reg WBREG;
			reg [1:0] SBREG;
			reg SAREG;
			
         assign RTA = IR[15:11];
         assign RSA = IR[10:6];
         assign OP = IR[2:0];
         assign WA = 0;
         assign DIFF = !(IR[0] | IR[1] | IR[2]);
			
         always @(HLT, IR[5:0]) begin
            case({HLT, IR[5:0]})
                7'b0000100   :  {SSREG, SSWREG, WRREG, SPCREG, SCREG[2:2], SCREG[1:1], SCREG[0:0], WBREG, SBREG[1:1], SBREG[0:0], SAREG} = 11'b00100000000; // add
                7'b0000010   :  {SSREG, SSWREG, WRREG, SPCREG, SCREG[2:2], SCREG[1:1], SCREG[0:0], WBREG, SBREG[1:1], SBREG[0:0], SAREG} = 11'b00100000000; // comp
                7'b0100100   :  {SSREG, SSWREG, WRREG, SPCREG, SCREG[2:2], SCREG[1:1], SCREG[0:0], WBREG, SBREG[1:1], SBREG[0:0], SAREG} = 11'b00100000100; // addi
                7'b0100010   :  {SSREG, SSWREG, WRREG, SPCREG, SCREG[2:2], SCREG[1:1], SCREG[0:0], WBREG, SBREG[1:1], SBREG[0:0], SAREG} = 11'b00100000100; // compi
                7'b0001000   :  {SSREG, SSWREG, WRREG, SPCREG, SCREG[2:2], SCREG[1:1], SCREG[0:0], WBREG, SBREG[1:1], SBREG[0:0], SAREG} = 11'b00100000000; // and (DIFF)
                7'b0000110   :  {SSREG, SSWREG, WRREG, SPCREG, SCREG[2:2], SCREG[1:1], SCREG[0:0], WBREG, SBREG[1:1], SBREG[0:0], SAREG} = 11'b00100000000; // xor (AND)
                7'b0000001   :  {SSREG, SSWREG, WRREG, SPCREG, SCREG[2:2], SCREG[1:1], SCREG[0:0], WBREG, SBREG[1:1], SBREG[0:0], SAREG} = 11'b00100000000; // shll(XOR)
                7'b0100101   :  {SSREG, SSWREG, WRREG, SPCREG, SCREG[2:2], SCREG[1:1], SCREG[0:0], WBREG, SBREG[1:1], SBREG[0:0], SAREG} = 11'b00100000100; // shra(SHLL)
                7'b0100011   :  {SSREG, SSWREG, WRREG, SPCREG, SCREG[2:2], SCREG[1:1], SCREG[0:0], WBREG, SBREG[1:1], SBREG[0:0], SAREG} = 11'b00100000100; // shrl(SHRL)
                7'b0100111   :  {SSREG, SSWREG, WRREG, SPCREG, SCREG[2:2], SCREG[1:1], SCREG[0:0], WBREG, SBREG[1:1], SBREG[0:0], SAREG} = 11'b00100000100; // shllv(SHRA)
                7'b0000101   :  {SSREG, SSWREG, WRREG, SPCREG, SCREG[2:2], SCREG[1:1], SCREG[0:0], WBREG, SBREG[1:1], SBREG[0:0], SAREG} = 11'b00100000000; // shrav(SHLLV)
                7'b0000011   :  {SSREG, SSWREG, WRREG, SPCREG, SCREG[2:2], SCREG[1:1], SCREG[0:0], WBREG, SBREG[1:1], SBREG[0:0], SAREG} = 11'b00100000000; // shllv(SHRLV)
                7'b0000111   :  {SSREG, SSWREG, WRREG, SPCREG, SCREG[2:2], SCREG[1:1], SCREG[0:0], WBREG, SBREG[1:1], SBREG[0:0], SAREG} = 11'b00100000000; // diff(SHRAV)
                7'b0101100   :  {SSREG, SSWREG, WRREG, SPCREG, SCREG[2:2], SCREG[1:1], SCREG[0:0], WBREG, SBREG[1:1], SBREG[0:0], SAREG} = 11'b01100000111; // lw
                7'b0001100   :  {SSREG, SSWREG, WRREG, SPCREG, SCREG[2:2], SCREG[1:1], SCREG[0:0], WBREG, SBREG[1:1], SBREG[0:0], SAREG} = 11'b00000001111; // sw
                7'b0110000   :  {SSREG, SSWREG, WRREG, SPCREG, SCREG[2:2], SCREG[1:1], SCREG[0:0], WBREG, SBREG[1:1], SBREG[0:0], SAREG} = 11'b00000010000; // b
                7'b0010000   :  {SSREG, SSWREG, WRREG, SPCREG, SCREG[2:2], SCREG[1:1], SCREG[0:0], WBREG, SBREG[1:1], SBREG[0:0], SAREG} = 11'b01010000000; // br
                7'b0110010   :  {SSREG, SSWREG, WRREG, SPCREG, SCREG[2:2], SCREG[1:1], SCREG[0:0], WBREG, SBREG[1:1], SBREG[0:0], SAREG} = 11'b11100010000; // bl
                7'b0110001   :  {SSREG, SSWREG, WRREG, SPCREG, SCREG[2:2], SCREG[1:1], SCREG[0:0], WBREG, SBREG[1:1], SBREG[0:0], SAREG} = 11'b00000100000; // bltz
                7'b0110110   :  {SSREG, SSWREG, WRREG, SPCREG, SCREG[2:2], SCREG[1:1], SCREG[0:0], WBREG, SBREG[1:1], SBREG[0:0], SAREG} = 11'b00001000000; // bz
                7'b0110111   :  {SSREG, SSWREG, WRREG, SPCREG, SCREG[2:2], SCREG[1:1], SCREG[0:0], WBREG, SBREG[1:1], SBREG[0:0], SAREG} = 11'b00000110000; // bnz
                7'b0110101   :  {SSREG, SSWREG, WRREG, SPCREG, SCREG[2:2], SCREG[1:1], SCREG[0:0], WBREG, SBREG[1:1], SBREG[0:0], SAREG} = 11'b00001010000; // bcy
                7'b0110011   :  {SSREG, SSWREG, WRREG, SPCREG, SCREG[2:2], SCREG[1:1], SCREG[0:0], WBREG, SBREG[1:1], SBREG[0:0], SAREG} = 11'b00001100000; // bncy
                default      :  {SSREG, SSWREG, WRREG, SPCREG, SCREG[2:2], SCREG[1:1], SCREG[0:0], WBREG, SBREG[1:1], SBREG[0:0], SAREG} = 11'b00000000000; // halt or undefined instruction                       
            endcase
         end 
			
			assign SS = SSREG;
			assign SSW = SSWREG;
			assign WR = WRREG;
			assign SPC = SPCREG;
			assign SC = SCREG;
			assign WB = WBREG;
			assign SB = SBREG;
			assign SA = SAREG;//AMAPADHANISA
endmodule
