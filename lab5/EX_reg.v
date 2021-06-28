`timescale 1ns / 1ps 


module EX_reg(
           input clk,
           input en,
           input clear,
           input [31: 0]      pc_ID,
           output reg [31: 0] pc_EX,
           input [31: 0]      jal_nextpc,
           output reg [31: 0] branch_nextpc, 
           input [31: 0]      imm_ID,
           output reg [31: 0] imm_EX,
           input [4: 0]       rd_ID,
           output reg [4: 0]  rd_EX,
           input [4: 0]       rs1_ID,
           output reg [4: 0]  rs1_EX,
           input [4: 0]       rs2_ID,
           output reg [4: 0]  rs2_EX,
           input [31: 0]      reg_out1_ID,
           output reg [31: 0] reg_out1_EX,
           input [31: 0]      reg_out2_ID,
           output reg [31: 0] reg_out2_EX,
           input              jalr_ID,
           output reg         jalr_EX,
           input [2: 0] reg_write_ID,
           output reg [2: 0]  reg_write_EX,
           input              mem_to_reg_ID,
           output reg         mem_to_reg_EX,
           input [3: 0]       mem_write_ID,
           output reg [3: 0]  mem_write_EX,
           input              ld_nextpc_ID,
           output reg         ld_nextpc_EX,
           input [1: 0]       reg_read_ID,
           output reg [1: 0]  reg_read_EX,
           input [2: 0]       branch_type_ID,
           output reg [2: 0]  branch_type_EX,
           input [4: 0]       alu_f_ID,
           output reg [4: 0]  alu_f_EX,
           input              alu_src1_ID,
           output reg         alu_src1_EX,
           input [1: 0]       alu_src2_ID,
           output reg [1: 0]  alu_src2_EX
       );
initial begin
    pc_EX = 32'b0;
    branch_nextpc = 32'b0;
    imm_EX = 32'b0;
    rd_EX = 32'b0;
    rs1_EX = 5'b0;
    rs2_EX = 5'b0;
    reg_out1_EX = 32'b0;
    reg_out2_EX = 32'b0;
    jalr_EX = 1'b0;
    reg_write_EX = 1'b0;
    mem_to_reg_EX = 1'b0;
    mem_write_EX = 1'b0;
    ld_nextpc_EX = 1'b0;
    reg_read_EX = 2'b00;
    branch_type_EX = 3'b0;
    alu_f_EX = 5'b0;
    alu_src1_EX = 1'b0;
    alu_src2_EX = 2'b0;
end

always@(posedge clk) begin
    if (en)
        if (clear)
        begin
            pc_EX <= 32'b0;
            branch_nextpc <= 32'b0;
            imm_EX <= 32'b0;
            rd_EX <= 32'b0;
            rs1_EX <= 5'b0;
            rs2_EX <= 5'b0;
            reg_out1_EX <= 32'b0;
            reg_out2_EX <= 32'b0;
            jalr_EX <= 1'b0;
            reg_write_EX <= 1'b0;
            mem_to_reg_EX <= 1'b0;
            mem_write_EX <= 1'b0;
            ld_nextpc_EX <= 1'b0;
            reg_read_EX <= 2'b00;
            branch_type_EX = 3'b0;
            alu_f_EX <= 5'b0;
            alu_src1_EX <= 1'b0;
            alu_src2_EX <= 2'b0;
        end 
        else begin
            pc_EX <= pc_ID;
            branch_nextpc <= jal_nextpc;
            imm_EX <= imm_ID;
            rd_EX <= rd_ID;
            rs1_EX <= rs1_ID;
            rs2_EX <= rs2_ID;
            reg_out1_EX <= reg_out1_ID;
            reg_out2_EX <= reg_out2_ID;
            jalr_EX <= jalr_ID;
            reg_write_EX = reg_write_ID;
            mem_to_reg_EX <= mem_to_reg_ID;
            mem_write_EX <= mem_write_ID;
            ld_nextpc_EX <= ld_nextpc_ID;
            reg_read_EX <= reg_read_ID;
            branch_type_EX = branch_type_ID;
            alu_f_EX <= alu_f_ID;
            alu_src1_EX <= alu_src1_ID;
            alu_src2_EX <= alu_src2_ID;
    end
end

endmodule
