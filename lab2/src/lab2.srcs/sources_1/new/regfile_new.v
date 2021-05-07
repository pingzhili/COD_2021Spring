`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/12 23:38:28
// Design Name: 
// Module Name: regfile_new
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


module regfile_new 
       #( parameter WIDTH = 4 ) (
         input clk, //clock
         input [2: 0] ra0, //read address 0
         output [WIDTH - 1: 0] rd0, //read data 0
         input [2: 0] ra1, //read address 1
         output [WIDTH - 1: 0] rd1, //read data 1
         input [2: 0] wa, //write address
         input we, //write enable
         input [WIDTH - 1: 0] wd //write data
       );
reg [WIDTH - 1: 0] mem[0: 7];
  
assign rd0 = mem[ra0];
assign rd1 = mem[ra1];
  
always @( posedge clk )
begin
  if (we)
    begin
      mem[ wa ] <= wd;
    end
end
endmodule
