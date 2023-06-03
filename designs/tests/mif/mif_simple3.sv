//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.15
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: top ()
//
module top // "tb_inst.top_inst"
(
    input logic clk,
    input logic rst,
    output logic minst1_a,
    output logic minst1_b,
    output logic minst2_a,
    output logic minst2_b
);

// Variables generated for SystemC signals
logic s;
logic minst1_s;
logic minst2_s;
logic minst1_clk;
logic minst1_rst;
logic minst2_clk;
logic minst2_rst;

// Assignments generated for C++ channel arrays
assign minst1_clk = clk;
assign minst1_rst = rst;
assign minst2_clk = clk;
assign minst2_rst = rst;

//------------------------------------------------------------------------------
// Method process: minst1_mifMethod (test_mif_simple3.cpp:30:5) 

// Process-local variables
logic [1:0] minst1_var;

always_comb 
begin : minst1_mifMethod     // test_mif_simple3.cpp:30:5
    minst1_var = !minst1_s;
    minst1_a = !(|minst1_var);
end

//------------------------------------------------------------------------------
// Clocked THREAD: minst1_mifThread (test_mif_simple3.cpp:35:5) 

// Thread-local variables
logic minst1_b_next;
logic [2:0] i;
logic [2:0] i_next;

// Next-state combinational logic
always_comb begin : minst1_mifThread_comb     // test_mif_simple3.cpp:35:5
    minst1_mifThread_func;
end
function void minst1_mifThread_func;
    i_next = i;
    minst1_b_next = minst1_b;
    minst1_b_next = |(i_next++);
endfunction

// Synchronous register update
always_ff @(posedge minst1_clk or posedge minst1_rst) 
begin : minst1_mifThread_ff
    if ( minst1_rst ) begin
        i <= 0;
        minst1_b <= 0;
    end
    else begin
        minst1_b <= minst1_b_next;
        i <= i_next;
    end
end

//------------------------------------------------------------------------------
// Method process: minst2_mifMethod (test_mif_simple3.cpp:30:5) 

// Process-local variables
logic [1:0] minst2_var;

always_comb 
begin : minst2_mifMethod     // test_mif_simple3.cpp:30:5
    minst2_var = !minst2_s;
    minst2_a = !(|minst2_var);
end

//------------------------------------------------------------------------------
// Clocked THREAD: minst2_mifThread (test_mif_simple3.cpp:35:5) 

// Thread-local variables
logic minst2_b_next;
logic [2:0] i0;
logic [2:0] i_next0;

// Next-state combinational logic
always_comb begin : minst2_mifThread_comb     // test_mif_simple3.cpp:35:5
    minst2_mifThread_func;
end
function void minst2_mifThread_func;
    i_next0 = i0;
    minst2_b_next = minst2_b;
    minst2_b_next = |(i_next0++);
endfunction

// Synchronous register update
always_ff @(posedge minst2_clk or posedge minst2_rst) 
begin : minst2_mifThread_ff
    if ( minst2_rst ) begin
        i0 <= 0;
        minst2_b <= 0;
    end
    else begin
        minst2_b <= minst2_b_next;
        i0 <= i_next0;
    end
end

//------------------------------------------------------------------------------
// Method process: topMethod (test_mif_simple3.cpp:72:5) 

always_comb 
begin : topMethod     // test_mif_simple3.cpp:72:5
    logic TMP_0;
    // Call func() begin
    TMP_0 = minst2_s;
    // Call func() end
    s = minst1_a || TMP_0;
end

endmodule


