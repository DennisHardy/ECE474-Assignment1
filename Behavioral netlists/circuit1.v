`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Zachary Alvarez
// Module: Circuit1
// 
//////////////////////////////////////////////////////////////////////////////////

module Circuit1 #(parameter DATAWIDTH = 8)(a,b,c,z,x);
input [DATAWIDTH-1:0] a,b,c;
output reg [DATAWIDTH-1:0] z,x;
wire [DATAWIDTH-1:0] d,e,f, xwire;
wire g ;
    ADD ADD1(a,b,d);
    ADD ADD2(a,c,e);
    COMP COMP1(d,e,g,,);
    MUX2x1 MUX1(d,e,z,g);
    MUL MUL1 (a,c,f);
    SUB SUB1 (f,d,xwire);
    
    always @(xwire) begin
    x <= xwire;
    end
endmodule
