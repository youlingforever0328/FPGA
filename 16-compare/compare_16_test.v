module compare_16_test();
  reg  [15:0] A;
  reg  [15:0] B;
  reg  IGT,ILE,IEQ;
  wire FGT,FLE,FEQ;
  initial
  begin 
	     IGT = 0;ILE = 0;IEQ = 1;                           //????????
	     A = 16'b1011_0000_0000_0001;B = 16'b0100_0000_0000_0001; //A:11   B:4  ??????????
	#100 B = 16'b1000_1100_0000_0001;A = 16'b1000_1000_0000_0001; //B:12   A:8  ??????????
	#100 A = 16'b1000_1100_0010_0000;B = 16'b1000_1100_0001_0000; //A:2    B:1  ??????????
	#100 B = 16'b1000_1100_0010_1111;A = 16'b1000_1100_0010_1110; //B:15   A:14 ??????????
	#100 B = 16'b1000_1100_0010_1111;A = 16'b1000_1100_0010_1111; //B:15   A:14 ??????????
    #200 $stop();
  end
  
  initial
  $monitor("A = %d,B = %d,F(A>B) = %d,F(A<B) = %d,F(A=B) = %d",A,B,FGT,FLE,FEQ);
  compare_16 inst(.A(A),
				.B(B),
				.IGT(IGT),
				.ILE(ILE),
				.IEQ(IEQ),
				.FGT(FGT),
				.FLE(FLE),
				.FEQ(FEQ));
endmodule