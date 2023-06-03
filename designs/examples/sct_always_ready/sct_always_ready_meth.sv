//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.11
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: simple_test ()
//
module simple_test // "test_top.dut"
(
    input logic clk,
    input logic nrst
);

// Variables generated for SystemC signals
logic trun_put_req;
logic trun_put_req_d;
logic tresp_get_req;
logic tresp_get_req_d;
logic tresp_core_req_d;
logic [15:0] tresp_core_data_d;
logic trun_clk;
logic trun_nrst;
logic trun_core_ready;
logic trun_core_req;
logic [15:0] trun_core_data;
logic tresp_clk;
logic tresp_nrst;
logic tresp_core_ready;
logic tresp_core_req;
logic [15:0] tresp_core_data;

// Local parameters generated for C++ constants
localparam logic trun_sync = 0;
localparam logic trun_cthread = 1;
localparam logic trun_always_ready = 1;
localparam logic tresp_sync = 1;
localparam logic tresp_cthread = 1;
localparam logic tresp_always_ready = 1;
localparam logic [31:0] N = 3;
localparam logic [31:0] M = 4;

// Assignments generated for C++ channel arrays
assign trun_clk = clk;
assign trun_nrst = nrst;
assign tresp_clk = clk;
assign tresp_nrst = nrst;

//------------------------------------------------------------------------------
// Clocked THREAD: trun_sync_thread (sct_initiator.h:207:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: trun_req_control (sct_initiator.h:228:5) 

always_comb 
begin : trun_req_control     // sct_initiator.h:228:5
    logic A;
    A = trun_put_req != trun_put_req_d;
    trun_core_req = A;
end

//------------------------------------------------------------------------------
// Clocked THREAD: trun_core_thread (sct_initiator.h:244:5) 

// Thread-local variables
logic trun_put_req_d_next;

// Next-state combinational logic
always_comb begin : trun_core_thread_comb     // sct_initiator.h:244:5
    trun_core_thread_func;
end
function void trun_core_thread_func;
    trun_put_req_d_next = trun_put_req_d;
    trun_put_req_d_next = trun_put_req;
endfunction

// Synchronous register update
always_ff @(posedge trun_clk or negedge trun_nrst) 
begin : trun_core_thread_ff
    if ( ~trun_nrst ) begin
        trun_put_req_d <= 0;
    end
    else begin
        trun_put_req_d <= trun_put_req_d_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: tresp_always_ready_thread (sct_target.h:281:5) 

// Thread-local variables
logic tresp_get_req_d_next;
logic tresp_core_req_d_next;
logic [15:0] tresp_core_data_d_next;

// Next-state combinational logic
always_comb begin : tresp_always_ready_thread_comb     // sct_target.h:281:5
    tresp_always_ready_thread_func;
end
function void tresp_always_ready_thread_func;
    tresp_core_data_d_next = tresp_core_data_d;
    tresp_core_req_d_next = tresp_core_req_d;
    tresp_get_req_d_next = tresp_get_req_d;
    tresp_get_req_d_next = tresp_get_req;
    tresp_core_req_d_next = tresp_core_req;
    tresp_core_data_d_next = tresp_core_data;
endfunction

// Synchronous register update
always_ff @(posedge tresp_clk or negedge tresp_nrst) 
begin : tresp_always_ready_thread_ff
    if ( ~tresp_nrst ) begin
        tresp_get_req_d <= 0;
        tresp_core_req_d <= 0;
        tresp_core_data_d <= 0;
    end
    else begin
        tresp_get_req_d <= tresp_get_req_d_next;
        tresp_core_req_d <= tresp_core_req_d_next;
        tresp_core_data_d <= tresp_core_data_d_next;
    end
end

//------------------------------------------------------------------------------
// Method process: tresp_core_ready_meth (sct_target.h:301:5) 

assign tresp_core_ready = 1;

//------------------------------------------------------------------------------
// Clocked THREAD: init_thread (method_test.h:99:5) 

