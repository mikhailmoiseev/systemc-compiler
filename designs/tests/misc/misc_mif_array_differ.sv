//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.32
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
localparam logic [31:0] ar1_V[2] = '{ 1, 2 };
localparam logic [31:0] ar1_C[2] = '{ 1, 2 };
localparam logic [31:0] br1_V[2] = '{ 1, 2 };
localparam logic [31:0] ar2_V[2] = '{ 1, 2 };
localparam logic [31:0] ar2_C[2] = '{ 1, 2 };
localparam logic [31:0] br2_V[2] = '{ 1, 2 };
localparam logic [31:0] ar3_V[2] = '{ 1, 2 };
localparam logic [31:0] ar3_C[2] = '{ 0, 0 };
localparam logic [31:0] br3_V[2] = '{ 1, 2 };

//------------------------------------------------------------------------------
// Method process: ar1_proc (test_mif_array_differ.cpp:30:5) 

always_comb 
begin : ar1_proc     // test_mif_array_differ.cpp:30:5
    integer unsigned l;
    l = ar1_V[0] + ar1_C[0];
end

//------------------------------------------------------------------------------
// Method process: ar1_proc0 (test_mif_array_differ.cpp:30:5) 

always_comb 
begin : ar1_proc0     // test_mif_array_differ.cpp:30:5
    integer unsigned l;
    l = ar1_V[1] + ar1_C[1];
end

//------------------------------------------------------------------------------
// Method process: br1_proc (test_mif_array_differ.cpp:50:5) 

always_comb 
begin : br1_proc     // test_mif_array_differ.cpp:50:5
    integer unsigned l;
    l = br1_V[0];
end

//------------------------------------------------------------------------------
// Method process: br1_proc0 (test_mif_array_differ.cpp:50:5) 

always_comb 
begin : br1_proc0     // test_mif_array_differ.cpp:50:5
    integer unsigned l;
    l = br1_V[1];
end

//------------------------------------------------------------------------------
// Method process: ar2_proc (test_mif_array_differ.cpp:30:5) 

always_comb 
begin : ar2_proc     // test_mif_array_differ.cpp:30:5
    integer unsigned l;
    l = ar2_V[0] + ar2_C[0];
end

//------------------------------------------------------------------------------
// Method process: ar2_proc0 (test_mif_array_differ.cpp:30:5) 

always_comb 
begin : ar2_proc0     // test_mif_array_differ.cpp:30:5
    integer unsigned l;
    l = ar2_V[1] + ar2_C[1];
end

//------------------------------------------------------------------------------
// Method process: br2_proc (test_mif_array_differ.cpp:50:5) 

always_comb 
begin : br2_proc     // test_mif_array_differ.cpp:50:5
    integer unsigned l;
    l = br2_V[0];
end

//------------------------------------------------------------------------------
// Method process: br2_proc0 (test_mif_array_differ.cpp:50:5) 

always_comb 
begin : br2_proc0     // test_mif_array_differ.cpp:50:5
    integer unsigned l;
    l = br2_V[1];
end

//------------------------------------------------------------------------------
// Method process: ar3_proc (test_mif_array_differ.cpp:30:5) 

always_comb 
begin : ar3_proc     // test_mif_array_differ.cpp:30:5
    integer unsigned l;
    l = ar3_V[0] + ar3_C[0];
end

//------------------------------------------------------------------------------
// Method process: ar3_proc0 (test_mif_array_differ.cpp:30:5) 

always_comb 
begin : ar3_proc0     // test_mif_array_differ.cpp:30:5
    integer unsigned l;
    l = ar3_V[1] + ar3_C[1];
end

//------------------------------------------------------------------------------
// Method process: br3_proc (test_mif_array_differ.cpp:50:5) 

always_comb 
begin : br3_proc     // test_mif_array_differ.cpp:50:5
    integer unsigned l;
    l = br3_V[0];
end

//------------------------------------------------------------------------------
// Method process: br3_proc0 (test_mif_array_differ.cpp:50:5) 

always_comb 
begin : br3_proc0     // test_mif_array_differ.cpp:50:5
    integer unsigned l;
    l = br3_V[1];
end

endmodule


