module Q10(input clock,
	        output logic s1, s2);
			  
    logic[12:0] cont;

    always_ff @(negedge clock) begin
		  if(cont == 13'd4599)
            cont <= 13'd0;
        else
            cont <= cont + 13'd1;
				
        if(cont>=13'd3849 && cont<13'd4149)
            s1 <= 13'd0;
        else
            s1 <= 13'd1;

        if(cont>=13'd3199 && cont<13'd3799)
            s2 <= 13'd0;
        else
            s2 <= 13'd1;
    end
endmodule