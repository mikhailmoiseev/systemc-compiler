//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.9
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Dut ()
//
module Dut // "dut"
(
    input logic clk
);

// Variables generated for SystemC signals
logic [3:0] slave_s;
logic [3:0] tars_r[2][3];

//------------------------------------------------------------------------------
// Method process: slave_methProc (test_sc_port_array3.cpp:53:5) 

always_comb 
begin : slave_methProc     // test_sc_port_array3.cpp:53:5
    logic [3:0] val;
    logic [3:0] TMP_0;
    logic [3:0] val_1;
    logic [3:0] l;
    val = slave_s;
    // Call f() begin
    val = tars_r[1][2];
    // Call f() end
    val_1 = slave_s;
    // Call g() begin
    tars_r[1][2] = val_1;
    TMP_0 = tars_r[1][2];
    // Call g() end
    l = TMP_0;
end

endmodule


