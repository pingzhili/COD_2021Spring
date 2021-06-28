`timescale 1ns / 1ps 

module cpu(
           input clk,
           input rst
       );

// parameter def
parameter RTYPE = 3'd0;
parameter ITYPE = 3'd1;
parameter STYPE = 3'd2;
parameter BTYPE = 3'd3;
parameter UTYPE = 3'd4;
parameter JTYPE = 3'd5;

parameter NOBRANCH = 3'd0;
parameter BEQ = 3'd1;
parameter BNE = 3'd2;
parameter BLT = 3'd3;
parameter BLTU = 3'd4;
parameter BGE = 3'd5;
parameter BGEU = 3'd6; 

parameter ADD = 4'd0;
parameter SUB = 4'd1;
parameter AND = 4'd2;
parameter OR = 4'd3;
parameter XOR = 4'd4;
parameter SLL = 4'd5;
parameter SRL = 4'd6;
parameter LUI = 4'd7; 

parameter NOREGWRITE = 3'b0;	
parameter LB  = 3'd1;			
parameter LH  = 3'd2;		
parameter LW  = 3'd3;	
parameter LBU = 3'd4;			
parameter LHU = 3'd5;

wire stall_IF, flush_IF, stall_ID, flush_ID, stall_EX, flush_EX, stall_ME, flush_ME, stall_WB, flush_WB;
wire [31: 0] instr, pc_in, pc_IF, pc_ID, pc_EX, pc_ME, reg_write_data, branch_nextpc, datamem_rd_data_ext,
             imm_EX, jal_nextpc, reg_out1_ID, reg_out1_EX, reg_out2_ID, reg_out2_EX, alu_a, alu_b, alu_out_EX,
              alu_out_ME, forward_data1, forward_data2, store_data_ME, datamem_rd_data, result_ME, result_WB;
wire signed [31: 0] alu_a_signed, alu_b_signed;
reg [31:0] imm_ID;
wire jal_ID, jalr_ID, ld_nextpc_ID, mem_to_reg_ID, jalr_EX, mem_to_reg_EX, ld_nextpc_EX, alu_src1_ID, alu_src1_EX, mem_to_reg_ME, ld_nextpc_ME, mem_to_reg_WB;
reg branch_EX;
wire [6: 0] op_ID, fn7_ID;
wire [2: 0] reg_write_ID, reg_write_EX, reg_write_ME, reg_write_WB, branch_type_ID, branch_type_EX, imm_type, fn3_ID;
wire [3: 0] mem_write_ID, mem_write_EX, mem_write_ME, alu_f_ID, alu_f_EX;
wire [1: 0] reg_read_ID, reg_read_EX, alu_src2_ID, alu_src2_EX, forward1_EX, forward2_EX, ld_bytes_select;
wire [4: 0] rd_WB, rs1_ID, rs2_ID, rd_ID, rs1_EX, rs2_EX, rd_EX, rd_ME;

assign {fn7_ID, rs2_ID, rs1_ID, fn3_ID, rd_ID, op_ID} = instr;
assign jal_nextpc = imm_ID + pc_ID;
assign forward_data1 = forward1_EX[1] ? (alu_out_ME) : ( forward1_EX[0] ? reg_write_data : reg_out1_EX );
assign forward_data2 = forward2_EX[1] ? (alu_out_ME) : ( forward2_EX[0] ? reg_write_data : reg_out2_EX );
assign alu_a = alu_src1_EX ? pc_EX : forward_data1;
assign alu_b = alu_src2_EX[1] ? (imm_EX) : ( alu_src2_EX[0] ? rs2_EX : forward_data2 );
assign result_ME = ld_nextpc_ME ? (pc_ME + 4) : alu_out_ME;
assign reg_write_data = ~mem_to_reg_WB ? result_WB : datamem_rd_data_ext;

assign alu_a_signed = $signed(alu_a);
assign alu_b_signed = $signed(alu_b);

// branch decide
always @(*) begin
    case (branch_type_EX)
        BEQ:
            branch_EX <= (alu_a == alu_b) ? 1'b1 : 1'b0;
        BNE:
            branch_EX <= (alu_a == alu_b) ? 1'b0 : 1'b1;
        BLT:
            branch_EX <= (alu_a_signed < alu_b_signed) ? 1'b1 : 1'b0;
        BLTU:
            branch_EX <= (alu_a < alu_b) ? 1'b1 : 1'b0;
        BGE:
            branch_EX <= (alu_a_signed >= alu_b_signed) ? 1'b1 : 1'b0;
        BGEU:
            branch_EX <= (alu_a >= alu_b) ? 1'b1 : 1'b0;
        default:
            branch_EX <= 1'b0;  
    endcase
end

// imm gen
always@(*)
begin
    case (imm_type)
        ITYPE:
            imm_ID <= {{21{instr[31]}}, instr[30: 20] };
        STYPE:
            imm_ID <= {{21{instr[31]}}, instr[30: 25], instr[11: 7]};
        BTYPE:
            imm_ID <= {{20{instr[31]}}, instr[7], instr[30: 25], instr[11: 8], 1'b0};
        UTYPE:
            imm_ID <= {instr[31: 12], 12'b0};
        JTYPE:
            imm_ID <= {{12{instr[31]}}, instr[19: 12], instr[20], instr[30: 21], 1'b0};                                  
        default:
            imm_ID <= 0;
    endcase
end
control control(
                .instr(instr),
                .jal_ID(jal_ID),
                .jalr_ID(jalr_ID),
                .reg_write_ID(reg_write_ID),
                .mem_to_reg_ID(mem_to_reg_ID),
                .mem_write_ID(mem_write_ID),
                .ld_nextpc_ID(ld_nextpc_ID),
                .reg_read_ID(reg_read_ID),
                .branch_type_ID(branch_type_ID),
                .alu_f_ID(alu_f_ID), 
                .alu_src1_ID(alu_src1_ID),
                .alu_src2_ID(alu_src2_ID),
                .imm_type(imm_type)
            );

next_pc_gen next_pc_gen(
                  .pc_IF(pc_IF),
                  .jalr_target(alu_out_EX),
                  .branch_target(branch_nextpc),
                  .jal_target(jal_nextpc),
                  .branch_en(branch_EX),
                  .jal(jal_ID),
                  .jalr(jalr_EX),
                  .next_pc(pc_in)
              );

alu alu(
        .a(alu_a),
        .b(alu_b),
        .f(alu_f_EX),
        .y(alu_out_EX)
    );

reg_file reg_file(
                 .clk(clk),
                 .rst(rst),
                 .w_en( | reg_write_WB),
                 .addr1(rs1_ID),
                 .addr2(rs2_ID),
                 .addr3(rd_WB),
                 .w_data3(reg_write_data),
                 .rd_data1(reg_out1_ID),
                 .rd_data2(reg_out2_ID)
             );

harzard_unit harzard_unit(
                .rst(rst),
                .branch_EX(branch_EX),
                .jalr_EX(jalr_EX),
                .jal_ID(jal_ID),
                .rs1_ID(rs1_ID),
                .rs2_ID(rs2_ID),
                .rs1_EX(rs1_EX),
                .rs2_EX(rs2_EX),
                .reg_read_EX(reg_read_EX),
                .mem_to_reg_EX(mem_to_reg_EX),
                .rd_EX(rd_EX),
                .rd_ME(rd_ME),
                .reg_write_ME(reg_write_ME),
                .rd_WB(rd_WB),
                .reg_write_WB(reg_write_WB),
                .stall_IF(stall_IF),
                .flush_IF(flush_IF),
                .stall_ID(stall_ID),
                .flush_ID(flush_ID),
                .stall_EX(stall_EX),
                .flush_EX(flush_EX),
                .stall_ME(stall_ME),
                .flush_ME(flush_ME),
                .stall_WB(stall_WB),
                .flush_WB(flush_WB),
                .forward1_EX(forward1_EX),
                .forward2_EX(forward2_EX)
            );
            
IF_reg IF_reg(
             .clk(clk),
             .en(~stall_IF),
             .clear(flush_IF),
             .pc_in(pc_in),
             .pc_IF(pc_IF)
         );


ID_reg ID_reg(
             .clk(clk),
             .clear(flush_ID),
             .en(~stall_ID),
             .rd_addr1(pc_IF),
             .rd_data1(instr),
             .pc_IF(pc_IF),
             .pc_ID(pc_ID)
         );

EX_reg EX_reg(
             .clk(clk),
             .en(~stall_EX),
             .clear(flush_EX),
             .pc_ID(pc_ID),
             .pc_EX(pc_EX),
             .jal_nextpc(jal_nextpc),
             .branch_nextpc(branch_nextpc),
             .imm_ID(imm_ID),
             .imm_EX(imm_EX),
             .rd_ID(rd_ID),
             .rd_EX(rd_EX),
             .rs1_ID(rs1_ID),
             .rs1_EX(rs1_EX),
             .rs2_ID(rs2_ID),
             .rs2_EX(rs2_EX),
             .reg_out1_ID(reg_out1_ID),
             .reg_out1_EX(reg_out1_EX),
             .reg_out2_ID(reg_out2_ID),
             .reg_out2_EX(reg_out2_EX),
             .jalr_ID(jalr_ID),
             .jalr_EX(jalr_EX),
             .reg_write_ID(reg_write_ID),
             .reg_write_EX(reg_write_EX),
             .mem_to_reg_ID(mem_to_reg_ID),
             .mem_to_reg_EX(mem_to_reg_EX),
             .mem_write_ID(mem_write_ID),
             .mem_write_EX(mem_write_EX),
             .ld_nextpc_ID(ld_nextpc_ID),
             .ld_nextpc_EX(ld_nextpc_EX),
             .reg_read_ID(reg_read_ID),
             .reg_read_EX(reg_read_EX),
             .branch_type_ID(branch_type_ID),
             .branch_type_EX(branch_type_EX),
             .alu_f_ID(alu_f_ID),
             .alu_f_EX(alu_f_EX),
             .alu_src1_ID(alu_src1_ID),
             .alu_src1_EX(alu_src1_EX),
             .alu_src2_ID(alu_src2_ID),
             .alu_src2_EX(alu_src2_EX)
         );

ME_reg ME_reg(
              .clk(clk),
              .en(~stall_ME),
              .clear(flush_ME),
              .alu_out_EX(alu_out_EX),
              .alu_out_ME(alu_out_ME),
              .forward_data2(forward_data2),
              .store_data_ME(store_data_ME),
              .rd_EX(rd_EX),
              .rd_ME(rd_ME),
              .pc_EX(pc_EX),
              .pc_ME(pc_ME),
              .reg_write_EX(reg_write_EX),
              .reg_write_ME(reg_write_ME),
              .mem_to_reg_EX(mem_to_reg_EX),
              .mem_to_reg_ME(mem_to_reg_ME),
              .mem_write_EX(mem_write_EX),
              .mem_write_ME(mem_write_ME),
              .ld_nextpc_EX(ld_nextpc_EX),
              .ld_nextpc_ME(ld_nextpc_ME)
          );

WB_reg WB_reg(
             .clk(clk),
             .en(~stall_WB),
             .clear(flush_WB),
             .addr(alu_out_ME),
             .w_data(store_data_ME),
             .w_en(mem_write_ME),
             .rd_data(datamem_rd_data),
             .ld_bytes_select(ld_bytes_select),
             .result_ME(result_ME),
             .result_WB(result_WB),
             .rd_ME(rd_ME),
             .rd_WB(rd_WB),
             .reg_write_ME(reg_write_ME),
             .reg_write_WB(reg_write_WB),
             .mem_to_reg_ME(mem_to_reg_ME),
             .mem_to_reg_WB(mem_to_reg_WB)
         );

data_ext data_ext(
            .in(datamem_rd_data),
            .ld_bytes_select(ld_bytes_select),
            .reg_write_WB(reg_write_WB),
            .out(datamem_rd_data_ext)
        );


endmodule

