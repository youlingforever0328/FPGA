module C_24_test();
  reg CEP1,CET1,PE1,CR1,CEP0,CET0,PE0,CR0,CP;
  reg[3:0]D1;
  reg[3:0]D0;
  wire TC1,TC0;
  wire [3:0]Q1;
  wire [3:0]Q0;
  initial
  begin
    D1 = 4'b0010;D0 = 4'b0100;  //  2  4    
    CP = 0;         //???????????
    CR1 = 1;
    CR0 = 1;        //???????????
    PE1 = 1;PE0 = 1;
    CEP1 = 1;CEP0 = 1;
    CET1 = 1;CET0 = 1; 
    #15 PE1 = 0;PE0 = 0;     // ???? 2 4
    #40 PE1 = 1;PE0 = 1;     // 20ns ???????????
    #1500 CR0 = 0;CR1 = 0;   // 290ns ???????????
    #20 CR0 = 1;CR1 = 1;     // 35ns ???????????
    #350 CET0 = 0;CET1 = 0;  // 490ns ?????
    #250 CET0 = 1;CET1 = 1;  // 200ns ?????
  end

  always #50 CP = ~CP;//?????50ns????
  initial
  $monitor("Q1 = %d,Q0 = %d",Q1,Q0);
  C_24 inst(.CEP1(CEP1),
                .CET1(CET1),
                .PE1(PE1),
                .CR1(CR1),
                .D1(D1),
                .TC1(TC1),
                .Q1(Q1),
                .CEP0(CEP0),
                .CET0(CET0),
                .PE0(PE0),
                .CP(CP),
                .CR0(CR0),
                .D0(D0),
                .TC0(TC0),
                .Q0(Q0));
endmodule
