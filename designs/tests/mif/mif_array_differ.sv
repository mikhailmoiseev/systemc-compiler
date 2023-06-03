//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.39
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Top ()
//
module Top // "top"
(
);

// Variables generated for SystemC signals

// Local parameters generated for C++ constants
localparam logic [15:0] ar_X[2] = '{ 42, 43 };
localparam logic signed [31:0] ar_V[2] = '{ 1, 2 };
localparam logic [31:0] ar_W[2] = '{ 0, 1 };
localparam logic ar_Z[2] = '{ 0, 1 };
localparam logic [31:0] ar_C[2] = '{ 0, 1 };

//------------------------------------------------------------------------------
// Method process: ar_proc (test_mif_array_differ.cpp:34:5) 

always_comb 
begin : ar_proc     // test_mif_array_differ.cpp:34:5
    integer unsigned l;
    l = ar_X[0];
    l = ar_W[0] + 1;
    l = 2;
end

//------------------------------------------------------------------------------
// Method process: ar_proc2 (test_mif_array_differ.cpp:42:5) 

always_comb 
begin : ar_proc2     // test_mif_array_differ.cpp:42:5
    integer unsigned l;
    l = ar_X[0] + 1;
end

//------------------------------------------------------------------------------
// Method process: ar_proc0 (test_mif_array_differ.cpp:34:5) 

always_comb 
begin : ar_proc0     // test_mif_array_differ.cpp:34:5
    integer unsigned l;
    l = ar_X[1];
    l = ar_V[1];
    l = 42;
    l = 1;
end

//------------------------------------------------------------------------------
// Method process: ar_proc20 (test_mif_array_differ.cpp:42:5) 

always_comb 
begin : ar_proc20     // test_mif_array_differ.cpp:42:5
    integer unsigned l;
    l = ar_X[1] + 1;
end

endmodule


