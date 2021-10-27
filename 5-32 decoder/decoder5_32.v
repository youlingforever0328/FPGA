module C74X139(input E,input [1:0] A,output reg [3:0] Y);
  integer k;
  always @(E,A)
  begin
    Y = 4'b1111;
    if (E == 1);
	else
	   begin
	    for(k=0;k<4;k=k+1)
		  if(A == k)
		    Y[k] = 0;	
	   end
  end
endmodule




module decoder5_32(
  input E,        
  input  [4:0]  B,            
  output [31:0] L            
);
  begin
  wire E2,E1;
  wire [3:0] Y;
  assign E2 = 0;
  assign E3 = 1;
  C74X139 C(.E(E),.A(B[4:3]),.Y(Y)); 
  C74X138 CX0(.E3(E3),.E2(E2),.E1(Y[0]),.A(B[2:0]),.Y(L[7:0]));
  C74X138 CX1(.E3(E3),.E2(E2),.E1(Y[1]),.A(B[2:0]),.Y(L[15:8]));
  C74X138 CX2(.E3(E3),.E2(E2),.E1(Y[2]),.A(B[2:0]),.Y(L[23:16]));
  C74X138 CX3(.E3(E3),.E2(E2),.E1(Y[3]),.A(B[2:0]),.Y(L[31:24]));
  end
endmodule
