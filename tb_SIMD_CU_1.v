module tb_PIPO();

	reg clk,en_write, en_read;
	reg [3:0] reg_write_addr1;
	reg [3:0] reg_write_addr2;
	reg [3:0] reg_write_addr3;

	reg [3:0] reg_read_addr1;
	reg [3:0] reg_read_addr2;
	reg [3:0] reg_read_addr3;
	reg [3:0] reg_read_addr4;
	reg [3:0] reg_read_addr5;
	reg [3:0] reg_read_addr6;

	reg [7:0] d,d1,d2;

	wire [7:0] reg_read_data1;
	wire [7:0] reg_read_data2;
	wire [7:0] reg_read_data3;
	wire [7:0] reg_read_data4;
	wire [7:0] reg_read_data5;
	wire [7:0] reg_read_data6;

SIMD_CU CU1(d,d1,d2,en_write, 
		en_read, reg_write_addr1,
		reg_write_addr2,reg_write_addr3, 
		reg_read_addr1,reg_read_addr2,reg_read_addr3,reg_read_addr4,reg_read_addr5, reg_read_addr6,  
		clk, 
		reg_read_data1, reg_read_data2, reg_read_data3, reg_read_data4,reg_read_data5,reg_read_data6);

initial
begin

clk=1'b0;
forever #5 clk=~clk;
end
initial
begin

//data input Arow 1
d=8'b00000001;
d1=8'b00000010;
d2=8'b00000011;

en_write = 1;

reg_write_addr1 = 0;
reg_write_addr2 = 0;
reg_write_addr3 = 0;

//data input Arow2;

#10 d=8'b01011100;
d1=8'b10111101;
d2=8'b11111110;

en_write = 1;

reg_write_addr1 = 1;
reg_write_addr2 = 1;
reg_write_addr3 = 1;

//data input Arow3
#10 d=8'b01001100;
d1=8'b10111001;
d2=8'b11010110;

en_write = 1;

reg_write_addr1 = 2;
reg_write_addr2 = 2;
reg_write_addr3 = 2;


//data input Brow1
#10 d=8'b01001100;
d1=8'b10111001;
d2=8'b11010110;

en_write = 1;

reg_write_addr1 = 3;
reg_write_addr2 = 3;
reg_write_addr3 = 3;



//data input Brow2
#10 d=8'b01001000;
d1=8'b10101001;
d2=8'b11010000;

en_write = 1;

reg_write_addr1 = 4;
reg_write_addr2 = 4;
reg_write_addr3 = 4;

//data input Brow3
#10 d=8'b01001100;
d1=8'b10111001;
d2=8'b11010110;

en_write = 1;

reg_write_addr1 = 5;
reg_write_addr2 = 5;
reg_write_addr3 = 5;


//data input Crow1
#10 d=8'b00000000;
d1=8'b00000000;
d2=8'b00000000;

en_write = 1;

reg_write_addr1 = 6;
reg_write_addr2 = 6;
reg_write_addr3 = 6;


//data input Crow2
#10 d=8'b00000000;
d1=8'b00000000;
d2=8'b00000000;

en_write = 1;

reg_write_addr1 = 7;
reg_write_addr2 = 7;
reg_write_addr3 = 7;

//data input Crow3
#10 d=8'b00000000;
d1=8'b00000000;
d2=8'b00000000;

en_write = 1;

reg_write_addr1 = 8;
reg_write_addr2 = 8;
reg_write_addr3 = 8;

//data_out to Multiplier


#10 en_write = 0;
en_read =1;

reg_read_addr1 = 2;
reg_read_addr2 = 2;
reg_read_addr3 = 2;
reg_read_addr4 = 2;
reg_read_addr5 = 2;
reg_read_addr6 = 2;

#10 en_write = 0;
en_read =1;

reg_read_addr1 = 3;
reg_read_addr2 = 3;
reg_read_addr3 = 3;
reg_read_addr4 = 3;
reg_read_addr5 = 3;
reg_read_addr6 = 3;



#10 en_write = 0;
en_read =1;

reg_read_addr1 = 5;
reg_read_addr2 = 5;
reg_read_addr3 = 5;
reg_read_addr4 = 5;
reg_read_addr5 = 5;
reg_read_addr6 = 5;
end 
endmodule
