module testbench;

reg a_in,b_in,c_in;

wire a_out,b_out,c_out;

toff_gate_bb DUT(a_in ,b_in ,c_in ,a_out ,b_out ,c_out);

initial 
begin

    $monitor($time, " a_in = %b, b_in = %b, c_in = %b, a_out = %b , b_out = %b , c_out = %b", a_in ,b_in ,c_in ,a_out ,b_out ,c_out);

    #0 a_in = 0; b_in = 0; c_in = 0;
	#5 a_in = 0; b_in = 0; c_in = 1;
    #5 a_in = 0; b_in = 1; c_in = 0;
    #5 a_in = 0; b_in = 1; c_in = 1;
    #5 a_in = 1; b_in = 0; c_in = 0;
    #5 a_in = 1; b_in = 0; c_in = 1;
    #5 a_in = 1; b_in = 1; c_in = 0;
    #5 a_in = 1; b_in = 1; c_in = 1;
	#5 $finish;

end


endmodule