module Q3 (input logic resetn, clock, x ,y ,z ,c1 , c2, output logic f, g); 
    always_ff @(posedge clock or negedge resetn )
    begin 
        if(!resetn) begin
         f <= 1'b0;
     end
     else begin
         f <= x ;
         if (c1) f <= y ;
         if (c2) f <= z ;
     end
 end

 always_comb
 begin
     if (c2) g=z ;
     else if (c1) g=y ;
     else g=x ;
 end
endmodule