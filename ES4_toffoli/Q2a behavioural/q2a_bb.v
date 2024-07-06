
module toff_gate_bb(a_in,b_in,c_in,a_out,b_out,c_out);
        
        input a_in, b_in, c_in;

        output a_out, b_out, c_out;

        reg a_out, b_out, c_out;
        
        always @* begin

        if (a_in && b_in)

                 c_out = ~c_in;

        else 

                c_out = c_in;

        end 
        
        always @* {a_out,b_out} = {a_in,b_in};

endmodule

