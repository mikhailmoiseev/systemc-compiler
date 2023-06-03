//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.8
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "a"
(
    input logic clk
);

// Variables generated for SystemC signals
logic rstn;

//------------------------------------------------------------------------------
// Clocked THREAD: record_return (test_return_cthread2.cpp:43:5) 

// Next-state combinational logic
always_comb begin : record_return_comb     // test_return_cthread2.cpp:43:5
    record_return_func;
end
function void record_return_func;
    integer res_sin;
    integer res_cos;
    integer TMP_0_sin;
    integer TMP_0_cos;
    integer r_sin;
    integer r_cos;
    // Call convert_sin_cos() begin
    res_sin = 1;
    res_cos = 2;
    TMP_0_sin = res_sin; TMP_0_cos = res_cos;
    // Call convert_sin_cos() end
    r_sin = TMP_0_sin; r_cos = TMP_0_cos;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : record_return_ff
    if ( ~rstn ) begin
    end
    else begin
    end
end

endmodule


