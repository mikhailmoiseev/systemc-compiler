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
module top // "top_inst"
(
);

// Variables generated for SystemC signals
logic din;


//------------------------------------------------------------------------------
// Child module instances

dut dut0
(
  .din(din)
);

dut0 dut1
(
  .din(din)
);

dut1 dut2
(
  .din(din)
);

dut dut3
(
  .din(din)
);

dut3 dut4
(
  .din(din)
);

dut4 dut5
(
  .din(din)
);

dut5 dut6
(
  .din(din)
);

dut5 dut7
(
  .din(din)
);

endmodule



//==============================================================================
//
// Module: dut (test_uniquify_proc.cpp:57:5)
//
module dut // "top_inst.dut0"
(
    input logic din
);

// Variables generated for SystemC signals

//------------------------------------------------------------------------------
// Method process: dut_method1 (test_uniquify_proc.cpp:43:5) 

always_comb 
begin : dut_method1     // test_uniquify_proc.cpp:43:5
end

endmodule



//==============================================================================
//
// Module: dut (test_uniquify_proc.cpp:58:5)
//
module dut0 // "top_inst.dut1"
(
    input logic din
);

// Variables generated for SystemC signals

//------------------------------------------------------------------------------
// Method process: dut_method0 (test_uniquify_proc.cpp:39:5) 

always_comb 
begin : dut_method0     // test_uniquify_proc.cpp:39:5
end

endmodule



//==============================================================================
//
// Module: dut (test_uniquify_proc.cpp:59:5)
//
module dut1 // "top_inst.dut2"
(
    input logic din
);

// Variables generated for SystemC signals

//------------------------------------------------------------------------------
// Method process: dut_method0 (test_uniquify_proc.cpp:39:5) 

always_comb 
begin : dut_method0     // test_uniquify_proc.cpp:39:5
end

endmodule



//==============================================================================
//
// Module: dut (test_uniquify_proc.cpp:61:5)
//
module dut3 // "top_inst.dut4"
(
    input logic din
);

// Variables generated for SystemC signals

//------------------------------------------------------------------------------
// Method process: dut_method2 (test_uniquify_proc.cpp:47:5) 

always_comb 
begin : dut_method2     // test_uniquify_proc.cpp:47:5
end

endmodule



//==============================================================================
//
// Module: dut (test_uniquify_proc.cpp:62:5)
//
module dut4 // "top_inst.dut5"
(
    input logic din
);

// Variables generated for SystemC signals

//------------------------------------------------------------------------------
// Method process: dut_method0 (test_uniquify_proc.cpp:39:5) 

always_comb 
begin : dut_method0     // test_uniquify_proc.cpp:39:5
end

endmodule



//==============================================================================
//
// Module: dut (test_uniquify_proc.cpp:63:5)
//
module dut5 // "top_inst.dut6"
(
    input logic din
);

// Variables generated for SystemC signals

//------------------------------------------------------------------------------
// Method process: dut_method0 (test_uniquify_proc.cpp:39:5) 

always_comb 
begin : dut_method0     // test_uniquify_proc.cpp:39:5
end

endmodule


