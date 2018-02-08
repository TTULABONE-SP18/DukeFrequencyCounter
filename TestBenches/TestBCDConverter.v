// TestBCDConverter.v
// Developed by: Adam Duke
//
// Provide a test module for the BCD Converter module.

module TestBCDConverter();

reg [31:0] Binary;

wire [3:0] Thousands;
wire [3:0] Hundreds;
wire [3:0] Tens; 
wire [3:0] Ones;

BCDConverter uut(
    .Binary(Binary),
    .Thousands(Thousands),
    .Hundreds(Hundreds),
    .Tens(Tens),
    .Ones(Ones)
);

initial begin
  Binary = 32'd0;
  #20;
  Binary = 32'd1234;
  #20;
  Binary = 32'd2468;
  #20;
  Binary = 32'd5678;
  #20;
end
endmodule