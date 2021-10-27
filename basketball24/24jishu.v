module C_24(input CEP1,CET1,PE1,CR1,CEP0,CET0,PE0,CR0,CP,input[3:0]D1,[3:0]D0,output TC1,TC0,output [3:0]Q1,[3:0]Q0);
  begin
  wire CP1;              //????????
  c_falling C0( .CEP(CEP0),
                .CET(CET0),
                .PE(PE0),
                .CP(CP),
                .CR(CR0),
                .D(D0),
                .TC(TC0),
                .Q(Q0));
  or G1(CP1,Q0[0],Q0[1],Q0[2],Q0[3]);
  c_falling C1(.CEP(CEP1),
                .CET(CET1),
                .PE(PE1),
                .CP(CP1),
                .CR(CR1),
                .D(D1),
                .TC(TC1),
                .Q(Q1));
  
  end                     
endmodule
