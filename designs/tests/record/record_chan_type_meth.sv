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
module A // "a_mod"
(
    input logic clk,
    input logic in_a,
    input logic signed [31:0] in_b,
    output logic out_a,
    output logic signed [31:0] out_b
);

// Variables generated for SystemC signals
logic [31:0] s;
logic [1:0] sim_a;
logic sim_a0;
logic signed [31:0] sim_b;
logic rim_a;
logic signed [31:0] rim_b;
logic tim_a;
logic signed [31:0] tim_b;
logic svec_a[2];
logic signed [31:0] svec_b[2];
logic rvec_a[2];
logic signed [31:0] rvec_b[2];
logic signed [31:0] sig_x;
logic signed [1:0] sig_y;

//------------------------------------------------------------------------------
// Method process: record_assignment (test_chan_type_meth.cpp:89:5) 

always_comb 
begin : record_assignment     // test_chan_type_meth.cpp:89:5
    integer r_x;
    logic signed [1:0] r_y;
    integer p_x;
    logic signed [1:0] p_y;
    r_y = 0;
    p_y = 0;
    r_x = p_x; r_y = p_y;
    r_x = p_x; r_y = p_y;
end

//------------------------------------------------------------------------------
// Method process: record_channels (test_chan_type_meth.cpp:97:5) 

always_comb 
begin : record_channels     // test_chan_type_meth.cpp:97:5
    integer r_x;
    logic signed [1:0] r_y;
    integer x;
    r_y = 0;
    r_x = sig_x; r_y = sig_y;
    r_x = sig_x; r_y = sig_y;
    sig_x = r_x; sig_y = r_y;
    sig_x = r_x; sig_y = r_y;
    x = sig_x;
end

//------------------------------------------------------------------------------
// Method process: procSignal (test_chan_type_meth.cpp:108:5) 

always_comb 
begin : procSignal     // test_chan_type_meth.cpp:108:5
    logic ss_a;
    integer ss_b;
    logic rr_a;
    integer rr_b;
    ss_b = 'h42;
    rr_b = 'h42;
    rr_a = 1;
    rr_b = sim_a;
    ss_a = rr_a; ss_b = rr_b;
    sim_a0 = ss_a; sim_b = ss_b;
    sim_a0 = ss_a; sim_b = ss_b;
    ss_a = sim_a0; ss_b = sim_b;
    ss_a = sim_a0; ss_b = sim_b;
    rim_a = sim_a0; rim_b = sim_b;
    rim_a = sim_a0; rim_b = sim_b;
    rim_a = sim_a0; rim_b = sim_b;
    rim_a = sim_a0; rim_b = sim_b;
end

//------------------------------------------------------------------------------
// Method process: procSigField (test_chan_type_meth.cpp:130:5) 

always_comb 
begin : procSigField     // test_chan_type_meth.cpp:130:5
    integer unsigned j;
    logic l;
    integer i;
    integer par;
    integer l_1;
    j = s;
    l = sim_a0;
    l = svec_a[0];
    l = svec_a[j];
    i = sim_b;
    i = svec_b[1];
    i = svec_b[j];
    par = sim_b;
    // Call f() begin
    l_1 = par;
    // Call f() end
    par = svec_b[1];
    // Call f() begin
    l_1 = par;
    // Call f() end
    par = svec_b[j + 1];
    // Call f() begin
    l_1 = par;
    // Call f() end
    if (sim_a0)
    begin
        ++i;
    end
    if (svec_a[1])
    begin
        ++i;
    end
    if (svec_a[j])
    begin
        ++i;
    end
    if (sim_b != 1)
    begin
        ++i;
    end
    if (svec_b[j] != 2)
    begin
        ++i;
    end
end

//------------------------------------------------------------------------------
// Method process: procPort (test_chan_type_meth.cpp:155:5) 

always_comb 
begin : procPort     // test_chan_type_meth.cpp:155:5
    logic ss_a;
    integer ss_b;
    ss_b = 'h42;
    ss_a = in_a; ss_b = in_b;
    ss_a = in_a; ss_b = in_b;
    out_a = ss_a; out_b = ss_b;
    out_a = ss_a; out_b = ss_b;
    out_a = in_a; out_b = in_b;
    out_a = sim_a0; out_b = sim_b;
end

//------------------------------------------------------------------------------
// Method process: procArr (test_chan_type_meth.cpp:165:5) 

always_comb 
begin : procArr     // test_chan_type_meth.cpp:165:5
    integer unsigned i;
    integer unsigned j;
    logic ss_a;
    integer ss_b;
    logic rr_a[2];
    integer rr_b[2];
    i = s;
    j = s;
    ss_b = 'h42;
    rr_a[1] = 1;
    rr_b[1] = 2;
    ss_a = rr_a[1]; ss_b = rr_b[1];
    ss_a = svec_a[j]; ss_b = svec_b[j];
    ss_a = svec_a[j]; ss_b = svec_b[j];
    rvec_a[i] = rr_a[j]; rvec_b[i] = rr_b[j];
    rvec_a[i] = rr_a[j]; rvec_b[i] = rr_b[j];
    rr_a[i] = svec_a[j]; rr_b[i] = svec_b[j];
    rr_a[i] = svec_a[j]; rr_b[i] = svec_b[j];
    rvec_a[i] = svec_a[j]; rvec_b[i] = svec_b[j];
    rvec_a[i] = svec_a[j]; rvec_b[i] = svec_b[j];
    rvec_a[i] = svec_a[j]; rvec_b[i] = svec_b[j];
    rvec_a[i] = svec_a[j]; rvec_b[i] = svec_b[j];
end

//------------------------------------------------------------------------------
// Method process: procCtor (test_chan_type_meth.cpp:184:5) 

always_comb 
begin : procCtor     // test_chan_type_meth.cpp:184:5
    logic ss_a;
    integer ss_b;
    logic tt_a;
    integer tt_b;
    ss_b = 'h42;
    tim_a = 0; tim_b = 'h42;
    tim_a = 0; tim_b = 'h42;
    tim_a = 0; tim_b = 'h42;
    tim_a = 0; tim_b = 'h42;
    out_a = 0; out_b = 'h42;
    out_a = 0; out_b = 'h42;
    out_a = 0; out_b = 'h42;
    out_a = 0; out_b = 'h42;
    tt_a = ss_a; tt_b = ss_b;
end

endmodule


