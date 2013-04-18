`timescale 1ns / 1ps

module FifoTestbench();

  parameter Halfcycle = 5; //half period is 5ns
  
  localparam Cycle = 2*Halfcycle;
  
  reg Clock;
  reg rst;
  
  // Clock Signal generation:
  initial Clock = 0; 
  always #(Halfcycle) Clock = ~Clock;
  
  // Register and wires to test the fifo
	reg wr_en;
	reg rd_en;
	reg [17 : 0] din;
	wire [17 : 0] dout;
	wire full;
	wire empty;

  // Task for checking output
  task checkOutput;
		input wr_en;
		input rd_en;
		input [17 : 0] din;
	  begin
		  $display(" INPUTS:  wr_en: %b, rd_en: %b,  din: 0x%h", wr_en, rd_en, din);
		  $display("OUTPUTS:   full: %b, empty: %b, dout: 0x%h", full, empty, dout);
    end
  endtask

  //This is where the modules being tested are instantiated. 
  fifo_generator_v9_1 fifo(
  	.clk(Clock),
  	.rst(rst),
  	.din(din),
  	.wr_en(wr_en),
  	.rd_en(rd_en),
  	.dout(dout),
  	.full(full),
  	.empty(empty));

  // Testing logic:
  initial begin
    #1;
    rst = 1;
    #1
    checkOutput(wr_en, rd_en, din);

    #10;

    rst = 0;
    wr_en = 0;
    rd_en = 0;
		din = 1;
    #1;
    checkOutput(wr_en, rd_en, din);
    
		wr_en = 1;
		rd_en = 0;
		din = 2;
    #1;
    checkOutput(wr_en, rd_en, din);
    
		wr_en = 1;
		rd_en = 1;
		din = 3;
    #1;
    checkOutput(wr_en, rd_en, din);
    
		wr_en = 0;
		rd_en = 1;
		din = 4;
    #1;
    checkOutput(wr_en, rd_en, din);
    
		wr_en = 0;
		rd_en = 0;
		din = 5;
    #1;
    checkOutput(wr_en, rd_en, din);
		
    $finish();
  end

endmodule
