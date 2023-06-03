//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.43
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "a"
(
    input logic clk,
    input logic nrst
);

// Variables generated for SystemC signals
logic signed [31:0] a;

//------------------------------------------------------------------------------
// Clocked THREAD: meth1 (test_clock_sensitive.cpp:26:5) 

// Thread-local variables
logic signed [31:0] a_next;

// Next-state combinational logic
always_comb begin : meth1_comb     // test_clock_sensitive.cpp:26:5
    meth1_func;
end
function void meth1_func;
    a_next = a;
    a_next = 1;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : meth1_ff
    if ( ~nrst ) begin
        a <= 0;
    end
    else begin
        a <= a_next;
    end
end

endmodule


