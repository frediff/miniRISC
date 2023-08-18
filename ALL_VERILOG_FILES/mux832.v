`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:08 10/28/2022 
// Design Name: 
// Module Name:    mux832 
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
module mux832(input [2:0] sel,
             input [31:0] n0,
             input [31:0] n1,
             input [31:0] n2,
             input [31:0] n3,
             input [31:0] n4,
             input [31:0] n5,
             input [31:0] n6,
             input [31:0] n7,
             output [31:0] res);
    
    
    assign res= ({ 32 {~(sel[2])} } & { 32 {~sel[1]} } & { 32 {~sel[0]} } & n0) |
        ({ 32 {~(sel[2])} } & { 32 {~sel[1]} } & { 32 {sel[0]} } & n1 ) |
        ({ 32 {~(sel[2])} } & { 32 {sel[1]} } & { 32 {~sel[0]} } & n2) |
        ({ 32 {~(sel[2])} } & { 32 {sel[1]} } & { 32 {sel[0]} } & n3 ) |
        ({ 32{sel[2]} } & { 32 {~sel[1]} } & { 32 {~sel[0]} } & n4 ) |
        ({ 32{sel[2]} } & { 32 {~sel[1]} } & { 32 {sel[0]} } & n5 ) |
        ({ 32{sel[2]} } & { 32 {sel[1]} } & { 32 {~sel[0]} } & n6 ) |
        ({ 32{sel[2]} } & { 32 {sel[1]} } & { 32 {sel[0]} } & n7 );
    
endmodule
