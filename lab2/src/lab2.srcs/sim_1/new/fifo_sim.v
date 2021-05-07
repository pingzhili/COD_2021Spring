`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/13 21:08:58
// Design Name: 
// Module Name: fifo_sim
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


module fifo_sim(

    );
    reg clk;
    reg [7:0]sw;
    reg btn;
    wire [7:0]led;
    wire [2:0]an;
    wire [3:0]seg;
    
    FIFO fifo(sw, btn, clk, led, an, seg);
    
    parameter PERIOD = 10,    
          CYCLE = 20;		
initial
  begin
    clk = 0;
    repeat ( 30 * CYCLE )
      #( PERIOD / 2 ) clk = ~clk;
    $finish;
  end
  

initial 
    begin
    sw <= 8'b0000_0000;
    btn = 1;
    
    #(PERIOD*4)
    btn = 0;
    
    #PERIOD;
    sw <= 8'b1000_1111;
    
    #(PERIOD*4);
    sw <= 8'b0000_0000;
    
    #PERIOD;
    sw <= 8'b1000_0111;
    
    #(PERIOD*4);
    sw <= 8'b0000_0000;
   
    #PERIOD;
    $finish;
    end
          
endmodule
