// TestBCDto7Segment.v
// Developed by: Adam Duke
//
// Provide a test bench for BCD to 7-segment display module.

module TestBCDto7Segment();

reg [3:0] bcd;
wire [6:0] seg;
integer i;

BCDto7Segment uut (
    .bcd(bcd), 
    .seg(seg)
 );


initial begin
    for(i = 0;i < 16;i = i+1)
    begin
        bcd = i; 
        #20;
    end     
end
endmodule