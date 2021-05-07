`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/12 20:39:15
// Design Name: 
// Module Name: regfile_sim
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


module regfile_sim(

    );
reg clk, we;
reg [4: 0] ra0, ra1, wa;
wire [31: 0] rd0, rd1, wd;
register_file
  #( 32 ) rf(
    clk,
    ra0,
    rd0,
    ra1,
    rd1, 
    wa,
    we, 
    wd 
  );
reg [ 31: 0 ] wd_r;
assign wd = wd_r;
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
    ra0 = 5'b0;     
    ra1 = 5'b0011;
    wa = 5'b1;
    we = 0;

    #PERIOD;
    wa = 5'b0;
    wd_r = 32'b1;
    we = 1;
    ra1 = 5'd31;
    #(PERIOD/2);
    ra0=5'd4;
    ra1=5'd16;
    #(PERIOD/2);
    
    #PERIOD;
    wa = 5'b1;
    wd_r = 32'ha5a5;
    we = 1;
    ra0 = 5'b1;
    ra1 = 5'd30;
    #PERIOD;
    wa = 5'd4;
    wd_r = 32'b1;
    we = 1;
    ra1 = 5'd31;
    ra0 = 5'd24;
    #PERIOD;
    wa = 5'b1;
    wd_r = 32'hffff;
    we = 1;
    ra0 = 5'd11;
    ra1 = 5'd13;
    #PERIOD;
    $finish;
  end
endmodule

