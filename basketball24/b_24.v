`include "74HC4511.v"
module b_24(
  input  CEP,CET,PE,CR,CP,LT,LE,
  input  [3:0]D1,[3:0]D0,
  output warning,
  output a1,b1,c1,d1,e1,f1,g1,
  output a0,b0,c0,d0,e0,f0,g0,
  output [3:0]num1,[3:0]num0
);
  begin
  wire CP1;
  wire Q;  
  wire [3:0]Q1;
  wire [3:0]Q0;  
  c_falling C0( .CEP(CEP),
                .CET(CET),
                .PE(PE),
                .CP(CP),
                .CR(CR),
                .D(D0),
                .Q(Q0));
  assign num0 = Q0;			
  or G1(CP1,Q0[0],Q0[1],Q0[2],Q0[3]);
  
  c_falling C1(.CEP(CEP),
                .CET(CET),
                .PE(PE),
                .CP(CP1),
                .CR(CR),
                .D(D1),
                .Q(Q1));
  assign num1 = Q1;
  nor G2(Q,Q1[0],Q1[1],Q1[2],Q1[3],Q0[0],Q0[1],Q0[2],Q0[3]);
  assign CEP = ~Q;
  and A1(warning,Q,CR); 
  
  seg7_decoder S1(.LE(LE),
                .BL(CR),
                .LT(LT),
                .D(Q1),
                .a(a1),
                .b(b1),
                .c(c1),
                .d(d1),
				.e(e1),
				.f(f1),
				.g(g1));
				
  seg7_decoder S0(.LE(LE),
                .BL(CR),
                .LT(LT),
                .D(Q0),
                .a(a0),
                .b(b0),
                .c(c0),
                .d(d0),
				.e(e0),
				.f(f0),
				.g(g0));
  
  end                     
endmodule