// Thread-local variables
logic trun_put_req_next;
logic [15:0] trun_core_data_next;
logic tresp_get_req_next;
logic [15:0] data;
logic [15:0] data_next;
logic signed [31:0] i;
logic signed [31:0] i_next;
logic signed [31:0] j;
logic signed [31:0] j_next;
logic signed [31:0] i0;
logic signed [31:0] i_next0;
logic [3:0] init_thread_PROC_STATE;
logic [3:0] init_thread_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : init_thread_comb     // method_test.h:99:5
    init_thread_func;
end
function void init_thread_func;
    logic [15:0] data_1;
    logic TMP_0;
    logic [15:0] TMP_1;
    logic TMP_2;
    logic TMP_3;
    logic enable;
    logic A;
    logic TMP_4;
    logic TMP_5;
    logic TMP_6;
    logic TMP_7;
    logic TMP_8;
    logic TMP_9;
    logic TMP_10;
    logic TMP_11;
    logic TMP_12;
    logic TMP_13;
    logic TMP_14;
    logic TMP_15;
    data_next = data;
    i_next = i;
    i_next0 = i0;
    j_next = j;
    tresp_get_req_next = tresp_get_req;
    trun_core_data_next = trun_core_data;
    trun_put_req_next = trun_put_req;
    init_thread_PROC_STATE_next = init_thread_PROC_STATE;
    
    case (init_thread_PROC_STATE)
        0: begin
            data_next = 42;
            // Call put() begin
            trun_put_req_next = !trun_put_req;
            trun_core_data_next = data_next;
            TMP_0 = 1;
            // Call put() end
            init_thread_PROC_STATE_next = 1; return;    // method_test.h:107:9;
        end
        1: begin
            // Call b_get() begin
            if (!tresp_core_req_d)
            begin
                init_thread_PROC_STATE_next = 2; return;    // sct_target.h:180:45;
            end
            tresp_get_req_next = !tresp_get_req;
            TMP_1 = tresp_core_data_d;
            // Call b_get() end
            data_1 = TMP_1;
            init_thread_PROC_STATE_next = 3; return;    // method_test.h:110:30;
        end
        2: begin
            // Call b_get() begin
            if (!tresp_core_req_d)
            begin
                init_thread_PROC_STATE_next = 2; return;    // sct_target.h:180:45;
            end
            tresp_get_req_next = !tresp_get_req;
            TMP_1 = tresp_core_data_d;
            // Call b_get() end
            data_1 = TMP_1;
            init_thread_PROC_STATE_next = 3; return;    // method_test.h:110:30;
        end
        3: begin
            j_next = 0;
            i_next = 0;
            data_next = i_next;
            // Call put() begin
            trun_put_req_next = !trun_put_req;
            trun_core_data_next = data_next;
            TMP_2 = 1;
            // Call put() end
            enable = 1;
            // Call get() begin
            data_1 = tresp_core_data_d;
            A = tresp_core_req_d;
            if (A)
            begin
                tresp_get_req_next = !tresp_get_req;
                TMP_3 = enable;
            end else begin
                TMP_3 = 0;
            end
            // Call get() end
            if (TMP_3)
            begin
                j_next++;
            end
            init_thread_PROC_STATE_next = 4; return;    // method_test.h:121:13;
        end
        4: begin
            ++i_next;
            if (i_next < N)
            begin
                data_next = i_next;
                // Call put() begin
                trun_put_req_next = !trun_put_req;
                trun_core_data_next = data_next;
                TMP_4 = 1;
                // Call put() end
                enable = 1;
                // Call get() begin
                data_1 = tresp_core_data_d;
                A = tresp_core_req_d;
                if (A)
                begin
                    tresp_get_req_next = !tresp_get_req;
                    TMP_5 = enable;
                end else begin
                    TMP_5 = 0;
                end
                // Call get() end
                if (TMP_5)
                begin
                    j_next++;
                end
                init_thread_PROC_STATE_next = 4; return;    // method_test.h:121:13;
            end
            if (j_next < N)
            begin
                enable = 1;
                // Call get() begin
                data_1 = tresp_core_data_d;
                A = tresp_core_req_d;
                if (A)
                begin
                    tresp_get_req_next = !tresp_get_req;
                    TMP_6 = enable;
                end else begin
                    TMP_6 = 0;
                end
                // Call get() end
                if (TMP_6)
                begin
                    j_next++;
                end
                init_thread_PROC_STATE_next = 5; return;    // method_test.h:127:13;
            end
            j_next = 0;
            i_next0 = 0;
            data_next = i_next0;
            // Call put() begin
            trun_put_req_next = !trun_put_req;
            trun_core_data_next = data_next;
            TMP_7 = 1;
            // Call put() end
            enable = 1;
            // Call get() begin
            data_1 = tresp_core_data_d;
            A = tresp_core_req_d;
            if (A)
            begin
                tresp_get_req_next = !tresp_get_req;
                TMP_8 = enable;
            end else begin
                TMP_8 = 0;
            end
            // Call get() end
            if (TMP_8)
            begin
                j_next++;
            end
            init_thread_PROC_STATE_next = 6; return;    // method_test.h:140:13;
        end
        5: begin
            if (j_next < N)
            begin
                enable = 1;
                // Call get() begin
                data_1 = tresp_core_data_d;
                A = tresp_core_req_d;
                if (A)
                begin
                    tresp_get_req_next = !tresp_get_req;
                    TMP_9 = enable;
                end else begin
                    TMP_9 = 0;
                end
                // Call get() end
                if (TMP_9)
                begin
                    j_next++;
                end
                init_thread_PROC_STATE_next = 5; return;    // method_test.h:127:13;
            end
            j_next = 0;
            i_next0 = 0;
            data_next = i_next0;
            // Call put() begin
            trun_put_req_next = !trun_put_req;
            trun_core_data_next = data_next;
            TMP_10 = 1;
            // Call put() end
            enable = 1;
            // Call get() begin
            data_1 = tresp_core_data_d;
            A = tresp_core_req_d;
            if (A)
            begin
                tresp_get_req_next = !tresp_get_req;
                TMP_11 = enable;
            end else begin
                TMP_11 = 0;
            end
            // Call get() end
            if (TMP_11)
            begin
                j_next++;
            end
            init_thread_PROC_STATE_next = 6; return;    // method_test.h:140:13;
        end
        6: begin
            ++i_next0;
            if (i_next0 < M)
            begin
                data_next = i_next0;
                // Call put() begin
                trun_put_req_next = !trun_put_req;
                trun_core_data_next = data_next;
                TMP_12 = 1;
                // Call put() end
                enable = 1;
                // Call get() begin
                data_1 = tresp_core_data_d;
                A = tresp_core_req_d;
                if (A)
                begin
                    tresp_get_req_next = !tresp_get_req;
                    TMP_13 = enable;
                end else begin
                    TMP_13 = 0;
                end
                // Call get() end
                if (TMP_13)
                begin
                    j_next++;
                end
                init_thread_PROC_STATE_next = 6; return;    // method_test.h:140:13;
            end
            if (j_next < M)
            begin
                enable = 1;
                // Call get() begin
                data_1 = tresp_core_data_d;
                A = tresp_core_req_d;
                if (A)
                begin
                    tresp_get_req_next = !tresp_get_req;
                    TMP_14 = enable;
                end else begin
                    TMP_14 = 0;
                end
                // Call get() end
                if (TMP_14)
                begin
                    j_next++;
                end
                init_thread_PROC_STATE_next = 7; return;    // method_test.h:147:13;
            end
            init_thread_PROC_STATE_next = 8; return;    // method_test.h:150:9;
        end
        7: begin
            if (j_next < M)
            begin
                enable = 1;
                // Call get() begin
                data_1 = tresp_core_data_d;
                A = tresp_core_req_d;
                if (A)
                begin
                    tresp_get_req_next = !tresp_get_req;
                    TMP_15 = enable;
                end else begin
                    TMP_15 = 0;
                end
                // Call get() end
                if (TMP_15)
                begin
                    j_next++;
                end
                init_thread_PROC_STATE_next = 7; return;    // method_test.h:147:13;
            end
            init_thread_PROC_STATE_next = 8; return;    // method_test.h:150:9;
        end
        8: begin
            init_thread_PROC_STATE_next = 9; return;    // method_test.h:153:13;
        end
        9: begin
            init_thread_PROC_STATE_next = 9; return;    // method_test.h:153:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge trun_clk or negedge nrst) 
