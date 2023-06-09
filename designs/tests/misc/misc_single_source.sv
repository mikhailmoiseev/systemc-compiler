//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.15
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B ()
//
module B // "test_top.dut.a"
(
    input logic clk,
    input logic nrst,
    input logic run_core_req,
    input logic [15:0] run_core_data,
    input logic resp_core_ready
);

// Variables generated for SystemC signals
logic run_core_ready;
logic run_get_req;
logic run_get_req_d;
logic run_reg_full;
logic run_reg_full_d;
logic run_core_req_d;
logic [15:0] run_core_data_d;
logic resp_core_req;
logic [15:0] resp_core_data;
logic resp_put_req;
logic resp_put_req_d;
logic resp_core_req_d;
logic resp_core_ready_d;
logic resp_sync_req;
logic [15:0] resp_sync_data;
logic run_clk;
logic run_nrst;
logic resp_clk;
logic resp_nrst;

// Local parameters generated for C++ constants
localparam logic run_SYNC = 0;
localparam logic run_CTHREAD = 0;
localparam logic run_ALWAYS_READY = 0;
localparam logic resp_SYNC = 1;
localparam logic resp_CTHREAD = 0;
localparam logic resp_ALWAYS_READY = 0;
localparam logic [63:0] resp_ALL_ENABLED0 = 64'hFFFFFFFFFFFFFFFF;

// Assignments generated for C++ channel arrays
assign run_clk = clk;
assign run_nrst = nrst;
assign resp_clk = clk;
assign resp_nrst = nrst;

//------------------------------------------------------------------------------
// Method process: run_ready_control (sct_target.h:224:5) 

always_comb 
begin : run_ready_control     // sct_target.h:224:5
    logic A;
    A = run_get_req_d;
    run_core_ready = A || !run_reg_full;
end

//------------------------------------------------------------------------------
// Method process: run_full_control (sct_target.h:229:5) 

always_comb 
begin : run_full_control     // sct_target.h:229:5
    logic A;
    A = run_get_req_d;
    if (A)
    begin
        run_reg_full = 0;
    end else begin
        if (run_core_req_d)
        begin
            run_reg_full = 1;
        end else begin
            run_reg_full = run_reg_full_d;
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: run_core_thread (sct_target.h:241:5) 

// Thread-local variables
logic run_get_req_d_next;
logic run_core_req_d_next;
logic run_reg_full_d_next;
logic [15:0] run_core_data_d_next;

// Next-state combinational logic
always_comb begin : run_core_thread_comb     // sct_target.h:241:5
    run_core_thread_func;
end
function void run_core_thread_func;
    run_core_data_d_next = run_core_data_d;
    run_core_req_d_next = run_core_req_d;
    run_get_req_d_next = run_get_req_d;
    run_reg_full_d_next = run_reg_full_d;
    run_get_req_d_next = run_get_req;
    run_core_req_d_next = run_core_req;
    run_reg_full_d_next = run_reg_full;
    if (run_core_req && !run_reg_full)
    begin
        run_core_data_d_next = run_core_data;
    end
endfunction

// Synchronous register update
always_ff @(posedge run_clk or negedge run_nrst) 
begin : run_core_thread_ff
    if ( ~run_nrst ) begin
        run_get_req_d <= 0;
        run_core_req_d <= 0;
        run_reg_full_d <= 0;
        run_core_data_d <= 0;
    end
    else begin
        run_get_req_d <= run_get_req_d_next;
        run_core_req_d <= run_core_req_d_next;
        run_reg_full_d <= run_reg_full_d_next;
        run_core_data_d <= run_core_data_d_next;
    end
end

//------------------------------------------------------------------------------
// Method process: run_put_to_fifo (sct_target.h:210:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: resp_req_control (sct_initiator.h:202:5) 

