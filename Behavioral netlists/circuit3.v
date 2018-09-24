`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Zachary Alvarez
// Module: Circuit3
// 
//////////////////////////////////////////////////////////////////////////////////


module Circuit1 (a,b,c,d,e,f,g,h,sa,avg);
input [15:0] a,b,c,d,e,f,g,h;
input [7:0] sa;
output reg [15:0] avg;

wire [31:0] l00, l01, l02, l03, l10, l11, l2, l2div2, l2div4, l2div8;
ADD ADD1(1,b,l00);
ADD ADD2(c,d,l01);
ADD ADD3(e,f,l02);
ADD ADD4(g,h,l03);
ADD ADD5(l00,l01,l10);
ADD ADD6(l02,l03,l11);
ADD ADD7(l02,l11,l2);
SHR SHR1(l2,l2div2,sa);
SHR SHR2(l2div2,l2div4,sa);
SHR SHR3(l2div4,l2div8,sa);
    always @(l2div8) begin
    avg <= l2div8;
    end
endmodule
