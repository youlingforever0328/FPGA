module CD4532_test();
  reg EI;
  reg [7:0] I;
  wire [2:0] Y;
  wire GS;
  wire EO;

  initial
  begin
    EI = 0;//???EI=0?????????
	I = 00000000;
	#100 EI = 1;//100nm?EI=1???????
    #100 I = 00000001;
  end

  always #100 I =I * 2;//??8???????
   
	
initial
   //???????????
   $monitor("EI=%d   ",EI,"I=%b   ",I,"Y=%b   ",Y,"GS=%d   ",GS,"EO=%d   ",EO);
   CD4532 inst(.EI(EI),
              .I(I),
              .Y(Y),
              .GS(GS),
              .EO(EO));
   
endmodule
