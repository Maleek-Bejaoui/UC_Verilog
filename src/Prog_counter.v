module Prog_counter (
  input  [5:0] ADR_IN,
  input  clk,
  input  ce,
  input  rst,
  input  clear_PC,
  input  load_PC,
  input  enable_PC,
  output [5:0] ADR_OUT
);
  reg [5:0] n16_q;

  assign ADR_OUT = n16_q;
  always @(posedge clk or posedge rst)
    
    if (rst)
      n16_q <= 6'b000000;  // Reset immédiat
    else if (ce) begin
      if (load_PC)
        n16_q <= ADR_IN;    // Chargement d'une adresse
      else if (enable_PC)
        n16_q <= clear_PC ? 6'b000000 : n16_q + 1;  // Effacement ou incrémentation
    end

endmodule

