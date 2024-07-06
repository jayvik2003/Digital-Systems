//tofolli nand gate

module toff_gate(a_in ,b_in ,c_out);

input a_in,b_in,c_in;

output a_out,b_out,c_out;


assign a_out = a_in;

assign b_out = b_in;

assign c_in = 1;

assign c_out = c_in ^ (a_in & b_in); //a_in and b_in are input and c_out is output


endmodule

//not gate

module toff_not_gate(c_in ,c_out);

input a_in,b_in,c_in;

output a_out,b_out,c_out;

assign a_in = 1;

assign b_in= 1 ;


assign c_out = c_in ^ (a_in & b_in); //c_in input and c_out output


endmodule


module toff_or_gate(a0,b0,c0);

input a0,b0;

output c0;

wire a3_out, b3_out;

toff_not_gate toff1(a0 , a1);

toff_not_gate toff2(b0 , b1);

toff_gate toff3(a1 ,b1 ,c0);


endmodule

