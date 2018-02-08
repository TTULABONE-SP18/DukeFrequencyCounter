// Test2to4Decoder.v
// Developed by: Adam Duke
//
// Provide a test bench for the 2 to 4 Decoder module.

module Test2to4Decoder();

reg A, B;

wire Y0, Y1, Y2, Y3;

Decoder2to4 uut (
    .A(A),
    .B(B),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin
  A = 1'b0;
  B = 1'b0;
  #20;
  A = 1'b0;
  B = 1'b1;
  #20;
  A = 1'b1;
  B = 1'b0;
  #20;
  A = 1'b1;
  B = 1'b1;
  #20;
end
endmodule