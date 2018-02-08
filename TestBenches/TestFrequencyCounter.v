// TestFrequencyCounter.v
// Developed by Adam Duke
//
// Provide a test bench for the Frequency Counter module.

module TestFrequencyCounter();

reg Sig = 0;
reg Clk = 0;

wire [31:0] Freq;

FrequencyCounter uut(
    .Sig(Sig),
    .Clk(Clk),
    .Freq(Freq)
);

always begin
  Clk = ~Clk;
  #5;
end

initial begin
  Sig = 1;
  #50;
  Sig = 0;
  #50;
  Sig = 1;
  #200;
  Sig = 0;
  #200;
  Sig = 1;
  #100;
  Sig = 0;
  #100;
  Sig = 1;
  #500;
  Sig = 0;
  #500;
end
endmodule