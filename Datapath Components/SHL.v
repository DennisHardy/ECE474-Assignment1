`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Engineer: Zi Wang
// Module: SHR
//
//////////////////////////////////////////////////////////////////////////////////

module SHL #(parameter DATAWIDTH = 64) (a, d, sh_amt);
   input [DATAWIDTH-1:0] a;
   input [DATAWIDTH-1:0] sh_amt;
   output reg [DATAWIDTH-1:0] d;
   
   always@(*) begin
           d <= (a << sh_amt);
       end
       
endmodule // SHL