begin : init_thread_ff
    if ( ~nrst ) begin
        logic [15:0] data_1;
        data_1 = 0;
        // Call reset_put() begin
        trun_put_req <= 0;
        trun_core_data <= 0;
        // Call reset_put() end
        // Call reset_get() begin
        tresp_get_req <= 0;
        // Call reset_get() end
        init_thread_PROC_STATE <= 0;    // method_test.h:104:9;
    end
    else begin
        trun_put_req <= trun_put_req_next;
        trun_core_data <= trun_core_data_next;
        tresp_get_req <= tresp_get_req_next;
        data <= data_next;
        i <= i_next;
        j <= j_next;
        i0 <= i_next0;
        init_thread_PROC_STATE <= init_thread_PROC_STATE_next;
    end
end


//------------------------------------------------------------------------------
// Child module instances

A a
(
  .run_core_ready_s(trun_core_ready),
  .run_core_req_s(trun_core_req),
  .run_core_data_s(trun_core_data),
  .resp_core_ready_s(tresp_core_ready),
  .resp_core_req_s(tresp_core_req),
  .resp_core_data_s(tresp_core_data),
  .clk(clk),
  .nrst(nrst)
);

endmodule



//==============================================================================
//
// Module: A (method_test.h:78:5)
//
module A // "test_top.dut.a"
(
    output logic run_core_ready_s,
    input logic run_core_req_s,
    input logic [15:0] run_core_data_s,
    input logic resp_core_ready_s,
    output logic resp_core_req_s,
    output logic [15:0] resp_core_data_s,
    input logic clk,
    input logic nrst
);

