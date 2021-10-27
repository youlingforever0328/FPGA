/**74HC85 4?????? **/
module comp(
  input IGT,ILE,IEQ,
  input [3:0] A,         //??????
  input [3:0] B,         //??????
  output reg FGT,FLE,FEQ           //??????????????
);
  always @ (*)
  begin
    FGT = 0;FLE = 0;FEQ = 0;
	if(A[3] > B[3])      begin FGT = 1;FLE = 0;FEQ = 0; end  //?????
    else if(A[3] < B[3]) begin FGT = 0;FLE = 1;FEQ = 0; end  //????? 
    else if(A[2] > B[2]) begin FGT = 1;FLE = 0;FEQ = 0; end  //????????????
    else if(A[2] < B[2]) begin FGT = 0;FLE = 1;FEQ = 0; end  //????????????
    else if(A[1] > B[1]) begin FGT = 1;FLE = 0;FEQ = 0; end  //??????
    else if(A[1] < B[1]) begin FGT = 0;FLE = 1;FEQ = 0; end  //??????
    else if(A[0] > B[0]) begin FGT = 1;FLE = 0;FEQ = 0; end  //??????
    else if(A[0] < B[0]) begin FGT = 0;FLE = 1;FEQ = 0; end  //??????
    else                 begin FGT = IGT;FLE = ILE;FEQ = IEQ; end  //????????????????????????
  end 	 
endmodule
