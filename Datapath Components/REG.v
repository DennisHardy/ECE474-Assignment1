`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Engineer: Dennis Hardy
// Module: REG
//
//////////////////////////////////////////////////////////////////////////////////

module REG #(parameter WIDTH = 8) (d, Clk, Rst, q);
   input [WIDTH-1:0] d;
   input Clk, Rst;

   output reg [WIDTH-1:0] q;

   always @ (posedge Clk) begin
      if (Rst) begin
         q = {WIDTH{1'b0}};;
      end
      else begin
         q <= d;
      end
   end

endmodule // REG
