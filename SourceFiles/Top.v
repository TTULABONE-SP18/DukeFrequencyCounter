// Top.v
// Developed by: Adam Duke
//
// Top module for implementing all the other modules for the project.

module Top(
    input signal, clk,
    output reg [6:0] seg, reg [3:0] Dig
);

wire [31:0] freq_bin;
wire [3:0] D0, D1, D2, D3;
wire [3:0] S0, S1, S2, S3;

// Frequency Counter module to get a binary number for the frequency reading.
FrequencyCounter u1(
    .Sig(signal),
    .Clk(clk),
    .freq(freq_bin)
);

// Converts the binary frequency reading to Binary-Coded Decimal.
BCDConverter u2(
    .Binary(freq_bin),
    .Thousands(D0),
    .Hundreds(D1),
    .Tens(D2),
    .Ones(D3)
);

// Converts the BCD numbers individually into numbers that can be displayed on the 7-segment display.
BCDto7Segment u3(
    .bcd(D0),
    .seg(S0)
);

BCDto7Segment u4(
    .bcd(D1),
    .seg(S1)
);

BCDto7Segment u5(
    .bcd(D2),
    .seg(S2)
);

BCDto7Segment u6(
    .bcd(D3),
    .seg(S3)
);

// At this point, I do not know how to implement the other modules like the decoder, as well as
//   other modules that I have not made, or even if what I have implemented so far would work.
// Each module that I have made does have a corresponding test bench that works as it should,
//   save for RefreshCounter.v.

endmodule