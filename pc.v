module pc(
    input clk,
    input reset,
    output reg [31:0] pc
);

always @(posedge clk) begin
    if(reset)
        pc <= 0;
    else
        pc <= pc + 4;
end

endmodule