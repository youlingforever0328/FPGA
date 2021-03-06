module encoder16_4_test();
  reg EI;
  reg [15:0] A;
  wire [3:0] L;
  wire GS;
  wire EO;
  integer k;
  initial
  begin 
	EI = 0;A = 16'b0000000000000000;k=0;
	#50 EI = 1;A = 16'b0000000000000000;
        #50 EI = 1;A = 16'b0000000000000001;
	for (k=0;k<15;k=k+1)
	  #50 A = A * 2;
	  
        #200 $stop();
  end
  
  initial
  $monitor("A = %b,L = %d,GS = %d",A,L,GS);
  encoder16_4 inst( .EI(EI),
				.EO(EO),
				.A(A),
				.L(L),
				.GS(GS));
endmodule
