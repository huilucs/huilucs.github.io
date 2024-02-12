//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2024 01:42:24 PM
// Design Name: 
// Module Name: inst_fetch
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module inst_fetch(
    input wire  clk,
    input wire  rst,
    output  wire[31:0]  inst_o
    );
    
    wire[5:0]   pc;
    wire        rom_ce;
    
    pc_reg  pc_reg0(
        .clk(clk),
        .rst(rst),
        .pc(pc),
        .ce(rom_ce)
        );
        
    rom rom0(
        .ce(rom_ce),
        .addr(pc),
        .inst(inst_o)
        );
endmodule
