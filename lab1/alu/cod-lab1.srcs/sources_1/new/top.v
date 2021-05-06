module alu #(
    parameter WIDTH=6,
    parameter A_ADD = 3'b000,
    parameter A_SUB = 3'b001,
    parameter A_AND = 3'b010,
    parameter A_OR = 3'b011,
    parameter A_XOR = 3'b100
) (
    input [WIDTH-1:0]a,
    input [WIDTH-1:0]b,
    input [2:0]f,
    output reg [WIDTH-1:0]y,    
    output reg z
);


always@(*)
begin
    case (f)
        A_ADD:begin
            y = a + b;
            if(y==0) z = 1;
            else z=0;
        end
        A_SUB:begin
            y = a - b;
            if(y==0) z = 1;
            else z=0;
        end
        A_AND:begin
            y = a & b;
            if(y==0) z = 1;
            else z=0;
        end
        A_OR:begin
            y = a | b;
            if(y==0) z = 1;
            else z=0;
        end
        A_XOR:begin
            y = a ^ b;
            if(y==0) z = 1;
            else z=0;
        end
        default: begin
            y = 0;
            z = 1;
        end
    endcase
end
endmodule

module top #(
    parameter WIDTH=6,
    parameter FENABLE = 2'b01,
    parameter BENABLE = 2'b10,
    parameter AENABLE = 2'b11,
    parameter NONEENABLE = 2'b00
) (
    input [7:0] sw,
    input BTN,
    input clk,
    output wire [WIDTH-1:0] led,
    output wire ledz
);
    
    
    reg ef,ea,eb;
    wire [WIDTH-1:0] ain,bin;
    wire [2:0]fin;
    
    always @(posedge clk) begin
        if (BTN) begin
            case (sw[7:6])
                FENABLE: begin
                    ef <= 1;
                    ea <= 0;
                    eb <= 0;
                end
                BENABLE: begin
                    ef <= 0;
                    ea <= 0;
                    eb <= 1;
                end
                AENABLE: begin
                    ef <= 0;
                    ea <= 1;
                    eb <= 0;
                end
                default: begin
                    ef <= 0;
                    ea <= 0;
                    eb <= 0;
                end
            endcase
        end else begin
            ef <= ef;
            ea <= ea;
            eb <= eb;
        end
    end
    Fout Fout(sw[2:0],ef,clk,fin);
    Aout Aout(sw[WIDTH-1:0],ea,clk,ain);
    Bout Bout(sw[WIDTH-1:0],eb,clk,bin);
    alu ALU(ain,bin,fin,led,ledz);
endmodule



module Fout (
    input [2:0]f,
    input ef,
    input clk,
    output reg [2:0]fout
);
    always@(posedge clk)begin
        if(ef) fout[2:0] <= f[2:0];
        else fout[2:0] <= fout[2:0];
    end
    
endmodule

module Aout #(
    parameter WIDTH=6
) (
    input [WIDTH-1:0]a,
    input ea,
    input clk,
    output reg [WIDTH-1:0]aout
);
    always@(posedge clk)begin
        if(ea) aout[WIDTH-1:0] <= a[WIDTH-1:0];
        else aout[WIDTH-1:0] <= aout[WIDTH-1:0];
    end
endmodule


module Bout #(
    parameter WIDTH=6
) (
    input [WIDTH-1:0] b,
    input eb,
    input clk,
    output reg [WIDTH-1:0]bout
);
    always@(posedge clk)begin
        if(eb) bout[WIDTH-1:0] <= b[WIDTH-1:0];
        else bout[WIDTH-1:0] <= bout[WIDTH-1:0];
    end
endmodule

