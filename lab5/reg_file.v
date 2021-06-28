`timescale 1ns / 1ps 

module reg_file(
           input clk,
           input rst,
           input w_en,
           input [4: 0] addr1,
           input [4: 0] addr2,
           input [4: 0] addr3,
           input[31: 0] w_data3,
           output wire [31: 0] rd_data1,
           output wire [31: 0] rd_data2
       );
reg [31: 0] RegFile[31: 1];
integer i;
assign rd_data1 = (addr1 == 5'b0) ? 32'b0 : RegFile[addr1];
assign rd_data2 = (addr2 == 5'b0) ? 32'b0 : RegFile[addr2];
always@(negedge clk or posedge rst) begin
    if (rst) begin
        for (i = 1;i < 32;i = i + 1)
            RegFile[i][31: 0] <= 32'b0;
    end else if ( (w_en == 1'b1) && (addr3 != 5'b0) )begin 
        RegFile[addr3] <= w_data3;
    end
end

endmodule