always_comb 
begin : resp_req_control     // sct_initiator.h:202:5
    logic A;
    A = resp_put_req != resp_put_req_d;
    if (A)
    begin
        resp_core_req = 1;
    end else begin
        if (resp_core_ready_d)
        begin
            resp_core_req = 0;
        end else begin
            resp_core_req = resp_core_req_d;
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: resp_core_thread (sct_initiator.h:218:5) 

// Thread-local variables
logic resp_put_req_d_next;
logic resp_core_req_d_next;
logic resp_core_ready_d_next;

// Next-state combinational logic
always_comb begin : resp_core_thread_comb     // sct_initiator.h:218:5
    resp_core_thread_func;
end
function void resp_core_thread_func;
    resp_core_ready_d_next = resp_core_ready_d;
    resp_core_req_d_next = resp_core_req_d;
    resp_put_req_d_next = resp_put_req_d;
    resp_put_req_d_next = resp_put_req;
    resp_core_req_d_next = resp_core_req;
    resp_core_ready_d_next = resp_core_ready;
endfunction

// Synchronous register update
always_ff @(posedge resp_clk or negedge resp_nrst) 
begin : resp_core_thread_ff
    if ( ~resp_nrst ) begin
        resp_put_req_d <= 0;
        resp_core_req_d <= 0;
        resp_core_ready_d <= 0;
    end
    else begin
        resp_put_req_d <= resp_put_req_d_next;
        resp_core_req_d <= resp_core_req_d_next;
        resp_core_ready_d <= resp_core_ready_d_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: resp_sync_thread (sct_initiator.h:181:5) 

// Thread-local variables
logic resp_put_req_next;
logic [15:0] resp_core_data_next;

// Next-state combinational logic
always_comb begin : resp_sync_thread_comb     // sct_initiator.h:181:5
    resp_sync_thread_func;
end
function void resp_sync_thread_func;
    logic A;
    resp_core_data_next = resp_core_data;
    resp_put_req_next = resp_put_req;
    A = resp_sync_req;
    if (A && resp_core_ready)
    begin
        resp_put_req_next = !resp_put_req;
        resp_core_data_next = resp_sync_data;
    end
endfunction

// Synchronous register update
always_ff @(posedge resp_clk or negedge resp_nrst) 
begin : resp_sync_thread_ff
    if ( ~resp_nrst ) begin
        resp_put_req <= 0;
        resp_core_data <= 0;
    end
    else begin
        resp_put_req <= resp_put_req_next;
        resp_core_data <= resp_core_data_next;
    end
end

//------------------------------------------------------------------------------
// Method process: methProc (test_single_source.cpp:29:5) 

always_comb 
begin : methProc     // test_single_source.cpp:29:5
    logic TMP_0;
    logic TMP_1;
    logic [15:0] TMP_2;
    logic A;
    logic TMP_3;
    logic mask;
    // Call reset_get() begin
    run_get_req = 0;
    // Call reset_get() end
    // Call reset_put() begin
    resp_sync_req = 0;
    resp_sync_data = 0;
    // Call reset_put() end
    // Call request() begin
    TMP_0 = run_core_req || run_reg_full;
    // Call request() end
    // Call ready() begin
    TMP_1 = resp_core_ready;
    // Call ready() end
    if (TMP_0 && TMP_1)
    begin
        // Call get() begin
        A = (run_core_req || run_reg_full);
        if (A)
        begin
            run_get_req = 1;
        end else begin
            run_get_req = 0;
        end
        TMP_2 = (run_SYNC || run_reg_full) ? run_core_data_d : run_core_data;
        // Call get() end
        mask = resp_ALL_ENABLED0;
        // Call put() begin
        if (resp_core_ready)
        begin
            resp_sync_req = mask;
            resp_sync_data = TMP_2;
            TMP_3 = mask;
        end else begin
            resp_sync_req = 0;
            resp_sync_data = 0;
            TMP_3 = 0;
        end
        // Call put() end
    end
end

endmodule


