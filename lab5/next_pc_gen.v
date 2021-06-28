`timescale 1ns / 1ps 

module next_pc_gen(
           input [31: 0] pc_IF, 
           input [31: 0] jalr_target, branch_target, jal_target,
           input branch_en, jal, jalr,
           output reg [31: 0] next_pc
       );
always @(*) begin
    if (branch_en)
        next_pc <= branch_target;
    else if (jalr)
        next_pc <= jalr_target;
    else if (jal)
        next_pc <= jal_target;
    else
        next_pc <= pc_IF + 32'h4;
end
endmodule
