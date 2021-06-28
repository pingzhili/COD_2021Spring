`timescale 1ns / 1ps 

module WB_reg(
           input clk,
           input en,
           input clear,
           input      [31: 0] addr,
           input      [31: 0] w_data,
           input      [3: 0] w_en,
           output wire [31: 0] rd_data,
           output reg [1: 0] ld_bytes_select,
           input      [31: 0] result_ME,
           output reg [31: 0] result_WB,
           input      [4: 0] rd_ME,
           output reg [4: 0] rd_WB,
           input      [2: 0] reg_write_ME,
           output reg [2: 0] reg_write_WB,
           input      mem_to_reg_ME,
           output reg mem_to_reg_WB
       );
reg stall_ff;
reg clear_ff;
reg [31: 0] rd_data_old;
wire [31: 0] rd_data_new;
initial
begin
    ld_bytes_select = 2'b00;
    reg_write_WB = 1'b0;
    mem_to_reg_WB = 1'b0;
    result_WB = 0;
    rd_WB = 5'b0;
    stall_ff = 1'b0;
    clear_ff = 1'b0;
    rd_data_old = 32'b0;
end

always@(posedge clk) begin
    if (en) begin
        ld_bytes_select <= clear ? 2'b00 : [1 : 0];
        reg_write_WB <= clear ? 1'b0 : reg_write_ME;
        mem_to_reg_WB <= clear ? 1'b0 : mem_to_reg_ME;
        result_WB <= clear ? 0 : result_ME;
        rd_WB <= clear ? 5'b0 : rd_ME;
    end
end

always @ (posedge clk)
begin
    stall_ff <= ~en;
    clear_ff <= clear;
    rd_data_old <= rd_data_new;
end

assign rd_data = stall_ff ? rd_data_old : (clear_ff ? 32'b0 : rd_data_new );

Data_Mem Data_Mem (
            .clk (clk),
            .we (w_en << addr[1: 0]),
            .addr (addr[31: 2]),
            .din (w_data << (8 * addr[1: 0])),
            .dout (rd_data_new)
        );
endmodule
