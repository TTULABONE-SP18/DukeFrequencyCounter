// RefreshCounter.v
// Developed by: Adam Duke
// Adapted from: http://www.fpga4student.com/2017/09/seven-segment-led-display-controller-basys3-fpga.html
//
// Creates the refresh signal and LED-activating signals.

module RefreshCounter(
    input reg [20:0] refresh_counter,
    output [1:0] LED_activating_counter
);

always @(posedge clock_100Mhz or posedge reset)
begin 
 if(reset==1)
  refresh_counter <= 0;
 else
  refresh_counter <= refresh_counter + 1;
end 
assign LED_activating_counter = refresh_counter[20:19];

endmodule