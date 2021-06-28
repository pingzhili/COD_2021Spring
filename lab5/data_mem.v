`timescale 1ns / 1ps

module Data_Mem(
    input  clk,
    input  [3:0] we, 
    input  [31:2] addr,
    input  [31:0] din,
    output reg [31:0] dout,
);
wire [11:0] addr_in;
reg [31:0] data_ram [0:4095];
integer i;
initial begin
    for (i = 1;i < 50;i = i + 1)
            data_ram [i][31: 0] <= 32'b0;
end
initial begin 
    douta=0; 
end

assign addr_in[11:0] = addr[13:2];

always @ (posedge clk) begin
    douta <= data_ram[addr_in];
    data_ram[addr_in][7: 0] <= we[0] ? din[7: 0] : data_ram[addr_in][7: 0];
    data_ram[addr_in][15: 8] <= we[1] ? din[15: 8] : data_ram[addr_in][15: 8];
    data_ram[addr_in][23:16] <= we[2] ? din[23:16] : data_ram[addr_in][23:16];
    data_ram[addr_in][31:24] <= we[3] ? din[31:24] : data_ram[addr_in][31:24];
end  

endmodule
