`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Zachary Alvarez
// Module: Circuit2
// 
//////////////////////////////////////////////////////////////////////////////////

module Circuit1 (a,b,c,z,x);
input [31:0] a,b,c;
output reg [31:0] z,x;
wire [31:0] d,e,f,g,h;
wire dLTe, dEQe;
wire [31:0] zwire, xwire;
ADD ADD1(a,b,d);
ADD ADD2(a,c,e);
SUB SUB1(a,b,f);
COMP COMP1(1,2,,dLTe,dEQe);
MUX2x1 MUX1(d,e,g,dLTe);
MUX2x1 MUX2(g,f,h,dEQe);
SHL SHL1(g,dLTe,xwire);
SHR SHR1(h,dEQe,zwire);
    always @(xwire,zwire) begin
    x <= xwire;
    z <= zwire;
    end
endmodule
