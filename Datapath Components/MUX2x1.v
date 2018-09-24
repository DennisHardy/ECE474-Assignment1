`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Engineer: Zi Wang
// Module: MUX2x1
//
//////////////////////////////////////////////////////////////////////////////////

module MUX2x1 #(parameter DATAWIDTH = 64) (a, b, sel, out);
   input [DATAWIDTH-1:0] a, b;
   input sel;
   output reg [DATAWIDTH-1:0] out;

   always @ (sel) begin
      if(sel) begin
         out <= a;
      end
   else begin
         out <= b;
      end
   end

endmodule // MUX
