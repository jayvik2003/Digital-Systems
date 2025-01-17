module test;
  /* Make A, B, C three clocks so all combination are tested */
  reg A=0;
  always #4 A = !A;
  reg B=0;
  always #2 B = !B;
  reg C=0;
  always #1 C = !C;

  wire A1, B1, C1;
  cswap c1 (A1, B1, C1, A, B, C);
  //cswap c1 (A1.(A1), .B1(B1), .C1(C1), .A(A), .B(B), .C(C));
 
  initial begin
     $monitor("At time %t, %0d %0d %0d %0d %0d %0d",
              $time, A1, B1, C1, A, B, C);
      #7 $finish;
   end
endmodule // test


