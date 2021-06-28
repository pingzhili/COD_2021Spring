`timescale 1ns / 1ps 

module ID_reg(
           input clk,
           input clear,
           input en,
           input [31: 0] rd_addr,
           output wire [31: 0] rd_data,
           input [31: 0] pc_IF,
           output reg [31: 0] pc_ID
       );
wire [31: 0] rd_data_temp;
wire [11: 0] addr_in;
reg [31: 0] rd_data_old;
reg stall_ff;
reg clear_ff;
assign addr_in[11: 0] = rd_addr[13: 2];
initial begin 
    pc_ID = 0;
    stall_ff = 0;
    clear_ff = 0;
    rd_data_old = 32'b0;
end
Instr_Mem Instr_Mem(
                   .clk  (clk),                        
                   .a    (addr_in),                      
                   .spo  (rd_data_temp),
               );

always@(posedge clk) begin
    if (en)
        pc_ID <= clear ? 0 : pc_IF;
end
always @ (posedge clk)
begin
    stall_ff <= ~en;
    clear_ff <= clear;
    rd_data_old <= rd_data_temp;
end
assign rd_data = stall_ff ? rd_data_old : (clear_ff ? 32'b0 : rd_data_temp );

endmodule
