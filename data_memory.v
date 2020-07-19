`timescale 1ns / 1ps

module DMem(
    input clk,  							// Clock //
    input E,							  //Enable Port//
    input WE,							 //Write Enable//
    input [3:0] Addr,				//Address Port //	
    input [7:0] DI,					//Data In//
    output [7:0] DO					//Data Out//
    );

reg [7:0] data_mem [255:0];

always@(posedge clk)
begin

if((E==1) && (WE ==1))   // If Enable port and Write Enable ports are high, then accept data as input //
data_mem[Addr] <= DI;
end

assign DO = (E ==1)? data_mem[Addr]:0;  //If Enable port is high, make data available to output, else data out = zero //
endmodule
