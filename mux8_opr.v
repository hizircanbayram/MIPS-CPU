module mux8_opr(res, a, b, c, d, e, f, g, h, s0, s1, s2);
    input a, b, c, d, e, f, g, h, s0, s1, s2;
    output res;
    wire temp1, temp2;
	

	mux4_opr m1(temp1, a, b, c, d, s1, s2); 
	mux4_opr m2(temp2, e, f, g, h, s1, s2); 
	mux2_opr m3(res, temp1, temp2, s0);
	
endmodule