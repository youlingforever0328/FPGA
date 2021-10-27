module comp_test();
  reg IGT,ILE,IEQ;
  reg [3:0] A;
  reg [3:0] B;
  wire FGT,FLE,FEQ;
  initial
  begin 
            IGT = 0;ILE = 0;IEQ = 1;
	    A = 4'b1011;B = 4'b0100;//11   4
	#100 B = 4'b1100;A = 4'b1000;//12   8
	#100 A = 4'b0010;B = 4'b0001;//2    1
	#100 B = 4'b1111;A = 4'b1110;//15   14
	#100 IGT = 1;ILE = 0;IEQ = 0;A = 4'b1011;B = 4'b1011;//11   11
        #100 IGT = 0;ILE = 1;IEQ = 0;A = 4'b1011;B = 4'b1011;//11   11
        #100 IGT = 0;ILE = 0;IEQ = 1;A = 4'b1011;B = 4'b1011;//11   11
        #200 $stop();
  end
  
  initial
  $monitor("A = %d,B = %d,FGT = %d,FLE = %d,FEQ = %d",A,B,FGT,FLE,FEQ);
  comp inst(.IGT(IGT),
                .ILE(ILE),
                .IEQ(IEQ),
                .A(A),
				.B(B),
				.FGT(FGT),
				.FLE(FLE),
				.FEQ(FEQ));
endmodule
