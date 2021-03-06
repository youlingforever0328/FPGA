module adder_4_test();
  reg Cin;
  reg [3:0] A;
  reg [3:0] B;
  wire [3:0] SUM;
  wire Cout;
  initial
  begin 
	Cin = 0;A = 4'b1011;B = 4'b0100;//11   4
	#50 B = 4'b1100;A = 4'b1000;//12   8
	#50 A = 4'b0010;B = 4'b0001;//2    1
	#50 B = 4'b1111;A = 4'b1110;//15   14
	#50 A = 4'b1011;B = 4'b1011;//11   11
    #50 Cin = 1;A = 4'b0010;B = 4'b0001;//2 + 1 + 1
    #100 $stop();
  end
  
  initial
  $monitor("A = %d,B = %d,Cin = %d,SUM = %d,Cout = %d",A,B,Cin,SUM,Cout);
  adder_4 inst( .A(A),
				.B(B),
				.Cin(Cin),
				.SUM(SUM),
				.Cout(Cout));
endmodule
