//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.32
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
logic nrst;
logic a1_nrst;
logic a2_nrst;
logic a1_clk;
logic a2_clk;

// Local parameters generated for C++ constants
localparam logic [3:0] a1_var1 = 0;
localparam logic [3:0] a2_var1 = 0;

// Assignments generated for C++ channel arrays
assign a1_clk = clk;
assign a2_clk = clk;

//------------------------------------------------------------------------------
// Method process: a1_methProcA (test_sc_port_ptr2.cpp:38:5) 

// Process-local variables
logic [3:0] a1_var2;
logic [3:0] a1_var3;

always_comb 
begin : a1_methProcA     // test_sc_port_ptr2.cpp:38:5
    logic [3:0] i;
    i = 0;
    i++;
    a1_var2 = i;
    a1_var3 = i + a1_var2;
end

//------------------------------------------------------------------------------
// Clocked THREAD: a1_threadProcA (test_sc_port_ptr2.cpp:46:5) 

// Thread-local variables
logic [3:0] a1_var4;
logic [3:0] a1_var4_next;

// Next-state combinational logic
always_comb begin : a1_threadProcA_comb     // test_sc_port_ptr2.cpp:46:5
    a1_threadProcA_func;
end
function void a1_threadProcA_func;
    a1_var4_next = a1_var4;
    a1_var4_next++;
endfunction

// Synchronous register update
always_ff @(posedge a1_clk or negedge a1_nrst) 
begin : a1_threadProcA_ff
    if ( ~a1_nrst ) begin
        a1_var4 <= 0;
    end
    else begin
        a1_var4 <= a1_var4_next;
    end
end

//------------------------------------------------------------------------------
// Method process: a2_methProcA (test_sc_port_ptr2.cpp:38:5) 

// Process-local variables
logic [3:0] a2_var2;
logic [3:0] a2_var3;

always_comb 
begin : a2_methProcA     // test_sc_port_ptr2.cpp:38:5
    logic [3:0] i;
    i = 0;
    i++;
    a2_var2 = i;
    a2_var3 = i + a2_var2;
end

//------------------------------------------------------------------------------
// Clocked THREAD: a2_threadProcA (test_sc_port_ptr2.cpp:46:5) 

// Thread-local variables
logic [3:0] a2_var4;
logic [3:0] a2_var4_next;

// Next-state combinational logic
always_comb begin : a2_threadProcA_comb     // test_sc_port_ptr2.cpp:46:5
    a2_threadProcA_func;
end
function void a2_threadProcA_func;
    a2_var4_next = a2_var4;
    a2_var4_next++;
endfunction

// Synchronous register update
always_ff @(posedge a2_clk or negedge a2_nrst) 
begin : a2_threadProcA_ff
    if ( ~a2_nrst ) begin
        a2_var4 <= 0;
    end
    else begin
        a2_var4 <= a2_var4_next;
    end
end

//------------------------------------------------------------------------------
// Method process: methProcD (test_sc_port_ptr2.cpp:117:5) 

always_comb 
begin : methProcD     // test_sc_port_ptr2.cpp:117:5
    logic [3:0] i;
    i = 0;
    i = 0;
end

//------------------------------------------------------------------------------
// Clocked THREAD: threadProcD (test_sc_port_ptr2.cpp:123:5) 

// Next-state combinational logic
always_comb begin : threadProcD_comb     // test_sc_port_ptr2.cpp:123:5
    threadProcD_func;
end
function void threadProcD_func;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : threadProcD_ff
    if ( ~nrst ) begin
    end
    else begin
    end
end


//------------------------------------------------------------------------------
// Child module instances

B BInst
(
  .clk(clk)
);

endmodule



//==============================================================================
//
// Module: B ()
//
module B // "dut.BInst"
(
    input logic clk
);

// Variables generated for SystemC signals

//------------------------------------------------------------------------------
// Method process: methProcB (test_sc_port_ptr2.cpp:76:5) 

always_comb 
begin : methProcB     // test_sc_port_ptr2.cpp:76:5
    integer i;
    i = 0;
end

endmodule


