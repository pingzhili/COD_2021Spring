`timescale 1ns / 1ps 

module harzard_unit(
           input rst,
           input branch_EX, 
           input jalr_EX, 
           input jal_ID,
           input [4: 0] rs1_ID, rs2_ID, rs1_EX, rs2_EX, rd_EX, rd_ME, rd_WB,
           input [1: 0] reg_read_EX,
           input mem_to_reg_EX,
           input [2: 0] reg_write_ME, reg_write_WB,
           output reg stall_IF, flush_IF, stall_ID, flush_ID, stall_EX, flush_EX, stall_ME, flush_ME, stall_WB, flush_WB,
           output reg [1: 0] forward1_EX, forward2_EX
       );

always@( * )begin
    if ( (reg_write_ME != 3'b0) && (reg_read_EX[1] != 0) && (rd_ME == rs1_EX) && (rd_ME != 5'b0) )
        forward1_EX <= 2'b10;
    else if ( (reg_write_WB != 3'b0) && (reg_read_EX[1] != 0) && (rd_WB == rs1_EX) && (rd_WB != 5'b0) )
        forward1_EX <= 2'b01;
    else
        forward1_EX <= 2'b00;
end

always@( * )begin
    if ( (reg_write_ME != 3'b0) && (reg_read_EX[0] != 0) && (rd_ME == rs2_EX) && (rd_ME != 5'b0) )
        forward2_EX <= 2'b10;
    else if ( (reg_write_WB != 3'b0) && (reg_read_EX[0] != 0) && (rd_WB == rs2_EX) && (rd_WB != 5'b0) )
        forward2_EX <= 2'b01;
    else
        forward2_EX <= 2'b00;
end

always @ ( * ) begin
    if (rst)
        {stall_IF, flush_IF, stall_ID, flush_ID, stall_EX, flush_EX, stall_ME, flush_ME, stall_WB, flush_WB} <= 10'b0101010101;
    else if (branch_EX | jalr_EX)
        {stall_IF, flush_IF, stall_ID, flush_ID, stall_EX, flush_EX, stall_ME, flush_ME, stall_WB, flush_WB} <= 10'b0001010000;
    else if (mem_to_reg_EX & ((rd_EX == rs1_ID) || (rd_EX == rs2_ID)) )
        {stall_IF, flush_IF, stall_ID, flush_ID, stall_EX, flush_EX, stall_ME, flush_ME, stall_WB, flush_WB} <= 10'b1010010000;
    else if (jal_ID)
        {stall_IF, flush_IF, stall_ID, flush_ID, stall_EX, flush_EX, stall_ME, flush_ME, stall_WB, flush_WB} <= 10'b0001000000;
    else
        {stall_IF, flush_IF, stall_ID, flush_ID, stall_EX, flush_EX, stall_ME, flush_ME, stall_WB, flush_WB} <= 10'b0000000000;
end

endmodule


