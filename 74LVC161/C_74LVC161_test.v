module C_74LVC161_test();
  reg CEP,CET,PE,CP,CR;
  reg[3:0] D;
  wire TC;
  wire[3:0] Q;
  initial
  begin
    D = 4'b1110;
    CP = 0;
    CR = 1;
    PE = 1;
    CEP = 1;
    CET = 1; 
    #15 CR = 0;
    #20 CR = 1;
    #290 PE = 0;
    #35 PE = 1;
    #490 CET = 0;
  end

  always #50 CP = ~CP;
  initial
  $monitor("Q = %b",Q);
  C_74LVC161 inst(.CEP(CEP),
                .CET(CET),
                .PE(PE),
                .CP(CP),
                .CR(CR),
                .D(D),
                .TC(TC),
                .Q(Q) );
endmodule
