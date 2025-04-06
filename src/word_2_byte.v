module word_2_byte
  (input  rst,
   input  clk,
   input  ce,
   input  word_dv,
   input  [15:0] word,
   output byte_dv,
   output [7:0] byteee);
  wire word_dv_dly;
  wire word_dv_dly2;
  wire [15:0] word_reg;
  wire [7:0] n17_o;
  wire [7:0] n18_o;
  wire [7:0] n20_o;
  wire [7:0] n21_o;
  wire n23_o;
  reg n24_q;
  reg n25_q;
  reg [15:0] n26_q;
  assign byte_dv = n23_o;
  assign byteee = n21_o;
  /* word_2_byte.vhd:44:12  */
  assign word_dv_dly = n24_q; // (signal)
  /* word_2_byte.vhd:44:25  */
  assign word_dv_dly2 = n25_q; // (signal)
  /* word_2_byte.vhd:45:12  */
  assign word_reg = n26_q; // (signal)
  /* word_2_byte.vhd:65:29  */
  assign n17_o = word_reg[7:0];
  /* word_2_byte.vhd:67:29  */
  assign n18_o = word_reg[15:8];
  /* word_2_byte.vhd:66:9  */
  assign n20_o = word_dv_dly2 ? n18_o : 8'b00000000;
  /* word_2_byte.vhd:64:9  */
  assign n21_o = word_dv_dly ? n17_o : n20_o;
  /* word_2_byte.vhd:73:28  */
  assign n23_o = word_dv_dly | word_dv_dly2;
  /* word_2_byte.vhd:55:9  */
  always @(posedge clk or posedge rst)
    if (rst)
      n24_q <= 1'b0;
    else
      n24_q <= word_dv;
  /* word_2_byte.vhd:55:9  */
  always @(posedge clk or posedge rst)
    if (rst)
      n25_q <= 1'b0;
    else
      n25_q <= word_dv_dly;
  /* word_2_byte.vhd:55:9  */
  always @(posedge clk or posedge rst)
    if (rst)
      n26_q <= 16'b0000000000000000;
    else
      n26_q <= word;
endmodule

