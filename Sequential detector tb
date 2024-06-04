module Seq_Det_tb;
  reg in;
  reg clk;
  reg rst;
  wire out;
  
  seq_det uut(
    .out(out),
    .in(in),
    .clk(clk),
    .rst(rst)
  );
 // clock genaration
  initial clk =1'b0;
  always #10 clk = ~clk;// toggle clk every 10 time unit
  
  initial begin
    in = 0;
    rst = 1;
    #10 rst = 0;
    // apply input sequence
    #20 in = 0;
     #20 in = 0;
        #20 in = 1;
        #20 in = 1;
        #20 in = 0;
        #20 in = 1;
        #20 in = 1;
        #20 in = 0;
        #20 in = 1;
        #20 in = 1;
        #20 in = 0;
        #20 in = 1;
        #20 in = 1;
        #20 in = 0;
        #20 in = 1;
        #20 in = 1;
        #20 in = 0;
        #20 in = 1;
        #20 in = 1;
        #20 in = 0;
        #20 in = 1;
        #20 in = 1;
        #20 in = 0;
        #20 in = 1;
        #20 in = 1;
        #20 in = 0;
        #20 in = 1;
        #20 in = 1;
        #20 in = 0;
        #20 in = 1;
        #20 in = 1;
        #20 in = 0;
        #20 in = 1;
        #20 in = 1;
        #20 in = 0;
        #20 in = 1;
        #20 in = 1;
        #20 in = 0;
    #50 $finish;
  end
  initial begin
    $monitor("Time: %0d, Reset:%b, Input:%b, Output:%b, Present state:%b",$time, rst,in,out,uut.PS);
    $dumpfile(dump.vcd);
    $dumpvars(0, Seq_Det_tb);
  end
endmodule
    
    
    
