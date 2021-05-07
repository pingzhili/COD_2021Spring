`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/12 22:56:53
// Design Name: 
// Module Name: LCU
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


module LCU(
        input [3:0]in,
        input enq,//enqueue signal, only in one period
        input deq,//dequeue signal, only in one period
        input clk,
        input [3:0]rd0,
        input rst,
        output reg [3:0]out,
        output wire full,
        output wire emp,
        output wire [2:0]ra,
        output wire [2:0]wa,
        output wire [3:0]wd,
        output wire we,
        output reg [7:0] valid//valid tag,valid[i] corresponding to state of reg[i]
    );
  reg [2:0] head,tail;//poninter to head and tail
  reg [3:0] count;
  assign we = enq;
  assign ra = head;
  assign wa = tail;
  assign wd = in;
  

  always @( posedge clk )
  begin
    if(rst)begin
        valid <= 8'b0;
        head <= 3'b0;
        tail <= 3'b0;
        count <= 4'd0;
        out <= 4'd0;
    end
    else if(enq)begin
        if(~full)begin
            valid[tail] <= 1;
            tail <= tail + 3'd1;
            count <= count + 1;
        end else begin end
    end
    else if(deq)begin
        if(~emp)begin
            valid[head] <= 0;
            head <= head + 3'd1;
            out <= rd0;
            count <= count - 1;
        end else begin end
    end else begin end 
  end
  
  assign full = (count == 4'h8)?1:0;
  assign emp = (count == 4'd0)?1:0; 
  
  
  
endmodule
