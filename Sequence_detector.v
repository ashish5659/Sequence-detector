`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:53:48 06/05/2024 
// Design Name: 
// Module Name:    seq_det 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module seq_det(in, clk,rst, out);
  input clk,rst,in;
  output reg out;
  reg[2:0]PS;
  reg[2:0]NS;
  parameter[2:0] s0 = 3'b000,
   				  s1 = 3'b001,
  				     s2 = 3'b010,
  				     s3 = 3'b011,
  				     s4 = 3'b100,
  				     s5 = 3'b101;
  always @(posedge clk or posedge rst)
    begin
      if(rst)
        PS = s0;
      else
        PS = NS;
    end
  always @(PS or in) begin
    case(PS)
      s0: begin
        if(in) NS = s1;
        else NS = s0;
        out = 0;
      end
      s1: begin
        if(in) NS = s2;
        else NS= s0;
        out = 0;
      end
      s2: begin
        if(in) NS = s2;
        else NS = s3;
        out = 0;
      end
      s3: begin
        if(in) NS = s4;
        else NS = s0;
        out = 0;
      end
      s4: begin
        if(in) NS = s5;
        else NS = s0;
        out = 0;
      end
      s5: begin
        if(in) NS = s2;
        else NS = s3;
        out = 1;
      end
      default: begin
        NS = s0;
        out = 0;
      end
    endcase
  end
endmodule


        

