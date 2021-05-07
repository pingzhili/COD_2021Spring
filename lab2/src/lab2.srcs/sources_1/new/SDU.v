`timescale 1ns / 1ps


module SDU(
        input rst,
        input clk,
        input [3:0]rd,//read data
        input [7:0]valid,
        output wire [2:0]ra,//read address
        output wire [2:0]an,//segment address
        output wire [3:0]seg//segment data
    );

reg [23:0]count;
wire [3:0]x0;

assign x0 = 4'h0;
assign an = ra;
assign ra = count[15:13];

always@(posedge clk)
begin
    if(rst)begin
        count <= 24'd0;
    end else begin
        count <= count + 1;
    end
end    

assign seg=valid[ra]?rd:x0;
    
    
endmodule