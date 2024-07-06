module toff_and_gate(a_in ,b_in ,c_out);

input a_in,b_in,c_in;

output a_out,b_out,c_out;

assign a_out = a_in; //taking a_in and b_in as input

assign b_out = b_in;

assign c_in = 0;

assign c_out = c_in ^ (a_out & b_out); //c_out as output


endmodule

