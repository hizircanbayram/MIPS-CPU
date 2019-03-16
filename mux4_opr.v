module mux4_opr(res, a, b, c, d, s0, s1);
    input a, b, c, d, s0, s1;
    output res;
    wire temp1, temp2;


	mux2_opr m1(temp1, a, b, s1); 
	mux2_opr m2(temp2, c, d, s1); 
	mux2_opr m3(res, temp1, temp2, s0);

	
    
endmodule