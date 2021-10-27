module c_falling(input CEP,CET,PE,CP,CR,input[3:0]D,output reg[3:0]Q);
   wire CE;                                   //??????
   assign CE = CEP & CET;                     //CE = 1 ??????
   always @(posedge CP,negedge CR,negedge PE)
     if (~CR) Q <= 4'b0000;                   //????
     else if(~PE&&(D<=4'd9)) Q <= D;                     //????
     else if (CE) 
       begin
         if(Q > 0)
             Q <= Q - 1'b1;
         else 
             Q <= 4'b1001;		
       end	   
     else Q <= Q;                             
endmodule
