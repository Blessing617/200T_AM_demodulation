// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Feb 20 14:03:21 2024
// Host        : Blessing running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PLL_ADC_DAC_stub.v
// Design      : PLL_ADC_DAC
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(adc_clk, dac_clk, clk_50M)
/* synthesis syn_black_box black_box_pad_pin="clk_50M" */
/* synthesis syn_force_seq_prim="adc_clk" */
/* synthesis syn_force_seq_prim="dac_clk" */;
  output adc_clk /* synthesis syn_isclock = 1 */;
  output dac_clk /* synthesis syn_isclock = 1 */;
  input clk_50M;
endmodule
