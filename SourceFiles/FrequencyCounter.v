// FrequnecyCounter.v
// Developed by: Adam Duke
//
// Uses the 100 MHz clock to output a frequency.

module FrequencyCounter(
    input Sig, Clk,
    output reg [31:0] Freq
);

reg [31:0] Counter = 0;
reg [31:0] Cycles = 0;
reg [31:0] StartCount = 0;
reg [31:0] EndCount = 0;

always@(posedge Clk)
begin
    Counter = Counter + 1;
end
always@(posedge Sig)
begin
    StartCount = EndCount;
    EndCount = Counter;
    Cycles = EndCount - StartCount;
    Freq = 100000000 / Cycles;
end
endmodule