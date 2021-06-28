`timescale 1ns / 1ps 

module data_ext(
           input [31: 0] in,
           input [1: 0] ld_bytes_select,
           input [2: 0] reg_write_WB,
           output reg [31: 0] out
       );      
parameter NOREGWRITE = 3'b0;	
parameter LB  = 3'd1;			
parameter LH  = 3'd2;		
parameter LW  = 3'd3;	
parameter LBU = 3'd4;			
parameter LHU = 3'd5;

wire [31: 0] ld_byte_in = (in >> (ld_bytes_select * 32'h8)) & 32'hff;
wire [31: 0] ld_half_word_in= (in >> (ld_bytes_select * 32'h8)) & 32'hffff;

always @( * ) begin
    case (reg_write_WB)
        LB:
        begin
            out <= {{24{ld_byte_in[7]}}, ld_byte_in[7: 0]};
        end
        LH:
        begin
            out <= {{16{ld_half_word_in[15]}}, ld_half_word_in[15: 0]};
        end
        LW:
        begin
            out <= in;
        end
        LBU:
        begin
            out <= {24'h0, ld_byte_in[7: 0]};
        end
        LHU:
        begin
            out <= {16'h0, ld_half_word_in[15: 0]};
        end
        default:
         begin 
        end
    endcase
end

endmodule

