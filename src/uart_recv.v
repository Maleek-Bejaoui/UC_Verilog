module UART_recv
  (input  clk,
   input  reset,
   input  rx,
   output [7:0] dat,
   output dat_en);
  reg [2:0] state;
  reg [3:0] nbbits;
  wire [9:0] cnt;
  reg rxi;
  wire ref_bit;
  wire [7:0] shift;
  wire n13_o;
  wire [2:0] n15_o;
  wire n17_o;
  wire [31:0] n18_o;
  wire n20_o;
  wire [2:0] n22_o;
  wire [2:0] n24_o;
  wire n26_o;
  wire [31:0] n27_o;
  wire n29_o;
  wire [2:0] n31_o;
  wire n33_o;
  wire [31:0] n34_o;
  wire n36_o;
  wire [2:0] n38_o;
  wire n40_o;
  wire [31:0] n41_o;
  wire n43_o;
  wire [2:0] n46_o;
  wire [2:0] n48_o;
  wire n50_o;
  wire n51_o;
  wire [31:0] n52_o;
  wire n54_o;
  wire [2:0] n56_o;
  wire [2:0] n58_o;
  wire n60_o;
  wire [31:0] n61_o;
  wire n63_o;
  wire [2:0] n65_o;
  wire n67_o;
  wire [6:0] n68_o;
  reg [2:0] n70_o;
  wire [2:0] n72_o;
  wire n79_o;
  wire [31:0] n80_o;
  wire n82_o;
  wire [31:0] n83_o;
  wire [31:0] n85_o;
  wire [9:0] n86_o;
  wire [9:0] n88_o;
  wire n90_o;
  wire [31:0] n91_o;
  wire n93_o;
  wire [31:0] n94_o;
  wire [31:0] n96_o;
  wire [9:0] n97_o;
  wire [9:0] n99_o;
  wire n101_o;
  wire n102_o;
  wire [31:0] n103_o;
  wire [31:0] n105_o;
  wire [9:0] n106_o;
  wire [9:0] n108_o;
  wire n110_o;
  wire [31:0] n111_o;
  wire n113_o;
  wire n114_o;
  wire [9:0] n117_o;
  wire [9:0] n119_o;
  wire n121_o;
  wire [31:0] n122_o;
  wire [31:0] n124_o;
  wire [9:0] n125_o;
  wire n127_o;
  wire n128_o;
  wire [31:0] n129_o;
  wire [31:0] n131_o;
  wire [9:0] n132_o;
  wire [9:0] n134_o;
  wire n136_o;
  wire [6:0] n137_o;
  reg [9:0] n140_o;
  wire [9:0] n142_o;
  wire n149_o;
  wire n151_o;
  wire n152_o;
  wire n160_o;
  wire [31:0] n161_o;
  wire n163_o;
  wire n164_o;
  wire [31:0] n165_o;
  wire n167_o;
  wire n168_o;
  wire [6:0] n169_o;
  wire [7:0] n170_o;
  wire n178_o;
  wire n180_o;
  wire [31:0] n181_o;
  wire [31:0] n183_o;
  wire [3:0] n184_o;
  wire [3:0] n185_o;
  wire [3:0] n187_o;
  wire n194_o;
  wire [31:0] n195_o;
  wire n197_o;
  wire n198_o;
  wire [7:0] n199_o;
  wire n202_o;
  wire [7:0] n203_o;
  wire n205_o;
  reg [2:0] n209_q;
  reg [3:0] n210_q;
  reg [9:0] n211_q;
  reg n212_q;
  wire n213_o;
  reg n214_q;
  wire [7:0] n215_o;
  reg [7:0] n216_q;
  reg [7:0] n217_q;
  reg n218_q;
  assign dat = n217_q;
  assign dat_en = n218_q;
  /* uart_recv.vhd:47:11  */
  always @*
    state = n209_q; // (isignal)
  initial
    state = 3'b000;
  /* uart_recv.vhd:48:11  */
  always @*
    nbbits = n210_q; // (isignal)
  initial
    nbbits = 4'b0000;
  /* uart_recv.vhd:49:11  */
  assign cnt = n211_q; // (signal)
  /* uart_recv.vhd:50:11  */
  always @*
    rxi = n212_q; // (isignal)
  initial
    rxi = 1'b1;
  /* uart_recv.vhd:51:11  */
  assign ref_bit = n214_q; // (signal)
  /* uart_recv.vhd:52:11  */
  assign shift = n216_q; // (signal)
  /* uart_recv.vhd:77:36  */
  assign n13_o = ~rxi;
  /* uart_recv.vhd:77:29  */
  assign n15_o = n13_o ? 3'b001 : state;
  /* uart_recv.vhd:77:16  */
  assign n17_o = state == 3'b000;
  /* uart_recv.vhd:82:20  */
  assign n18_o = {22'b0, cnt};  //  uext
  /* uart_recv.vhd:82:20  */
  assign n20_o = n18_o == 32'b00000000000000000000000000000000;
  /* uart_recv.vhd:82:10  */
  assign n22_o = n20_o ? 3'b010 : state;
  /* uart_recv.vhd:80:35  */
  assign n24_o = rxi ? 3'b000 : n22_o;
  /* uart_recv.vhd:80:13  */
  assign n26_o = state == 3'b001;
  /* uart_recv.vhd:85:39  */
  assign n27_o = {22'b0, cnt};  //  uext
  /* uart_recv.vhd:85:39  */
  assign n29_o = n27_o == 32'b00000000000000000000000000000000;
  /* uart_recv.vhd:85:32  */
  assign n31_o = n29_o ? 3'b011 : state;
  /* uart_recv.vhd:85:10  */
  assign n33_o = state == 3'b010;
  /* uart_recv.vhd:88:33  */
  assign n34_o = {22'b0, cnt};  //  uext
  /* uart_recv.vhd:88:33  */
  assign n36_o = n34_o == 32'b00000000000000000000000000000000;
  /* uart_recv.vhd:88:26  */
  assign n38_o = n36_o ? 3'b100 : state;
  /* uart_recv.vhd:88:7  */
  assign n40_o = state == 3'b011;
  /* uart_recv.vhd:91:35  */
  assign n41_o = {28'b0, nbbits};  //  uext
  /* uart_recv.vhd:91:35  */
  assign n43_o = $signed(n41_o) < $signed(32'b00000000000000000000000000001000);
  /* uart_recv.vhd:93:1  */
  assign n46_o = ref_bit ? 3'b101 : 3'b110;
  /* uart_recv.vhd:91:25  */
  assign n48_o = n43_o ? 3'b010 : n46_o;
  /* uart_recv.vhd:91:4  */
  assign n50_o = state == 3'b100;
  /* uart_recv.vhd:98:30  */
  assign n51_o = ~rxi;
  /* uart_recv.vhd:100:11  */
  assign n52_o = {22'b0, cnt};  //  uext
  /* uart_recv.vhd:100:11  */
  assign n54_o = n52_o == 32'b00000000000000000000000000000000;
  /* uart_recv.vhd:100:1  */
  assign n56_o = n54_o ? 3'b000 : state;
  /* uart_recv.vhd:98:23  */
  assign n58_o = n51_o ? 3'b110 : n56_o;
  /* uart_recv.vhd:98:1  */
  assign n60_o = state == 3'b101;
  /* uart_recv.vhd:103:33  */
  assign n61_o = {22'b0, cnt};  //  uext
  /* uart_recv.vhd:103:33  */
  assign n63_o = n61_o == 32'b00000000000000000000000000000000;
  /* uart_recv.vhd:103:26  */
  assign n65_o = n63_o ? 3'b000 : state;
  /* uart_recv.vhd:103:1  */
  assign n67_o = state == 3'b110;
  assign n68_o = {n67_o, n60_o, n50_o, n40_o, n33_o, n26_o, n17_o};
  /* uart_recv.vhd:76:13  */
  always @*
    case (n68_o)
      7'b1000000: n70_o = n65_o;
      7'b0100000: n70_o = n58_o;
      7'b0010000: n70_o = n48_o;
      7'b0001000: n70_o = n38_o;
      7'b0000100: n70_o = n31_o;
      7'b0000010: n70_o = n24_o;
      7'b0000001: n70_o = n15_o;
      default: n70_o = 3'bX;
    endcase
  /* uart_recv.vhd:73:10  */
  assign n72_o = reset ? 3'b000 : n70_o;
  /* uart_recv.vhd:119:13  */
  assign n79_o = state == 3'b000;
  /* uart_recv.vhd:120:42  */
  assign n80_o = {22'b0, cnt};  //  uext
  /* uart_recv.vhd:120:42  */
  assign n82_o = n80_o == 32'b00000000000000000000000000000000;
  /* uart_recv.vhd:123:27  */
  assign n83_o = {22'b0, cnt};  //  uext
  /* uart_recv.vhd:123:27  */
  assign n85_o = n83_o - 32'b00000000000000000000000000000001;
  /* uart_recv.vhd:123:23  */
  assign n86_o = n85_o[9:0];  // trunc
  /* uart_recv.vhd:120:35  */
  assign n88_o = n82_o ? 10'b1010000011 : n86_o;
  /* uart_recv.vhd:120:13  */
  assign n90_o = state == 3'b001;
  /* uart_recv.vhd:125:39  */
  assign n91_o = {22'b0, cnt};  //  uext
  /* uart_recv.vhd:125:39  */
  assign n93_o = n91_o == 32'b00000000000000000000000000000000;
  /* uart_recv.vhd:128:21  */
  assign n94_o = {22'b0, cnt};  //  uext
  /* uart_recv.vhd:128:21  */
  assign n96_o = n94_o - 32'b00000000000000000000000000000001;
  /* uart_recv.vhd:128:17  */
  assign n97_o = n96_o[9:0];  // trunc
  /* uart_recv.vhd:125:32  */
  assign n99_o = n93_o ? 10'b0011011000 : n97_o;
  /* uart_recv.vhd:125:10  */
  assign n101_o = state == 3'b010;
  /* uart_recv.vhd:130:37  */
  assign n102_o = ref_bit != rxi;
  /* uart_recv.vhd:133:18  */
  assign n103_o = {22'b0, cnt};  //  uext
  /* uart_recv.vhd:133:18  */
  assign n105_o = n103_o - 32'b00000000000000000000000000000001;
  /* uart_recv.vhd:133:14  */
  assign n106_o = n105_o[9:0];  // trunc
  /* uart_recv.vhd:130:26  */
  assign n108_o = n102_o ? 10'b0011011000 : n106_o;
  /* uart_recv.vhd:130:7  */
  assign n110_o = state == 3'b011;
  /* uart_recv.vhd:135:35  */
  assign n111_o = {28'b0, nbbits};  //  uext
  /* uart_recv.vhd:135:35  */
  assign n113_o = $signed(n111_o) < $signed(32'b00000000000000000000000000001000);
  /* uart_recv.vhd:137:15  */
  assign n114_o = ~ref_bit;
  /* uart_recv.vhd:137:1  */
  assign n117_o = n114_o ? 10'b1101100011 : 10'b0110110001;
  /* uart_recv.vhd:135:25  */
  assign n119_o = n113_o ? 10'b1010000011 : n117_o;
  /* uart_recv.vhd:135:4  */
  assign n121_o = state == 3'b100;
  /* uart_recv.vhd:142:34  */
  assign n122_o = {22'b0, cnt};  //  uext
  /* uart_recv.vhd:142:34  */
  assign n124_o = n122_o - 32'b00000000000000000000000000000001;
  /* uart_recv.vhd:142:30  */
  assign n125_o = n124_o[9:0];  // trunc
  /* uart_recv.vhd:142:1  */
  assign n127_o = state == 3'b101;
  /* uart_recv.vhd:143:33  */
  assign n128_o = ~rxi;
  /* uart_recv.vhd:146:12  */
  assign n129_o = {22'b0, cnt};  //  uext
  /* uart_recv.vhd:146:12  */
  assign n131_o = n129_o - 32'b00000000000000000000000000000001;
  /* uart_recv.vhd:146:8  */
  assign n132_o = n131_o[9:0];  // trunc
  /* uart_recv.vhd:143:26  */
  assign n134_o = n128_o ? 10'b1101100011 : n132_o;
  /* uart_recv.vhd:143:1  */
  assign n136_o = state == 3'b110;
  assign n137_o = {n136_o, n127_o, n121_o, n110_o, n101_o, n90_o, n79_o};
  /* uart_recv.vhd:118:10  */
  always @*
    case (n137_o)
      7'b1000000: n140_o = n134_o;
      7'b0100000: n140_o = n125_o;
      7'b0010000: n140_o = n119_o;
      7'b0001000: n140_o = n108_o;
      7'b0000100: n140_o = n99_o;
      7'b0000010: n140_o = n88_o;
      7'b0000001: n140_o = 10'b0011011000;
      default: n140_o = 10'bX;
    endcase
  /* uart_recv.vhd:115:7  */
  assign n142_o = reset ? 10'b0011011000 : n140_o;
  /* uart_recv.vhd:160:16  */
  assign n149_o = state == 3'b010;
  /* uart_recv.vhd:160:41  */
  assign n151_o = state == 3'b011;
  /* uart_recv.vhd:160:32  */
  assign n152_o = n149_o | n151_o;
  /* uart_recv.vhd:169:16  */
  assign n160_o = state == 3'b011;
  /* uart_recv.vhd:169:37  */
  assign n161_o = {22'b0, cnt};  //  uext
  /* uart_recv.vhd:169:37  */
  assign n163_o = n161_o == 32'b00000000000000000000000000000000;
  /* uart_recv.vhd:169:29  */
  assign n164_o = n163_o & n160_o;
  /* uart_recv.vhd:169:52  */
  assign n165_o = {28'b0, nbbits};  //  uext
  /* uart_recv.vhd:169:52  */
  assign n167_o = $signed(n165_o) < $signed(32'b00000000000000000000000000001000);
  /* uart_recv.vhd:169:41  */
  assign n168_o = n167_o & n164_o;
  /* uart_recv.vhd:170:35  */
  assign n169_o = shift[7:1];
  /* uart_recv.vhd:170:27  */
  assign n170_o = {ref_bit, n169_o};
  /* uart_recv.vhd:178:16  */
  assign n178_o = state == 3'b000;
  /* uart_recv.vhd:180:19  */
  assign n180_o = state == 3'b100;
  /* uart_recv.vhd:181:27  */
  assign n181_o = {28'b0, nbbits};  //  uext
  /* uart_recv.vhd:181:27  */
  assign n183_o = n181_o + 32'b00000000000000000000000000000001;
  /* uart_recv.vhd:181:20  */
  assign n184_o = n183_o[3:0];  // trunc
  /* uart_recv.vhd:180:7  */
  assign n185_o = n180_o ? n184_o : nbbits;
  /* uart_recv.vhd:178:7  */
  assign n187_o = n178_o ? 4'b0000 : n185_o;
  /* uart_recv.vhd:192:19  */
  assign n194_o = state == 3'b101;
  /* uart_recv.vhd:192:43  */
  assign n195_o = {22'b0, cnt};  //  uext
  /* uart_recv.vhd:192:43  */
  assign n197_o = n195_o == 32'b00000000000000000000000000000000;
  /* uart_recv.vhd:192:35  */
  assign n198_o = n197_o & n194_o;
  /* uart_recv.vhd:192:7  */
  assign n199_o = n198_o ? shift : n217_q;
  /* uart_recv.vhd:192:7  */
  assign n202_o = n198_o ? 1'b1 : 1'b0;
  /* uart_recv.vhd:190:7  */
  assign n203_o = reset ? n217_q : n199_o;
  /* uart_recv.vhd:190:7  */
  assign n205_o = reset ? 1'b0 : n202_o;
  /* uart_recv.vhd:72:7  */
  always @(posedge clk)
    n209_q <= n72_o;
  initial
    n209_q = 3'b000;
  /* uart_recv.vhd:177:4  */
  always @(posedge clk)
    n210_q <= n187_o;
  initial
    n210_q = 4'b0000;
  /* uart_recv.vhd:114:4  */
  always @(posedge clk)
    n211_q <= n142_o;
  /* uart_recv.vhd:64:7  */
  always @(posedge clk)
    n212_q <= rx;
  initial
    n212_q = 1'b1;
  /* uart_recv.vhd:159:4  */
  assign n213_o = n152_o ? rxi : ref_bit;
  /* uart_recv.vhd:159:4  */
  always @(posedge clk)
    n214_q <= n213_o;
  /* uart_recv.vhd:168:4  */
  assign n215_o = n168_o ? n170_o : shift;
  /* uart_recv.vhd:168:4  */
  always @(posedge clk)
    n216_q <= n215_o;
  /* uart_recv.vhd:189:4  */
  always @(posedge clk)
    n217_q <= n203_o;
  /* uart_recv.vhd:189:4  */
  always @(posedge clk)
    n218_q <= n205_o;
endmodule

