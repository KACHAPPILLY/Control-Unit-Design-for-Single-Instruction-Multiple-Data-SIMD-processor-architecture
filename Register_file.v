module regfile(clk, en_write, en_read, reg_write_addr,  reg_read_addr1, reg_read_addr2, reg_write_data, reg_read_data1, reg_read_data2 );
//input [7:0]d2;
input clk;
input en_write;
input en_read;
input [3:0] reg_write_addr;
input [3:0] reg_read_addr1;
input [3:0] reg_read_addr2;
input [7:0] reg_write_data;
// Register file storage
reg [7:0] Registers[15:0];
reg [7:0] out_val1;
reg [7:0] out_val2;
output [7:0] reg_read_data1;
output [7:0] reg_read_data2;
// Read and write from register file
initial begin
	Registers[0] <= 8'b00000000;
	Registers[1] <= 8'b00000000;
	Registers[2] <= 8'b00000000;
	Registers[3] <= 8'b00000000;
	Registers[4] <= 8'b00000000;
	Registers[5] <= 8'b00000000;
	Registers[6] <= 8'b00000000;
	Registers[7] <= 8'b00000000;
	Registers[8] <= 8'b00000000;
	Registers[9] <= 8'b00000000;
	Registers[10] <= 8'b00000000;
	Registers[11] <= 8'b00000000;
	Registers[12] <= 8'b00000000;
	Registers[13] <= 8'b00000000;
	Registers[14] <= 8'b00000000;
	Registers[15] <= 8'b00000000;
	Registers[16] <= 8'b00000000;
end
//pipo2 u1(data, clk, data);
	always @(posedge clk)
	begin
      		if (en_write)
       		begin
			Registers[reg_write_addr] <= reg_write_data;
       		end
	end
   	always @(negedge clk)
	begin
		if(en_read)
		begin
		out_val1 <= Registers[reg_read_addr1];
		out_val2 <= Registers[reg_read_addr2];
		end
		
	end   
 

// Output data if not writing. If we are writing,
// do not drive output pins. This is denoted
// by assigning 'z' to the output pins.

assign reg_read_data1 = en_write ? 8'bz : out_val1;
assign reg_read_data2 = en_write ? 8'bz : out_val2;

endmodule

