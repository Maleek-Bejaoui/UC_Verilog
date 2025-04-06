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
   // assign uo_out[7:4]  = 4'b0000;

    

  // List all unused inputs to prevent warnings
    wire _unused = &{ui_in[7:2], 6'b000000};
    wire _unused1 = &{uio_in, 8'b0};
    

    
   /* verilator lint_off PINCONNECTEMPTY */
  Control_Unit m_Control_Unit (
      .rst  (!rst_n),    // Clock input
      .clk  (clk), // Reset input
      .ce (ena),  // 8-bit counter output

      .w_mem(uo_out[0]),
      .sel_UAL(uo_out[3:1]),
      .enable_mem(uo_out[4]),
      .load_carry(uo_out[5]),
      .load_accu(uo_out[6]),
      .load_R1(uo_out[7]),
      .clear_carry(),
      .adr(),
      .carry(ui_in[0]),
      .boot(ui_in[1]),
      .data_in()
  );
    endmodule
/* verilator lint_on PINCONNECTEMPTY */

