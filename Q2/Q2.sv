module Q2(input clock,
			 output logic f,
			 output logic[8:0] count);
	
	logic[8:0] inputCount;
	logic inputF;
	
	always_ff @(posedge clock) begin
		f <= inputF;
		count <= inputCount;
	end
			 
	always_comb begin
		if(count==9'd499)
			inputCount = 9'd0;
		else
			inputCount = count + 9'd1;
			
		if(count>9'd19 && count<9'd90)
			inputF = 1'd0;
		else
			inputF = 1'd1;
	end
endmodule

/* Se a frequencua de entrada for 100 MHz, como são 500 ciclos de clock, então a frequencia de sáida será de 0,2 MHz*/