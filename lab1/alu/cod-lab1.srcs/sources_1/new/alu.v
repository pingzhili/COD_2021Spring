module alu #(
    parameter WIDTH=32
) (
    input [WIDTH-1:0] a,
    input [WIDTH-1:0] b,
    input [2:0] f,
    output reg [WIDTH-1:0] y,
    output reg z
);

parameter A_ADD = 3'b000;
parameter A_SUB = 3'b001;
parameter A_AND = 3'b010;
parameter A_OR = 3'b011;
parameter A_XOR = 3'b100;
always@(*)
begin
    case (f)
        A_AND:begin
            y = a + b;
            z = 0;
        end
        A_SUB:begin
            y = a - b;
            z = 0;
        end
        A_AND:begin
            y = a & b;
            z = 0;
        end
        A_OR:begin
            y = a | b;
            z = 0;
        end
        A_XOR:begin
            y = a ^ b;
            z = 0;
        end
        default: begin
            y = 0;
            z = 1;
        end
    endcase
end
endmodule