`timescale 1ns / 1ps 

module control(
           input [31:0] instr,
           output wire jal_ID,
           output wire jalr_ID,
           output reg [2: 0] reg_write_ID,
           output wire mem_to_reg_ID, 
           output reg [3: 0] mem_write_ID,
           output reg [1: 0] reg_read_ID,
           output reg [2: 0] branch_type_ID,
           output reg [3: 0] alu_f_ID,
           output wire [1: 0] alu_src2_ID,
           output wire alu_src1_ID,
           output wire ld_nextpc_ID,
           output reg [2: 0] imm_type
       );
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

wire [6:0] op, fn7;
wire [2:0] fn3;
wire [4:0] rs1, rs2, rd;
reg [1: 0] alu_src2_ID_reg;

assign {fn7, rs2, rs1, fn3, rd, op} = instr;
assign ld_nextpc_ID = jal_ID | jalr_ID ;
assign jal_ID = (op == 7'b1101111) ? 1'b1:1'b0;
assign jalr_ID = (op == 7'b1100111) ? 1'b1:1'b0;
assign mem_to_reg_ID = (op == 7'b0000011) ? 1'b1:1'b0;
assign alu_src1_ID = (op == 7'b0010111) ? 1'b1:1'b0;
assign alu_src2_ID = alu_src2_ID_reg;
always @( * ) begin
    if ((op == 7'b0010011) && (fn3[1: 0] == 2'b01))
        alu_src2_ID_reg <= 2'b01;
    else if ((op == 7'b0110011) || (op == 7'b1100011) )
        alu_src2_ID_reg <= 2'b00 ;
    else
        alu_src2_ID_reg <= 2'b10;
end

always @( * ) begin
    case (imm_type)
        RTYPE:
            reg_read_ID = 2'b11;
        ITYPE:
            reg_read_ID = 2'b10;
        STYPE:
            reg_read_ID = 2'b11;
        BTYPE:
            reg_read_ID = 2'b11;
        UTYPE:
            reg_read_ID = 2'b00;
        JTYPE:
            reg_read_ID = 2'b00;
        default:
            reg_read_ID = 2'b00;
    endcase
end

always @( * ) begin
    if (op == 7'b1100011)
    begin
        case (fn3)
            3'b000:
                branch_type_ID <= BEQ;     //BEQ
            3'b001:
                branch_type_ID <= BNE;     //BNE
            3'b100:
                branch_type_ID <= BLT;     //BLT
            3'b101:
                branch_type_ID <= BGE;     //BGE
            3'b110:
                branch_type_ID <= BLTU;    //BLTU
            default:
                branch_type_ID <= BGEU;    //BGEU
        endcase
    end
    else
    begin
        branch_type_ID <= NOBRANCH;
    end
end

always@( * ) begin
  case (op)
    7'b001_0011:
    begin
        reg_write_ID <= LW;
        mem_write_ID <= 4'b0000;
        imm_type <= ITYPE;
        case (fn3)
            3'b000:
                alu_f_ID <= ADD;  //ADDI
            3'b001:
                alu_f_ID <= SLL;  //SLLI
            3'b100:
                alu_f_ID <= XOR;    //XORI
            3'b101:
                alu_f_ID <= SRL;   //SRLI
            3'b110:
                alu_f_ID <= OR;   //ORI
            default:
                alu_f_ID <= AND;    //ANDI
        endcase
    end
    7'b011_0011:
    begin
        reg_write_ID <= LW;
        mem_write_ID <= 4'b0000;
        imm_type <= RTYPE;
        case (fn3)
            3'b000:
            begin
                if (fn7[5] == 1)
                    alu_f_ID <= SUB;   //SUB
                else
                    alu_f_ID <= ADD;   //ADD
            end
            3'b001:
                alu_f_ID <= SLL;   //SLL
            3'b100:
                alu_f_ID <= XOR;   //XOR
            3'b101:
                alu_f_ID <= SRL;   //SRL
            3'b110:
                alu_f_ID <= OR;    //OR
            default:
                alu_f_ID <= AND;    //AND
        endcase
    end
    7'b000_0011:
    begin    //load
        mem_write_ID <= 4'b0000;
        alu_f_ID <= ADD;
        imm_type <= ITYPE;
        case (fn3)
            3'b000:
                reg_write_ID <= LB;    //LB
            3'b001:
                reg_write_ID <= LH;    //LH
            3'b100:
                reg_write_ID <= LBU;    //LBU
            default:
                reg_write_ID <= LHU;    //LHU
        endcase
    end
    7'b010_0011:
    begin    //store
        reg_write_ID <= NOREGWRITE;
        alu_f_ID <= ADD;
        imm_type <= STYPE;
        if(fn3 == 3'b000) 
            mem_write_ID <= 4'b0001;   //SB
        else 
            mem_write_ID <= 4'b0011;   //SH 
    end
    7'b110_1111:
    begin    //jal
        reg_write_ID <= LW;
        mem_write_ID <= 4'b0000;
        alu_f_ID <= ADD;
        imm_type <= JTYPE;
    end
    7'b110_0111:
    begin    //jalr
        reg_write_ID <= LW;
        mem_write_ID <= 4'b0000;
        alu_f_ID <= ADD;
        imm_type <= ITYPE;
    end
    7'b110_0011:
    begin    //branch
        reg_write_ID <= NOREGWRITE;
        mem_write_ID <= 4'b0000;
        imm_type <= BTYPE;
        alu_f_ID <= ADD;
    end
    7'b011_0111:
    begin    //lui
        RegWriteD <= LW;
        MemWriteD <= 4'b0000;
        AluContrlD <= LUI;
        ImmType <= UTYPE;
    end
    default:
    begin      
        reg_write_ID <= NOREGWRITE;
        mem_write_ID <= 4'b0000;
        alu_f_ID <= ADD;
        imm_type <= ITYPE;
    end
  endcase
end
endmodule
