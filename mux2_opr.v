module mux2_opr(res, a, b, s);
    input a, b, s;
    output res;
    wire not_s;
    wire temp1, temp2;
		
    not n1(not_s, s);  
    and and_1(temp1, a, not_s);
    and and_2(temp2, b, s);
    or or_1(res, temp1, temp2);
    
endmodule