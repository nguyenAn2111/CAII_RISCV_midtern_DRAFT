module cpu(
    input clk,
    input reset
);

wire [31:0] pc;
wire [31:0] instr;

pc pc0(clk, reset, pc);
imem im0(pc, instr);

endmodule