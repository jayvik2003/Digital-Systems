module testbench;

reg c_in;

wire c_out;

toff_not_gate DUT(c_in,c_out);

initial 
begin

    $monitor($time, " c_in = %b, c_out = %b ", c_in,c_out);

    #0 c_in = 0;
	#5 c_in = 1; 
	#5 $finish;

end


endmodule