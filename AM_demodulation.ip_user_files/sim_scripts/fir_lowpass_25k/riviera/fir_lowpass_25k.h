
//------------------------------------------------------------------------------
// (c) Copyright 2014 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//------------------------------------------------------------------------------ 
//
// C Model configuration for the "fir_lowpass_25k" instance.
//
//------------------------------------------------------------------------------
//
// coefficients: 0,19,76,172,306,478,688,936,1221,1542,1899,2289,2712,3167,3651,4163,4702,5264,5849,6453,7074,7711,8360,9019,9685,10356,11029,11701,12369,13031,13683,14324,14951,15560,16150,16718,17261,17778,18265,18722,19146,19535,19887,20202,20478,20713,20907,21058,21167,21233,21254,21233,21167,21058,20907,20713,20478,20202,19887,19535,19146,18722,18265,17778,17261,16718,16150,15560,14951,14324,13683,13031,12369,11701,11029,10356,9685,9019,8360,7711,7074,6453,5849,5264,4702,4163,3651,3167,2712,2289,1899,1542,1221,936,688,478,306,172,76,19,0
// chanpats: 173
// name: fir_lowpass_25k
// filter_type: 0
// rate_change: 0
// interp_rate: 1
// decim_rate: 1
// zero_pack_factor: 1
// coeff_padding: 4
// num_coeffs: 101
// coeff_sets: 1
// reloadable: 0
// is_halfband: 0
// quantization: 0
// coeff_width: 16
// coeff_fract_width: 0
// chan_seq: 0
// num_channels: 1
// num_paths: 1
// data_width: 10
// data_fract_width: 0
// output_rounding_mode: 0
// output_width: 30
// output_fract_width: 0
// config_method: 0

const double fir_lowpass_25k_coefficients[101] = {0,19,76,172,306,478,688,936,1221,1542,1899,2289,2712,3167,3651,4163,4702,5264,5849,6453,7074,7711,8360,9019,9685,10356,11029,11701,12369,13031,13683,14324,14951,15560,16150,16718,17261,17778,18265,18722,19146,19535,19887,20202,20478,20713,20907,21058,21167,21233,21254,21233,21167,21058,20907,20713,20478,20202,19887,19535,19146,18722,18265,17778,17261,16718,16150,15560,14951,14324,13683,13031,12369,11701,11029,10356,9685,9019,8360,7711,7074,6453,5849,5264,4702,4163,3651,3167,2712,2289,1899,1542,1221,936,688,478,306,172,76,19,0};

const xip_fir_v7_2_pattern fir_lowpass_25k_chanpats[1] = {P_BASIC};

static xip_fir_v7_2_config gen_fir_lowpass_25k_config() {
  xip_fir_v7_2_config config;
  config.name                = "fir_lowpass_25k";
  config.filter_type         = 0;
  config.rate_change         = XIP_FIR_INTEGER_RATE;
  config.interp_rate         = 1;
  config.decim_rate          = 1;
  config.zero_pack_factor    = 1;
  config.coeff               = &fir_lowpass_25k_coefficients[0];
  config.coeff_padding       = 4;
  config.num_coeffs          = 101;
  config.coeff_sets          = 1;
  config.reloadable          = 0;
  config.is_halfband         = 0;
  config.quantization        = XIP_FIR_INTEGER_COEFF;
  config.coeff_width         = 16;
  config.coeff_fract_width   = 0;
  config.chan_seq            = XIP_FIR_BASIC_CHAN_SEQ;
  config.num_channels        = 1;
  config.init_pattern        = fir_lowpass_25k_chanpats[0];
  config.num_paths           = 1;
  config.data_width          = 10;
  config.data_fract_width    = 0;
  config.output_rounding_mode= XIP_FIR_FULL_PRECISION;
  config.output_width        = 30;
  config.output_fract_width  = 0,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config fir_lowpass_25k_config = gen_fir_lowpass_25k_config();

