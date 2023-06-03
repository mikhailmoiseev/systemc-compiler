//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.10
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Top ()
//
module Top // "top"
(
    input logic clk
);

// Variables generated for SystemC signals
logic rstn;
logic pp_req[2][3];
logic [15:0] pp_s[2][3];
logic [3:0] pp_sv[2][3][2];
logic [4:0] pp_sa[2][3][2];
logic [15:0] t;
logic pp_clk[2][3];
logic pp_rstn[2][3];
logic cc_req[2][3];
logic [31:0] cc_resp[2][3];

// Assignments generated for C++ channel arrays
assign pp_clk[0][0] = clk;
assign pp_clk[0][1] = clk;
assign pp_clk[0][2] = clk;
assign pp_clk[1][0] = clk;
assign pp_clk[1][1] = clk;
assign pp_clk[1][2] = clk;
assign pp_rstn[0][0] = rstn;
assign pp_rstn[0][1] = rstn;
assign pp_rstn[0][2] = rstn;
assign pp_rstn[1][0] = rstn;
assign pp_rstn[1][1] = rstn;
assign pp_rstn[1][2] = rstn;
assign cc_req = pp_req;

//------------------------------------------------------------------------------
// Clocked THREAD: pp_threadProc (test_sc_vector_mif_2d.cpp:33:5) 

// Thread-local variables
logic [15:0] pp_s_next[2][3];
logic pp_req_next[2][3];
logic [31:0] pp_a[2][3][2];
logic [31:0] pp_a_next[2][3][2];
logic [3:0] pp_sv_next[2][3][2];
logic signed [31:0] pp_m[2][3];

// Next-state combinational logic
always_comb begin : pp_threadProc_comb     // test_sc_vector_mif_2d.cpp:33:5
    pp_threadProc_func;
end
function void pp_threadProc_func;
    pp_a_next[0][0] = pp_a[0][0];
    pp_req_next[0][0] = pp_req[0][0];
    pp_s_next[0][0] = pp_s[0][0];
    pp_sv_next[0][0] = pp_sv[0][0];
    pp_req_next[0][0] = 0;
    pp_s_next[0][0] = pp_s[0][0] + 1;
    if (|(pp_s[0][0] % 3))
    begin
        pp_req_next[0][0] = 1;
    end
    pp_m[0][0] = pp_s[0][0];
    pp_sv_next[0][0][pp_s[0][0]] = pp_sa[0][0][pp_a_next[0][0][pp_m[0][0]]];
endfunction

// Synchronous register update
always_ff @(posedge pp_clk[0][0] or negedge pp_rstn[0][0]) 
begin : pp_threadProc_ff
    if ( ~pp_rstn[0][0] ) begin
        pp_s[0][0] <= 0;
        pp_req[0][0] <= 0;
    end
    else begin
        pp_s[0][0] <= pp_s_next[0][0];
        pp_req[0][0] <= pp_req_next[0][0];
        pp_a[0][0] <= pp_a_next[0][0];
        pp_sv[0][0] <= pp_sv_next[0][0];
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: pp_threadProc0 (test_sc_vector_mif_2d.cpp:33:5) 

// Next-state combinational logic
always_comb begin : pp_threadProc0_comb     // test_sc_vector_mif_2d.cpp:33:5
    pp_threadProc0_func;
end
function void pp_threadProc0_func;
    pp_a_next[0][1] = pp_a[0][1];
    pp_req_next[0][1] = pp_req[0][1];
    pp_s_next[0][1] = pp_s[0][1];
    pp_sv_next[0][1] = pp_sv[0][1];
    pp_req_next[0][1] = 0;
    pp_s_next[0][1] = pp_s[0][1] + 1;
    if (|(pp_s[0][1] % 3))
    begin
        pp_req_next[0][1] = 1;
    end
    pp_m[0][1] = pp_s[0][1];
    pp_sv_next[0][1][pp_s[0][1]] = pp_sa[0][1][pp_a_next[0][1][pp_m[0][1]]];
endfunction

// Synchronous register update
always_ff @(posedge pp_clk[0][1] or negedge pp_rstn[0][1]) 
begin : pp_threadProc0_ff
    if ( ~pp_rstn[0][1] ) begin
        pp_s[0][1] <= 0;
        pp_req[0][1] <= 0;
    end
    else begin
        pp_s[0][1] <= pp_s_next[0][1];
        pp_req[0][1] <= pp_req_next[0][1];
        pp_a[0][1] <= pp_a_next[0][1];
        pp_sv[0][1] <= pp_sv_next[0][1];
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: pp_threadProc1 (test_sc_vector_mif_2d.cpp:33:5) 

// Next-state combinational logic
always_comb begin : pp_threadProc1_comb     // test_sc_vector_mif_2d.cpp:33:5
    pp_threadProc1_func;
