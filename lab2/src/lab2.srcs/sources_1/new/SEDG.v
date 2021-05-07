`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/12 22:58:08
// Design Name: 
// Module Name: SEDG
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


module SEDG(
        input a,
        input clk,
        output reg s,
        output wire p
    );
    reg st,pt;
    always@(posedge clk)begin
        if(a)begin
            st <= 1;
        end 
        else begin
            st <= 0;
        end
    end
    always@(posedge clk)begin
        if(st)begin
            s <= 1;
        end
        else begin
            s <= 0;
        end
    end
    always@(posedge clk)begin
        if(s)begin
            pt <= 1;
        end
        else begin
            pt <= 0;
        end
    end
    assign p = (~pt) & s;
endmodule
