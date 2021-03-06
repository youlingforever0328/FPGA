module S_74HC194_test();
  reg S1,S0;          
  reg Dsr,Dsl;        
  reg CP,CR;           
  reg[3:0] D;          
  wire[3:0] Q;   
  initial
  begin
    D = 4'b1111;
    CP = 0;
    CR = 1;
    S1 = 0;S0 = 1;
    Dsr = 1;Dsl = 0;
    #15 CR = 0;     // 15ns ???????????
    #20 CR = 1;     // 20ns ???????????
    #125 Dsr = 0;
    #100 Dsr = 1;
    #100 Dsr = 0;S1 = 1;S0 = 0;Dsl = 1;
    #100 Dsl = 0;
    #100 S1 = 1;S0 = 1;
    #100 S1 = 0;S0 = 0;
    #200 $stop();
  end

  always #50 CP = ~CP;//?????50ns????
  initial
  $monitor("Q = %b",Q);
  S_74HC194 inst(.S1(S1),
                .S0(S0),
                .Dsr(Dsr),
                .Dsl(Dsl),
                .CR(CR),
                .CP(CP),
                .D(D),
                .Q(Q));
endmodule
