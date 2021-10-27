module c_falling_test();
  reg CEP,CET,PE,CP,CR;
  reg[3:0] D;
  wire TC;
  wire[3:0] Q;
  initial
  begin
    D = 4'b1001;    //???????? 1110
    CP = 0;         //???????????
    CR = 1;         //???????????
    PE = 1;
    CEP = 1;
    CET = 1; 
    #15 PE = 0;     // 15ns ???????????
    #40 PE = 1;     // 20ns ???????????
    #1500 CR = 0;    // 290ns ???????????
    #20 CR = 1;     // 35ns ???????????
    #350 CET = 0;   // 490ns ?????
    #250 CET = 1;  // 200ns ?????
  end

  always #50 CP = ~CP;//?????50ns????
  initial
  $monitor("Q = %b,Q = %d",Q,Q);
  c_falling inst(.CEP(CEP),
                .CET(CET),
                .PE(PE),
                .CP(CP),
                .CR(CR),
                .D(D),
                .TC(TC),
                .Q(Q));
endmodule