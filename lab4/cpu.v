module cpu(
    input clk,
    input rst,

    //IO_BUS
    output [7:0] io_addr, //led and seg address
    output [31:0] io_dout, //output led and seg
    output io_we,   //led and seg output enable
    input [31:0] io_din, //input data from sw

    //Debug_BUS
    input [7:0] m_rf_addr,  //mem or regfile read address
    output [31:0] rf_data, //data read from regfile
    output [31:0] m_data, //data read from mem
    output reg [31:0] pc //data of pc
    );
reg jal, Branch, Imm_gen, MemWrite, ALUscr, RegWrite;
reg [2:0] ALUop;
reg [1:0] RegScr;
wire alu_z, data_mem_we;
wire [6:0] opcode;
reg [31:0] extend_imm, reg_wd;
wire [31:0] instruction, next_pc, pc_added, alu_out, alu_a, alu_b, reg_rd1, reg_rd2, data_mem_out, data_mem_mux, extend_imm;
assign opcode = instruction[6:0];
assign pc_added = pc + 32'd4;
assign next_pc = ((alu_z & Branch)|jal)?(extend_imm + pc):pc_added;
assign alu_a = reg_rd1;
assign alu_b = ALUscr?extend_imm:reg_rd2;
assign data_mem_we = MemWrite&(~alu_out[10]);
assign data_mem_mux = alu_out[10]?io_din:data_mem_out;
assign io_we = alu_out[10] & MemWrite;
assign io_dout = reg_rd2;
assign io_addr = alu_out[7:0];
alu #(32) ALU1(alu_a, alu_b, ALUop, alu_out, alu_z);
reg_file #(32) Register(clk, instruction[19:15], reg_rd1, instruction[24:20], reg_rd2, m_rf_addr[4:0], rf_data, instruction[11:7], RegWrite, reg_wd);
inst inst_mem(pc[9:2], instruction);
data_mem data_memory(.a(alu_out[9:2]), .d(reg_rd2), .dpra(m_rf_addr), .clk(clk), .we(data_mem_we), .spo(data_mem_out), .dpo(m_data));
//pc control
always@(posedge clk, posedge rst)begin
  if (rst) begin
      pc <= 32'd0;
  end else begin
      pc <= next_pc;
  end
end
//reg write back control
always @(*) begin
    case (RegScr)
        2'b00:reg_wd = alu_out;
        2'b01:reg_wd = data_mem_mux;
        2'b10:reg_wd = pc_added; 
        default: reg_wd = 0;
    endcase
end
//control unit
always @(*) begin
        case (opcode)
            //jal
            7'b1101111: begin
              jal=1;
              Branch=0;
              Imm_gen=1;
              RegScr=2'b10;
              ALUop=3'd000;//add
              MemWrite=0;
              ALUscr=0;
              RegWrite=1;
            end
            //beq
            7'b1100011: begin
              jal=0;
              Branch=1;
              Imm_gen=1;
              RegScr=2'b00;
              ALUop=3'd001;//minus
              MemWrite=0;
              ALUscr=0;
              RegWrite=0;
            end
            //lw
            7'b0000011: begin
              jal=0;
              Branch=0;
              Imm_gen=1;
              RegScr=2'b01;
              ALUop=3'd000;//add
              MemWrite=0;
              ALUscr=1;
              RegWrite=1;
            end
            //sw
            7'b0100011: begin
              jal=0;
              Branch=0;
              Imm_gen=1;
              RegScr=2'b00;
              ALUop=3'd000;//add
              MemWrite=1;
              ALUscr=1;
              RegWrite=0;
            end

            //addi
            7'b0010011: begin
              jal=0;
              Branch=0;
              Imm_gen=1;
              RegScr=2'b00;
              ALUop=3'd000;//add
              MemWrite=0;
              ALUscr=1;
              RegWrite=1;
            end
            //add
            7'b0110011: begin
              jal=0;
              Branch=0;
              Imm_gen=0;
              RegScr=2'b00;
              ALUop=3'd000;
              MemWrite=0;
              ALUscr=0;
              RegWrite=1;
            end
            default: begin
              jal=0;
              Branch=0;
              Imm_gen=0;
              RegScr=2'b00;
              ALUop=3'd000;
              MemWrite=0;
              ALUscr=0;
              RegWrite=0;
            end
        endcase
    end

//ImmGen control
always @(*) begin
    if(Imm_gen)begin
      case (opcode)
            //jal
            7'b1101111: begin
              extend_imm = instruction[31]?{11'b111_1111_1111, instruction[31], instruction[19:12], instruction[20], instruction[30:21], 1'b0}:{11'b000_0000_0000, instruction[31], instruction[19:12], instruction[20], instruction[30:21], 1'b0};
            end
            //beq
            7'b1100011: begin
              extend_imm = instruction[31]?{19'b111_1111_1111_1111_1111, instruction[31], instruction[7], instruction[30:25], instruction[11:8], 1'b0}:{19'b000_0000_0000_0000_0000, instruction[31], instruction[7], instruction[30:25], instruction[11:8], 1'b0};
            end
            //lw
            7'b0000011: begin
              extend_imm = instruction[31]?{20'b1111_1111_1111_1111_1111, instruction[31:20]}:{20'b0000_0000_0000_0000_0000, instruction[31:20]};
            end
            //sw
            7'b0100011: begin
              extend_imm = instruction[31]?{20'b1111_1111_1111_1111_1111, instruction[31:25], instruction[11:7]}:{20'b000_0000_0000_0000_0000, instruction[31:25], instruction[11:7]};
            end
            //addi
            7'b0010011: begin
              extend_imm = instruction[31]?{20'b1111_1111_1111_1111_1111, instruction[31:20]}:{20'b0000_0000_0000_0000_0000, instruction[31:20]};
            end
            default:
              extend_imm = 32'd0;
        endcase
    end
end
endmodule