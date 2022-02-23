module SIMD_CU(d,d1,d2,en_write, 
		en_read, reg_write_addr1,
		reg_write_addr2,reg_write_addr3, 
		reg_read_addr1,reg_read_addr2,reg_read_addr3,reg_read_addr4,reg_read_addr5, reg_read_addr6,  
		clk, 
		reg_read_data1, reg_read_data2, reg_read_data3, reg_read_data4,reg_read_data5,reg_read_data6);

	input clk,en_write, en_read;
	input [3:0] reg_write_addr1;
	input [3:0] reg_write_addr2;
	input [3:0] reg_write_addr3;
	input [3:0] reg_read_addr1;
	input [3:0] reg_read_addr2;
	input [3:0] reg_read_addr3;
	input [3:0] reg_read_addr4;
	input [3:0] reg_read_addr5;
	input [3:0] reg_read_addr6;
	input [7:0] d,d1,d2;

	wire [7:0] q,q1,q2;
//	wire [7:0] data_in,data_in1, data_in2;


	output[7:0] reg_read_data1;
	output[7:0] reg_read_data2;
	output[7:0] reg_read_data3;
	output[7:0] reg_read_data4;
	output[7:0] reg_read_data5;
	output[7:0] reg_read_data6;


	pipo p1(d, clk, q);
	pipo p2(d1, clk, q1);
	pipo p3(d2, clk, q2);
	
	regfile PEM1(clk, en_write, en_read, reg_write_addr1,  reg_read_addr1, reg_read_addr2, q, reg_read_data1, reg_read_data2 );
	regfile PEM2(clk, en_write, en_read, reg_write_addr2,  reg_read_addr3, reg_read_addr4, q1, reg_read_data3, reg_read_data4 );
	regfile PEM3(clk, en_write, en_read, reg_write_addr3,  reg_read_addr5, reg_read_addr6, q2, reg_read_data5, reg_read_data6 );

endmodule
