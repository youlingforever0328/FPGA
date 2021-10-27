/**5?74HC85???16??????**/
`include "74HC85.v"    //?????74HC85
module compare_16(        
  input  [15:0] A,
  input  [15:0] B,
  input  IGT,ILE,IEQ,
  output FGT,FLE,FEQ              
);
  begin
  wire M;
  wire [3:0] A0;       //????
  wire [3:0] B0;       //????
  comp C0(.IGT(IGT),.ILE(ILE),.IEQ(IEQ),.A(A[3:0]),.B(B[3:0]),.FGT(A0[0]),.FLE(B0[0]),.FEQ(M));
  comp C1(.IGT(IGT),.ILE(ILE),.IEQ(IEQ),.A(A[7:4]),.B(B[7:4]),.FGT(A0[1]),.FLE(B0[1]),.FEQ(M));
  comp C2(.IGT(IGT),.ILE(ILE),.IEQ(IEQ),.A(A[11:8]),.B(B[11:8]),.FGT(A0[2]),.FLE(B0[2]),.FEQ(M));
  comp C3(.IGT(IGT),.ILE(ILE),.IEQ(IEQ),.A(A[15:12]),.B(B[15:12]),.FGT(A0[3]),.FLE(B0[3]),.FEQ(M));
  
  comp C4(.IGT(IGT),.ILE(ILE),.IEQ(IEQ),.A(A0),.B(B0),.FGT(FGT),.FLE(FLE),.FEQ(FEQ));
  end
endmodule