end
function void pp_threadProc1_func;
    pp_a_next[0][2] = pp_a[0][2];
    pp_req_next[0][2] = pp_req[0][2];
    pp_s_next[0][2] = pp_s[0][2];
    pp_sv_next[0][2] = pp_sv[0][2];
    pp_req_next[0][2] = 0;
    pp_s_next[0][2] = pp_s[0][2] + 1;
    if (|(pp_s[0][2] % 3))
    begin
        pp_req_next[0][2] = 1;
    end
    pp_m[0][2] = pp_s[0][2];
    pp_sv_next[0][2][pp_s[0][2]] = pp_sa[0][2][pp_a_next[0][2][pp_m[0][2]]];
endfunction

// Synchronous register update
always_ff @(posedge pp_clk[0][2] or negedge pp_rstn[0][2]) 
begin : pp_threadProc1_ff
    if ( ~pp_rstn[0][2] ) begin
        pp_s[0][2] <= 0;
        pp_req[0][2] <= 0;
    end
    else begin
        pp_s[0][2] <= pp_s_next[0][2];
        pp_req[0][2] <= pp_req_next[0][2];
        pp_a[0][2] <= pp_a_next[0][2];
        pp_sv[0][2] <= pp_sv_next[0][2];
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: pp_threadProc2 (test_sc_vector_mif_2d.cpp:33:5) 

// Next-state combinational logic
always_comb begin : pp_threadProc2_comb     // test_sc_vector_mif_2d.cpp:33:5
    pp_threadProc2_func;
end
function void pp_threadProc2_func;
    pp_a_next[1][0] = pp_a[1][0];
    pp_req_next[1][0] = pp_req[1][0];
    pp_s_next[1][0] = pp_s[1][0];
    pp_sv_next[1][0] = pp_sv[1][0];
    pp_req_next[1][0] = 0;
    pp_s_next[1][0] = pp_s[1][0] + 1;
    if (|(pp_s[1][0] % 3))
    begin
        pp_req_next[1][0] = 1;
    end
    pp_m[1][0] = pp_s[1][0];
    pp_sv_next[1][0][pp_s[1][0]] = pp_sa[1][0][pp_a_next[1][0][pp_m[1][0]]];
endfunction

// Synchronous register update
always_ff @(posedge pp_clk[1][0] or negedge pp_rstn[1][0]) 
begin : pp_threadProc2_ff
    if ( ~pp_rstn[1][0] ) begin
        pp_s[1][0] <= 0;
        pp_req[1][0] <= 0;
    end
    else begin
        pp_s[1][0] <= pp_s_next[1][0];
        pp_req[1][0] <= pp_req_next[1][0];
        pp_a[1][0] <= pp_a_next[1][0];
        pp_sv[1][0] <= pp_sv_next[1][0];
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: pp_threadProc3 (test_sc_vector_mif_2d.cpp:33:5) 

// Next-state combinational logic
always_comb begin : pp_threadProc3_comb     // test_sc_vector_mif_2d.cpp:33:5
    pp_threadProc3_func;
end
function void pp_threadProc3_func;
    pp_a_next[1][1] = pp_a[1][1];
    pp_req_next[1][1] = pp_req[1][1];
    pp_s_next[1][1] = pp_s[1][1];
    pp_sv_next[1][1] = pp_sv[1][1];
    pp_req_next[1][1] = 0;
    pp_s_next[1][1] = pp_s[1][1] + 1;
    if (|(pp_s[1][1] % 3))
    begin
        pp_req_next[1][1] = 1;
    end
    pp_m[1][1] = pp_s[1][1];
    pp_sv_next[1][1][pp_s[1][1]] = pp_sa[1][1][pp_a_next[1][1][pp_m[1][1]]];
endfunction

// Synchronous register update
always_ff @(posedge pp_clk[1][1] or negedge pp_rstn[1][1]) 
begin : pp_threadProc3_ff
    if ( ~pp_rstn[1][1] ) begin
        pp_s[1][1] <= 0;
        pp_req[1][1] <= 0;
    end
    else begin
        pp_s[1][1] <= pp_s_next[1][1];
        pp_req[1][1] <= pp_req_next[1][1];
        pp_a[1][1] <= pp_a_next[1][1];
        pp_sv[1][1] <= pp_sv_next[1][1];
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: pp_threadProc4 (test_sc_vector_mif_2d.cpp:33:5) 

// Next-state combinational logic
always_comb begin : pp_threadProc4_comb     // test_sc_vector_mif_2d.cpp:33:5
    pp_threadProc4_func;
end
function void pp_threadProc4_func;
    pp_a_next[1][2] = pp_a[1][2];
    pp_req_next[1][2] = pp_req[1][2];
    pp_s_next[1][2] = pp_s[1][2];
    pp_sv_next[1][2] = pp_sv[1][2];
    pp_req_next[1][2] = 0;
    pp_s_next[1][2] = pp_s[1][2] + 1;
    if (|(pp_s[1][2] % 3))
    begin
        pp_req_next[1][2] = 1;
    end
    pp_m[1][2] = pp_s[1][2];
    pp_sv_next[1][2][pp_s[1][2]] = pp_sa[1][2][pp_a_next[1][2][pp_m[1][2]]];
