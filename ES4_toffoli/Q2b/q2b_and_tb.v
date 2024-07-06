module testbench;

reg a_in,b_in;

wire c_out;

toff_and_gate DUT(a_in,b_in,c_out);

initial 
begin

    $monitor($time, " a_in = %b, b_in = %b, c_out = %b ", a_in,b_in,c_out);

    #0 a_in = 0; b_in = 0;
	#5 a_in = 1; b_in = 0; 
    #5 a_in = 0; b_in = 1;
    #5 a_in = 1; b_in = 1;
	#5 $finish;

end


endmodule