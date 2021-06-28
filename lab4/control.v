module control(
    input [6:0] opcode, //Instruction[6:0]

    output reg jal,  //jump and link
    output reg Branch, //branch
    output reg Imm_gen, //immidiate generation
    output reg RegScr, //register 
    output reg [2:0] ALUop, //alu operation
    output reg MemWrite, //memory write
    output reg ALUscr, //alu 
    output reg RegWrite //regsiter write
    );
    always @(*) begin
        case (opcode)
            //jal
            7'b1101111: begin
              jal=1;
              Branch=0;
              Imm_gen=1;
              RegScr=0;
              ALUop=3'd000;//add
              MemWrite=0;
              ALUscr=0;
              RegWrite=0;
            end

            //beq
            7'b1100011: begin
              jal=0;
              Branch=1;
              Imm_gen=1;
              RegScr=0;
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
              RegScr=1;
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
              RegScr=0;
              ALUop=3'd000;//add
              MemWrite=1;
              ALUscr=1;
              RegWrite=0;
            end

            //addi
            7'b0010011: begin
              jal=0;
              Branch=0;
              Imm_gen=0;
              RegScr=0;
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
              RegScr=0;
              ALUop=3'd000;
              MemWrite=0;
              ALUscr=0;
              RegWrite=1;
            end
            
            default: 
        endcase
    end
endmodule