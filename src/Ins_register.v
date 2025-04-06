module Ins_register (
  input  clk,
  input  rst,
  input  ce,
  input  [15:0] data,
  input  load_RI,
  output [2:0] code_op,
  output [5:0] ADR_RI
);
  reg [15:0] n14_q; // Registre d'instruction

  assign code_op = n14_q[15:13]; // Extraction du code opération
  assign ADR_RI  = n14_q[5:0];   // Extraction de l'adresse

  always @(posedge clk or posedge rst)
    if (rst)
      n14_q <= 16'b0;
    else if (load_RI & ce) // Chargement conditionnel
      n14_q <= data;

endmodule
