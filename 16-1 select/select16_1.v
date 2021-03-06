/**??74HC151???16?-4??????**/
`include "74HC151.v"    //?????74HC151
module select16_1(        
  input  [3:0] S,
  input  [15:0] D,
  output Y            
);
  begin
  wire Y0;       //????
  wire Y1;       //????
  mux8to1 m0(.E(S[3]),.D(D[7:0]),.S(S[2:0]),.Y(Y0));  //???CD4532
  mux8to1 m1(.E(~S[3]),.D(D[15:8]),.S(S[2:0]),.Y(Y1));   //???CD4532 
  or G(Y,Y0,Y1);        //????
  end
endmodule
