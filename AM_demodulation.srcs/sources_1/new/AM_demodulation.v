`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/20 14:08:59
// Design Name: 
// Module Name: AM_demodulation
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module AM_demodulation(
        input               clk_50M,
        input               rst_n,
        input       [9:0]   am_data,
        output reg  [13:0]  dac_data,        
        output              adc_clk,
        output              dac_clk
    );
 
PLL_ADC_DAC u_PLL_ADC_DAC(
        .adc_clk        (adc_clk    ),
        .dac_clk        (dac_clk    ),
        .clk_50M        (clk_50M    )
);

reg 	[9:0]	abs_data = 0;
reg	    [9:0]   cnt;
reg		        fir_clk;

always @ (posedge clk_50M or negedge rst_n)
begin
	if(!rst_n)
		cnt <= 10'd0;
	else if(cnt == 10'd4)
		cnt <= 10'd0;
	else
		cnt <= cnt + 1'b1;
end

always @ (posedge clk_50M or negedge rst_n)
begin
	if(!rst_n)
		fir_clk <= 1'b0;
	else if(cnt == 10'd4)
		fir_clk <= 1'b1;
	else
		fir_clk <= 1'b0;
end

always @(posedge clk_50M)	//绝对值
begin
	if(!rst_n)
		abs_data	<= 0;
	else if(fir_clk)
		begin
			if(am_data[9]== 0)
				abs_data <= am_data;
			else
				abs_data <= -am_data;
		end
end

wire	[31:0]	fir_data_t;

fir_lowpass_25k u_fir_lowpass_25k(
  .aclk                     (clk_50M                ), // input wire aclk
  .s_axis_data_tvalid       (fir_clk                ), // input wire s_axis_data_tvalid
  .s_axis_data_tready       (s_axis_data_tready     ), // output wire s_axis_data_tready
  .s_axis_data_tdata        ({6'b000_000,abs_data}  ), // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid       (m_axis_data_tvalid     ), // output wire m_axis_data_tvalid
  .m_axis_data_tdata        (fir_data_t             )  // output wire [31 : 0] m_axis_data_tdata
);

always @ (posedge clk_50M or negedge rst_n)
begin
	if(!rst_n)
		dac_data <= 14'b0;
	else if(fir_clk)
		dac_data <= {fir_data_t[31],fir_data_t[28:16]}+14'b10_000_000_000_000;            //在valid信号有效的时候才输出数据
end

endmodule
