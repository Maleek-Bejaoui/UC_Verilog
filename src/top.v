/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_top (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

  // All output pins must be assigned. If not used, assign to 0.
//  assign uo_out  = ui_in + uio_in;  // Example: ou_out is the sum of ui_in and uio_in
    assign uio_out = 0;
    assign uio_oe  = 0;
    assign uo_out[7:4]  = 4'b0000;

    

  // List all unused inputs to prevent warnings
    wire _unused = &{ui_in[7:2], 6'b000000};
    wire _unused1 = &{uio_in, 8'b0};
    

    
   /* verilator lint_off PINCONNECTEMPTY */
  boot_loader m_boot_loader (
      .rst  (!rst_n),    // Clock input
      .clk  (clk), // Reset input
      .ce (ena),  // 8-bit counter output

      .rx(ui_in[0]),
      .tx(uo_out[0]),
      .boot(uo_out[1]),
      .scan_memory(ui_in[1]),
      .ram_out(),
      .ram_rw(uo_out[2]),
      .ram_enable(uo_out[3]),
      .ram_in  ()
  );
/* verilator lint_on PINCONNECTEMPTY */
endmodule
