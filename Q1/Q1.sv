module Q1(input swap, enable, clock,
			 output logic[3:0] outputUp, outputDown);
	
	logic[3:0] inputUp, inputDown, inputEnableUp, inputEnableDown;
	
	always_ff @(posedge clock) begin
		outputUp <= inputUp;
		outputDown <= inputDown;
	end
	
	always_comb begin
		if(swap) begin
			inputEnableUp <= outputDown;
			inputEnableDown <= outputUp;
		end
		else begin
			inputEnableUp <= outputUp + 4'd1;
			inputEnableDown <= outputDown - 4'd1;
		end
		
		if(enable) begin
			inputUp <= inputEnableUp;
			inputDown <= inputEnableDown;
		end
		else begin
			inputUp <= outputUp;
			inputDown <= outputDown;
		end
	end
endmodule