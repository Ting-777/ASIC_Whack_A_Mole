module top_digital(clk,rst_n,bin,segsig,bitsig);

input clk;//50Mʱ��
input rst_n;//ȫ�ָ�λ�ź�
input [5:0] bin;
output [7:0] segsig;//����ܶ�ѡ
output [5:0] bitsig;//�����λѡ
reg [31:0] counter;//32λ�ļ�����
wire [11:0] bcd;

bin2BCD btb(
	.clk(clk),
	.rst_n(rst_n),
	.bin(bin),
	.bcd(bcd)
	);
digitdisp dd(
	.clk(clk),
	.rst_n(rst_n),
	.bcd(bcd),
	.segsig(segsig),
	.bitsig(bitsig)
	);
endmodule