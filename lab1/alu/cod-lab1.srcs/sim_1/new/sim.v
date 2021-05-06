`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/05 20:39:27
// Design Name: 
// Module Name: sim
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


module sim(
    );
    reg clk;
    reg [5:0]a,b;
    reg [2:0]f;
    wire [5:0]y;
    wire z;
    alu alu(a,b,f,y.z);
    initial begin
    clk = 0; 
    a = 6'b000101;
    b = 6'b001001;
    f = 3'b000;
    end
    always  #5 clk =~clk;
    initial begin
    #20 f=3'b001;
    #40 f=3'b010;
    #60 f=3'b011;
    #80 f=3'b100;
    end
    
endmodule
