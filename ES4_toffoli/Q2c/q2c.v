module toff_gate(a_in ,b_in ,c_in ,c_out);

input a_in,b_in,c_in;

output a_out,b_out,c_out;

assign a_out = a_in;

assign b_out = b_in;

assign c_out = c_in ^ (a_in & b_in);


endmodule

module toff_mux(S, a_in, b_in, c_out);

	input S, a_in,b_in;

    output c_out;

	wire t1, t2, t3, t4, t5,S, a_in,b_in,c_out;

	toff_gate toff1(1'b1, 1'b1, S, t1);
	toff_gate toff2(t1, a_in, 1'b0, t2);
	toff_gate toff3(S, b_in, 1'b0, t3);
	toff_gate toff4(1'b1, 1'b1, t2, t4);
	toff_gate toff5(1'b1, 1'b1, t3, t5);
	toff_gate toff6(t4, t5, 1'b1, c_out);

endmodule