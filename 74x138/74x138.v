module C74X138(input E3,E2,E1,input [2:0] A,output reg [7:0] Y);
  integer k;
  always @(E3,E2,E1,A)
  begin
    Y = 8'b11111111;
    if (E3 == 0);
	else if (E2 == 1);
	else if (E1 == 1);
	else
	   begin
	    for(k=0;k<8;k=k+1)
		  if(A == k)
		    Y[k] = 0;	
	   end
  end
endmodule
