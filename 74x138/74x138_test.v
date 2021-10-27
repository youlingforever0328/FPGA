module CD4532_test();
  reg [2:0] E;
  reg [2:0] A;
  wire [7:0] Y;
  integer k;
  initial
  begin
    begin
            k=0;
            A = 3'b000;
            E = 3'b000;
	#100 E = 3'b010;
        #100 E = 3'b001;
	#100 E = 3'b100;
        for(k=0;k<7;k=k+1)
           #100 A = A + 1;

        #200 $stop();
    end
  end
initial
   
   $monitor("E=%b   ",E,"A=%b   ",A," %b ",Y[0]," %b ",Y[1]," %b ",Y[2]," %b ",Y[3]," %b ",Y[4]," %b ",Y[5]," %b ",Y[6]," %b ",Y[7]);
   CD4532 inst(.E(E),
              .A(A),
              .Y(Y));
endmodule
