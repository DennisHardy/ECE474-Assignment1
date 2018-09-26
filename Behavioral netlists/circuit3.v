`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Zachary Alvarez
// Module: Circuit3
// 
//////////////////////////////////////////////////////////////////////////////////


module Circuit3 (a,b,c,d,e,f,g,h,sa,avg, Clk, Rst);
    input Clk, Rst;
    input [15:0] a,b,c,d,e,f,g,h;
    input [7:0] sa;
    output [15:0] avg;
    
    wire [31:0] l00, l01, l02, l03, l10, l11, l2, l2div2, l2div4, l2div8;
    
    ADD #(.DATAWIDTH(32)) ADD1(a,b,l00);
    ADD #(.DATAWIDTH(32)) ADD2(c,d,l01);
    ADD #(.DATAWIDTH(32)) ADD3(e,f,l02);
    ADD #(.DATAWIDTH(32)) ADD4(g,h,l03);
    ADD #(.DATAWIDTH(32)) ADD5(l00,l01,l10);
    ADD #(.DATAWIDTH(32)) ADD6(l02,l03,l11);
    ADD #(.DATAWIDTH(32)) ADD7(l02,l11,l2);
    SHR #(.DATAWIDTH(32)) SHR1(l2,l2div2,{8'b0,sa});
    SHR #(.DATAWIDTH(32)) SHR2(l2div2,l2div4,{8'b0,sa});
    SHR #(.DATAWIDTH(32)) SHR3(l2div4,l2div8,{8'b0,sa});
    REG #(.DATAWIDTH(32)) REG1(l2div8, Clk, Rst, avg);
endmodule
