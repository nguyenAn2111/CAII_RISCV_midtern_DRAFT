module dmem(
    input clk,
    input memWrite,
    input [31:0] addr,
    input [31:0] writeData,
    output [31:0] readData
);

reg [31:0] memory [0:255];

assign readData = memory[addr >> 2];

always @(posedge clk) begin
    if(memWrite)
        memory[addr >> 2] <= writeData;
end

endmodule