module Q6 ( 
	input logic resetn, clock,
	output logic f, g 
);

logic [9:0] counter;

always_ff @(posedge clock or negedge resetn ) 
begin 
	if (!resetn) 
	begin
		counter <= 10'd0;
		f <= 1'b0 ;
		g <= 1'b0 ;
	end
	else 
	begin
		f <= 1'b1 ;
		
		if ( counter>10'd50 && counter<10'd250 ) f <= 1'b0;
			
		g <= 1'b0;
		
		if (counter>10'd150 && counter<10'd400) g <= 1'b1;
		
		if (counter <10'd900) counter <= counter + 10'd1;
		else counter <= 10'd0;
		
	end
end
endmodule