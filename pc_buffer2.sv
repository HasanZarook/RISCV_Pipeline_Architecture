/*
 * Author: A.G. Hasan Zarook
 * University: University of Engineering and Technology, Lahore
 * Project: RISCV Pipeline Architecture
 * Date: 11th December 2024
 */
module pc_buffer_decode
(
    input  logic        clk,
    input  logic        rst,
    input  logic [31:0] pcbuffer1_out,       // Input from Fetch stage
    output logic [31:0] pcbuffer2_out       // Output to Execute stage
);
    always_ff @(posedge clk or posedge rst)
    begin
        if (rst)
            pcbuffer2_out <= 32'b0;         // Reset value
        else
            pcbuffer2_out <= pcbuffer1_out;         // Pass PC to Execute stage
    end
endmodule