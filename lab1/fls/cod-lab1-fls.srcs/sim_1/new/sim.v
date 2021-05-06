`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/05 21:22:13
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
    reg clk,rst,en;
    reg [6:0]d;
    wire [6:0]f;
    fls fls(.clk(clk),.rst(rst),.en(en),.d(d),.f(f));
   
    initial begin
    clk=0;
    repeat(100)begin
        #4 clk=~clk;
        end
    end
    
    initial begin
    rst=0;
    #3 rst=1;
    #5 rst=0;
    end
    
    initial begin
    d = 7'b0000010;
    #18 d=7'b0000011;
    end
    
    initial begin
    en=1;
    #13 en=0;
    #18 en=1;
    end
    
endmodule
