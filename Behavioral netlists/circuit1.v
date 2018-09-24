`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Zachary Alvarez
// Module: Circuit1
// 
//////////////////////////////////////////////////////////////////////////////////

module Circuit1 (a,b,c,z,x);
    input [7:0] a,b,c;
    output reg [7:0] z;
    output reg [15:0] z;
    wire [8:0] d,e;
    wire [15:0] f,g;
    wire [15:0] xwire;

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
