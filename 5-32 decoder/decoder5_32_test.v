module decoder5_32_test();
  reg E;
  reg  [4:0]  B;
  wire [31:0]  L;
  integer k;
  initial
  begin 
	E = 0;B = 5'b00000;k=0;
	for (k=0;k<31;k=k+1)                  
	  #50 B = B + 1;
	  
    #200 $stop();
  end
  
  initial
  $monitor("B = %b,L = %b",B,L);
  decoder5_32 inst(.E(E),
				.B(B),
				.L(L));
endmodule