// Variables generated for SystemC signals
logic run_get_req;
logic [15:0] fifo_buffer[2];
logic fifo_put_req;
logic fifo_get_req;
logic fifo_get_req_d;
logic [15:0] fifo_data_in;
logic [15:0] fifo_data_out;
logic fifo_ready_push;
logic fifo_out_valid;
logic fifo_pop_indx;
logic fifo_push_indx;
logic [1:0] fifo_element_num;
logic [1:0] fifo_element_num_d;
logic fifo_not_empty_d;
logic resp_put_req;
logic resp_put_req_d;
logic run_clk;
logic run_nrst;
logic run_core_ready;
logic run_core_req;
logic [15:0] run_core_data;
logic fifo_clk;
logic fifo_nrst;
logic resp_clk;
logic resp_nrst;
logic resp_core_req;
logic [15:0] resp_core_data;

// Local parameters generated for C++ constants
localparam logic run_sync = 0;
localparam logic run_cthread = 0;
localparam logic run_always_ready = 1;
localparam logic fifo_SYNC_VALID = 0;
localparam logic fifo_SYNC_READY = 0;
localparam logic fifo_INIT_BUFFER = 0;
localparam logic fifo_cthread_put = 0;
localparam logic fifo_cthread_get = 1;
localparam logic resp_sync = 0;
localparam logic resp_cthread = 1;
localparam logic resp_always_ready = 1;

// Assignments generated for C++ channel arrays
assign run_core_ready_s = run_core_ready;
assign run_core_req = run_core_req_s;
assign run_core_data = run_core_data_s;
assign resp_core_req_s = resp_core_req;
assign resp_core_data_s = resp_core_data;
assign run_clk = clk;
assign run_nrst = nrst;
assign fifo_clk = clk;
assign fifo_nrst = nrst;
assign resp_clk = clk;
assign resp_nrst = nrst;

//------------------------------------------------------------------------------
// Clocked THREAD: run_always_ready_thread (sct_target.h:281:5) 

