`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Engineer: Dennis Hardy
// Module: COMP
//
//////////////////////////////////////////////////////////////////////////////////

module COMP #(parameter DATAWIDTH = 8) (a, b, gt, lt, eq);
   input [DATAWIDTH-1:0] a, b;
   output reg gt, lt, eq;

   always @ (a, b) begin
      if(a > b) begin
         gt <= 1'b1;
         lt <= 1'b0;
         eq <= 1'b0;
      end
      else if(a < b) begin
         gt <= 1'b0;
         lt <= 1'b1;
         eq <= 1'b0;
      end
      else begin
         gt <= 1'b0;
         lt <= 1'b0;
         eq <= 1'b1;
      end
   end

endmodule // COMP
