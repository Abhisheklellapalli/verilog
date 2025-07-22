module and_gate(
  input a,b,
  output y);
  assign y = a&b; //data flow
  y = (a,b,y); //structural
endmodule
