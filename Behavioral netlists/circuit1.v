`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Zachary Alvarez
// Module: Circuit1
// 
//////////////////////////////////////////////////////////////////////////////////

module Circuit1 (a,b,c,z,x, Clk, Rst);
    input Clk, Rst;
    input [7:0] a,b,c;
    output [7:0] z;
    output [15:0] x;
    wire [7:0] d,e;
    wire [15:0] f,g;
    wire [15:0] xwire;

    ADD #(.DATAWIDTH(8)) ADD1(a,b,d);
    ADD #(.DATAWIDTH(8)) ADD2(a,c,e);
    COMP #(.DATAWIDTH(8)) COMP1(d,e,g[0],,);
    MUX2x1 #(.DATAWIDTH(8)) MUX1(d,e,g[0],z);
    MUL #(.DATAWIDTH(8)) MUL1 (a,c,f);
    SUB #(.DATAWIDTH(16)) SUB1 (f,{8'b0,d},xwire);
    REG #(.DATAWIDTH(16)) REG1 (xwire, Clk, Rst, x);
    

endmodule
