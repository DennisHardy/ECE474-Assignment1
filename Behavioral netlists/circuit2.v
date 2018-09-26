`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Zachary Alvarez
// Module: Circuit2
// 
//////////////////////////////////////////////////////////////////////////////////

module Circuit2 (a,b,c,z,x, Clk, Rst);
    input [31:0] a,b,c;
    input Clk, Rst;
    output [31:0] z,x;
    wire [31:0] d,e,f,g,h;
    wire dLTe, dEQe;
    wire [31:0] zwire, xwire;
    
    ADD #(.DATAWIDTH(32)) ADD1(a,b,d);
    ADD #(.DATAWIDTH(32)) ADD2(a,c,e);
    SUB #(.DATAWIDTH(32)) SUB1(a,b,f);
    COMP #(.DATAWIDTH(32)) COMP1(d,e,,dLTe,dEQe);
    MUX2x1 #(.DATAWIDTH(32)) MUX1(d,e,dLTe,g);
    MUX2x1 #(.DATAWIDTH(32)) MUX2(g,f,dEQe,h);
    SHL #(.DATAWIDTH(32)) SHL1(g,xwire,{31'b0, dLTe});
    SHR #(.DATAWIDTH(32)) SHR1(h,zwire,{31'b0, dEQe});
    REG #(.DATAWIDTH(32)) REG1 (xwire, Clk, Rst, x);
    REG #(.DATAWIDTH(32)) REG2 (zwire, Clk, Rst, z);
    
endmodule
