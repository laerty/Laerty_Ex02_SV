module Q5 (input logic resetn, clock, input logic[7:0] data_in, output logic[2:0] msb);

    integer i;
    
    always_ff @(posedge clock or negedge resetn)
    begin
       if(!resetn) begin
           msb <= 3'b000;
       end
       else begin
				i = 3'd0;
				while (i<=3'd7) begin
					if (data_in[i]) msb <= i;
					i = i + 3'd1;
		      end

		 end
   end
endmodule

/* O código da questão é sintetizável e como pode ser visto, o laço for pode ser trocado por um while porque se tem um número limitado de repetições.