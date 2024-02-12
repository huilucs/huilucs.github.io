//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2024 12:07:23 PM
// Design Name: 
// Module Name: pc_reg
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


module pc_reg(
    input wire      clk,
    input wire      rst,
    
    output reg[5:0] pc,
    output reg      ce
    );
    
    always @ (posedge clk) begin
        if (ce == 1'b0) begin
            pc <= 6'h00;
        end else begin
            pc <= pc + 1'b1;
        end
    end
    
    always @ (posedge clk) begin
        if (rst == 1'b1) begin
            ce <= 1'b0;
        end else begin
            ce <= 1'b1;
        end
    end
    
endmodule