// Next-state combinational logic
always_comb begin : run_always_ready_thread_comb     // sct_target.h:281:5
    run_always_ready_thread_func;
end
function void run_always_ready_thread_func;
endfunction

// Synchronous register update
always_ff @(posedge run_clk or negedge run_nrst) 
begin : run_always_ready_thread_ff
    if ( ~run_nrst ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Method process: run_core_ready_meth (sct_target.h:301:5) 

assign run_core_ready = 1;

//------------------------------------------------------------------------------
// Method process: fifo_asyncProc (sct_fifo.h:267:5) 

always_comb 
begin : fifo_asyncProc     // sct_fifo.h:267:5
    logic outValid;
    logic readyPush;
    logic popIndx;
    logic notEmpty;
    logic notOne;
    logic notFullOne;
    logic notFull;
    logic push;
    logic pop;
    popIndx = 0;
    notEmpty = fifo_element_num_d != 0;
    notOne = fifo_element_num_d != 1;
    notFullOne = fifo_element_num_d != 2 - 1;
    notFull = fifo_element_num_d != 2;
    push = fifo_put_req;
    pop = fifo_get_req != fifo_get_req_d;
    if (fifo_cthread_get && pop)
    begin
        outValid = notEmpty && notOne;
        popIndx = (fifo_pop_indx == 2 - 1) ? 0 : fifo_pop_indx + 1;
    end else begin
        outValid = notEmpty;
        popIndx = fifo_pop_indx;
    end
    fifo_not_empty_d = notEmpty;
    readyPush = notFull;
    fifo_out_valid = push || outValid;
    if (outValid)
    begin
        fifo_data_out = fifo_buffer[popIndx];
    end else begin
        fifo_data_out = fifo_data_in;
    end
    fifo_ready_push = pop || readyPush;
    fifo_element_num = fifo_element_num_d;
    if (pop && !push)
    begin
        fifo_element_num = fifo_element_num_d - 1;
    end else begin
        if (!pop && push)
        begin
            fifo_element_num = fifo_element_num_d + 1;
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: fifo_syncProc (sct_fifo.h:320:5) 

// Thread-local variables
logic fifo_pop_indx_next;
logic fifo_push_indx_next;
logic fifo_get_req_d_next;
logic [1:0] fifo_element_num_d_next;
logic [15:0] fifo_buffer_next[2];

// Next-state combinational logic
always_comb begin : fifo_syncProc_comb     // sct_fifo.h:320:5
    fifo_syncProc_func;
end
function void fifo_syncProc_func;
    logic push;
    logic pop;
    logic A;
    fifo_buffer_next = fifo_buffer;
    fifo_element_num_d_next = fifo_element_num_d;
    fifo_get_req_d_next = fifo_get_req_d;
    fifo_pop_indx_next = fifo_pop_indx;
    fifo_push_indx_next = fifo_push_indx;
    push = fifo_put_req;
    pop = fifo_get_req != fifo_get_req_d;
    if (pop && fifo_not_empty_d)
    begin
        fifo_pop_indx_next = (fifo_pop_indx == 2 - 1) ? 0 : fifo_pop_indx + 1;
    end
    A = !fifo_SYNC_VALID && !fifo_not_empty_d && pop;
    if (push && !A)
    begin
        fifo_buffer_next[fifo_push_indx] = fifo_data_in;
        fifo_push_indx_next = (fifo_push_indx == 2 - 1) ? 0 : fifo_push_indx + 1;
    end
    fifo_get_req_d_next = fifo_get_req;
    fifo_element_num_d_next = fifo_element_num;
endfunction

// Synchronous register update
always_ff @(posedge fifo_clk or negedge fifo_nrst) 
begin : fifo_syncProc_ff
    if ( ~fifo_nrst ) begin
        fifo_pop_indx <= 0;
        fifo_push_indx <= 0;
        fifo_get_req_d <= 0;
        fifo_element_num_d <= 0;
        fifo_buffer[0] <= 0;
    end
    else begin
        fifo_pop_indx <= fifo_pop_indx_next;
        fifo_push_indx <= fifo_push_indx_next;
        fifo_get_req_d <= fifo_get_req_d_next;
        fifo_element_num_d <= fifo_element_num_d_next;
        fifo_buffer <= fifo_buffer_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: resp_sync_thread (sct_initiator.h:207:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: resp_req_control (sct_initiator.h:228:5) 

always_comb 
begin : resp_req_control     // sct_initiator.h:228:5
    logic A;
    A = resp_put_req != resp_put_req_d;
    resp_core_req = A;
end

//------------------------------------------------------------------------------
// Clocked THREAD: resp_core_thread (sct_initiator.h:244:5) 

// Thread-local variables
logic resp_put_req_d_next;

// Next-state combinational logic
always_comb begin : resp_core_thread_comb     // sct_initiator.h:244:5
    resp_core_thread_func;
end
function void resp_core_thread_func;
    resp_put_req_d_next = resp_put_req_d;
    resp_put_req_d_next = resp_put_req;
endfunction

// Synchronous register update
always_ff @(posedge resp_clk or negedge resp_nrst) 
begin : resp_core_thread_ff
    if ( ~resp_nrst ) begin
        resp_put_req_d <= 0;
    end
    else begin
        resp_put_req_d <= resp_put_req_d_next;
    end
end

//------------------------------------------------------------------------------
// Method process: methProc (method_test.h:39:5) 

always_comb 
begin : methProc     // method_test.h:39:5
    logic TMP_0;
    logic [15:0] TMP_1;
    logic A;
    logic TMP_2;
    // Call reset_get() begin
    run_get_req = 0;
    // Call reset_get() end
    // Call reset_put() begin
    fifo_put_req = 0;
    fifo_data_in = 0;
    // Call reset_put() end
    // Call request() begin
    TMP_0 = run_core_req;
    // Call request() end
    if (TMP_0)
    begin
        // Call get() begin
        A = run_core_req;
        if (A)
        begin
            run_get_req = 1;
        end else begin
            run_get_req = 0;
        end
        TMP_1 = run_core_data;
        // Call get() end
        // Call put() begin
        fifo_data_in = TMP_1;
        if (fifo_ready_push)
        begin
            fifo_put_req = 1;
            TMP_2 = 1;
        end else begin
            fifo_put_req = 0;
            TMP_2 = 0;
        end
        // Call put() end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: threadProc (method_test.h:50:5) 

// Thread-local variables
logic fifo_get_req_next;
logic resp_put_req_next;
logic [15:0] resp_core_data_next;

// Next-state combinational logic
always_comb begin : threadProc_comb     // method_test.h:50:5
    threadProc_func;
end
function void threadProc_func;
    logic TMP_0;
    logic [15:0] TMP_1;
    logic TMP_2;
    fifo_get_req_next = fifo_get_req;
    resp_core_data_next = resp_core_data;
    resp_put_req_next = resp_put_req;
    // Call request() begin
    TMP_0 = fifo_out_valid;
    // Call request() end
    if (TMP_0)
    begin
        // Call get() begin
        if (fifo_out_valid)
        begin
            fifo_get_req_next = !fifo_get_req;
        end
        TMP_1 = fifo_data_out;
        // Call get() end
        // Call put() begin
        resp_put_req_next = !resp_put_req;
        resp_core_data_next = TMP_1;
        TMP_2 = 1;
        // Call put() end
    end
endfunction

// Synchronous register update
always_ff @(posedge fifo_clk or negedge nrst) 
begin : threadProc_ff
    if ( ~nrst ) begin
        // Call reset_get() begin
        fifo_get_req <= 0;
        // Call reset_get() end
        // Call reset_put() begin
        resp_put_req <= 0;
        resp_core_data <= 0;
        // Call reset_put() end
    end
    else begin
        fifo_get_req <= fifo_get_req_next;
        resp_put_req <= resp_put_req_next;
        resp_core_data <= resp_core_data_next;
    end
end

endmodule


