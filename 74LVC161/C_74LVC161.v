module C_74LVC161(input CEP,CET,PE,CP,CR,input[3:0]D,output TC,output reg[3:0]Q);
   wire CE;
   assign CE = CEP & CET;
   assign TC = CET & PE & (Q == 4'b1111);
   always @(posedge CP,negedge CR)
     if (~CR) Q <= 4'b0000;
     else if(~PE) Q <= D;
     else if (CE) Q <= Q + 1'b1;
     else Q <= Q;
endmodule
