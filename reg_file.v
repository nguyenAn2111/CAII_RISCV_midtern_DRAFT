module regfile(
    input clk,
    input regWrite,
    input [4:0] rs1,
    input [4:0] rs2,
    input [4:0] rd,
    input [31:0] writeData,
    output [31:0] data1,
    output [31:0] data2
);

reg [31:0] regs [0:31];

assign data1 = regs[rs1];
assign data2 = regs[rs2];

always @(posedge clk) begin
    if(regWrite && rd != 0)
        regs[rd] <= writeData;
end

endmodule