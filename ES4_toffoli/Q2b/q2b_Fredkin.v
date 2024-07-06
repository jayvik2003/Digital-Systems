//tofolli XOR gate

module toff_xor_gate(a_in ,b_in ,c_out);

input a_in,b_in,c_in;

output a_out,b_out,c_out;

assign a_out = a_in;

assign b_out = 1;

assign c_in = b_in;

assign c_out = c_in ^ (a_out & b_out); //a_in and b_in are input and c_out is output

endmodule

//toffoli AND gate

module toff_and_gate(a_in ,b_in ,c_out);

input a_in,b_in,c_in;

output a_out,b_out,c_out;

assign a_out = a_in; //taking a_in and b_in as input

assign b_out = b_in;

assign c_in = 0;

assign c_out = c_in ^ (a_in & b_in); //c_out as output


endmodule


//FREDKIN gate

module fredkin_via_toffoli(c_in ,i_1 ,i_2 ,c_out ,o_1 ,o_2);

input i_1,i_2,c_in,S,tmp1;

output c_out,o_1,o_2;

assign c_out = c_in;

toff_xor_gate toff1(i_1,i_2,tmp1);

toff_and_gate toff2(c_in,tmp1,S);

toff_xor_gate toff3(i_1,S,o_1);

toff_xor_gate toff4(i_2,S,o_2);

endmodule