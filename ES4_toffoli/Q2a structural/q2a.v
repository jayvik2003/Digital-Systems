module toff_gate(a_in ,b_in ,c_in ,a_out ,b_out ,c_out);

input a_in,b_in,c_in;

output a_out,b_out,c_out;

assign a_out = a_in;

assign b_out = b_in;

assign c_out = c_in ^ (a_in & b_in);


endmodule