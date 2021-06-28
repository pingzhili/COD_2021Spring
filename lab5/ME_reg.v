`timescale 1ns / 1ps 

module ME_reg(
           input      clk,
           input      en,
           input      clear,
           input      [31: 0] alu_out_EX,
           output reg [31: 0] alu_out_ME,
           input      [31: 0] forward_data2,
           output reg [31: 0] store_data_ME,
           input      [4: 0] rd_EX,
           output reg [4: 0] rd_ME,
           input      [31: 0] pc_EX, 
           output reg [31: 0] pc_ME,
           input      [2: 0] reg_write_EX,
           output reg [2: 0] reg_write_ME,
           input      mem_to_reg_EX,
           output reg mem_to_reg_ME,
           input      [3: 0] mem_write_EX,
           output reg [3: 0] mem_write_ME,
           input      ld_nextpc_EX,
           output reg ld_nextpc_ME
       );
initial
begin
    alu_out_ME = 0;
    store_data_ME = 0;
    rd_ME = 5'h0;
    pc_ME = 0;
    reg_write_ME = 3'h0;
    mem_to_reg_ME = 1'b0;
    mem_write_ME = 4'b0;
    ld_nextpc_ME = 0;
end

always@(posedge clk)
    if (en) begin
        alu_out_ME <= clear ? 32'b0 : alu_out_EX;
        store_data_ME <= clear ? 0 : forward_data2;
        rd_ME <= clear ? 5'b0 : rd_EX;
        pc_ME <= clear ? 1'b0 : pc_EX;
        reg_write_ME <= clear ? 3'b0 : reg_write_EX;
        mem_to_reg_ME <= clear ? 1'b0 : mem_to_reg_EX;
        mem_write_ME <= clear ? 4'b0 : mem_write_EX;
        ld_nextpc_ME <= clear ? 1'b0 : ld_nextpc_EX;
    end

endmodule
