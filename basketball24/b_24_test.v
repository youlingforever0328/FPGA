module b_24_test();
  reg CEP,CET,PE,CR,CP,LT,LE;
  reg[3:0]D1;
  reg[3:0]D0;
  wire warning;
  wire a1,b1,c1,d1,e1,f1,g1;
  wire a0,b0,c0,d0,e0,f0,g0;
  wire [3:0]num0;
  wire [3:0]num1;
  initial
  begin
    LT = 0;LE = 0;
    D1 = 4'b0010;D0 = 4'b0101;  //  2  5    
    CP = 0;         
    CR = 1;
    PE = 1;
    CEP = 0;
    CET = 0;                 // ????????
    #15 PE = 0;              // ??????? 25
    #20 PE = 1;              // ??
	#15   CEP = 1;CET = 1;LT = 1;   // ?????
    #1200 CEP = 0;CET = 0;
    #200  CEP = 1;CET = 1;
    #1400 CR = 0;   // ????
  end

  always #50 CP = ~CP;//?????50ns????
  initial
  $monitor("Q1 = %d %d %d %d %d %d %d ,Q0 = %d %d %d %d %d %d %d , the number is %d%d , warning = %d",a1,b1,c1,d1,e1,f1,g1,a0,b0,c0,d0,e0,f0,g0,num1,num0,warning);
  b_24 inst(.CEP(CEP),
            .CET(CET),
            .PE(PE),
            .CR(CR),
			.CP(CP),
			.LE(LE),
            .LT(LT),
            .D1(D1),
            .D0(D0),
			.a1(a1),
                .b1(b1),
                .c1(c1),
                .d1(d1),
				.e1(e1),
				.f1(f1),
				.g1(g1),
			.a0(a0),
                .b0(b0),
                .c0(c0),
                .d0(d0),
				.e0(e0),
				.f0(f0),
				.g0(g0),
			.warning(warning),
                .num1(num1),
                .num0(num0));
endmodule
