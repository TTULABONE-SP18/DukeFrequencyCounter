// BCDto7Segment.v
// Developed by: Adam Duke
// Adapted from: http://verilogcodes.blogspot.com/2015/10/verilog-code-for-bcd-to-7-segment.html
//
// Takes BCD numbers and changes them to be read on a 7-segment display

module BCDto7Segment(
     input [3:0] bcd,
     output reg [6:0] seg
);

always @(bcd)
    begin
        case (bcd) 
            0 : seg = 7'b1000000;
            1 : seg = 7'b1111001;
            2 : seg = 7'b0100100;
            3 : seg = 7'b0110000;
            4 : seg = 7'b0011001;
            5 : seg = 7'b0010010;
            6 : seg = 7'b0000010;
            7 : seg = 7'b1111000;
            8 : seg = 7'b0000000;
            9 : seg = 7'b0010000;
            default : seg = 7'b1111111; 
        endcase
    end
endmodule