endfunction

// Synchronous register update
always_ff @(posedge pp_clk[1][2] or negedge pp_rstn[1][2]) 
begin : pp_threadProc4_ff
    if ( ~pp_rstn[1][2] ) begin
        pp_s[1][2] <= 0;
        pp_req[1][2] <= 0;
    end
    else begin
        pp_s[1][2] <= pp_s_next[1][2];
        pp_req[1][2] <= pp_req_next[1][2];
        pp_a[1][2] <= pp_a_next[1][2];
        pp_sv[1][2] <= pp_sv_next[1][2];
    end
end

//------------------------------------------------------------------------------
// Method process: cc_methProc (test_sc_vector_mif_2d.cpp:65:5) 

always_comb 
begin : cc_methProc     // test_sc_vector_mif_2d.cpp:65:5
    cc_resp[0][0] = 1;
    if (cc_req[0][0])
    begin
        cc_resp[0][0] = 2;
    end
end

//------------------------------------------------------------------------------
// Method process: cc_methProc0 (test_sc_vector_mif_2d.cpp:65:5) 

always_comb 
begin : cc_methProc0     // test_sc_vector_mif_2d.cpp:65:5
    cc_resp[0][1] = 1;
    if (cc_req[0][1])
    begin
        cc_resp[0][1] = 2;
    end
end

//------------------------------------------------------------------------------
// Method process: cc_methProc1 (test_sc_vector_mif_2d.cpp:65:5) 

always_comb 
begin : cc_methProc1     // test_sc_vector_mif_2d.cpp:65:5
    cc_resp[0][2] = 1;
    if (cc_req[0][2])
    begin
        cc_resp[0][2] = 2;
    end
end

//------------------------------------------------------------------------------
// Method process: cc_methProc2 (test_sc_vector_mif_2d.cpp:65:5) 

always_comb 
begin : cc_methProc2     // test_sc_vector_mif_2d.cpp:65:5
    cc_resp[1][0] = 1;
    if (cc_req[1][0])
    begin
        cc_resp[1][0] = 2;
    end
end

//------------------------------------------------------------------------------
// Method process: cc_methProc3 (test_sc_vector_mif_2d.cpp:65:5) 

always_comb 
begin : cc_methProc3     // test_sc_vector_mif_2d.cpp:65:5
    cc_resp[1][1] = 1;
    if (cc_req[1][1])
    begin
        cc_resp[1][1] = 2;
    end
end

//------------------------------------------------------------------------------
// Method process: cc_methProc4 (test_sc_vector_mif_2d.cpp:65:5) 

always_comb 
begin : cc_methProc4     // test_sc_vector_mif_2d.cpp:65:5
    cc_resp[1][2] = 1;
    if (cc_req[1][2])
    begin
        cc_resp[1][2] = 2;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: mainProc (test_sc_vector_mif_2d.cpp:103:5) 

// Thread-local variables
logic signed [31:0] pp_m[2][3];
logic signed [31:0] pp_m_next[2][3];
logic [31:0] pp_a[2][3][2];
logic [31:0] pp_a_next0[2][3][2];
logic [15:0] pp_s_next0[2][3];
logic [4:0] pp_sa_next[2][3][2];
logic [3:0] pp_sv_next0[2][3][2];

// Next-state combinational logic
always_comb begin : mainProc_comb     // test_sc_vector_mif_2d.cpp:103:5
    mainProc_func;
end
function void mainProc_func;
    integer unsigned u;
    pp_a_next0 = pp_a;
    pp_m_next = pp_m;
    pp_s_next0 = pp_s;
    pp_sa_next = pp_sa;
    pp_sv_next0 = pp_sv;
    u = t;
    pp_m_next[0][0] = 1;
    pp_m_next[u][u + 1] = pp_m_next[u][1];
    pp_m_next[0][u] = pp_m_next[u][u];
    pp_a_next0[0][u][0] = 1;
    pp_a_next0[0][u][u] = 2;
    pp_a_next0[u + 1][u + 1][u + 1] = pp_a_next0[u][u][u];
    pp_s_next0[0][0] = pp_sa[0][0][0];
    pp_s_next0[u][u] = pp_sa[u][u][u + 1];
    pp_sa_next[u][u][1] = pp_sv[u][u][u];
    pp_sv_next0[u][u][u] = pp_s[u][u + 1];
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : mainProc_ff
    if ( ~rstn ) begin
    end
    else begin
        pp_m <= pp_m_next;
        pp_a <= pp_a_next0;
        pp_s <= pp_s_next0;
        pp_sa <= pp_sa_next;
        pp_sv <= pp_sv_next0;
    end
end

endmodule


