module mux8to1_test();
  reg E;
  reg [7:0] D;
  reg [2:0] S;
  wire Y;
  integer k = 0;
  initial
  begin 
    S = 3'b000;
    D = 8'b1101_0101;                   //????0
    E = 1;               
    #50 E = 0;                  //??? 
    for(k = 0;k < 7;k = k + 1)  //??????0~9
        #50 S = S + 1; 
    #100 $stop();                       //????
  end
  
  initial
  $monitor("Y = %bY",Y);
  mux8to1 inst(.E(E),
                .D(D),
                .S(S),
                .Y(Y));
endmodule
