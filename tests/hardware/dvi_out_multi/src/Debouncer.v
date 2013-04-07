// Basic counter to debounce the reset signal to ease chipscope use. 
// Assumes ~33 Mhz clock and ~100ms button press.

module Debouncer(
    input clk, in,
    output out
);

    reg [21:0] count;

    always@(posedge clk)
        if(~in)
            count <= 21'b0;
        else 
            count <= count + 1;

    assign out = count == 21'hFFFFF;

endmodule
