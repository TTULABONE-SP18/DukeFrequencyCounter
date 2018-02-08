     // Decoder2to4.v
     // Developed by: Adam Duke
     // Adapted from: http://web.csulb.edu/~rallison/pdf/Decoder_2_to_4.pdf
     //
     // A 2 to 4 decoder.

     module Decoder2to4(Y3, Y2, Y1, Y0, A, B);
     output Y3, Y2, Y1, Y0;
     input  A, B;
     reg    Y3, Y2, Y1, Y0;
     always @(A or B) begin
         case ( {A,B} )
           2'b00:   {Y3,Y2,Y1,Y0} = 4'b0001;
           2'b01:   {Y3,Y2,Y1,Y0} = 4'b0010;
           2'b10:   {Y3,Y2,Y1,Y0} = 4'b0100;
           2'b11:   {Y3,Y2,Y1,Y0} = 4'b1000;
         endcase
      end
  endmodule