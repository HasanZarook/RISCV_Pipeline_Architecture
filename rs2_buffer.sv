/*
 * Author: A.G. Hasan Zarook
 * University: University of Engineering and Technology, Lahore
 * Project: RISCV Pipeline Architecture
 * Date: 11th December 2024
 */
module rs2_buffer
(
    input  logic        clk,
    input  logic        rst,
    input  logic [31:0] rdata2,     // Input from register file (rdata1)
    output logic [31:0] rs2buffer_out     // Output to MUX_to_ALUa
);
    always_ff @(posedge clk or posedge rst)
    begin
        if (rst)
            rs2buffer_out <= 32'b0;       // Reset value
        else
            rs2buffer_out <= rdata2;      // Store rdata1
    end
endmodule