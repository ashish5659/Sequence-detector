`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:59:11 06/05/2024
// Design Name:   seq_det
// Module Name:   /home/ise/seq_det/seq_det_tb.v
// Project Name:  seq_det
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seq_det
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module seq_det_tb;

	// Inputs
	reg in;
	reg clk;
	reg rst;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	seq_det uut (
		.in(in), 
		.clk(clk), 
		.rst(rst), 
		.out(out)
	);

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

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

