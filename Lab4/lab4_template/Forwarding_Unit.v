module Forwarding_Unit (
    input wire [4:0] id_R1,    // Source register 1 in ID stage
    input wire [4:0] id_R2,    // Source register 2 in ID stage
    input wire [4:0] ex_R1,    // Source register 1 in EX stage
    input wire [4:0] ex_R2,    // Source register 2 in EX stage
    input wire [4:0] mem_Rd,    // Destination register in MEM stage
    input wire [4:0] wb_Rd,    // Destination register in WB stage
    input wire mem_RegWrite,    // Register write signal in MEM stage
    input wire wb_RegWrite,    // Register write signal in WB stage
    output reg id_ForwardA,     // Forward control for source 1 in ID stage
    output reg id_ForwardB,      // Forward control for source 2 in ID stage
    output reg [1:0] ex_ForwardA,     // Forward control for source 1 in EX stage
    output reg [1:0] ex_ForwardB      // Forward control for source 2 in EX stage
);

    // The Forwarding Unit is designed to resolve data hazards by forwarding data between pipeline
    // stages without waiting for the data to be written back to the register file.

    // TODO: implement your forwarding unit here

    // Hint:
    // You can design your own inputs and outputs as needed, as long as everything functions
    // correctly in the end.
    // Refer to the textbook for scenarios where forwarding is necessary.

    // Be mindful of data hazards that may occur with branch instructions.
    // Data hazards can arise when a branch instruction depends on the result of previous instructions,
    // such as when the values being compared in a branch are not yet computed.
    // In such cases, if forwarding cannot resolve the hazard, you may need to insert a stall to avoid incorrect execution.


endmodule