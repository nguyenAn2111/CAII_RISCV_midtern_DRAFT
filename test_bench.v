`timescale 1ns/1ps

module testbench;

reg clk;
reg reset;

cpu uut(
    .clk(clk),
    .reset(reset)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    reset = 1;
    #10;
    reset = 0;
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, testbench);
end

initial begin
    #200 $finish;
end

endmodule