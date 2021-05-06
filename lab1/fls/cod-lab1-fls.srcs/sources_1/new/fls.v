`timescale 1ns / 1ps

module fls (
    input clk,rst,en,
    input [6:0]d,
    output reg [6:0]f
);
    parameter addOp = 3'b000;
    reg [6:0]lastf;
    wire [6:0]subf;
    reg [6:0]nextf;
    reg [1:0]currstate;
    reg [1:0]nextstate;
    reg [23:0]counter;

    always@(posedge clk)begin
        counter <= counter + 1'b1;
    end
    alu #(7) alu(.a(f), .b(lastf), .f(addOp), .y(subf));
    
    always@(*)begin
        if (rst) begin
            nextstate = 2'b00;
            nextf = 7'b0000_000;
        end else if(en)begin
            case (currstate)
                2'b00: begin
                    nextf = d;
                    nextstate = 2'b01;
                end
                2'b01: begin
                    nextf = d;
                    nextstate = 2'b11;
                end
                default: begin
                    nextf = subf;
                end
            endcase
        end else begin
            nextf = f;
            nextstate = currstate;
        end
    end

    always @(posedge clk) begin
        if (rst) begin
            currstate <= 2'b00;
            lastf <= 7'b0000_000;
            f <= 7'b0000_000;
        end else if(en)begin
            currstate <= nextstate;
            f <= nextf;
            lastf <= f;
        end
    end
endmodule