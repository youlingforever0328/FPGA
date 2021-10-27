module seg7_decoder(
  input LE,BL,LT,[3:0]D,      //??????
  output reg a,b,c,d,e,f,g         //??????????????
);
  always @(*)
  begin
    if(LT == 0)  {a,b,c,d,e,f,g} = 7'b111_1111;           //?????7???????8
	else if(BL == 0) {a,b,c,d,e,f,g} = 7'b000_0000;       //?????7????
	else if(LE == 1) {a,b,c,d,e,f,g} = {a,b,c,d,e,f,g};   //????
	else 
	  case(D)
	    4'd0:{a,b,c,d,e,f,g} = 7'b111_1110;             //??0
		4'd1:{a,b,c,d,e,f,g} = 7'b011_0000;             //??1
		4'd2:{a,b,c,d,e,f,g} = 7'b110_1101;             //??2
		4'd3:{a,b,c,d,e,f,g} = 7'b111_1001;             //??3
		4'd4:{a,b,c,d,e,f,g} = 7'b011_0011;             //??4
		4'd5:{a,b,c,d,e,f,g} = 7'b101_1011;             //??5
		4'd6:{a,b,c,d,e,f,g} = 7'b001_1111;             //??6
		4'd7:{a,b,c,d,e,f,g} = 7'b111_0000;             //??7
		4'd8:{a,b,c,d,e,f,g} = 7'b111_1111;             //??8
		4'd9:{a,b,c,d,e,f,g} = 7'b111_1011;             //??9
		default:{a,b,c,d,e,f,g} = 7'b000_0000;//?8421BCD????????
	  endcase
  end
endmodule
