`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2024 12:35:20 PM
// Design Name: 
// Module Name: inv
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

module inv;
  reg           CLOCK_50;
  reg           rst;
  wire[31:0]    inst;
   
  initial begin
       CLOCK_50 = 1'b0;
       forever #10 CLOCK_50 = ~CLOCK_50;
  end
  
  initial begin
       rst = 1'b1;
       #195 rst = 1'b0;
       #1000    $stop;
  end
  
  inst_fetch inst_fetch_inst0(
        .clk(CLOCK_50),
        .rst(rst),
        .inst_o(inst)
        );
endmodule
