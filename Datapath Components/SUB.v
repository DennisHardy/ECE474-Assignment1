`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  
// Engineer: Zachary Alvarez
// Module: SUB
// 
//////////////////////////////////////////////////////////////////////////////////


module SUB #(parameter DATAWIDTH = 8) (a, b, sum);
    input [DATAWIDTH-1:0] a, b;
    output reg [DATAWIDTH-1:0] sum;
    always@(a,b) begin
        sum <= a - b;
    end
endmodule
