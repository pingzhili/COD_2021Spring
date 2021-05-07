`timescale 1ns / 1ps


module FIFO(
        input [7:0]sw,
        input btn,
        input clk,
        output wire [7:0]led,
        output wire [2:0]an,
        output wire [3:0]seg
    );
    wire [2:0]ra0, ra1, wa;
    wire [3:0]rd0, rd1, wd;
    wire we;
    wire enq_edge;
    wire deq_edge;
    wire [7:0]valid;
    SEDG edg_enq(sw[7],clk, ,enq_edge);
    SEDG edg_deq(sw[6],clk, ,deq_edge);
    
    SDU Display(btn, clk, rd1, valid, ra1, an, seg);
    regfile_new regfile(clk, ra0, rd0, ra1, rd1, wa, we, wd);
    LCU ListControlUnit(sw[3:0], enq_edge, deq_edge, clk, rd0, btn, led[3:0], led[7], led[6], ra0, wa, wd, we, valid);
endmodule