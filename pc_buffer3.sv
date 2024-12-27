/*
 * Author: A.G. Hasan Zarook
 * University: University of Engineering and Technology, Lahore
 * Project: RISCV Pipeline Architecture
 * Date: 11th December 2024
 */
module pc_buffer_execute
(
    input  logic        clk,
    input  logic        rst,
    input  logic [31:0] pcbuffer2_out,       // Input from Decode stage
    output logic [31:0] pcbuffer3_out       // Output to Memory stage
);
    always_ff @(posedge clk or posedge rst)
    begin
        if (rst)
            pcbuffer3_out <= 32'b0;         // Reset value
        else
            pcbuffer3_out <= pcbuffer2_out;         // Pass PC to Memory stage
    end
endmodule