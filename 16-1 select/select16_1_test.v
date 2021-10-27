module select16_1_test();
  reg  [3:0]  S;
  reg  [15:0] D;
  wire  Y;
  integer k;
  initial
  begin 
	D = 15'b1101011011110010;S = 4'b0000;k=0;
	for (k=0;k<15;k=k+1)                  
	  #50 S = S + 1;
	  
    #200 $stop();
  end
  
  initial
  $monitor("S = %d,Y = %b",S,Y);
  select16_1 inst(.S(S),
				.D(D),
				.Y(Y));
endmodule
