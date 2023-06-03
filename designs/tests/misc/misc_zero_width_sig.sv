//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.5
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: MyModule ()
//
module MyModule // "top_mod"
(
);

// Variables generated for SystemC signals
logic [31:0] ss;
logic [31:0] mc_mu;
logic [31:0] mr_mu;
logic [31:0] asr_mu[3];

//------------------------------------------------------------------------------
// Method process: sigProc (test_zero_width_sig.cpp:73:5) 

always_comb 
begin : sigProc     // test_zero_width_sig.cpp:73:5
    integer l;
    integer j;
    l = 0;
    l = 0;
    l = 0 + 1;
    l = 0 - 0;
    l = 2 * (0 + 1);
    j = 0; l = j;
end

//------------------------------------------------------------------------------
// Method process: arrProc (test_zero_width_sig.cpp:95:5) 

always_comb 
begin : arrProc     // test_zero_width_sig.cpp:95:5
    integer unsigned k;
    integer l;
    integer j;
    k = 0;
    l = 0;
    l = 0;
    l = 0 + 1;
    l = 0 - 0;
    l = 2 * (0 + 1);
    j = 0; l = j;
    j = 0; l = j;
    j = 0; l = j;
    j = 0; l = j;
end

//------------------------------------------------------------------------------
// Method process: recCopyProc (test_zero_width_sig.cpp:121:5) 

always_comb 
begin : recCopyProc     // test_zero_width_sig.cpp:121:5
    integer unsigned k;
    integer unsigned lr_mu;
    integer unsigned lt_mu;
    k = 0;
    lt_mu = lr_mu;
    lr_mu = lt_mu;
    lr_mu = mc_mu;
    mc_mu = lt_mu;
end

//------------------------------------------------------------------------------
// Method process: recSomeProc (test_zero_width_sig.cpp:137:5) 

always_comb 
begin : recSomeProc     // test_zero_width_sig.cpp:137:5
    integer unsigned k;
    integer unsigned lr_mu;
    integer l;
    integer j;
    k = 0;
    k = ss;
    lr_mu = mr_mu;
    lr_mu = mr_mu;
    mr_mu = lr_mu;
    mr_mu = lr_mu;
    l = 0;
    l = mr_mu;
    l = 0;
    l = 0;
    l = 0 + 1 + 0;
    j = 0; l = j;
    j = mr_mu; l = j;
    j = 0; l = j;
end

//------------------------------------------------------------------------------
// Method process: recAllProc (test_zero_width_sig.cpp:160:5) 

always_comb 
begin : recAllProc     // test_zero_width_sig.cpp:160:5
    integer unsigned k;
    integer l;
    integer j;
    k = 0;
    k = ss;
    l = 0;
    l = 0;
    l = 0;
    l = 0 + 1 + 0;
    j = 0; l = j;
    j = 0; l = j;
end

//------------------------------------------------------------------------------
// Method process: recArrProc (test_zero_width_sig.cpp:183:5) 

always_comb 
begin : recArrProc     // test_zero_width_sig.cpp:183:5
    integer unsigned k;
    integer unsigned lr_mu;
    integer l;
    integer j;
    integer unsigned lsarr_mu[3];
    k = ss;
    lr_mu = asr_mu[k];
    lr_mu = asr_mu[2];
    l = 0;
    l = asr_mu[k];
    l = 0;
    l = 0;
    l = 0;
    j = 0;
    j = 0;
    j = 0;
    asr_mu[0] = lsarr_mu[1];
    asr_mu[k] = lsarr_mu[k];
    asr_mu[k + 1] = lsarr_mu[k];
    asr_mu[k + 1] = asr_mu[k];
end

endmodule


