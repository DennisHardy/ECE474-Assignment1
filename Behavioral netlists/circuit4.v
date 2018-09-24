`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Zachary Alvarez
// Module: Circuit4
// 
//////////////////////////////////////////////////////////////////////////////////


module Circuit1 (a,b,c,z,x,Clk,Rst);
input [63:0] a,b,c;
input Clk,Rst;
output reg [31:0] z,x;

wire [63:0] d,e,f,g,h;
wire dLTe, dEQe;
wire [63:0] xrin,zrin;
reg [63:0] greg,hreg;

ADD ADD1(a,b,d);
ADD ADD2(a,c,e);
SUB SUB1(a,b,f);
COMP COMP1(d,e,,dLTe,dEQe);
MUX2x1 MUX1(d,e,g,dLTe);
MUX2x1 MUX2(g,f,h,dEQe);
REG REG1(g,Clk,Rst,greg);
REG REG2(h,Clk,Rst,hreg);
SHL SHL1(hreg,xrin,dLTe);
SHL SHL2(greg,zrin,dEQe);

    always @(xrin,zrin) begin
    x <= xrin;
    z <= zrin;
    end
endmodule
