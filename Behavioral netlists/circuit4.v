`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Zachary Alvarez
// Module: Circuit4
// 
//////////////////////////////////////////////////////////////////////////////////


module Circuit4 (a,b,c,z,x,Clk,Rst);
input [63:0] a,b,c;
input Clk,Rst;
output reg [31:0] z,x;

wire [63:0] d,e,f,g,h;
wire dLTe, dEQe;
wire [63:0] xrin,zrin;
wire [63:0] greg,hreg;

    ADD #(.DATAWIDTH(64)) ADD1(a,b,d);
    ADD #(.DATAWIDTH(64)) ADD2(a,c,e);
    SUB #(.DATAWIDTH(64)) SUB1(a,b,f);
    COMP #(.DATAWIDTH(64)) COMP1(d,e,,dLTe,dEQe);
    MUX2x1 #(.DATAWIDTH(64)) MUX1(d,e,g,dLTe);
    MUX2x1 #(.DATAWIDTH(64)) MUX2(g,f,h,dEQe);
    REG #(.DATAWIDTH(64)) REG1(g,Clk,Rst,greg);
    REG #(.DATAWIDTH(64)) REG2(h,Clk,Rst,hreg);
    SHL #(.DATAWIDTH(64)) SHL1(hreg,xrin,dLTe);
    SHL #(.DATAWIDTH(64)) SHL2(greg,zrin,dEQe);
    REG #(.DATAWIDTH(64)) REG3(xrin,Clk,Rst,x);
    REG #(.DATAWIDTH(64)) REG4(zrin,Clk,Rst,z);
    
endmodule
