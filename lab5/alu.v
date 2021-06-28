module alu #(
    parameter WIDTH=32
) (
    input [WIDTH-1:0] a,
    input [WIDTH-1:0] b,
    input [3:0] f,
    output reg [WIDTH-1:0] y,
    output wire z
);
parameter ADD = 4'd0;
parameter SUB = 4'd1;
parameter AND = 4'd2;
parameter OR = 4'd3;
parameter XOR = 4'd4;
parameter SLL = 4'd5;
parameter SRL = 4'd6;
parameter LUI = 4'd7; 

always@(*)
begin
    case (f)
        ADD:
            y <= a + b;
        SUB:
            y <= a - b;
        AND:
            y <= a & b;
        OR:
            y <= a | b;
        XOR:
            y <= a ^ b;
        SLL:
            y <= a << b[4: 0];
        SRL:
            y <= a >> b[4: 0];
        LUI:
            y <= b & 32'hfffff000;
        default: 
            y <= 0;
    endcase
end
assign z=(y==32'd0)?1:0;
endmodule
