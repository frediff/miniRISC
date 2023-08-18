`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:23:49 10/28/2022 
// Design Name: 
// Module Name:    RAM 
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

module MEM(
	input clk, 
	input wea, 
	input [31:0] dina,
	input [11:0] addra,
	output [31:0] douta,
	input web, 
	input [31:0] dinb,
	input [11:0] addrb,
	output [31:0] doutb
);


MEMORY BRAM_INSTANCE (
  .clka(clk), // input clka
  .wea(wea), // input [0 : 0] wea
  .addra(addra), // input [11 : 0] addra
  .dina(dina), // input [31 : 0] dina
  .douta(douta), // output [31 : 0] douta
  .clkb(clk), // input clkb
  .web(web), // input [0 : 0] web
  .addrb(addrb), // input [11 : 0] addrb
  .dinb(dinb), // input [31 : 0] dinb
  .doutb(doutb) // output [31 : 0] doutb
);

endmodule

