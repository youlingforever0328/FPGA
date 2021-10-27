module mux8to1(
  input E,
  input [7:0] D,   
  input [2:0] S,
  output reg Y
);
  always @(*)
  begin
    if (E == 1) Y = 0;
	else
	  case(S)
	    3'd0:Y = D[0];
		3'd1:Y = D[1];
		3'd2:Y = D[2];
		3'd3:Y = D[3];
		3'd4:Y = D[4];
		3'd5:Y = D[5];
		3'd6:Y = D[6];
		3'd7:Y = D[7];  
	  endcase
  end
endmodule
