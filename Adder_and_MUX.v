`timescale 1ns / 1ps

module adder
( input [7:0] In,
output [7:0] Out
);

assign Out = In + 1;
endmodule



module MUX1( input [7:0] In1,In2,
input Sel,
output [7:0] Out
);
assign Out = (Sel==1)? In1: In2;
endmodule