module testbench;

reg a0,a1,S;

wire Y;

toff_mux DUT(S,a0,a1,Y);

initial 
begin
	

    $monitor($time, " a0 = %b, a1 = %b, S = %b, Y = %b ", a0 ,a1 ,S ,Y );

    #0 a0 = 0; a1 = 0; S = 0;
	#5 a0 = 0; a1 = 1; S = 0;
    #5 a0 = 1; a1 = 0; S = 0;
    #5 a0 = 1; a1 = 1; S = 0;

    #5 a0 = 0; a1 = 0; S = 1;
    #5 a0 = 0; a1 = 1; S = 1;
    #5 a0 = 1; a1 = 0; S = 1;
    #5 a0 = 1; a1 = 1; S = 1;
	#5 $finish;

end

endmodule
