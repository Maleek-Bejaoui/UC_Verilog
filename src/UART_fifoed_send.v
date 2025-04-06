module UART_fifoed_send
  (input  clk_100MHz,
   input  reset,
   input  dat_en,
   input  [7:0] dat,
   output TX,
   output fifo_empty,
   output fifo_afull,
   output fifo_full);
  wire [9:0] cnt;
  wire top;
  wire [8:0] shift;
  wire [3:0] nbbits;
  wire [11:0] read_index;
  wire [11:0] write_index;
  wire [12:0] n_elements;
  wire [31:0] n5_o;
  wire n7_o;
  wire n8_o;
  wire n10_o;
  wire [31:0] n12_o;
  wire n14_o;
  wire n15_o;
  wire [31:0] n18_o;
  wire n20_o;
  wire n21_o;
  wire [31:0] n24_o;
  wire n26_o;
  wire n28_o;
  wire [31:0] n29_o;
  wire n31_o;
  wire n32_o;
  wire [31:0] n33_o;
  wire n35_o;
  wire n36_o;
  wire n37_o;
  wire n38_o;
  wire [31:0] n43_o;
  wire n45_o;
  wire [31:0] n46_o;
  wire n48_o;
  wire n49_o;
  wire [31:0] n50_o;
  wire [31:0] n52_o;
  wire [9:0] n53_o;
  wire [9:0] n55_o;
  wire [9:0] n57_o;
  wire [31:0] n63_o;
  wire n65_o;
  wire [31:0] n66_o;
  wire n68_o;
  wire [8:0] n74_o;
  wire [8:0] n75_o;
  wire [3:0] n77_o;
  wire [7:0] n78_o;
  wire [8:0] n80_o;
  wire [31:0] n81_o;
  wire n83_o;
  wire [31:0] n84_o;
  wire [31:0] n86_o;
  wire [3:0] n87_o;
  wire [3:0] n89_o;
  wire [8:0] n90_o;
  wire [3:0] n91_o;
  wire [8:0] n92_o;
  wire [3:0] n93_o;
  wire [8:0] n95_o;
  wire [3:0] n97_o;
  wire [31:0] n104_o;
  wire n106_o;
  wire [31:0] n107_o;
  wire n109_o;
  wire n110_o;
  wire n116_o;
  wire [31:0] n117_o;
  wire n119_o;
  wire [31:0] n120_o;
  wire [31:0] n122_o;
  wire [11:0] n123_o;
  wire [11:0] n125_o;
  wire [11:0] n126_o;
  wire [11:0] n128_o;
  wire [31:0] n134_o;
  wire n136_o;
  wire [31:0] n137_o;
  wire n139_o;
  wire [31:0] n140_o;
  wire n142_o;
  wire n143_o;
  wire [31:0] n144_o;
  wire [31:0] n146_o;
  wire [12:0] n147_o;
  wire [12:0] n148_o;
  wire [12:0] n150_o;
  wire [31:0] n151_o;
  wire n153_o;
  wire [31:0] n154_o;
  wire n156_o;
  wire n157_o;
  wire [31:0] n158_o;
  wire [31:0] n160_o;
  wire [12:0] n161_o;
  wire [12:0] n162_o;
  wire [12:0] n163_o;
  wire [12:0] n165_o;
  wire [31:0] n171_o;
  wire n173_o;
  wire n175_o;
  wire n176_o;
  wire [31:0] n177_o;
  wire n179_o;
  wire [31:0] n180_o;
  wire [31:0] n182_o;
  wire [11:0] n183_o;
  wire [11:0] n185_o;
  wire [11:0] n191_o;
  wire [11:0] n194_o;
  reg [9:0] n198_q;
  reg [8:0] n199_q;
  reg [3:0] n200_q;
  wire n201_o;
  wire n202_o;
  reg [11:0] n205_q;
  reg [11:0] n206_q;
  reg [12:0] n207_q;
  wire [7:0] n208_data; // mem_rd
  assign TX = n10_o;
  assign fifo_empty = n15_o;
  assign fifo_afull = n21_o;
  assign fifo_full = n38_o;
  /* UART_fifoed_send.vhd:45:11  */
  assign cnt = n198_q; // (signal)
  /* UART_fifoed_send.vhd:46:11  */
  assign top = n8_o; // (signal)
  /* UART_fifoed_send.vhd:47:11  */
  assign shift = n199_q; // (signal)
  /* UART_fifoed_send.vhd:48:11  */
  assign nbbits = n200_q; // (signal)
  /* UART_fifoed_send.vhd:50:11  */
  assign read_index = n205_q; // (signal)
  /* UART_fifoed_send.vhd:51:11  */
  assign write_index = n206_q; // (signal)
  /* UART_fifoed_send.vhd:52:11  */
  assign n_elements = n207_q; // (signal)
  /* UART_fifoed_send.vhd:58:24  */
  assign n5_o = {22'b0, cnt};  //  uext
  /* UART_fifoed_send.vhd:58:24  */
  assign n7_o = n5_o == 32'b00000000000000000000000000000000;
  /* UART_fifoed_send.vhd:58:15  */
  assign n8_o = n7_o ? 1'b1 : 1'b0;
  /* UART_fifoed_send.vhd:60:15  */
  assign n10_o = shift[0];
  /* UART_fifoed_send.vhd:62:38  */
  assign n12_o = {19'b0, n_elements};  //  uext
  /* UART_fifoed_send.vhd:62:38  */
  assign n14_o = n12_o == 32'b00000000000000000000000000000000;
  /* UART_fifoed_send.vhd:62:22  */
  assign n15_o = n14_o ? 1'b1 : 1'b0;
  /* UART_fifoed_send.vhd:64:38  */
  assign n18_o = {19'b0, n_elements};  //  uext
  /* UART_fifoed_send.vhd:64:38  */
  assign n20_o = $signed(n18_o) >= $signed(32'b00000000000000000000111111111010);
  /* UART_fifoed_send.vhd:64:22  */
  assign n21_o = n20_o ? 1'b1 : 1'b0;
  /* UART_fifoed_send.vhd:66:37  */
  assign n24_o = {19'b0, n_elements};  //  uext
  /* UART_fifoed_send.vhd:66:37  */
  assign n26_o = n24_o == 32'b00000000000000000001000000000000;
  /* UART_fifoed_send.vhd:67:25  */
  assign n28_o = dat_en & 1'b1;
  /* UART_fifoed_send.vhd:67:53  */
  assign n29_o = {28'b0, nbbits};  //  uext
  /* UART_fifoed_send.vhd:67:53  */
  assign n31_o = $signed(n29_o) < $signed(32'b00000000000000000000000000001100);
  /* UART_fifoed_send.vhd:67:42  */
  assign n32_o = n31_o & n28_o;
  /* UART_fifoed_send.vhd:67:73  */
  assign n33_o = {19'b0, n_elements};  //  uext
  /* UART_fifoed_send.vhd:67:73  */
  assign n35_o = n33_o == 32'b00000000000000000000111111111111;
  /* UART_fifoed_send.vhd:67:58  */
  assign n36_o = n35_o & n32_o;
  /* UART_fifoed_send.vhd:66:49  */
  assign n37_o = n26_o | n36_o;
  /* UART_fifoed_send.vhd:66:21  */
  assign n38_o = n37_o ? 1'b1 : 1'b0;
  /* UART_fifoed_send.vhd:78:23  */
  assign n43_o = {28'b0, nbbits};  //  uext
  /* UART_fifoed_send.vhd:78:23  */
  assign n45_o = $signed(n43_o) >= $signed(32'b00000000000000000000000000001100);
  /* UART_fifoed_send.vhd:78:36  */
  assign n46_o = {22'b0, cnt};  //  uext
  /* UART_fifoed_send.vhd:78:36  */
  assign n48_o = n46_o == 32'b00000000000000000000000000000000;
  /* UART_fifoed_send.vhd:78:29  */
  assign n49_o = n45_o | n48_o;
  /* UART_fifoed_send.vhd:81:24  */
  assign n50_o = {22'b0, cnt};  //  uext
  /* UART_fifoed_send.vhd:81:24  */
  assign n52_o = n50_o - 32'b00000000000000000000000000000001;
  /* UART_fifoed_send.vhd:81:20  */
  assign n53_o = n52_o[9:0];  // trunc
  /* UART_fifoed_send.vhd:78:10  */
  assign n55_o = n49_o ? 10'b0001101100 : n53_o;
  /* UART_fifoed_send.vhd:76:10  */
  assign n57_o = reset ? 10'b0000000000 : n55_o;
  /* UART_fifoed_send.vhd:92:23  */
  assign n63_o = {28'b0, nbbits};  //  uext
  /* UART_fifoed_send.vhd:92:23  */
  assign n65_o = $signed(n63_o) >= $signed(32'b00000000000000000000000000001100);
  /* UART_fifoed_send.vhd:94:27  */
  assign n66_o = {19'b0, n_elements};  //  uext
  /* UART_fifoed_send.vhd:94:27  */
  assign n68_o = $signed(n66_o) > $signed(32'b00000000000000000000000000000000);
  /* UART_fifoed_send.vhd:95:42  */
  assign n74_o = {n208_data, 1'b0};
  /* UART_fifoed_send.vhd:94:13  */
  assign n75_o = n68_o ? n74_o : shift;
  /* UART_fifoed_send.vhd:94:13  */
  assign n77_o = n68_o ? 4'b1001 : nbbits;
  /* UART_fifoed_send.vhd:101:36  */
  assign n78_o = shift[8:1];
  /* UART_fifoed_send.vhd:101:29  */
  assign n80_o = {1'b1, n78_o};
  /* UART_fifoed_send.vhd:102:26  */
  assign n81_o = {28'b0, nbbits};  //  uext
  /* UART_fifoed_send.vhd:102:26  */
  assign n83_o = n81_o == 32'b00000000000000000000000000000000;
  /* UART_fifoed_send.vhd:105:36  */
  assign n84_o = {28'b0, nbbits};  //  uext
  /* UART_fifoed_send.vhd:105:36  */
  assign n86_o = n84_o - 32'b00000000000000000000000000000001;
  /* UART_fifoed_send.vhd:105:29  */
  assign n87_o = n86_o[3:0];  // trunc
  /* UART_fifoed_send.vhd:102:16  */
  assign n89_o = n83_o ? 4'b1111 : n87_o;
  /* UART_fifoed_send.vhd:100:13  */
  assign n90_o = top ? n80_o : shift;
  /* UART_fifoed_send.vhd:100:13  */
  assign n91_o = top ? n89_o : nbbits;
  /* UART_fifoed_send.vhd:92:10  */
  assign n92_o = n65_o ? n75_o : n90_o;
  /* UART_fifoed_send.vhd:92:10  */
  assign n93_o = n65_o ? n77_o : n91_o;
  /* UART_fifoed_send.vhd:89:10  */
  assign n95_o = reset ? 9'b111111111 : n92_o;
  /* UART_fifoed_send.vhd:89:10  */
  assign n97_o = reset ? 4'b1100 : n93_o;
  /* UART_fifoed_send.vhd:117:28  */
  assign n104_o = {19'b0, n_elements};  //  uext
  /* UART_fifoed_send.vhd:117:28  */
  assign n106_o = $signed(n104_o) > $signed(32'b00000000000000000000000000000000);
  /* UART_fifoed_send.vhd:117:43  */
  assign n107_o = {28'b0, nbbits};  //  uext
  /* UART_fifoed_send.vhd:117:43  */
  assign n109_o = $signed(n107_o) >= $signed(32'b00000000000000000000000000001100);
  /* UART_fifoed_send.vhd:117:32  */
  assign n110_o = n109_o & n106_o;
  /* UART_fifoed_send.vhd:117:50  */
  assign n116_o = n110_o | 1'b0;
  /* UART_fifoed_send.vhd:122:27  */
  assign n117_o = {20'b0, read_index};  //  uext
  /* UART_fifoed_send.vhd:122:27  */
  assign n119_o = n117_o == 32'b00000000000000000000111111111111;
  /* UART_fifoed_send.vhd:125:41  */
  assign n120_o = {20'b0, read_index};  //  uext
  /* UART_fifoed_send.vhd:125:41  */
  assign n122_o = n120_o + 32'b00000000000000000000000000000001;
  /* UART_fifoed_send.vhd:125:30  */
  assign n123_o = n122_o[11:0];  // trunc
  /* UART_fifoed_send.vhd:122:13  */
  assign n125_o = n119_o ? 12'b000000000000 : n123_o;
  /* UART_fifoed_send.vhd:117:10  */
  assign n126_o = n116_o ? n125_o : read_index;
  /* UART_fifoed_send.vhd:115:10  */
  assign n128_o = reset ? 12'b000000000000 : n126_o;
  /* UART_fifoed_send.vhd:137:27  */
  assign n134_o = {19'b0, n_elements};  //  uext
  /* UART_fifoed_send.vhd:137:27  */
  assign n136_o = n134_o == 32'b00000000000000000000000000000000;
  /* UART_fifoed_send.vhd:142:26  */
  assign n137_o = {28'b0, nbbits};  //  uext
  /* UART_fifoed_send.vhd:142:26  */
  assign n139_o = $signed(n137_o) < $signed(32'b00000000000000000000000000001100);
  /* UART_fifoed_send.vhd:142:46  */
  assign n140_o = {19'b0, n_elements};  //  uext
  /* UART_fifoed_send.vhd:142:46  */
  assign n142_o = $signed(n140_o) < $signed(32'b00000000000000000001000000000000);
  /* UART_fifoed_send.vhd:142:31  */
  assign n143_o = n142_o & n139_o;
  /* UART_fifoed_send.vhd:145:41  */
  assign n144_o = {19'b0, n_elements};  //  uext
  /* UART_fifoed_send.vhd:145:41  */
  assign n146_o = n144_o + 32'b00000000000000000000000000000001;
  /* UART_fifoed_send.vhd:145:30  */
  assign n147_o = n146_o[12:0];  // trunc
  /* UART_fifoed_send.vhd:142:13  */
  assign n148_o = n143_o ? n147_o : n_elements;
  /* UART_fifoed_send.vhd:137:13  */
  assign n150_o = n136_o ? 13'b0000000000001 : n148_o;
  /* UART_fifoed_send.vhd:147:27  */
  assign n151_o = {19'b0, n_elements};  //  uext
  /* UART_fifoed_send.vhd:147:27  */
  assign n153_o = $signed(n151_o) > $signed(32'b00000000000000000000000000000000);
  /* UART_fifoed_send.vhd:147:42  */
  assign n154_o = {28'b0, nbbits};  //  uext
  /* UART_fifoed_send.vhd:147:42  */
  assign n156_o = $signed(n154_o) >= $signed(32'b00000000000000000000000000001100);
  /* UART_fifoed_send.vhd:147:31  */
  assign n157_o = n156_o & n153_o;
  /* UART_fifoed_send.vhd:150:38  */
  assign n158_o = {19'b0, n_elements};  //  uext
  /* UART_fifoed_send.vhd:150:38  */
  assign n160_o = n158_o - 32'b00000000000000000000000000000001;
  /* UART_fifoed_send.vhd:150:27  */
  assign n161_o = n160_o[12:0];  // trunc
  /* UART_fifoed_send.vhd:147:10  */
  assign n162_o = n157_o ? n161_o : n_elements;
  /* UART_fifoed_send.vhd:135:10  */
  assign n163_o = dat_en ? n150_o : n162_o;
  /* UART_fifoed_send.vhd:133:10  */
  assign n165_o = reset ? 13'b0000000000000 : n163_o;
  /* UART_fifoed_send.vhd:159:45  */
  assign n171_o = {19'b0, n_elements};  //  uext
  /* UART_fifoed_send.vhd:159:45  */
  assign n173_o = $signed(n171_o) < $signed(32'b00000000000000000001000000000000);
  /* UART_fifoed_send.vhd:159:57  */
  assign n175_o = n173_o | 1'b0;
  /* UART_fifoed_send.vhd:159:29  */
  assign n176_o = n175_o & dat_en;
  /* UART_fifoed_send.vhd:162:28  */
  assign n177_o = {20'b0, write_index};  //  uext
  /* UART_fifoed_send.vhd:162:28  */
  assign n179_o = n177_o == 32'b00000000000000000000111111111111;
  /* UART_fifoed_send.vhd:165:43  */
  assign n180_o = {20'b0, write_index};  //  uext
  /* UART_fifoed_send.vhd:165:43  */
  assign n182_o = n180_o + 32'b00000000000000000000000000000001;
  /* UART_fifoed_send.vhd:165:31  */
  assign n183_o = n182_o[11:0];  // trunc
  /* UART_fifoed_send.vhd:162:13  */
  assign n185_o = n179_o ? 12'b000000000000 : n183_o;
  /* UART_fifoed_send.vhd:159:10  */
  assign n191_o = n176_o ? n185_o : write_index;
  /* UART_fifoed_send.vhd:157:10  */
  assign n194_o = reset ? 12'b000000000000 : n191_o;
  /* UART_fifoed_send.vhd:75:7  */
  always @(posedge clk_100MHz)
    n198_q <= n57_o;
  /* UART_fifoed_send.vhd:88:7  */
  always @(posedge clk_100MHz)
    n199_q <= n95_o;
  /* UART_fifoed_send.vhd:88:7  */
  always @(posedge clk_100MHz)
    n200_q <= n97_o;
  /* UART_fifoed_send.vhd:157:10  */
  assign n201_o = ~reset;
  /* UART_fifoed_send.vhd:157:10  */
  assign n202_o = n201_o & n176_o;
  /* UART_fifoed_send.vhd:114:7  */
  always @(posedge clk_100MHz)
    n205_q <= n128_o;
  /* UART_fifoed_send.vhd:156:7  */
  always @(posedge clk_100MHz)
    n206_q <= n194_o;
  /* UART_fifoed_send.vhd:132:7  */
  always @(posedge clk_100MHz)
    n207_q <= n165_o;
  /* UART_fifoed_send.vhd:95:30  */
  reg [7:0] fifo[4095:0] ; // memory
  assign n208_data = fifo[read_index];
  always @(posedge clk_100MHz)
    if (n202_o)
      fifo[write_index] <= dat;
  /* UART_fifoed_send.vhd:95:30  */
  /* UART_fifoed_send.vhd:168:18  */
endmodule

