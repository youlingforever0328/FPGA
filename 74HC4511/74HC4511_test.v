module seg7_decoder_test();
  reg LE,BL,LT;
  reg [3:0] D;
  wire a,b,c,d,e,f,g;
  integer num;
  initial
  begin 
    D = 4'b0000;
    num = 0;
    LT = 0;BL = 1;LE = 0;//??8
    #50 LT = 1;BL = 0;//??? 
    #50 LT = 1;BL = 1;LE = 0;
    for(num = 0;num < 9;num = num + 1)
        #50 D = D + 1; 
    #50 LT = 1;BL = 1;LE = 1;
    #100 $stop();
  end
  
  initial
  $monitor("D / num = %b , %d",D,D);
  seg7_decoder inst(.LE(LE),
                .BL(BL),
                .LT(LT),
                .D(D),
                .a(a),
                .b(b),
                .c(c),
                .d(d),
				.e(e),
				.f(f),
				.g(g));
endmodule
