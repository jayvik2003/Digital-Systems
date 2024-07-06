module testbench;

reg a0,b0;

wire c0;

toff_or_gate DUT(a0,b0,c0);

initial 
begin

    $monitor($time, " a0 = %b, b0 = %b, c0 = %b ", a0,b0,c0);

    #0 a0 = 0; b0 = 0;
	#5 a0 = 1; b0 = 0; 
    #5 a0 = 0; b0 = 1;
    #5 a0 = 1; b0 = 1;
	#5 $finish;

end


endmodule