 module testbench;
 
 	reg c_in,i_1,i_2;

	wire c_out,o_1,o_2;

	fredkin_via_toffoli DUT(c_in ,i_1 ,i_2 ,c_out ,o_1 ,o_2);

	initial
	begin

	$monitor($time, " c_in = %b, i_1 = %b, i_2 = %b,c_out = %b, o_1 = %b, o_2 = %b",c_in ,i_1 ,i_2 ,c_out ,o_1 ,o_2);

	#0 c_in = 0; i_1 = 0; i_2 = 0;
	#5 c_in = 0; i_1 = 0; i_2 = 1;
    #5 c_in = 0; i_1 = 1; i_2 = 0;
    #5 c_in = 0; i_1 = 1; i_2 = 1;
    #5 c_in = 1; i_1 = 0; i_2 = 0;
    #5 c_in = 1; i_1 = 0; i_2 = 1;
    #5 c_in = 1; i_1 = 1; i_2 = 0;
    #5 c_in = 1; i_1 = 1; i_2 = 1;
	#5 $finish;
	end
endmodule

