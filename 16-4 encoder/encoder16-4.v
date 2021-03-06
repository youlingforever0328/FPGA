`include "CD4532.v"
module encoder16_4(
  input EI,        
  input [15:0] A,            
  output [3:0] L,            
  output EO,GS    
);
  begin
  wire [2:0] Y1;
  wire [2:0] Y0;
  wire GS1,GS0,EO1;
  CD4532 cd1(.EI(EI),.I(A[15:8]),.Y(Y1),.GS(GS1),.EO(EO1));
  CD4532 cd2(.EI(EO1),.I(A[7:0]),.Y(Y0),.GS(GS0),.EO(EO));
  assign L[3] = GS1;
  or G3(GS,GS1,GS0);
  or G2(L[2],Y1[2],Y0[2]);
  or G1(L[1],Y1[1],Y0[1]);
  or G0(L[0],Y1[0],Y0[0]); 
  end
endmodule
