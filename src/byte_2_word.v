module byte_2_word
  (input  rst,
   input  clk,
   input  ce,
   input  byte_dv,
   input  [7:0] byteee,
   output word_dv,
   output [15:0] word);
  wire [7:0] byte_reg;
  wire [7:0] byte_reg2;
  wire byte_dv_dly;
  wire [1:0] byte_count;
  wire n7_o;
  wire n8_o;
  wire [1:0] n28_o;
  wire n30_o;
  wire n36_o;
  wire n37_o;
  wire n38_o;
  wire n39_o;
  wire [15:0] n41_o;
  wire [7:0] n42_o;
  reg [7:0] n43_q;
  wire [7:0] n44_o;
  reg [7:0] n45_q;
  wire n46_o;
  reg n47_q;
  wire [1:0] n48_o;
  reg [1:0] n49_q;
  assign word_dv = n39_o;
  assign word = n41_o;
  /* byte_2_word.vhd:45:12  */
  assign byte_reg = n43_q; // (signal)
  /* byte_2_word.vhd:45:22  */
  assign byte_reg2 = n45_q; // (signal)
  /* byte_2_word.vhd:46:12  */
  assign byte_dv_dly = n47_q; // (signal)
  /* byte_2_word.vhd:47:12  */
  assign byte_count = n49_q; // (signal)
  /* byte_2_word.vhd:56:13  */
  assign n7_o = byte_dv & ce;
  /* byte_2_word.vhd:56:13  */
  assign n8_o = byte_dv & ce;
  /* byte_2_word.vhd:83:46  */
  assign n28_o = byte_count + 2'b01;
  /* byte_2_word.vhd:81:13  */
  assign n30_o = byte_dv & ce;
  /* byte_2_word.vhd:89:36  */
  assign n36_o = byte_count[0];
  /* byte_2_word.vhd:89:40  */
  assign n37_o = ~n36_o;
  /* byte_2_word.vhd:89:46  */
  assign n38_o = byte_dv_dly & n37_o;
  /* byte_2_word.vhd:89:20  */
  assign n39_o = n38_o ? 1'b1 : 1'b0;
  /* byte_2_word.vhd:91:22  */
  assign n41_o = {byte_reg, byte_reg2};
  /* byte_2_word.vhd:55:9  */
  assign n42_o = n7_o ? byteee : byte_reg;
  /* byte_2_word.vhd:55:9  */
  always @(posedge clk or posedge rst)
    if (rst)
      n43_q <= 8'b00000000;
    else
      n43_q <= n42_o;
  /* byte_2_word.vhd:55:9  */
  assign n44_o = n8_o ? byte_reg : byte_reg2;
  /* byte_2_word.vhd:55:9  */
  always @(posedge clk or posedge rst)
    if (rst)
      n45_q <= 8'b00000000;
    else
      n45_q <= n44_o;
  /* byte_2_word.vhd:69:9  */
  assign n46_o = ce ? byte_dv : byte_dv_dly;
  /* byte_2_word.vhd:69:9  */
  always @(posedge clk or posedge rst)
    if (rst)
      n47_q <= 1'b0;
    else
      n47_q <= n46_o;
  /* byte_2_word.vhd:80:9  */
  assign n48_o = n30_o ? n28_o : byte_count;
  /* byte_2_word.vhd:80:9  */
  always @(posedge clk or posedge rst)
    if (rst)
      n49_q <= 2'b00;
    else
      n49_q <= n48_o;
endmodule

