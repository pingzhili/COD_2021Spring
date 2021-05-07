`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/12 22:17:41
// Design Name: 
// Module Name: dist_mem_sim
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


module dist_mem_sim(

    );
reg clk, we;
reg [ 3: 0 ] a;
reg [ 7: 0 ] d;
wire [ 7: 0 ] spo;
dist_mem_gen_0 dist_sim(a, d, clk, we, spo);
parameter PERIOD = 10,    	//time per cycle
          CYCLE = 20;		//total cycles
initial
  begin
    clk = 0;
    repeat ( 3 * CYCLE )
      #( PERIOD / 2 ) clk = ~clk;
    $finish;
  end
initial
  begin
    a = 4'h0;
    d = 8'hff;
    we = 0;

    #PERIOD;
    a = 4'h2;
    d = 8'hf5;
    we = 1;
    #PERIOD;
    we = 0;
    a = 4'h0;
    d = 8'h5a;

    #PERIOD;
    a = 4'h1;
    d = 8'h00;
    we = 1;
    #PERIOD;
    a = 4'h1;
    d = 8'h11;
    we = 0;
    #PERIOD;
    a = 4'h3;
    d = 8'hcc;
    we = 1;
    #PERIOD;
    $finish;
  end
endmodule
