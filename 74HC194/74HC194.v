/**???4????????74HC194**/
module S_74HC194(
  input S1,S0,           //????????
  input Dsr,Dsl,         //??????
  input CP,CR,           //???????
  input [3:0]D,          //??????
  output reg [3:0] Q     //??????
);
  always @(posedge CP,negedge CR)
  if(~CR)Q <= 4'b0000;           //??????
  else
    case({S1,S0})
	  2'b00:Q <= Q;              //??????
	  2'b01:Q <= {Q[2:0],Dsr};   //??
	  2'b10:Q <= {Dsl,Q[3:1]};   //??
	  2'b11:Q <= D;              //????
	endcase
endmodule
